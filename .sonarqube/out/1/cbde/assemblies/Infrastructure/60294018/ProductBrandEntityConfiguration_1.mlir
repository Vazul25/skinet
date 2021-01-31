func @_DAL.EntityConfiguration.ProductBrandEntityConfiguration.Configure$Microsoft.EntityFrameworkCore.Metadata.Builders.EntityTypeBuilder$Core.Entities.ProductBrand$$(none) -> () loc("C:\\programozas\\udemy\\skinet\\DAL\\Data\\EntityConfiguration\\ProductBrandEntityConfiguration.cs" :18 :8) {
^entry (%_builder : none):
%0 = cbde.alloca none loc("C:\\programozas\\udemy\\skinet\\DAL\\Data\\EntityConfiguration\\ProductBrandEntityConfiguration.cs" :18 :30)
cbde.store %_builder, %0 : memref<none> loc("C:\\programozas\\udemy\\skinet\\DAL\\Data\\EntityConfiguration\\ProductBrandEntityConfiguration.cs" :18 :30)
br ^0

^0: // SimpleBlock
// Entity from another assembly: Console
// Entity from another assembly: Environment
%1 = cbde.unknown : none loc("C:\\programozas\\udemy\\skinet\\DAL\\Data\\EntityConfiguration\\ProductBrandEntityConfiguration.cs" :20 :65) // "DOTNET_ENVIRONMENT" (StringLiteralExpression)
%2 = cbde.unknown : none loc("C:\\programozas\\udemy\\skinet\\DAL\\Data\\EntityConfiguration\\ProductBrandEntityConfiguration.cs" :20 :30) // Environment.GetEnvironmentVariable("DOTNET_ENVIRONMENT") (InvocationExpression)
%3 = cbde.unknown : none loc("C:\\programozas\\udemy\\skinet\\DAL\\Data\\EntityConfiguration\\ProductBrandEntityConfiguration.cs" :20 :12) // Console.WriteLine(Environment.GetEnvironmentVariable("DOTNET_ENVIRONMENT")) (InvocationExpression)
%4 = cbde.unknown : none loc("C:\\programozas\\udemy\\skinet\\DAL\\Data\\EntityConfiguration\\ProductBrandEntityConfiguration.cs" :21 :12) // Not a variable of known type: builder
%5 = cbde.unknown : none loc("C:\\programozas\\udemy\\skinet\\DAL\\Data\\EntityConfiguration\\ProductBrandEntityConfiguration.cs" :21 :28) // Not a variable of known type: _seedService
%6 = cbde.unknown : none loc("C:\\programozas\\udemy\\skinet\\DAL\\Data\\EntityConfiguration\\ProductBrandEntityConfiguration.cs" :21 :28) // _seedService.ProductBrands (SimpleMemberAccessExpression)
%7 = cbde.unknown : none loc("C:\\programozas\\udemy\\skinet\\DAL\\Data\\EntityConfiguration\\ProductBrandEntityConfiguration.cs" :21 :12) // builder.HasData(_seedService.ProductBrands) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
