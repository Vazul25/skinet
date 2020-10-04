﻿using AutoMapper;
using Models.DTO;
using Models.Entities;
using Models.Entities.Identity;
using Models.Entities.OrderAggregate;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace API.Helpers
{
    public class MappingProfiles : Profile
    {
        public MappingProfiles()
        {
            CreateMap<Product, ProductDTO>()
                .ForMember(d => d.ProductBrand, o => o.MapFrom(s => s.ProductBrand.Name))
                .ForMember(d => d.ProductType, o => o.MapFrom(s => s.ProductType.Name))
                .ForMember(d=>d.PictureUrl, o => o.MapFrom<ProductUrlResolver>());

            CreateMap<Models.Entities.Identity.Address, AddressDto>().ReverseMap();
            CreateMap<BasketItemDto, BasketItem>().ReverseMap();
            CreateMap<CustomerBasketDto, CustomerBasket>().ReverseMap();
            CreateMap<AddressDto, Models.Entities.OrderAggregate.Address>();
            CreateMap<Order, OrderToReturnDto>()
                .ForMember(d=>d.DeliveryMethod,o=>o.MapFrom(s=>s.DeliveryMethod.ShortName))
                .ForMember(d=>d.ShippingPrice,o=>o.MapFrom(s=>s.DeliveryMethod.Price));
            CreateMap<OrderItem, OrderItemDto>()
                .ForMember(d=>d.ProductId,o=>o.MapFrom(s=>s.itemOrdered.ProductItemId))
                .ForMember(d=>d.ProductName,o=>o.MapFrom(s=>s.itemOrdered.ProductName))
                .ForMember(d=>d.PictureUrl,o=>o.MapFrom(s=>s.itemOrdered.PictureUrl))
                .ForMember(d => d.PictureUrl, o => o.MapFrom<OrderItemUrlResolvcer>())

                ;

        }
    }
}
