using AutoMapper;
using Microsoft.Extensions.Configuration;
using Core.DTO;
using Core.Entities.OrderAggregate;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace API.Helpers
{
    public class OrderItemUrlResolvcer : IValueResolver<OrderItem, OrderItemDto, string>
    {

        private readonly IConfiguration _config;

        public OrderItemUrlResolvcer(IConfiguration config)
        {
            _config = config;
        }
      

        public string Resolve(OrderItem source, OrderItemDto destination, string destMember, ResolutionContext context)
        {
            if (!string.IsNullOrEmpty(source.itemOrdered.PictureUrl))
            {
                return _config["ApiUrl"] + "/" + source.itemOrdered.PictureUrl;
            }
            return null;
        }
    }
}
