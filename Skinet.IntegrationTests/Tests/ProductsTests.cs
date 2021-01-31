using API.HostDataExtension;
using Core.DTO;
using Core.Interfaces;
using DAL;
using Microsoft.AspNetCore.TestHost;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.Hosting;
using Newtonsoft.Json;
using Skinet.IntegrationTests.MockService;
using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;
using Xunit;

namespace Skinet.IntegrationTests.Tests
{
    public class ProductsTests : IClassFixture<CustomWebApplicationFactory>
    {
        private readonly CustomWebApplicationFactory _factory;

        public ProductsTests(CustomWebApplicationFactory factory)
        {
            _factory = factory;
        }
        [Fact]
        public async Task Test()
        {

            var client = _factory.WithWebHostBuilder(builder =>
            {
                builder.ConfigureTestServices(services =>
              {
                  services.AddSingleton<IResponseCacheService, CacheServiceMock>();
              });
            }).CreateClient();
            
            var response = await client.GetAsync("api/products");
            var content = JsonConvert.DeserializeObject<PagedResult<ProductDTO>>(
          await response.Content.ReadAsStringAsync()
        );
            response = await client.GetAsync("api/products");
            response = await client.GetAsync("api/products");
            response.EnsureSuccessStatusCode();
            Assert.True(CacheServiceMock.VerifyCacheResponseCalled(1));
            Assert.True(CacheServiceMock.VerifyGetCacheCalledSucessfully(2));

            Assert.Equal(6, content.Data.Count);
        }
    }
}
