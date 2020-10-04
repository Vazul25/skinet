using DAL.Data;
using DAL.Data.Repository;
using DAL.Data.Repository.Interfaces;
using DAL.Specifications;
using Models.Entities;
using Models.Entities.OrderAggregate;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL.Services.OrderService
{
    public class BenchmarkResults
    {
        public long ElapsedTicks { get; set; }
        public int Count { get; set; }
        public long AvgTick { get => ElapsedTicks / Count; }
    }
    public class OrderService : IOrderService
    {
        private readonly IBasketRepository _basketRepository;
        private readonly IUnitOfWork _unitOfWork;
        //static int counter = 1;
        static BenchmarkResults[] _results = new BenchmarkResults[2] { new BenchmarkResults(), new BenchmarkResults() };
        public OrderService(IBasketRepository basketRepository, IUnitOfWork unitOfWork)
        {
            _basketRepository = basketRepository;
            _unitOfWork = unitOfWork;

        }

        private async Task benchmark01(string buyerEmail, int deliveryMethodId, string basketId,
                                                  Address shippingAddress)
        {
            var basket = await _basketRepository.GetBasketAsync(basketId);
            var basketById = basket.Items.ToDictionary(i => i.Id, i => i.Quantity);

            var productItems = await _unitOfWork.Repository<Product>().GetByIdsAsync(basket.Items.Select(i => i.Id).ToArray());

            var itemsOrdered = productItems.Select(p => new ProductItemOrdered { ProductItemId = p.Id, PictureUrl = p.PictureUrl, ProductName = p.Name }).ToList();
            var orderItems = new List<OrderItem>(productItems.Count);
            for (int i = 0; i < productItems.Count; i++)
            {
                var item = productItems[i];
                orderItems.Add(new OrderItem(itemsOrdered[i], item.Price, basketById[item.Id]));

            };
        }
        private async Task benchmark02(string buyerEmail, int deliveryMethodId, string basketId,
                                                  Address shippingAddress)
        {
            var basket = await _basketRepository.GetBasketAsync(basketId);

            var items = new List<OrderItem>();
            foreach (var item in basket.Items)
            {
                var productItem = await _unitOfWork.Repository<Product>().GetByIdAsync(item.Id);
                var itemOrdered2 = new ProductItemOrdered(productItem.Id, productItem.Name, productItem.PictureUrl);
                var orderItem = new OrderItem(itemOrdered2, productItem.Price, item.Quantity);
                items.Add(orderItem);
            };

        }
        public async Task<Order> CreateOrderAsync(string buyerEmail, int deliveryMethodId, string basketId,
                                                  Address shippingAddress)
        {


            //int next =counter++%2;
            //Stopwatch timer = Stopwatch.StartNew();

            //if (next == 0)
            //    await benchmark01(buyerEmail, deliveryMethodId, basketId, shippingAddress);
            //else
            //    await benchmark02(buyerEmail, deliveryMethodId, basketId, shippingAddress);
            //timer.Stop();
            //_results[next].ElapsedTicks += timer.ElapsedTicks;
            //_results[next].Count++;
            //Console.WriteLine("1: " + ((_results[0].Count > 0) ? _results[0].AvgTick : 0) + "\n2: " + ((_results[1].Count > 0) ? _results[1].AvgTick : 0));



            var basket = await _basketRepository.GetBasketAsync(basketId);
            var basketById = basket.Items.ToDictionary(i => i.Id, i => i.Quantity);
            var productItems = await _unitOfWork.Repository<Product>().GetByIdsAsync(basket.Items.Select(i => i.Id).ToArray());
            var itemsOrdered = productItems.Select(p => new ProductItemOrdered { ProductItemId = p.Id, PictureUrl = p.PictureUrl, ProductName = p.Name }).ToList();
            var orderItems = new List<OrderItem>(productItems.Count);
            for (int i = 0; i < productItems.Count; i++)
            {
                var item = productItems[i];
                orderItems.Add(new OrderItem(itemsOrdered[i], item.Price, basketById[item.Id]));

            };



            var deliveryMethods = await _unitOfWork.Repository<DeliveryMethod>().GetByIdAsync(deliveryMethodId);

            var subtotal = orderItems.Sum(i => i.Price * i.Quantity);

            var order = new Order(orderItems, buyerEmail, shippingAddress, deliveryMethods, subtotal);
            _unitOfWork.Repository<Order>().Add(order);
            var result = await _unitOfWork.Complete();
            if (result <= 0)
                return null;
            await _basketRepository.DeleteBasketAsync(basketId);

            return order;
          
        }

        public async Task<IReadOnlyList<DeliveryMethod>> GetDeliveryMethodsAsync()
        {
            return await _unitOfWork.Repository<DeliveryMethod>().ListAllAsync();
        }

        public async Task<Order> GetOrderByIdAsync(int id, string buyerEmail)
        {
            var spec = new OrdersWithItemsAndOrderingSpecification(id,buyerEmail);
            return await _unitOfWork.Repository<Order>().GetEntityWithSpec(spec);
        }

        public async Task<IReadOnlyList<Order>> GetOrdersForUserAsync(string buyerEmail)
        {
            var spec = new OrdersWithItemsAndOrderingSpecification(buyerEmail);
            return await _unitOfWork.Repository<Order>().ListAsync(spec);
        }
    }
}

