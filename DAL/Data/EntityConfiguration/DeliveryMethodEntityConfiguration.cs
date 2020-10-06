using DAL.Services.SeedService.Interfaces;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;
using Models.Entities.OrderAggregate;
using System;
using System.Collections.Generic;
using System.Text;

namespace DAL.EntityConfiguration
{
    class DeliveryMethodEntityConfiguration : IEntityTypeConfiguration<DeliveryMethod>
    {
        private ISeedService _seedService;

        public DeliveryMethodEntityConfiguration(ISeedService seedService)
        {
            _seedService = seedService;
        }
        public void Configure(EntityTypeBuilder<DeliveryMethod> builder)
        {
            builder.HasData(_seedService.DeliveryMethods);
            builder.Property(d => d.Price).HasColumnType("decimal(18,2)");
        }
    }
}
