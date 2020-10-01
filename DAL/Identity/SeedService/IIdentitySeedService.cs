using Microsoft.AspNetCore.Identity;
using Models.Entities.Identity;
using System.Threading.Tasks;

namespace DAL.Identity
{
    public interface IIdentitySeedService
    {
        Task SeedUsersAsync();
    }
}