func @_DAL.Specifications.Evaluator.SpecificationEvaluator$TEntity$.Test$System.Collections.Generic.IEnumerable$TEntity$.DAL.Specifications.ISpecification$TEntity$$(none, none) -> i1 loc("C:\\programozas\\udemy\\skinet\\DAL\\Data\\SpecificationEvaluator.cs" :11 :8) {
^entry (%_inputList : none, %_spec : none):
%0 = cbde.alloca none loc("C:\\programozas\\udemy\\skinet\\DAL\\Data\\SpecificationEvaluator.cs" :11 :32)
cbde.store %_inputList, %0 : memref<none> loc("C:\\programozas\\udemy\\skinet\\DAL\\Data\\SpecificationEvaluator.cs" :11 :32)
%1 = cbde.alloca none loc("C:\\programozas\\udemy\\skinet\\DAL\\Data\\SpecificationEvaluator.cs" :11 :64)
cbde.store %_spec, %1 : memref<none> loc("C:\\programozas\\udemy\\skinet\\DAL\\Data\\SpecificationEvaluator.cs" :11 :64)
br ^0

^0: // BinaryBranchBlock
%2 = cbde.unknown : none loc("C:\\programozas\\udemy\\skinet\\DAL\\Data\\SpecificationEvaluator.cs" :13 :52) // Not a variable of known type: inputList
%3 = cbde.unknown : none loc("C:\\programozas\\udemy\\skinet\\DAL\\Data\\SpecificationEvaluator.cs" :13 :52) // inputList.ToList() (InvocationExpression)
%5 = cbde.unknown : none loc("C:\\programozas\\udemy\\skinet\\DAL\\Data\\SpecificationEvaluator.cs" :14 :17) // Not a variable of known type: spec
%6 = cbde.unknown : none loc("C:\\programozas\\udemy\\skinet\\DAL\\Data\\SpecificationEvaluator.cs" :14 :17) // spec.Criteria (SimpleMemberAccessExpression)
%7 = cbde.unknown : none loc("C:\\programozas\\udemy\\skinet\\DAL\\Data\\SpecificationEvaluator.cs" :14 :34) // null (NullLiteralExpression)
%8 = cbde.unknown : i1  loc("C:\\programozas\\udemy\\skinet\\DAL\\Data\\SpecificationEvaluator.cs" :14 :17) // comparison of unknown type: spec.Criteria != null
cond_br %8, ^1, ^2 loc("C:\\programozas\\udemy\\skinet\\DAL\\Data\\SpecificationEvaluator.cs" :14 :17)

^1: // SimpleBlock
%9 = cbde.unknown : none loc("C:\\programozas\\udemy\\skinet\\DAL\\Data\\SpecificationEvaluator.cs" :16 :35) // Not a variable of known type: inputListMutated
%10 = cbde.unknown : none loc("C:\\programozas\\udemy\\skinet\\DAL\\Data\\SpecificationEvaluator.cs" :16 :58) // Not a variable of known type: spec
%11 = cbde.unknown : none loc("C:\\programozas\\udemy\\skinet\\DAL\\Data\\SpecificationEvaluator.cs" :16 :58) // spec.Criteria (SimpleMemberAccessExpression)
%12 = cbde.unknown : none loc("C:\\programozas\\udemy\\skinet\\DAL\\Data\\SpecificationEvaluator.cs" :16 :58) // spec.Criteria.Compile() (InvocationExpression)
%13 = cbde.unknown : none loc("C:\\programozas\\udemy\\skinet\\DAL\\Data\\SpecificationEvaluator.cs" :16 :35) // inputListMutated.Where(spec.Criteria.Compile()) (InvocationExpression)
br ^2

^2: // BinaryBranchBlock
%14 = cbde.unknown : none loc("C:\\programozas\\udemy\\skinet\\DAL\\Data\\SpecificationEvaluator.cs" :18 :16) // Not a variable of known type: spec
%15 = cbde.unknown : none loc("C:\\programozas\\udemy\\skinet\\DAL\\Data\\SpecificationEvaluator.cs" :18 :16) // spec.OrderBy (SimpleMemberAccessExpression)
%16 = cbde.unknown : none loc("C:\\programozas\\udemy\\skinet\\DAL\\Data\\SpecificationEvaluator.cs" :18 :32) // null (NullLiteralExpression)
%17 = cbde.unknown : i1  loc("C:\\programozas\\udemy\\skinet\\DAL\\Data\\SpecificationEvaluator.cs" :18 :16) // comparison of unknown type: spec.OrderBy != null
cond_br %17, ^3, ^4 loc("C:\\programozas\\udemy\\skinet\\DAL\\Data\\SpecificationEvaluator.cs" :18 :16)

^3: // SimpleBlock
%18 = cbde.unknown : none loc("C:\\programozas\\udemy\\skinet\\DAL\\Data\\SpecificationEvaluator.cs" :20 :35) // Not a variable of known type: inputListMutated
%19 = cbde.unknown : none loc("C:\\programozas\\udemy\\skinet\\DAL\\Data\\SpecificationEvaluator.cs" :20 :60) // Not a variable of known type: spec
%20 = cbde.unknown : none loc("C:\\programozas\\udemy\\skinet\\DAL\\Data\\SpecificationEvaluator.cs" :20 :60) // spec.OrderBy (SimpleMemberAccessExpression)
%21 = cbde.unknown : none loc("C:\\programozas\\udemy\\skinet\\DAL\\Data\\SpecificationEvaluator.cs" :20 :60) // spec.OrderBy.Compile() (InvocationExpression)
%22 = cbde.unknown : none loc("C:\\programozas\\udemy\\skinet\\DAL\\Data\\SpecificationEvaluator.cs" :20 :35) // inputListMutated.OrderBy(spec.OrderBy.Compile()) (InvocationExpression)
br ^4

^4: // BinaryBranchBlock
%23 = cbde.unknown : none loc("C:\\programozas\\udemy\\skinet\\DAL\\Data\\SpecificationEvaluator.cs" :22 :16) // Not a variable of known type: spec
%24 = cbde.unknown : none loc("C:\\programozas\\udemy\\skinet\\DAL\\Data\\SpecificationEvaluator.cs" :22 :16) // spec.OrderByDescending (SimpleMemberAccessExpression)
%25 = cbde.unknown : none loc("C:\\programozas\\udemy\\skinet\\DAL\\Data\\SpecificationEvaluator.cs" :22 :42) // null (NullLiteralExpression)
%26 = cbde.unknown : i1  loc("C:\\programozas\\udemy\\skinet\\DAL\\Data\\SpecificationEvaluator.cs" :22 :16) // comparison of unknown type: spec.OrderByDescending != null
cond_br %26, ^5, ^6 loc("C:\\programozas\\udemy\\skinet\\DAL\\Data\\SpecificationEvaluator.cs" :22 :16)

^5: // SimpleBlock
%27 = cbde.unknown : none loc("C:\\programozas\\udemy\\skinet\\DAL\\Data\\SpecificationEvaluator.cs" :24 :35) // Not a variable of known type: inputListMutated
%28 = cbde.unknown : none loc("C:\\programozas\\udemy\\skinet\\DAL\\Data\\SpecificationEvaluator.cs" :24 :70) // Not a variable of known type: spec
%29 = cbde.unknown : none loc("C:\\programozas\\udemy\\skinet\\DAL\\Data\\SpecificationEvaluator.cs" :24 :70) // spec.OrderBy (SimpleMemberAccessExpression)
%30 = cbde.unknown : none loc("C:\\programozas\\udemy\\skinet\\DAL\\Data\\SpecificationEvaluator.cs" :24 :70) // spec.OrderBy.Compile() (InvocationExpression)
%31 = cbde.unknown : none loc("C:\\programozas\\udemy\\skinet\\DAL\\Data\\SpecificationEvaluator.cs" :24 :35) // inputListMutated.OrderByDescending(spec.OrderBy.Compile()) (InvocationExpression)
br ^6

^6: // BinaryBranchBlock
%32 = cbde.unknown : none loc("C:\\programozas\\udemy\\skinet\\DAL\\Data\\SpecificationEvaluator.cs" :26 :16) // Not a variable of known type: spec
%33 = cbde.unknown : i1 loc("C:\\programozas\\udemy\\skinet\\DAL\\Data\\SpecificationEvaluator.cs" :26 :16) // spec.IsPagingEnabled (SimpleMemberAccessExpression)
cond_br %33, ^7, ^8 loc("C:\\programozas\\udemy\\skinet\\DAL\\Data\\SpecificationEvaluator.cs" :26 :16)

^7: // SimpleBlock
%34 = cbde.unknown : none loc("C:\\programozas\\udemy\\skinet\\DAL\\Data\\SpecificationEvaluator.cs" :28 :35) // Not a variable of known type: inputListMutated
%35 = cbde.unknown : none loc("C:\\programozas\\udemy\\skinet\\DAL\\Data\\SpecificationEvaluator.cs" :28 :57) // Not a variable of known type: spec
%36 = cbde.unknown : i32 loc("C:\\programozas\\udemy\\skinet\\DAL\\Data\\SpecificationEvaluator.cs" :28 :57) // spec.Skip (SimpleMemberAccessExpression)
%37 = cbde.unknown : none loc("C:\\programozas\\udemy\\skinet\\DAL\\Data\\SpecificationEvaluator.cs" :28 :35) // inputListMutated.Skip(spec.Skip) (InvocationExpression)
%38 = cbde.unknown : none loc("C:\\programozas\\udemy\\skinet\\DAL\\Data\\SpecificationEvaluator.cs" :28 :73) // Not a variable of known type: spec
%39 = cbde.unknown : i32 loc("C:\\programozas\\udemy\\skinet\\DAL\\Data\\SpecificationEvaluator.cs" :28 :73) // spec.Take (SimpleMemberAccessExpression)
%40 = cbde.unknown : none loc("C:\\programozas\\udemy\\skinet\\DAL\\Data\\SpecificationEvaluator.cs" :28 :35) // inputListMutated.Skip(spec.Skip).Take(spec.Take) (InvocationExpression)
br ^8

^8: // JumpBlock
%41 = cbde.unknown : none loc("C:\\programozas\\udemy\\skinet\\DAL\\Data\\SpecificationEvaluator.cs" :30 :19) // Not a variable of known type: inputListMutated
%42 = cbde.unknown : none loc("C:\\programozas\\udemy\\skinet\\DAL\\Data\\SpecificationEvaluator.cs" :30 :50) // Not a variable of known type: inputList
%43 = cbde.unknown : i1 loc("C:\\programozas\\udemy\\skinet\\DAL\\Data\\SpecificationEvaluator.cs" :30 :19) // inputListMutated.SequenceEqual(inputList) (InvocationExpression)
return %43 : i1 loc("C:\\programozas\\udemy\\skinet\\DAL\\Data\\SpecificationEvaluator.cs" :30 :12)

^9: // ExitBlock
cbde.unreachable

}
// Skipping function GetQuery(none, none), it contains poisonous unsupported syntaxes

