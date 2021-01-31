// Skipping function Up(none), it contains poisonous unsupported syntaxes

func @_DAL.Migrations.OrderAdded.Down$Microsoft.EntityFrameworkCore.Migrations.MigrationBuilder$(none) -> () loc("C:\\programozas\\udemy\\skinet\\DAL\\Migrations\\20201004101039_OrderAdded.cs" :110 :8) {
^entry (%_migrationBuilder : none):
%0 = cbde.alloca none loc("C:\\programozas\\udemy\\skinet\\DAL\\Migrations\\20201004101039_OrderAdded.cs" :110 :37)
cbde.store %_migrationBuilder, %0 : memref<none> loc("C:\\programozas\\udemy\\skinet\\DAL\\Migrations\\20201004101039_OrderAdded.cs" :110 :37)
br ^0

^0: // SimpleBlock
%1 = cbde.unknown : none loc("C:\\programozas\\udemy\\skinet\\DAL\\Migrations\\20201004101039_OrderAdded.cs" :112 :12) // Not a variable of known type: migrationBuilder
%2 = cbde.unknown : none loc("C:\\programozas\\udemy\\skinet\\DAL\\Migrations\\20201004101039_OrderAdded.cs" :113 :22) // "OrderItems" (StringLiteralExpression)
%3 = cbde.unknown : none loc("C:\\programozas\\udemy\\skinet\\DAL\\Migrations\\20201004101039_OrderAdded.cs" :112 :12) // migrationBuilder.DropTable(                  name: "OrderItems") (InvocationExpression)
%4 = cbde.unknown : none loc("C:\\programozas\\udemy\\skinet\\DAL\\Migrations\\20201004101039_OrderAdded.cs" :115 :12) // Not a variable of known type: migrationBuilder
%5 = cbde.unknown : none loc("C:\\programozas\\udemy\\skinet\\DAL\\Migrations\\20201004101039_OrderAdded.cs" :116 :22) // "Orders" (StringLiteralExpression)
%6 = cbde.unknown : none loc("C:\\programozas\\udemy\\skinet\\DAL\\Migrations\\20201004101039_OrderAdded.cs" :115 :12) // migrationBuilder.DropTable(                  name: "Orders") (InvocationExpression)
%7 = cbde.unknown : none loc("C:\\programozas\\udemy\\skinet\\DAL\\Migrations\\20201004101039_OrderAdded.cs" :118 :12) // Not a variable of known type: migrationBuilder
%8 = cbde.unknown : none loc("C:\\programozas\\udemy\\skinet\\DAL\\Migrations\\20201004101039_OrderAdded.cs" :119 :22) // "DeliveryMethod" (StringLiteralExpression)
%9 = cbde.unknown : none loc("C:\\programozas\\udemy\\skinet\\DAL\\Migrations\\20201004101039_OrderAdded.cs" :118 :12) // migrationBuilder.DropTable(                  name: "DeliveryMethod") (InvocationExpression)
%10 = cbde.unknown : none loc("C:\\programozas\\udemy\\skinet\\DAL\\Migrations\\20201004101039_OrderAdded.cs" :121 :12) // Not a variable of known type: migrationBuilder
%11 = cbde.unknown : none loc("C:\\programozas\\udemy\\skinet\\DAL\\Migrations\\20201004101039_OrderAdded.cs" :122 :22) // "Name" (StringLiteralExpression)
%12 = cbde.unknown : none loc("C:\\programozas\\udemy\\skinet\\DAL\\Migrations\\20201004101039_OrderAdded.cs" :123 :23) // "Products" (StringLiteralExpression)
%13 = cbde.unknown : none loc("C:\\programozas\\udemy\\skinet\\DAL\\Migrations\\20201004101039_OrderAdded.cs" :124 :22) // "nvarchar(100)" (StringLiteralExpression)
%14 = constant 100 : i32 loc("C:\\programozas\\udemy\\skinet\\DAL\\Migrations\\20201004101039_OrderAdded.cs" :125 :27)
%15 = constant 0 : i1 loc("C:\\programozas\\udemy\\skinet\\DAL\\Migrations\\20201004101039_OrderAdded.cs" :126 :26) // false
%16 = cbde.unknown : none loc("C:\\programozas\\udemy\\skinet\\DAL\\Migrations\\20201004101039_OrderAdded.cs" :127 :28) // typeof(string) (TypeOfExpression)
%17 = constant 200 : i32 loc("C:\\programozas\\udemy\\skinet\\DAL\\Migrations\\20201004101039_OrderAdded.cs" :128 :30)
%18 = cbde.unknown : none loc("C:\\programozas\\udemy\\skinet\\DAL\\Migrations\\20201004101039_OrderAdded.cs" :121 :12) // migrationBuilder.AlterColumn<string>(                  name: "Name",                  table: "Products",                  type: "nvarchar(100)",                  maxLength: 100,                  nullable: false,                  oldClrType: typeof(string),                  oldMaxLength: 200) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
