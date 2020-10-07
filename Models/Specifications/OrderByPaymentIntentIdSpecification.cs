using DAL.Specifications;
using Core.Entities.OrderAggregate;
using System;
using System.Collections.Generic;
using System.Linq.Expressions;
using System.Reflection;
using System.Text;

namespace Core.Specifications
{
    public class OrderByPaymentIntentIdSpecification:BaseSpecification<Order>
    {
         
        public OrderByPaymentIntentIdSpecification(string paymentIntentId):base(o=>o.PaymentIntentId==paymentIntentId)
        {
            
        }
    }
}
