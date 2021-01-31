func @_API.Controllers.BuggyController.GetNotFound$$() -> none loc("C:\\programozas\\udemy\\skinet\\API\\Controllers\\BuggyController.cs" :20 :8) {
^entry :
br ^0

^0: // BinaryBranchBlock
%0 = cbde.unknown : none loc("C:\\programozas\\udemy\\skinet\\API\\Controllers\\BuggyController.cs" :23 :24) // Not a variable of known type: _context
%1 = cbde.unknown : none loc("C:\\programozas\\udemy\\skinet\\API\\Controllers\\BuggyController.cs" :23 :24) // _context.Products (SimpleMemberAccessExpression)
%2 = constant 44444 : i32 loc("C:\\programozas\\udemy\\skinet\\API\\Controllers\\BuggyController.cs" :23 :47)
%3 = cbde.unknown : none loc("C:\\programozas\\udemy\\skinet\\API\\Controllers\\BuggyController.cs" :23 :24) // _context.Products.Find(44444) (InvocationExpression)
%5 = cbde.unknown : none loc("C:\\programozas\\udemy\\skinet\\API\\Controllers\\BuggyController.cs" :24 :15) // Not a variable of known type: thing
%6 = cbde.unknown : none loc("C:\\programozas\\udemy\\skinet\\API\\Controllers\\BuggyController.cs" :24 :24) // null (NullLiteralExpression)
%7 = cbde.unknown : i1  loc("C:\\programozas\\udemy\\skinet\\API\\Controllers\\BuggyController.cs" :24 :15) // comparison of unknown type: thing == null
cond_br %7, ^1, ^2 loc("C:\\programozas\\udemy\\skinet\\API\\Controllers\\BuggyController.cs" :24 :15)

^1: // JumpBlock
// Entity from another assembly: NotFound
// Entity from another assembly: HttpStatusCode
%8 = constant unit loc("C:\\programozas\\udemy\\skinet\\API\\Controllers\\BuggyController.cs" :26 :53) // HttpStatusCode.NotFound (SimpleMemberAccessExpression)
%9 = cbde.unknown : i32 loc("C:\\programozas\\udemy\\skinet\\API\\Controllers\\BuggyController.cs" :26 :48) // (int)HttpStatusCode.NotFound (CastExpression)
%10 = cbde.unknown : none loc("C:\\programozas\\udemy\\skinet\\API\\Controllers\\BuggyController.cs" :26 :32) // new ApiResponse((int)HttpStatusCode.NotFound) (ObjectCreationExpression)
%11 = cbde.unknown : none loc("C:\\programozas\\udemy\\skinet\\API\\Controllers\\BuggyController.cs" :26 :23) // NotFound(new ApiResponse((int)HttpStatusCode.NotFound)) (InvocationExpression)
return %11 : none loc("C:\\programozas\\udemy\\skinet\\API\\Controllers\\BuggyController.cs" :26 :16)

^2: // JumpBlock
// Entity from another assembly: Ok
%12 = cbde.unknown : none loc("C:\\programozas\\udemy\\skinet\\API\\Controllers\\BuggyController.cs" :28 :19) // Ok() (InvocationExpression)
return %12 : none loc("C:\\programozas\\udemy\\skinet\\API\\Controllers\\BuggyController.cs" :28 :12)

^3: // ExitBlock
cbde.unreachable

}
func @_API.Controllers.BuggyController.GetServerError$$() -> none loc("C:\\programozas\\udemy\\skinet\\API\\Controllers\\BuggyController.cs" :30 :8) {
^entry :
br ^0

^0: // JumpBlock
%0 = cbde.unknown : none loc("C:\\programozas\\udemy\\skinet\\API\\Controllers\\BuggyController.cs" :33 :24) // Not a variable of known type: _context
%1 = cbde.unknown : none loc("C:\\programozas\\udemy\\skinet\\API\\Controllers\\BuggyController.cs" :33 :24) // _context.Products (SimpleMemberAccessExpression)
%2 = constant 44444 : i32 loc("C:\\programozas\\udemy\\skinet\\API\\Controllers\\BuggyController.cs" :33 :47)
%3 = cbde.unknown : none loc("C:\\programozas\\udemy\\skinet\\API\\Controllers\\BuggyController.cs" :33 :24) // _context.Products.Find(44444) (InvocationExpression)
%5 = cbde.unknown : none loc("C:\\programozas\\udemy\\skinet\\API\\Controllers\\BuggyController.cs" :34 :12) // Not a variable of known type: thing
%6 = cbde.unknown : none loc("C:\\programozas\\udemy\\skinet\\API\\Controllers\\BuggyController.cs" :34 :12) // thing.ToString() (InvocationExpression)
// Entity from another assembly: Ok
%7 = cbde.unknown : none loc("C:\\programozas\\udemy\\skinet\\API\\Controllers\\BuggyController.cs" :36 :19) // Ok() (InvocationExpression)
return %7 : none loc("C:\\programozas\\udemy\\skinet\\API\\Controllers\\BuggyController.cs" :36 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_API.Controllers.BuggyController.GetNotFoundRequest$$() -> none loc("C:\\programozas\\udemy\\skinet\\API\\Controllers\\BuggyController.cs" :39 :8) {
^entry :
br ^0

^0: // JumpBlock
// Entity from another assembly: BadRequest
// Entity from another assembly: HttpStatusCode
%0 = constant unit loc("C:\\programozas\\udemy\\skinet\\API\\Controllers\\BuggyController.cs" :42 :51) // HttpStatusCode.BadRequest (SimpleMemberAccessExpression)
%1 = cbde.unknown : i32 loc("C:\\programozas\\udemy\\skinet\\API\\Controllers\\BuggyController.cs" :42 :46) // (int)HttpStatusCode.BadRequest (CastExpression)
%2 = cbde.unknown : none loc("C:\\programozas\\udemy\\skinet\\API\\Controllers\\BuggyController.cs" :42 :30) // new ApiResponse((int)HttpStatusCode.BadRequest) (ObjectCreationExpression)
%3 = cbde.unknown : none loc("C:\\programozas\\udemy\\skinet\\API\\Controllers\\BuggyController.cs" :42 :19) // BadRequest(new ApiResponse((int)HttpStatusCode.BadRequest)) (InvocationExpression)
return %3 : none loc("C:\\programozas\\udemy\\skinet\\API\\Controllers\\BuggyController.cs" :42 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_API.Controllers.BuggyController.GetNotFoundRequest$int$(i32) -> none loc("C:\\programozas\\udemy\\skinet\\API\\Controllers\\BuggyController.cs" :44 :8) {
^entry (%_id : i32):
%0 = cbde.alloca i32 loc("C:\\programozas\\udemy\\skinet\\API\\Controllers\\BuggyController.cs" :45 :47)
cbde.store %_id, %0 : memref<i32> loc("C:\\programozas\\udemy\\skinet\\API\\Controllers\\BuggyController.cs" :45 :47)
br ^0

^0: // JumpBlock
// Entity from another assembly: Ok
%1 = cbde.unknown : none loc("C:\\programozas\\udemy\\skinet\\API\\Controllers\\BuggyController.cs" :47 :19) // Ok() (InvocationExpression)
return %1 : none loc("C:\\programozas\\udemy\\skinet\\API\\Controllers\\BuggyController.cs" :47 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_API.Controllers.BuggyController.GetSecretText$$() -> none loc("C:\\programozas\\udemy\\skinet\\API\\Controllers\\BuggyController.cs" :50 :8) {
^entry :
br ^0

^0: // JumpBlock
%0 = cbde.unknown : none loc("C:\\programozas\\udemy\\skinet\\API\\Controllers\\BuggyController.cs" :54 :19) // "GetSecretText" (StringLiteralExpression)
return %0 : none loc("C:\\programozas\\udemy\\skinet\\API\\Controllers\\BuggyController.cs" :54 :12)

^1: // ExitBlock
cbde.unreachable

}
