// Skipping function Up(none), it contains poisonous unsupported syntaxes

func @_DAL.Migrations.initialseed.Down$Microsoft.EntityFrameworkCore.Migrations.MigrationBuilder$(none) -> () loc("C:\\programozas\\udemy\\skinet\\DAL\\Migrations\\20200919145402_initialseed.cs" :124 :8) {
^entry (%_migrationBuilder : none):
%0 = cbde.alloca none loc("C:\\programozas\\udemy\\skinet\\DAL\\Migrations\\20200919145402_initialseed.cs" :124 :37)
cbde.store %_migrationBuilder, %0 : memref<none> loc("C:\\programozas\\udemy\\skinet\\DAL\\Migrations\\20200919145402_initialseed.cs" :124 :37)
br ^0

^0: // SimpleBlock
%1 = cbde.unknown : none loc("C:\\programozas\\udemy\\skinet\\DAL\\Migrations\\20200919145402_initialseed.cs" :126 :12) // Not a variable of known type: migrationBuilder
%2 = cbde.unknown : none loc("C:\\programozas\\udemy\\skinet\\DAL\\Migrations\\20200919145402_initialseed.cs" :127 :22) // "Products" (StringLiteralExpression)
%3 = cbde.unknown : none loc("C:\\programozas\\udemy\\skinet\\DAL\\Migrations\\20200919145402_initialseed.cs" :126 :12) // migrationBuilder.DropTable(                  name: "Products") (InvocationExpression)
%4 = cbde.unknown : none loc("C:\\programozas\\udemy\\skinet\\DAL\\Migrations\\20200919145402_initialseed.cs" :129 :12) // Not a variable of known type: migrationBuilder
%5 = cbde.unknown : none loc("C:\\programozas\\udemy\\skinet\\DAL\\Migrations\\20200919145402_initialseed.cs" :130 :22) // "ProductBrands" (StringLiteralExpression)
%6 = cbde.unknown : none loc("C:\\programozas\\udemy\\skinet\\DAL\\Migrations\\20200919145402_initialseed.cs" :129 :12) // migrationBuilder.DropTable(                  name: "ProductBrands") (InvocationExpression)
%7 = cbde.unknown : none loc("C:\\programozas\\udemy\\skinet\\DAL\\Migrations\\20200919145402_initialseed.cs" :132 :12) // Not a variable of known type: migrationBuilder
%8 = cbde.unknown : none loc("C:\\programozas\\udemy\\skinet\\DAL\\Migrations\\20200919145402_initialseed.cs" :133 :22) // "ProductTypes" (StringLiteralExpression)
%9 = cbde.unknown : none loc("C:\\programozas\\udemy\\skinet\\DAL\\Migrations\\20200919145402_initialseed.cs" :132 :12) // migrationBuilder.DropTable(                  name: "ProductTypes") (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
