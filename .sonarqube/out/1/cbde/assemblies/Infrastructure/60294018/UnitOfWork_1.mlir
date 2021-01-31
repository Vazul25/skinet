// Skipping function Complete(), it contains poisonous unsupported syntaxes

func @_DAL.Data.UnitOfWork.Dispose$$() -> () loc("C:\\programozas\\udemy\\skinet\\DAL\\Data\\UnitOfWork.cs" :25 :8) {
^entry :
br ^0

^0: // SimpleBlock
%0 = cbde.unknown : none loc("C:\\programozas\\udemy\\skinet\\DAL\\Data\\UnitOfWork.cs" :27 :12) // Not a variable of known type: _context
%1 = cbde.unknown : none loc("C:\\programozas\\udemy\\skinet\\DAL\\Data\\UnitOfWork.cs" :27 :12) // _context.Dispose() (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_DAL.Data.UnitOfWork.Repository$T$$$() -> none loc("C:\\programozas\\udemy\\skinet\\DAL\\Data\\UnitOfWork.cs" :29 :8) {
^entry :
br ^0

^0: // BinaryBranchBlock
%0 = cbde.unknown : none loc("C:\\programozas\\udemy\\skinet\\DAL\\Data\\UnitOfWork.cs" :32 :16) // Not a variable of known type: _repositories
%1 = cbde.unknown : none loc("C:\\programozas\\udemy\\skinet\\DAL\\Data\\UnitOfWork.cs" :32 :42) // typeof(T) (TypeOfExpression)
%2 = cbde.unknown : i1 loc("C:\\programozas\\udemy\\skinet\\DAL\\Data\\UnitOfWork.cs" :32 :16) // _repositories.ContainsKey(typeof(T)) (InvocationExpression)
%3 = constant 1 : i1 loc("C:\\programozas\\udemy\\skinet\\DAL\\Data\\UnitOfWork.cs" :32 :56) // true
%4 = cmpi "eq", %2, %3 : i1 loc("C:\\programozas\\udemy\\skinet\\DAL\\Data\\UnitOfWork.cs" :32 :16)
cond_br %4, ^1, ^2 loc("C:\\programozas\\udemy\\skinet\\DAL\\Data\\UnitOfWork.cs" :32 :16)

^1: // JumpBlock
%5 = cbde.unknown : none loc("C:\\programozas\\udemy\\skinet\\DAL\\Data\\UnitOfWork.cs" :34 :23) // Not a variable of known type: _repositories
%6 = cbde.unknown : none loc("C:\\programozas\\udemy\\skinet\\DAL\\Data\\UnitOfWork.cs" :34 :37) // typeof(T) (TypeOfExpression)
%7 = cbde.unknown : none loc("C:\\programozas\\udemy\\skinet\\DAL\\Data\\UnitOfWork.cs" :34 :23) // _repositories[typeof(T)] (ElementAccessExpression)
%8 = cbde.unknown : none loc("C:\\programozas\\udemy\\skinet\\DAL\\Data\\UnitOfWork.cs" :34 :23) // _repositories[typeof(T)] as IGenericRepository<T> (AsExpression)
return %8 : none loc("C:\\programozas\\udemy\\skinet\\DAL\\Data\\UnitOfWork.cs" :34 :16)

^2: // JumpBlock
%9 = cbde.unknown : none loc("C:\\programozas\\udemy\\skinet\\DAL\\Data\\UnitOfWork.cs" :36 :66) // Not a variable of known type: _context
%10 = cbde.unknown : none loc("C:\\programozas\\udemy\\skinet\\DAL\\Data\\UnitOfWork.cs" :36 :41) // new GenericRepository<T>(_context) (ObjectCreationExpression)
%12 = cbde.unknown : none loc("C:\\programozas\\udemy\\skinet\\DAL\\Data\\UnitOfWork.cs" :37 :12) // Not a variable of known type: _repositories
%13 = cbde.unknown : none loc("C:\\programozas\\udemy\\skinet\\DAL\\Data\\UnitOfWork.cs" :37 :30) // typeof(T) (TypeOfExpression)
%14 = cbde.unknown : none loc("C:\\programozas\\udemy\\skinet\\DAL\\Data\\UnitOfWork.cs" :37 :41) // Not a variable of known type: repo
%15 = cbde.unknown : none loc("C:\\programozas\\udemy\\skinet\\DAL\\Data\\UnitOfWork.cs" :37 :12) // _repositories.Add(typeof(T), repo) (InvocationExpression)
%16 = cbde.unknown : none loc("C:\\programozas\\udemy\\skinet\\DAL\\Data\\UnitOfWork.cs" :38 :19) // Not a variable of known type: repo
return %16 : none loc("C:\\programozas\\udemy\\skinet\\DAL\\Data\\UnitOfWork.cs" :38 :12)

^3: // ExitBlock
cbde.unreachable

}
