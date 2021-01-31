func @_API.Helpers.OrderItemUrlResolvcer.Resolve$Core.Entities.OrderAggregate.OrderItem.Core.DTO.OrderItemDto.string.AutoMapper.ResolutionContext$(none, none, none, none) -> none loc("C:\\programozas\\udemy\\skinet\\API\\Helpers\\OrderItemUrlResolvcer.cs" :22 :8) {
^entry (%_source : none, %_destination : none, %_destMember : none, %_context : none):
%0 = cbde.alloca none loc("C:\\programozas\\udemy\\skinet\\API\\Helpers\\OrderItemUrlResolvcer.cs" :22 :30)
cbde.store %_source, %0 : memref<none> loc("C:\\programozas\\udemy\\skinet\\API\\Helpers\\OrderItemUrlResolvcer.cs" :22 :30)
%1 = cbde.alloca none loc("C:\\programozas\\udemy\\skinet\\API\\Helpers\\OrderItemUrlResolvcer.cs" :22 :48)
cbde.store %_destination, %1 : memref<none> loc("C:\\programozas\\udemy\\skinet\\API\\Helpers\\OrderItemUrlResolvcer.cs" :22 :48)
%2 = cbde.alloca none loc("C:\\programozas\\udemy\\skinet\\API\\Helpers\\OrderItemUrlResolvcer.cs" :22 :74)
cbde.store %_destMember, %2 : memref<none> loc("C:\\programozas\\udemy\\skinet\\API\\Helpers\\OrderItemUrlResolvcer.cs" :22 :74)
%3 = cbde.alloca none loc("C:\\programozas\\udemy\\skinet\\API\\Helpers\\OrderItemUrlResolvcer.cs" :22 :93)
cbde.store %_context, %3 : memref<none> loc("C:\\programozas\\udemy\\skinet\\API\\Helpers\\OrderItemUrlResolvcer.cs" :22 :93)
br ^0

^0: // BinaryBranchBlock
%4 = cbde.unknown : none loc("C:\\programozas\\udemy\\skinet\\API\\Helpers\\OrderItemUrlResolvcer.cs" :24 :17) // string (PredefinedType)
%5 = cbde.unknown : none loc("C:\\programozas\\udemy\\skinet\\API\\Helpers\\OrderItemUrlResolvcer.cs" :24 :38) // Not a variable of known type: source
%6 = cbde.unknown : none loc("C:\\programozas\\udemy\\skinet\\API\\Helpers\\OrderItemUrlResolvcer.cs" :24 :38) // source.itemOrdered (SimpleMemberAccessExpression)
%7 = cbde.unknown : none loc("C:\\programozas\\udemy\\skinet\\API\\Helpers\\OrderItemUrlResolvcer.cs" :24 :38) // source.itemOrdered.PictureUrl (SimpleMemberAccessExpression)
%8 = cbde.unknown : i1 loc("C:\\programozas\\udemy\\skinet\\API\\Helpers\\OrderItemUrlResolvcer.cs" :24 :17) // string.IsNullOrEmpty(source.itemOrdered.PictureUrl) (InvocationExpression)
%9 = cbde.unknown : i1 loc("C:\\programozas\\udemy\\skinet\\API\\Helpers\\OrderItemUrlResolvcer.cs" :24 :16) // !string.IsNullOrEmpty(source.itemOrdered.PictureUrl) (LogicalNotExpression)
cond_br %9, ^1, ^2 loc("C:\\programozas\\udemy\\skinet\\API\\Helpers\\OrderItemUrlResolvcer.cs" :24 :16)

^1: // JumpBlock
%10 = cbde.unknown : none loc("C:\\programozas\\udemy\\skinet\\API\\Helpers\\OrderItemUrlResolvcer.cs" :26 :23) // Not a variable of known type: _config
%11 = cbde.unknown : none loc("C:\\programozas\\udemy\\skinet\\API\\Helpers\\OrderItemUrlResolvcer.cs" :26 :31) // "ApiUrl" (StringLiteralExpression)
%12 = cbde.unknown : none loc("C:\\programozas\\udemy\\skinet\\API\\Helpers\\OrderItemUrlResolvcer.cs" :26 :23) // _config["ApiUrl"] (ElementAccessExpression)
%13 = cbde.unknown : none loc("C:\\programozas\\udemy\\skinet\\API\\Helpers\\OrderItemUrlResolvcer.cs" :26 :43) // "/" (StringLiteralExpression)
%14 = cbde.unknown : none loc("C:\\programozas\\udemy\\skinet\\API\\Helpers\\OrderItemUrlResolvcer.cs" :26 :23) // Binary expression on unsupported types _config["ApiUrl"] + "/"
%15 = cbde.unknown : none loc("C:\\programozas\\udemy\\skinet\\API\\Helpers\\OrderItemUrlResolvcer.cs" :26 :49) // Not a variable of known type: source
%16 = cbde.unknown : none loc("C:\\programozas\\udemy\\skinet\\API\\Helpers\\OrderItemUrlResolvcer.cs" :26 :49) // source.itemOrdered (SimpleMemberAccessExpression)
%17 = cbde.unknown : none loc("C:\\programozas\\udemy\\skinet\\API\\Helpers\\OrderItemUrlResolvcer.cs" :26 :49) // source.itemOrdered.PictureUrl (SimpleMemberAccessExpression)
%18 = cbde.unknown : none loc("C:\\programozas\\udemy\\skinet\\API\\Helpers\\OrderItemUrlResolvcer.cs" :26 :23) // Binary expression on unsupported types _config["ApiUrl"] + "/" + source.itemOrdered.PictureUrl
return %18 : none loc("C:\\programozas\\udemy\\skinet\\API\\Helpers\\OrderItemUrlResolvcer.cs" :26 :16)

^2: // JumpBlock
%19 = cbde.unknown : none loc("C:\\programozas\\udemy\\skinet\\API\\Helpers\\OrderItemUrlResolvcer.cs" :28 :19) // null (NullLiteralExpression)
return %19 : none loc("C:\\programozas\\udemy\\skinet\\API\\Helpers\\OrderItemUrlResolvcer.cs" :28 :12)

^3: // ExitBlock
cbde.unreachable

}
