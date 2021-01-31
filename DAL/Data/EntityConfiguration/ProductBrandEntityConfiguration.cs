using DAL.Services.SeedService.Interfaces;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;
using Core.Entities;
using System;
using System.Collections.Generic;
using System.Text;

namespace DAL.EntityConfiguration
{
    class ProductBrandEntityConfiguration : IEntityTypeConfiguration<ProductBrand>
    {
        private readonly ISeedService _seedService;

        public ProductBrandEntityConfiguration(ISeedService seedService)
        {
            _seedService = seedService;
        }
        public void Configure(EntityTypeBuilder<ProductBrand> builder)
        {
            Console.WriteLine(Environment.GetEnvironmentVariable("DOTNET_ENVIRONMENT"));
            builder.HasData(_seedService.ProductBrands);
        }
    }
}
