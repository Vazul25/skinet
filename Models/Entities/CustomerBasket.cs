﻿using System;
using System.Collections.Generic;
using System.Text;

namespace Models.Entities
{
    public class CustomerBasket
    {
        public CustomerBasket(string id)
        {
            Id = id;
            Items = new List<BasketItem>();
        }
        public CustomerBasket()
        {

        }
        public string Id { get; set; }
        public List<BasketItem> Items { get; set; }
    }
}
