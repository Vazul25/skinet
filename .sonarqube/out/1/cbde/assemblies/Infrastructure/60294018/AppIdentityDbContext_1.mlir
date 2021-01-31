func @_DAL.Identity.AppIdentityDbContext.OnModelCreating$Microsoft.EntityFrameworkCore.ModelBuilder$(none) -> () loc("C:\\programozas\\udemy\\skinet\\DAL\\Identity\\AppIdentityDbContext.cs" :15 :8) {
^entry (%_builder : none):
%0 = cbde.alloca none loc("C:\\programozas\\udemy\\skinet\\DAL\\Identity\\AppIdentityDbContext.cs" :15 :48)
cbde.store %_builder, %0 : memref<none> loc("C:\\programozas\\udemy\\skinet\\DAL\\Identity\\AppIdentityDbContext.cs" :15 :48)
br ^0

^0: // SimpleBlock
%1 = cbde.unknown : none loc("C:\\programozas\\udemy\\skinet\\DAL\\Identity\\AppIdentityDbContext.cs" :17 :12) // base (BaseExpression)
%2 = cbde.unknown : none loc("C:\\programozas\\udemy\\skinet\\DAL\\Identity\\AppIdentityDbContext.cs" :17 :33) // Not a variable of known type: builder
%3 = cbde.unknown : none loc("C:\\programozas\\udemy\\skinet\\DAL\\Identity\\AppIdentityDbContext.cs" :17 :12) // base.OnModelCreating(builder) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
