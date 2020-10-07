using DAL.Data.Repository.Interfaces;
using Microsoft.EntityFrameworkCore.Diagnostics;
using Core.Entities;
using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;

namespace DAL.Data
{
    public interface IUnitOfWork : IDisposable
    {
       
       
        IGenericRepository<TEntity> Repository<TEntity>() where TEntity: BaseEntity;
        Task<int> Complete();
    }
}
