using Core.Entities.Identity;
using System;
using System.Collections.Generic;
using System.Text;

namespace DAL.Services.TokenService
{
    public interface ITokenService
    {
        public string CreateToken(AppUser user);
    }
}
