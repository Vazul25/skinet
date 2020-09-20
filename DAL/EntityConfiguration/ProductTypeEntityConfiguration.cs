using DAL.SeedService.Interfaces;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;
using Models.Entities;
using System;
using System.Collections.Generic;
using System.Text;

namespace DAL.EntityConfiguration
{
    class ProductTypeEntityConfiguration : IEntityTypeConfiguration<ProductType>
    {
        private readonly ISeedService _seedService;

        public ProductTypeEntityConfiguration(ISeedService seedService)
        {
            _seedService = seedService;
        }
        public void Configure(EntityTypeBuilder<ProductType> builder)
        {
            builder.HasData(_seedService.ProductTypes);
        }
    }
}
