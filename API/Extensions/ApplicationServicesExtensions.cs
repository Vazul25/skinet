using API.Errors;
using DAL.Data.Repository;
using DAL.Data.Repository.Interfaces;
using DAL.Identity;
using DAL.Services.SeedService;
using DAL.Services.SeedService.Interfaces;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.DependencyInjection;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace API.Extensions
{
    public static class ApplicationServicesExtensions
    {
        public static IServiceCollection AddApplicationServices(this IServiceCollection services)
        {
            services.AddScoped<ISeedService, SeedService>();
            services.AddScoped(typeof(IBaseRepository<>), typeof(BaseRepository<>));
            services.Configure<ApiBehaviorOptions>(options =>
            {
                options.InvalidModelStateResponseFactory = actionContext =>
                {
                    var errors = actionContext.ModelState.Where(modelState => modelState.Value.Errors.Count > 0)
                    .SelectMany(modelState => modelState.Value.Errors)
                    .Select(error => error.ErrorMessage).ToArray();
                    var errorResponse = new ApiValidationErrorResponse
                    {
                        Errors = errors
                    };
                    return new BadRequestObjectResult(errorResponse);
                };
            });
            services.AddScoped<IBasketRepository, BasketRepository>();
            return services;
        }
    }
}
