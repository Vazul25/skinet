func @_DAL.Services.TokenService.TokenService.CreateToken$Core.Entities.Identity.AppUser$(none) -> none loc("C:\\programozas\\udemy\\skinet\\DAL\\Services\\TokenService.cs" :22 :8) {
^entry (%_user : none):
%0 = cbde.alloca none loc("C:\\programozas\\udemy\\skinet\\DAL\\Services\\TokenService.cs" :22 :34)
cbde.store %_user, %0 : memref<none> loc("C:\\programozas\\udemy\\skinet\\DAL\\Services\\TokenService.cs" :22 :34)
br ^0

^0: // JumpBlock
%1 = cbde.unknown : none loc("C:\\programozas\\udemy\\skinet\\DAL\\Services\\TokenService.cs" :24 :25) // new List<Claim>              {                  new Claim(JwtRegisteredClaimNames.Email,user.Email),                  new Claim(JwtRegisteredClaimNames.GivenName,user.DisplayName)              } (ObjectCreationExpression)
// Entity from another assembly: JwtRegisteredClaimNames
%2 = cbde.unknown : none loc("C:\\programozas\\udemy\\skinet\\DAL\\Services\\TokenService.cs" :26 :26) // JwtRegisteredClaimNames.Email (SimpleMemberAccessExpression)
%3 = cbde.unknown : none loc("C:\\programozas\\udemy\\skinet\\DAL\\Services\\TokenService.cs" :26 :56) // Not a variable of known type: user
%4 = cbde.unknown : none loc("C:\\programozas\\udemy\\skinet\\DAL\\Services\\TokenService.cs" :26 :56) // user.Email (SimpleMemberAccessExpression)
%5 = cbde.unknown : none loc("C:\\programozas\\udemy\\skinet\\DAL\\Services\\TokenService.cs" :26 :16) // new Claim(JwtRegisteredClaimNames.Email,user.Email) (ObjectCreationExpression)
// Entity from another assembly: JwtRegisteredClaimNames
%6 = cbde.unknown : none loc("C:\\programozas\\udemy\\skinet\\DAL\\Services\\TokenService.cs" :27 :26) // JwtRegisteredClaimNames.GivenName (SimpleMemberAccessExpression)
%7 = cbde.unknown : none loc("C:\\programozas\\udemy\\skinet\\DAL\\Services\\TokenService.cs" :27 :60) // Not a variable of known type: user
%8 = cbde.unknown : none loc("C:\\programozas\\udemy\\skinet\\DAL\\Services\\TokenService.cs" :27 :60) // user.DisplayName (SimpleMemberAccessExpression)
%9 = cbde.unknown : none loc("C:\\programozas\\udemy\\skinet\\DAL\\Services\\TokenService.cs" :27 :16) // new Claim(JwtRegisteredClaimNames.GivenName,user.DisplayName) (ObjectCreationExpression)
%11 = cbde.unknown : none loc("C:\\programozas\\udemy\\skinet\\DAL\\Services\\TokenService.cs" :29 :47) // Not a variable of known type: _key
// Entity from another assembly: SecurityAlgorithms
%12 = cbde.unknown : none loc("C:\\programozas\\udemy\\skinet\\DAL\\Services\\TokenService.cs" :29 :53) // SecurityAlgorithms.HmacSha512Signature (SimpleMemberAccessExpression)
%13 = cbde.unknown : none loc("C:\\programozas\\udemy\\skinet\\DAL\\Services\\TokenService.cs" :29 :24) // new SigningCredentials(_key, SecurityAlgorithms.HmacSha512Signature) (ObjectCreationExpression)
%15 = cbde.unknown : none loc("C:\\programozas\\udemy\\skinet\\DAL\\Services\\TokenService.cs" :30 :34) // new SecurityTokenDescriptor              {                  Subject = new ClaimsIdentity(claims),                  Expires = DateTime.Now.AddDays(7),                  SigningCredentials = creds,                  Issuer = _config["Token:Issuer"]              } (ObjectCreationExpression)
%16 = cbde.unknown : none loc("C:\\programozas\\udemy\\skinet\\DAL\\Services\\TokenService.cs" :32 :45) // Not a variable of known type: claims
%17 = cbde.unknown : none loc("C:\\programozas\\udemy\\skinet\\DAL\\Services\\TokenService.cs" :32 :26) // new ClaimsIdentity(claims) (ObjectCreationExpression)
// Entity from another assembly: DateTime
%18 = cbde.unknown : none loc("C:\\programozas\\udemy\\skinet\\DAL\\Services\\TokenService.cs" :33 :26) // DateTime.Now (SimpleMemberAccessExpression)
%19 = constant 7 : i32 loc("C:\\programozas\\udemy\\skinet\\DAL\\Services\\TokenService.cs" :33 :47)
%20 = cbde.unknown : none loc("C:\\programozas\\udemy\\skinet\\DAL\\Services\\TokenService.cs" :33 :26) // DateTime.Now.AddDays(7) (InvocationExpression)
%21 = cbde.unknown : none loc("C:\\programozas\\udemy\\skinet\\DAL\\Services\\TokenService.cs" :34 :37) // Not a variable of known type: creds
%22 = cbde.unknown : none loc("C:\\programozas\\udemy\\skinet\\DAL\\Services\\TokenService.cs" :35 :25) // Not a variable of known type: _config
%23 = cbde.unknown : none loc("C:\\programozas\\udemy\\skinet\\DAL\\Services\\TokenService.cs" :35 :33) // "Token:Issuer" (StringLiteralExpression)
%24 = cbde.unknown : none loc("C:\\programozas\\udemy\\skinet\\DAL\\Services\\TokenService.cs" :35 :25) // _config["Token:Issuer"] (ElementAccessExpression)
%26 = cbde.unknown : none loc("C:\\programozas\\udemy\\skinet\\DAL\\Services\\TokenService.cs" :37 :31) // new JwtSecurityTokenHandler() (ObjectCreationExpression)
%28 = cbde.unknown : none loc("C:\\programozas\\udemy\\skinet\\DAL\\Services\\TokenService.cs" :38 :24) // Not a variable of known type: tokenHandler
%29 = cbde.unknown : none loc("C:\\programozas\\udemy\\skinet\\DAL\\Services\\TokenService.cs" :38 :49) // Not a variable of known type: tokenDescriptor
%30 = cbde.unknown : none loc("C:\\programozas\\udemy\\skinet\\DAL\\Services\\TokenService.cs" :38 :24) // tokenHandler.CreateToken(tokenDescriptor) (InvocationExpression)
%32 = cbde.unknown : none loc("C:\\programozas\\udemy\\skinet\\DAL\\Services\\TokenService.cs" :39 :19) // Not a variable of known type: tokenHandler
%33 = cbde.unknown : none loc("C:\\programozas\\udemy\\skinet\\DAL\\Services\\TokenService.cs" :39 :43) // Not a variable of known type: token
%34 = cbde.unknown : none loc("C:\\programozas\\udemy\\skinet\\DAL\\Services\\TokenService.cs" :39 :19) // tokenHandler.WriteToken(token) (InvocationExpression)
return %34 : none loc("C:\\programozas\\udemy\\skinet\\DAL\\Services\\TokenService.cs" :39 :12)

^1: // ExitBlock
cbde.unreachable

}
