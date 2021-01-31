using Core.Interfaces;
using System;
using System.Collections.Generic;
using System.Text;
using System.Text.Json;
using System.Threading.Tasks;

namespace Skinet.IntegrationTests.MockService
{
    class CacheServiceMock : IResponseCacheService
    {
        static Dictionary<string, object> memoryCache = new Dictionary<string, object>();
        static int timesGetCacheCalledSucessfully = 0;
        static int timesInvalidateCacheCalled = 0;
        static int timesCacheResponseCalled = 0;
        static Dictionary<string, int> timesGetCacheCalledWithCacheKeySucessfully = new Dictionary<string, int>();
        static Dictionary<string, int> timesInvalidateCacheCalledWithCacheKey = new Dictionary<string, int>();
        static Dictionary<string, int> timesCacheResponseCalledWithCacheKey = new Dictionary<string, int>();

        static void Reset()
        {
            memoryCache = new Dictionary<string, object>();
            timesGetCacheCalledSucessfully = 0;
            timesInvalidateCacheCalled = 0;
            timesCacheResponseCalled = 0;
            timesGetCacheCalledWithCacheKeySucessfully = new Dictionary<string, int>();
            timesInvalidateCacheCalledWithCacheKey = new Dictionary<string, int>();
            timesCacheResponseCalledWithCacheKey = new Dictionary<string, int>();
        }
        static public bool VerifyGetCacheCalledSucessfully(int times)
        {
            return timesGetCacheCalledSucessfully == times;
        }
        static public bool VerifyInvalidateCalled(int times)
        {
            return timesInvalidateCacheCalled == times;
        }
        static public bool VerifyCacheResponseCalled(int times)
        {
            return timesCacheResponseCalled == times;
        }
        public Task<string> GetCachedResponseAsync(string cacheKey)
        {
            if (!memoryCache.ContainsKey(cacheKey))
                return Task.FromResult("");
            timesGetCacheCalledWithCacheKeySucessfully.TryGetValue(cacheKey, out var times);
            timesGetCacheCalledWithCacheKeySucessfully[cacheKey] =times++;
            timesGetCacheCalledSucessfully++;
            return Task.FromResult(JsonSerializer.Serialize(memoryCache[cacheKey]));
        }

        public Task<bool> InvalidateCachedData(string cacheKey)
        {
            timesInvalidateCacheCalledWithCacheKey.TryGetValue(cacheKey, out var times);
            timesInvalidateCacheCalledWithCacheKey[cacheKey]= times++;
            timesInvalidateCacheCalled++;
            if (memoryCache.ContainsKey(cacheKey))
            {
                memoryCache.Remove(cacheKey);
                return Task.FromResult(true);
                ;
            }
            return null;
        }
        public Task CacheResponseAsync(string cacheKey, object response, TimeSpan timeToLive)
        {
            timesCacheResponseCalledWithCacheKey.TryGetValue(cacheKey, out var times);
            timesCacheResponseCalledWithCacheKey[cacheKey] =times++;
            timesCacheResponseCalled++;
            memoryCache[cacheKey]= response;
            return Task.CompletedTask;
        }
        static public bool VerifyGetCacheCalled(string cacheKey, int times)
        {
            timesCacheResponseCalledWithCacheKey.TryGetValue(cacheKey, out int called);
            return called == times;
        }
        static public bool VerifyInvalidateCalled(string cacheKey, int times)
        {
            timesInvalidateCacheCalledWithCacheKey.TryGetValue(cacheKey, out int called);
            return called == times;
        }
        static public bool VerifyCacheResponseCalled(string cacheKey, int times)
        {
            timesCacheResponseCalledWithCacheKey.TryGetValue(cacheKey, out int called);
            return called == times;
        }
    }
}
