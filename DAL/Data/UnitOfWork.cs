using DAL.Data.Repository;
using DAL.Data.Repository.Interfaces;
using Models.Entities;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;

namespace DAL.Data
{
    public class UnitOfWork : IUnitOfWork
    {
        private readonly StoreContext _context;
        private Dictionary<Type, object> _repositories = new Dictionary<Type,object>();
        public UnitOfWork(StoreContext context)
        {
            _context = context;

        }
        public async Task<int> Complete()
        {
            return await _context.SaveChangesAsync();
        }

        public void Dispose()
        {
            _context.Dispose();
        }
        public IGenericRepository<T> Repository<T>() where T : BaseEntity
        {
            
            if (_repositories.ContainsKey(typeof(T)) == true)
            {
                return _repositories[typeof(T)] as IGenericRepository<T>;
            }
            IGenericRepository<T> repo = new GenericRepository<T>(_context);
            _repositories.Add(typeof(T), repo);
            return repo;
        }
        //public IGenericRepository<TEntity> Repository<TEntity>() where TEntity : BaseEntity
        //{            
        //    var type = typeof(TEntity).Name;
        //    if (!_repositories.ContainsKey(type))
        //    {
        //        var repositoryType = typeof(BaseRepository<>);
        //        var repositoryInstance = Activator.CreateInstance(repositoryType.MakeGenericType(typeof(TEntity)), _context);

        //        _repositories.Add(type, repositoryInstance);
        //    }
        //    return (IGenericRepository<TEntity>)_repositories[type];
        //}
    }
}
