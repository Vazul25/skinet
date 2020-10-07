﻿using Core.Entities.OrderAggregate;
using System;
using System.Collections.Generic;
using System.Text;

namespace Core.DTO
{
    public class OrderDto
    {
        public string BasketId { get; set; }
        public int DeliveryMethodId { get; set; }
        public AddressDto  ShipToAddress { get; set; }
    }
}
