using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;
using Models.Entities.OrderAggregate;
using System;
using System.Collections.Generic;
using System.Text;

namespace DAL.EntityConfiguration
{
    class OrderItemEntityConfiguration : IEntityTypeConfiguration<OrderItem>
    {
        public void Configure(EntityTypeBuilder<OrderItem> builder)
        {
            builder.OwnsOne(i => i.itemOrdered,io=> { io.WithOwner(); });
            builder.Property(i => i.Price).HasColumnType("decimal(18,2)");

        }
    }
}
