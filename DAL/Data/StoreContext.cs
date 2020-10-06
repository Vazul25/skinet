using DAL.EntityConfiguration;
using DAL.Services.SeedService.Interfaces;
using Microsoft.EntityFrameworkCore;
using Models.Entities;
using Models.Entities.OrderAggregate;
using System;
using System.Linq;
using System.Net.Http.Headers;
using System.Reflection;

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
        public DbSet<Order> Orders { get; set; }
        public DbSet<OrderItem> OrderItems { get; set; }
        public DbSet<DeliveryMethod> DeliveryMethod{ get; set; }
        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            base.OnModelCreating(modelBuilder);

            modelBuilder.ApplyConfiguration(new ProductEntityConfiguration(_seedService));
            modelBuilder.ApplyConfiguration(new ProductTypeEntityConfiguration(_seedService));
            modelBuilder.ApplyConfiguration(new ProductBrandEntityConfiguration(_seedService));
            modelBuilder.ApplyConfiguration(new DeliveryMethodEntityConfiguration(_seedService));
            modelBuilder.ApplyConfigurationsFromAssembly(Assembly.GetExecutingAssembly());

            if (Database.ProviderName == "Microsoft.EntityFrameworkCore.Sqlite")
            {
                foreach (var entityType in modelBuilder.Model.GetEntityTypes())
                {
                    var properties = entityType.ClrType.GetProperties().Where(p => p.PropertyType == typeof(decimal));
                    var datetimeProperties = entityType.ClrType.GetProperties().Where(p => p.PropertyType == typeof(DateTimeOffset));
                    foreach (var property in properties)
                    {
                        modelBuilder.Entity(entityType.Name).Property(property.Name).HasConversion<double>();
                    }
                    foreach (var property in datetimeProperties)
                    {
                        modelBuilder.Entity(entityType.Name).Property(property.Name).HasConversion(new Microsoft.EntityFrameworkCore.Storage.ValueConversion.DateTimeOffsetToBinaryConverter());
                    }
                }
            }
        }
    }
}
