using Models.Entities;
using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;

namespace DAL.Data.Repository.Interfaces
{
    public interface IProductRepository
    {
        public Task<Product> GetProductByIdAsync(int id);
        public Task<IReadOnlyList<Product>> GetProducts();
        public Task<IReadOnlyList<ProductBrand>> GetProductBrandsAsync();
        public Task<IReadOnlyList<ProductType>> GetProductTypesAsync();

    }
}
