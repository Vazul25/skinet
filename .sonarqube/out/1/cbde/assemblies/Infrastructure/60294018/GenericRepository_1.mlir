// Skipping function GetByIdAsync(i32), it contains poisonous unsupported syntaxes

// Skipping function GetByIdsAsync(none), it contains poisonous unsupported syntaxes

// Skipping function ListAllAsync(), it contains poisonous unsupported syntaxes

// Skipping function GetEntityWithSpec(none), it contains poisonous unsupported syntaxes

// Skipping function ListAsync(none), it contains poisonous unsupported syntaxes

func @_DAL.Data.Repository.GenericRepository$T$.ApplySpecification$DAL.Specifications.ISpecification$T$$(none) -> none loc("C:\\programozas\\udemy\\skinet\\DAL\\Data\\Repository\\GenericRepository.cs" :46 :8) {
^entry (%_spec : none):
%0 = cbde.alloca none loc("C:\\programozas\\udemy\\skinet\\DAL\\Data\\Repository\\GenericRepository.cs" :46 :49)
cbde.store %_spec, %0 : memref<none> loc("C:\\programozas\\udemy\\skinet\\DAL\\Data\\Repository\\GenericRepository.cs" :46 :49)
br ^0

^0: // JumpBlock
%1 = cbde.unknown : none loc("C:\\programozas\\udemy\\skinet\\DAL\\Data\\Repository\\GenericRepository.cs" :48 :19) // SpecificationEvaluator<T> (GenericName)
%2 = cbde.unknown : none loc("C:\\programozas\\udemy\\skinet\\DAL\\Data\\Repository\\GenericRepository.cs" :48 :54) // Not a variable of known type: _context
%3 = cbde.unknown : none loc("C:\\programozas\\udemy\\skinet\\DAL\\Data\\Repository\\GenericRepository.cs" :48 :54) // _context.Set<T>() (InvocationExpression)
%4 = cbde.unknown : none loc("C:\\programozas\\udemy\\skinet\\DAL\\Data\\Repository\\GenericRepository.cs" :48 :54) // _context.Set<T>().AsQueryable() (InvocationExpression)
%5 = cbde.unknown : none loc("C:\\programozas\\udemy\\skinet\\DAL\\Data\\Repository\\GenericRepository.cs" :48 :87) // Not a variable of known type: spec
%6 = cbde.unknown : none loc("C:\\programozas\\udemy\\skinet\\DAL\\Data\\Repository\\GenericRepository.cs" :48 :19) // SpecificationEvaluator<T>.GetQuery(_context.Set<T>().AsQueryable(), spec) (InvocationExpression)
return %6 : none loc("C:\\programozas\\udemy\\skinet\\DAL\\Data\\Repository\\GenericRepository.cs" :48 :12)

^1: // ExitBlock
cbde.unreachable

}
// Skipping function CountAsync(none), it contains poisonous unsupported syntaxes

