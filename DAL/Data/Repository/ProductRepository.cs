using DAL.Data.Repository.Interfaces;
using Microsoft.EntityFrameworkCore;
using Models.Entities;
using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;

namespace DAL.Data.Repository
{
    public class ProductRepository : IProductRepository
    {
        private readonly StoreContext _storeContext;

        public ProductRepository(StoreContext storeContext)
        {
            _storeContext = storeContext;
        }

        public async Task<IReadOnlyList<ProductBrand>> GetProductBrandsAsync()
        {
            return await _storeContext.ProductBrands.ToListAsync();
         }

        public async Task<Product> GetProductByIdAsync(int id)
        {
            return await _storeContext.Products.Include(p=>p.ProductType).Include(p=>p.ProductBrand).FirstOrDefaultAsync(p=>p.Id==id);
        }

        public async Task<IReadOnlyList<Product>> GetProducts()
        {
            return await _storeContext.Products.Include(p => p.ProductType).Include(p => p.ProductBrand).ToListAsync();
        }

        public async Task<IReadOnlyList<ProductType>> GetProductTypesAsync()
        {
            return await _storeContext.ProductTypes.ToListAsync();
         }
    }
}
