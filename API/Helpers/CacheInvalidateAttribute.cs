using Core.Interfaces;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Filters;
using Microsoft.Extensions.DependencyInjection;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace API.Helpers
{
    public class CacheInvalidateAttribute : Attribute, IAsyncActionFilter
    {
        private readonly string[] _cacheKeys = null;

        public CacheInvalidateAttribute(string[] cacheKeys)
        {
            _cacheKeys = cacheKeys;
        }
        public async Task OnActionExecutionAsync(ActionExecutingContext context, ActionExecutionDelegate next)
        {
            try
            {
                var cacheService = context.HttpContext.RequestServices.GetRequiredService<IResponseCacheService>();
                var cacheKeys = GenerateCacheKeysFromRequest(context.HttpContext.Request);
                var tasks = new List<Task<bool>>();
                foreach (var key in cacheKeys)
                {
                    tasks.Add(cacheService.InvalidateCachedData(key));
                }
                await Task.WhenAll(tasks);
            }
            catch (Exception error)
            {
                Console.WriteLine("could not delete cache", _cacheKeys, error);
            }

            await next();
        }
        //todo benchmark and test
        private List<string> GenerateCacheKeysFromRequest(HttpRequest request)
        {
            if (_cacheKeys == null)
            {
                return new List<string>(1){ request.Path };
            }
            var createdCacheKeys = new List<string>(_cacheKeys.Length);
            var routeValueDictionary = request.RouteValues;
            StringBuilder builder = new StringBuilder(500);
            for (int i = 0; i < _cacheKeys.Length; i++)
            {
                builder.Append(_cacheKeys[i]);
                foreach (var routeValue in routeValueDictionary)
                {
                    if (routeValue.Key == "action" || routeValue.Key == "controller")
                    {
                        continue;
                    }
                    builder.Replace('{'+ routeValue.Key+'}', (string) routeValue.Value);
                }
                createdCacheKeys.Add(builder.ToString());
            }
            return createdCacheKeys;

        }
    }
}
