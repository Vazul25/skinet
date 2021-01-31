func @_Core.Entities.OrderAggregate.Order.GetTotal$$() -> none loc("C:\\programozas\\udemy\\skinet\\Models\\Entities\\OrderAggregate\\Order.cs" :31 :8) {
^entry :
br ^0

^0: // JumpBlock
%0 = cbde.unknown : none loc("C:\\programozas\\udemy\\skinet\\Models\\Entities\\OrderAggregate\\Order.cs" :33 :19) // Not a variable of known type: Subtotal
%1 = cbde.unknown : none loc("C:\\programozas\\udemy\\skinet\\Models\\Entities\\OrderAggregate\\Order.cs" :33 :30) // Not a variable of known type: DeliveryMethod
%2 = cbde.unknown : none loc("C:\\programozas\\udemy\\skinet\\Models\\Entities\\OrderAggregate\\Order.cs" :33 :30) // DeliveryMethod.Price (SimpleMemberAccessExpression)
%3 = cbde.unknown : none loc("C:\\programozas\\udemy\\skinet\\Models\\Entities\\OrderAggregate\\Order.cs" :33 :19) // Binary expression on unsupported types Subtotal + DeliveryMethod.Price
return %3 : none loc("C:\\programozas\\udemy\\skinet\\Models\\Entities\\OrderAggregate\\Order.cs" :33 :12)

^1: // ExitBlock
cbde.unreachable

}
