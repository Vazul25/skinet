using Microsoft.EntityFrameworkCore;
using Models.Entities;
using System;
using System.Net.Http.Headers;

namespace DAL
{
    public class StoreContext : DbContext
    {
        public StoreContext(DbContextOptions<StoreContext> options) : base(options)
        {

        }
        public DbSet<Product> Products { get; set; }
    }
}
