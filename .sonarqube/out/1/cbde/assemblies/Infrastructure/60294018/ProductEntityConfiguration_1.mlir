func @_DAL.EntityConfiguration.ProductEntityConfiguration.Configure$Microsoft.EntityFrameworkCore.Metadata.Builders.EntityTypeBuilder$Core.Entities.Product$$(none) -> () loc("C:\\programozas\\udemy\\skinet\\DAL\\Data\\EntityConfiguration\\ProductEntityConfiguration.cs" :18 :8) {
^entry (%_builder : none):
%0 = cbde.alloca none loc("C:\\programozas\\udemy\\skinet\\DAL\\Data\\EntityConfiguration\\ProductEntityConfiguration.cs" :18 :30)
cbde.store %_builder, %0 : memref<none> loc("C:\\programozas\\udemy\\skinet\\DAL\\Data\\EntityConfiguration\\ProductEntityConfiguration.cs" :18 :30)
br ^0

^0: // SimpleBlock
%1 = cbde.unknown : none loc("C:\\programozas\\udemy\\skinet\\DAL\\Data\\EntityConfiguration\\ProductEntityConfiguration.cs" :20 :12) // Not a variable of known type: builder
%2 = cbde.unknown : none loc("C:\\programozas\\udemy\\skinet\\DAL\\Data\\EntityConfiguration\\ProductEntityConfiguration.cs" :20 :28) // Not a variable of known type: _seedService
%3 = cbde.unknown : none loc("C:\\programozas\\udemy\\skinet\\DAL\\Data\\EntityConfiguration\\ProductEntityConfiguration.cs" :20 :28) // _seedService.Products (SimpleMemberAccessExpression)
%4 = cbde.unknown : none loc("C:\\programozas\\udemy\\skinet\\DAL\\Data\\EntityConfiguration\\ProductEntityConfiguration.cs" :20 :12) // builder.HasData(_seedService.Products) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
