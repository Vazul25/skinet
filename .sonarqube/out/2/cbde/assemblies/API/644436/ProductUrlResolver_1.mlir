func @_API.Helpers.ProductUrlResolver.Resolve$Core.Entities.Product.Core.DTO.ProductDTO.string.AutoMapper.ResolutionContext$(none, none, none, none) -> none loc("C:\\programozas\\udemy\\skinet\\API\\Helpers\\ProductUrlResolver.cs" :19 :8) {
^entry (%_source : none, %_destination : none, %_destMember : none, %_context : none):
%0 = cbde.alloca none loc("C:\\programozas\\udemy\\skinet\\API\\Helpers\\ProductUrlResolver.cs" :19 :30)
cbde.store %_source, %0 : memref<none> loc("C:\\programozas\\udemy\\skinet\\API\\Helpers\\ProductUrlResolver.cs" :19 :30)
%1 = cbde.alloca none loc("C:\\programozas\\udemy\\skinet\\API\\Helpers\\ProductUrlResolver.cs" :19 :46)
cbde.store %_destination, %1 : memref<none> loc("C:\\programozas\\udemy\\skinet\\API\\Helpers\\ProductUrlResolver.cs" :19 :46)
%2 = cbde.alloca none loc("C:\\programozas\\udemy\\skinet\\API\\Helpers\\ProductUrlResolver.cs" :19 :70)
cbde.store %_destMember, %2 : memref<none> loc("C:\\programozas\\udemy\\skinet\\API\\Helpers\\ProductUrlResolver.cs" :19 :70)
%3 = cbde.alloca none loc("C:\\programozas\\udemy\\skinet\\API\\Helpers\\ProductUrlResolver.cs" :19 :89)
cbde.store %_context, %3 : memref<none> loc("C:\\programozas\\udemy\\skinet\\API\\Helpers\\ProductUrlResolver.cs" :19 :89)
br ^0

^0: // BinaryBranchBlock
%4 = cbde.unknown : none loc("C:\\programozas\\udemy\\skinet\\API\\Helpers\\ProductUrlResolver.cs" :21 :17) // string (PredefinedType)
%5 = cbde.unknown : none loc("C:\\programozas\\udemy\\skinet\\API\\Helpers\\ProductUrlResolver.cs" :21 :38) // Not a variable of known type: source
%6 = cbde.unknown : none loc("C:\\programozas\\udemy\\skinet\\API\\Helpers\\ProductUrlResolver.cs" :21 :38) // source.PictureUrl (SimpleMemberAccessExpression)
%7 = cbde.unknown : i1 loc("C:\\programozas\\udemy\\skinet\\API\\Helpers\\ProductUrlResolver.cs" :21 :17) // string.IsNullOrEmpty(source.PictureUrl) (InvocationExpression)
%8 = cbde.unknown : i1 loc("C:\\programozas\\udemy\\skinet\\API\\Helpers\\ProductUrlResolver.cs" :21 :16) // !string.IsNullOrEmpty(source.PictureUrl) (LogicalNotExpression)
cond_br %8, ^1, ^2 loc("C:\\programozas\\udemy\\skinet\\API\\Helpers\\ProductUrlResolver.cs" :21 :16)

^1: // JumpBlock
%9 = cbde.unknown : none loc("C:\\programozas\\udemy\\skinet\\API\\Helpers\\ProductUrlResolver.cs" :23 :23) // Not a variable of known type: _config
%10 = cbde.unknown : none loc("C:\\programozas\\udemy\\skinet\\API\\Helpers\\ProductUrlResolver.cs" :23 :31) // "ApiUrl" (StringLiteralExpression)
%11 = cbde.unknown : none loc("C:\\programozas\\udemy\\skinet\\API\\Helpers\\ProductUrlResolver.cs" :23 :23) // _config["ApiUrl"] (ElementAccessExpression)
%12 = cbde.unknown : none loc("C:\\programozas\\udemy\\skinet\\API\\Helpers\\ProductUrlResolver.cs" :23 :41) // "/" (StringLiteralExpression)
%13 = cbde.unknown : none loc("C:\\programozas\\udemy\\skinet\\API\\Helpers\\ProductUrlResolver.cs" :23 :23) // Binary expression on unsupported types _config["ApiUrl"]+"/"
%14 = cbde.unknown : none loc("C:\\programozas\\udemy\\skinet\\API\\Helpers\\ProductUrlResolver.cs" :23 :47) // Not a variable of known type: source
%15 = cbde.unknown : none loc("C:\\programozas\\udemy\\skinet\\API\\Helpers\\ProductUrlResolver.cs" :23 :47) // source.PictureUrl (SimpleMemberAccessExpression)
%16 = cbde.unknown : none loc("C:\\programozas\\udemy\\skinet\\API\\Helpers\\ProductUrlResolver.cs" :23 :23) // Binary expression on unsupported types _config["ApiUrl"]+"/" + source.PictureUrl
return %16 : none loc("C:\\programozas\\udemy\\skinet\\API\\Helpers\\ProductUrlResolver.cs" :23 :16)

^2: // JumpBlock
%17 = cbde.unknown : none loc("C:\\programozas\\udemy\\skinet\\API\\Helpers\\ProductUrlResolver.cs" :25 :19) // null (NullLiteralExpression)
return %17 : none loc("C:\\programozas\\udemy\\skinet\\API\\Helpers\\ProductUrlResolver.cs" :25 :12)

^3: // ExitBlock
cbde.unreachable

}
