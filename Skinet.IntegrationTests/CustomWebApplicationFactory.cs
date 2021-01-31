using API.HostDataExtension;
using DAL;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.Mvc.Testing;
using Microsoft.AspNetCore.TestHost;
using Microsoft.Extensions.Hosting;
using System;
using System.Collections.Generic;
using System.Text;
using System.Linq;
using Microsoft.EntityFrameworkCore;

namespace Skinet.IntegrationTests
{
    public class CustomWebApplicationFactory: WebApplicationFactory<API.Startup> 
    {
        protected override IHostBuilder CreateHostBuilder()
        {
         
        
            Environment.SetEnvironmentVariable("ASPNETCORE_ENVIRONMENT", "Test");
            var builder = base.CreateHostBuilder();
            builder.UseEnvironment("Test");
            builder.ConfigureWebHostDefaults(webBuilder => {
                webBuilder.UseTestServer();
                webBuilder.UseEnvironment("Test");
            }) ;
             
            return builder;
        }
        protected  override IHost CreateHost(IHostBuilder builder)
        {
            var host= base.CreateHost(builder);
            host.MigrateDatabase<StoreContext>().GetAwaiter().GetResult();
            
            host.MigrateIdentityDatabase().GetAwaiter().GetResult();
            return host;
        }

         

    }
}
