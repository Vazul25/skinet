﻿using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.Hosting;
using Microsoft.Extensions.Logging;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.CompilerServices;
using System.Threading.Tasks;

namespace API.HostDataExtension
{
    public static class HostDataExtensions
    {
        public static async Task<IHost> MigrateDatabase<TContext>(this IHost host) where TContext: DbContext
        {
            using(var scope = host.Services.CreateScope())
            {
                var serviceProvider = scope.ServiceProvider;
                var loggerFactory = serviceProvider.GetRequiredService<ILoggerFactory>();
                try
                {
                    var context = serviceProvider.GetRequiredService<TContext>();
                    await context.Database.MigrateAsync();
                } catch (Exception ex)
                {
                    var logger = loggerFactory.CreateLogger<Program>();
                    logger.LogError(ex, "An error occured during migration");
                }
               
                
            }
            return host;
        }
    }
}