using DAL.EntityConfiguration;
using DAL.Services.SeedService.Interfaces;
using Microsoft.EntityFrameworkCore;
using Models.Entities;
using System;
using System.Linq;
using System.Net.Http.Headers;

namespace DAL
{
    public class StoreContext : DbContext
    {
        private readonly ISeedService _seedService;

        public StoreContext(DbContextOptions<StoreContext> options, ISeedService seedService) : base(options)
        {
            _seedService = seedService;
        }
        public DbSet<Product> Products { get; set; }
        public DbSet<ProductBrand> ProductBrands { get; set; }
        public DbSet<ProductType> ProductTypes { get; set; }
        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            base.OnModelCreating(modelBuilder);

            modelBuilder.ApplyConfiguration(new ProductEntityConfiguration(_seedService));
            modelBuilder.ApplyConfiguration(new ProductTypeEntityConfiguration(_seedService));
            modelBuilder.ApplyConfiguration(new ProductBrandEntityConfiguration(_seedService));
            if (Database.ProviderName == "Microsoft.EntityFrameworkCore.Sqlite")
            {
                foreach (var entityType in modelBuilder.Model.GetEntityTypes())
                {
                    var properties = entityType.ClrType.GetProperties().Where(p => p.PropertyType == typeof(decimal));
                    foreach (var property in properties)
                    {
                        modelBuilder.Entity(entityType.Name).Property(property.Name).HasConversion<double>();
                    }
                }
            }
        }
    }
}
