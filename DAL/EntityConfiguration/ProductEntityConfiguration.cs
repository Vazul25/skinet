using DAL.Services.SeedService.Interfaces;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;
using Models.Entities;
using System;
using System.Collections.Generic;
using System.Text;

namespace DAL.EntityConfiguration
{
    class ProductEntityConfiguration : IEntityTypeConfiguration<Product>
    {
        private readonly ISeedService _seedService;

        public ProductEntityConfiguration(ISeedService seedService)
        {
            _seedService = seedService;
        }
        public void Configure(EntityTypeBuilder<Product> builder)
        {
            builder.HasData(_seedService.Products);
            
        }
    }
}
