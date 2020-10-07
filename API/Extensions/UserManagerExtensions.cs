using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Identity;
using Microsoft.EntityFrameworkCore;
using Core.Entities.Identity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Claims;
using System.Security.Cryptography.X509Certificates;
using System.Threading.Tasks;

namespace API.Extensions
{
    public static class UserManagerExtensions
    {
        public static async Task<AppUser> FindUserByClaimsPrincipleWithAddressAsync(this UserManager<AppUser> input, ClaimsPrincipal user)
        {
            var email = user.Claims.FirstOrDefault((x) => x.Type == ClaimTypes.Email)?.Value;
            return await input.Users.Include(x => x.Address).SingleOrDefaultAsync(x => x.Email == email);
        }
        public static async Task<AppUser> FindUserByClaimsPrincipleAsync(this UserManager<AppUser> input, ClaimsPrincipal user)
        {
            var email = user.Claims.FirstOrDefault((x) => x.Type == ClaimTypes.Email)?.Value;
            return await input.Users.SingleOrDefaultAsync(x => x.Email == email);

        }
    }
}
