using DAL.Data.Repository.Interfaces;
using Models.Entities;
using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;

namespace DAL.Data.Repository
{
    public class ProductRepository : IProductRepository
    {
        public Task<Product> GetProductByIdAsync(int id)
        {
            throw new NotImplementedException();
        }

        public Task<IReadOnlyList<Product>> GetProducts()
        {
            throw new NotImplementedException();
        }
    }
}
