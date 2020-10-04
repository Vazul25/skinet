using Models.Entities;
using Models.Entities.OrderAggregate;
using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;

namespace DAL.Services.SeedService.Interfaces
{
    public interface ISeedService
    {
        IList<Product> Products { get; }
        IList<ProductBrand> ProductBrands { get; }
        IList<ProductType> ProductTypes { get; }

        IList<DeliveryMethod> DeliveryMethods { get; }

        //Task SeedProductsAsync();
    }
}
