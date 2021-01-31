func @_API.Controllers.ErrorController.Error$int$(i32) -> none loc("C:\\programozas\\udemy\\skinet\\API\\Controllers\\ErrorController.cs" :11 :8) {
^entry (%_code : i32):
%0 = cbde.alloca i32 loc("C:\\programozas\\udemy\\skinet\\API\\Controllers\\ErrorController.cs" :11 :35)
cbde.store %_code, %0 : memref<i32> loc("C:\\programozas\\udemy\\skinet\\API\\Controllers\\ErrorController.cs" :11 :35)
br ^0

^0: // JumpBlock
%1 = cbde.load %0 : memref<i32> loc("C:\\programozas\\udemy\\skinet\\API\\Controllers\\ErrorController.cs" :13 :52)
%2 = cbde.unknown : none loc("C:\\programozas\\udemy\\skinet\\API\\Controllers\\ErrorController.cs" :13 :36) // new ApiResponse(code) (ObjectCreationExpression)
%3 = cbde.unknown : none loc("C:\\programozas\\udemy\\skinet\\API\\Controllers\\ErrorController.cs" :13 :19) // new ObjectResult(new ApiResponse(code)) (ObjectCreationExpression)
return %3 : none loc("C:\\programozas\\udemy\\skinet\\API\\Controllers\\ErrorController.cs" :13 :12)

^1: // ExitBlock
cbde.unreachable

}
