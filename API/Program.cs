using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using API.HostDataExtension;
using DAL;
using DAL.Identity;
using Microsoft.AspNetCore.Hosting;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.Hosting;
using Microsoft.Extensions.Logging;

namespace API
{
    public class Program
    {
        public static async Task Main(string[] args)
        {
            Console.WriteLine("Hmm by witcher");
            (await (await CreateHostBuilder(args)
                .Build()
                .MigrateDatabase<StoreContext>())
                .MigrateIdentityDatabase())
                .Run();
        }

        public static IHostBuilder CreateHostBuilder(string[] args) =>
            Host.CreateDefaultBuilder(args)
                .ConfigureWebHostDefaults(webBuilder =>
                {
                    webBuilder.UseStartup<Startup>();
                });
    }
}
