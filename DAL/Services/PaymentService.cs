using Core.Interfaces;
using DAL.Data;
using DAL.Data.Repository.Interfaces;
using Microsoft.Extensions.Configuration;
using Models.Entities;
using Models.Entities.OrderAggregate;
using Stripe;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography.X509Certificates;
using System.Text;
using System.Threading.Tasks;

namespace Infrastructure.Services
{
    public class PaymentService : IPaymentService
    {
        private readonly IBasketRepository _basketRepository;
        private readonly IUnitOfWork _unitOfWork;
        private readonly IConfiguration _config;

        public PaymentService(
            IBasketRepository basketRepository,
            IUnitOfWork unitOfWork,
            IConfiguration config)
        {
            _basketRepository = basketRepository;
            _unitOfWork = unitOfWork;
            _config = config;
        }
        public async Task<CustomerBasket> CreateOrUpdatePaymentIntent(string basketId)
        {
            StripeConfiguration.ApiKey = _config["StripeSettings:SecretKey"];
            var basket = await _basketRepository.GetBasketAsync(basketId);
            var shippingPrice = 0m;
            if (basket.DeliveryMethodId.HasValue)
            {
                var deliveryMethod = await _unitOfWork.Repository<DeliveryMethod>().GetByIdAsync((int)basket.DeliveryMethodId);
                shippingPrice = deliveryMethod.Price;
            }
            var productItem = await _unitOfWork.Repository<Models.Entities.Product>().GetByIdsAsync(basket.Items.Select(i => i.Id).ToArray());
            var itemsById = productItem.ToDictionary(i => i.Id, v => v.Price);
            foreach (var item in basket.Items)
            {
                if (item.Price != itemsById[item.Id])
                {
                    item.Price = itemsById[item.Id];
                }
               

            }
            var service = new PaymentIntentService();
            PaymentIntent intent;
            if (string.IsNullOrEmpty(basket.PaymentIntentId))
            {
                var options = new PaymentIntentCreateOptions
                {
                    Amount = (long)basket.Items.Sum(i => i.Quantity * Convert.ToInt64(i.Price)*100 + 100*Convert.ToInt64(shippingPrice)),
                    Currency = "usd",
                    PaymentMethodTypes = new List<string> { "card" }
                };
                intent = await service.CreateAsync(options);
                basket.PaymentIntentId = intent.Id;
                basket.ClientSecret = intent.ClientSecret;

            }
            else
            {
                var options = new PaymentIntentUpdateOptions
                {
                    Amount = (long)basket.Items.Sum(i => i.Quantity * Convert.ToInt64(i.Price) * 100 + 100 * Convert.ToInt64(shippingPrice)),

                };
                await service.UpdateAsync(basket.PaymentIntentId, options);

            }
            await _basketRepository.UpdateBasketAsync(basket);
            return basket;
        }
    }
}