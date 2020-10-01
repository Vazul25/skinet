using Microsoft.AspNetCore.Identity;
using Microsoft.EntityFrameworkCore.Internal;
using Models.Entities.Identity;
using System.Threading.Tasks;

namespace DAL.Identity
{
    public class IdentitySeedService : IIdentitySeedService
    {
        private readonly UserManager<AppUser> _userManager;

        public IdentitySeedService(UserManager<AppUser> userManager)
        {
            _userManager = userManager;
        }
        public async Task SeedUsersAsync()
        {
            if (!_userManager.Users.Any())
            {
                var user = new AppUser
                {
                    DisplayName = "Bob",
                    Email = "bob@test.com",
                    UserName = "bob@test.com",
                    Address = new Address
                    {
                        FirstName = "Bob",
                        LastName = "Bobbity",
                        State = "NY",
                        Street = "10 the street",
                        City = "New York",
                        Zipcode = "90210"

                    }
                };
                await _userManager.CreateAsync(user, "QWEqwe123!");
            }
        }

    }
}
