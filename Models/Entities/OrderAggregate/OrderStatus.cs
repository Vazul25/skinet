using System;
using System.Collections.Generic;
using System.Runtime.Serialization;
using System.Text;

namespace Models.Entities.OrderAggregate
{
    public enum OrderStatus
    {
        [EnumMember(Value ="Pending")]
        Pending,
        [EnumMember(Value ="Payment Recived")]
        PaymentRecivied,
        [EnumMember(Value = "Payment Failed")]
        PaymentFailed
    }
}
