func @_DAL.Specifications.BaseSpecification$T$.AddInclude$System.Linq.Expressions.Expression$System.Func$T.object$$$(none) -> () loc("C:\\programozas\\udemy\\skinet\\Models\\Specifications\\BaseSpecification.cs" :34 :8) {
^entry (%_includeExpression : none):
%0 = cbde.alloca none loc("C:\\programozas\\udemy\\skinet\\Models\\Specifications\\BaseSpecification.cs" :34 :34)
cbde.store %_includeExpression, %0 : memref<none> loc("C:\\programozas\\udemy\\skinet\\Models\\Specifications\\BaseSpecification.cs" :34 :34)
br ^0

^0: // SimpleBlock
%1 = cbde.unknown : none loc("C:\\programozas\\udemy\\skinet\\Models\\Specifications\\BaseSpecification.cs" :36 :12) // Not a variable of known type: Includes
%2 = cbde.unknown : none loc("C:\\programozas\\udemy\\skinet\\Models\\Specifications\\BaseSpecification.cs" :36 :25) // Not a variable of known type: includeExpression
%3 = cbde.unknown : none loc("C:\\programozas\\udemy\\skinet\\Models\\Specifications\\BaseSpecification.cs" :36 :12) // Includes.Add(includeExpression) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_DAL.Specifications.BaseSpecification$T$.AddInclude$string$(none) -> () loc("C:\\programozas\\udemy\\skinet\\Models\\Specifications\\BaseSpecification.cs" :38 :8) {
^entry (%_includeString : none):
%0 = cbde.alloca none loc("C:\\programozas\\udemy\\skinet\\Models\\Specifications\\BaseSpecification.cs" :38 :34)
cbde.store %_includeString, %0 : memref<none> loc("C:\\programozas\\udemy\\skinet\\Models\\Specifications\\BaseSpecification.cs" :38 :34)
br ^0

^0: // SimpleBlock
%1 = cbde.unknown : none loc("C:\\programozas\\udemy\\skinet\\Models\\Specifications\\BaseSpecification.cs" :40 :12) // Not a variable of known type: IncludeStrings
%2 = cbde.unknown : none loc("C:\\programozas\\udemy\\skinet\\Models\\Specifications\\BaseSpecification.cs" :40 :31) // Not a variable of known type: includeString
%3 = cbde.unknown : none loc("C:\\programozas\\udemy\\skinet\\Models\\Specifications\\BaseSpecification.cs" :40 :12) // IncludeStrings.Add(includeString) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_DAL.Specifications.BaseSpecification$T$.AddOrderBy$System.Linq.Expressions.Expression$System.Func$T.object$$$(none) -> () loc("C:\\programozas\\udemy\\skinet\\Models\\Specifications\\BaseSpecification.cs" :42 :8) {
^entry (%_orderByExpression : none):
%0 = cbde.alloca none loc("C:\\programozas\\udemy\\skinet\\Models\\Specifications\\BaseSpecification.cs" :42 :34)
cbde.store %_orderByExpression, %0 : memref<none> loc("C:\\programozas\\udemy\\skinet\\Models\\Specifications\\BaseSpecification.cs" :42 :34)
br ^0

^0: // SimpleBlock
%1 = cbde.unknown : none loc("C:\\programozas\\udemy\\skinet\\Models\\Specifications\\BaseSpecification.cs" :44 :22) // Not a variable of known type: orderByExpression
br ^1

^1: // ExitBlock
return

}
func @_DAL.Specifications.BaseSpecification$T$.AddOrderByDescending$System.Linq.Expressions.Expression$System.Func$T.object$$$(none) -> () loc("C:\\programozas\\udemy\\skinet\\Models\\Specifications\\BaseSpecification.cs" :46 :8) {
^entry (%_orderByDescencingExpression : none):
%0 = cbde.alloca none loc("C:\\programozas\\udemy\\skinet\\Models\\Specifications\\BaseSpecification.cs" :46 :44)
cbde.store %_orderByDescencingExpression, %0 : memref<none> loc("C:\\programozas\\udemy\\skinet\\Models\\Specifications\\BaseSpecification.cs" :46 :44)
br ^0

^0: // SimpleBlock
%1 = cbde.unknown : none loc("C:\\programozas\\udemy\\skinet\\Models\\Specifications\\BaseSpecification.cs" :48 :32) // Not a variable of known type: orderByDescencingExpression
br ^1

^1: // ExitBlock
return

}
func @_DAL.Specifications.BaseSpecification$T$.ApplyPaging$int.int$(i32, i32) -> () loc("C:\\programozas\\udemy\\skinet\\Models\\Specifications\\BaseSpecification.cs" :50 :8) {
^entry (%_skip : i32, %_take : i32):
%0 = cbde.alloca i32 loc("C:\\programozas\\udemy\\skinet\\Models\\Specifications\\BaseSpecification.cs" :50 :35)
cbde.store %_skip, %0 : memref<i32> loc("C:\\programozas\\udemy\\skinet\\Models\\Specifications\\BaseSpecification.cs" :50 :35)
%1 = cbde.alloca i32 loc("C:\\programozas\\udemy\\skinet\\Models\\Specifications\\BaseSpecification.cs" :50 :45)
cbde.store %_take, %1 : memref<i32> loc("C:\\programozas\\udemy\\skinet\\Models\\Specifications\\BaseSpecification.cs" :50 :45)
br ^0

^0: // SimpleBlock
%2 = cbde.load %0 : memref<i32> loc("C:\\programozas\\udemy\\skinet\\Models\\Specifications\\BaseSpecification.cs" :52 :19)
%3 = cbde.load %1 : memref<i32> loc("C:\\programozas\\udemy\\skinet\\Models\\Specifications\\BaseSpecification.cs" :53 :19)
%4 = constant 1 : i1 loc("C:\\programozas\\udemy\\skinet\\Models\\Specifications\\BaseSpecification.cs" :54 :30) // true
br ^1

^1: // ExitBlock
return

}