func @_DAL.Data.Repository.GenericRepository$T$.Add$T$(none) -> () loc("C:\\programozas\\udemy\\skinet\\DAL\\Data\\Repository\\GenericRepository.cs" :56 :8) {
^entry (%_entity : none):
%0 = cbde.alloca none loc("C:\\programozas\\udemy\\skinet\\DAL\\Data\\Repository\\GenericRepository.cs" :56 :24)
cbde.store %_entity, %0 : memref<none> loc("C:\\programozas\\udemy\\skinet\\DAL\\Data\\Repository\\GenericRepository.cs" :56 :24)
br ^0

^0: // SimpleBlock
%1 = cbde.unknown : none loc("C:\\programozas\\udemy\\skinet\\DAL\\Data\\Repository\\GenericRepository.cs" :58 :12) // Not a variable of known type: _context
%2 = cbde.unknown : none loc("C:\\programozas\\udemy\\skinet\\DAL\\Data\\Repository\\GenericRepository.cs" :58 :12) // _context.Set<T>() (InvocationExpression)
%3 = cbde.unknown : none loc("C:\\programozas\\udemy\\skinet\\DAL\\Data\\Repository\\GenericRepository.cs" :58 :34) // Not a variable of known type: entity
%4 = cbde.unknown : none loc("C:\\programozas\\udemy\\skinet\\DAL\\Data\\Repository\\GenericRepository.cs" :58 :12) // _context.Set<T>().Add(entity) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_DAL.Data.Repository.GenericRepository$T$.Update$T$(none) -> () loc("C:\\programozas\\udemy\\skinet\\DAL\\Data\\Repository\\GenericRepository.cs" :61 :8) {
^entry (%_entity : none):
%0 = cbde.alloca none loc("C:\\programozas\\udemy\\skinet\\DAL\\Data\\Repository\\GenericRepository.cs" :61 :27)
cbde.store %_entity, %0 : memref<none> loc("C:\\programozas\\udemy\\skinet\\DAL\\Data\\Repository\\GenericRepository.cs" :61 :27)
br ^0

^0: // SimpleBlock
%1 = cbde.unknown : none loc("C:\\programozas\\udemy\\skinet\\DAL\\Data\\Repository\\GenericRepository.cs" :63 :12) // Not a variable of known type: _context
%2 = cbde.unknown : none loc("C:\\programozas\\udemy\\skinet\\DAL\\Data\\Repository\\GenericRepository.cs" :63 :12) // _context.Set<T>() (InvocationExpression)
%3 = cbde.unknown : none loc("C:\\programozas\\udemy\\skinet\\DAL\\Data\\Repository\\GenericRepository.cs" :63 :37) // Not a variable of known type: entity
%4 = cbde.unknown : none loc("C:\\programozas\\udemy\\skinet\\DAL\\Data\\Repository\\GenericRepository.cs" :63 :12) // _context.Set<T>().Attach(entity) (InvocationExpression)
%5 = cbde.unknown : none loc("C:\\programozas\\udemy\\skinet\\DAL\\Data\\Repository\\GenericRepository.cs" :64 :12) // Not a variable of known type: _context
%6 = cbde.unknown : none loc("C:\\programozas\\udemy\\skinet\\DAL\\Data\\Repository\\GenericRepository.cs" :64 :27) // Not a variable of known type: entity
%7 = cbde.unknown : none loc("C:\\programozas\\udemy\\skinet\\DAL\\Data\\Repository\\GenericRepository.cs" :64 :12) // _context.Entry(entity) (InvocationExpression)
%8 = cbde.unknown : none loc("C:\\programozas\\udemy\\skinet\\DAL\\Data\\Repository\\GenericRepository.cs" :64 :12) // _context.Entry(entity).State (SimpleMemberAccessExpression)
// Entity from another assembly: EntityState
%9 = constant unit loc("C:\\programozas\\udemy\\skinet\\DAL\\Data\\Repository\\GenericRepository.cs" :64 :43) // EntityState.Modified (SimpleMemberAccessExpression)
br ^1

^1: // ExitBlock
return

}
func @_DAL.Data.Repository.GenericRepository$T$.Delete$T$(none) -> () loc("C:\\programozas\\udemy\\skinet\\DAL\\Data\\Repository\\GenericRepository.cs" :67 :8) {
^entry (%_entity : none):
%0 = cbde.alloca none loc("C:\\programozas\\udemy\\skinet\\DAL\\Data\\Repository\\GenericRepository.cs" :67 :27)
cbde.store %_entity, %0 : memref<none> loc("C:\\programozas\\udemy\\skinet\\DAL\\Data\\Repository\\GenericRepository.cs" :67 :27)
br ^0

^0: // SimpleBlock
%1 = cbde.unknown : none loc("C:\\programozas\\udemy\\skinet\\DAL\\Data\\Repository\\GenericRepository.cs" :69 :12) // Not a variable of known type: _context
%2 = cbde.unknown : none loc("C:\\programozas\\udemy\\skinet\\DAL\\Data\\Repository\\GenericRepository.cs" :69 :12) // _context.Set<T>() (InvocationExpression)
%3 = cbde.unknown : none loc("C:\\programozas\\udemy\\skinet\\DAL\\Data\\Repository\\GenericRepository.cs" :69 :37) // Not a variable of known type: entity
%4 = cbde.unknown : none loc("C:\\programozas\\udemy\\skinet\\DAL\\Data\\Repository\\GenericRepository.cs" :69 :12) // _context.Set<T>().Remove(entity) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
