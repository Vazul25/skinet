func @_API.Controllers.FallbackController.Index$$() -> none loc("C:\\programozas\\udemy\\skinet\\API\\Controllers\\FallbackController.cs" :12 :8) {
^entry :
br ^0

^0: // JumpBlock
// Entity from another assembly: PhysicalFile
// Entity from another assembly: Path
// Entity from another assembly: Directory
%0 = cbde.unknown : none loc("C:\\programozas\\udemy\\skinet\\API\\Controllers\\FallbackController.cs" :14 :45) // Directory.GetCurrentDirectory() (InvocationExpression)
%1 = cbde.unknown : none loc("C:\\programozas\\udemy\\skinet\\API\\Controllers\\FallbackController.cs" :14 :78) // "wwwroot" (StringLiteralExpression)
%2 = cbde.unknown : none loc("C:\\programozas\\udemy\\skinet\\API\\Controllers\\FallbackController.cs" :14 :89) // "index.html" (StringLiteralExpression)
%3 = cbde.unknown : none loc("C:\\programozas\\udemy\\skinet\\API\\Controllers\\FallbackController.cs" :14 :32) // Path.Combine(Directory.GetCurrentDirectory(), "wwwroot", "index.html") (InvocationExpression)
%4 = cbde.unknown : none loc("C:\\programozas\\udemy\\skinet\\API\\Controllers\\FallbackController.cs" :14 :104) // "text/HTML" (StringLiteralExpression)
%5 = cbde.unknown : none loc("C:\\programozas\\udemy\\skinet\\API\\Controllers\\FallbackController.cs" :14 :19) // PhysicalFile(Path.Combine(Directory.GetCurrentDirectory(), "wwwroot", "index.html"), "text/HTML") (InvocationExpression)
return %5 : none loc("C:\\programozas\\udemy\\skinet\\API\\Controllers\\FallbackController.cs" :14 :12)

^1: // ExitBlock
cbde.unreachable

}
