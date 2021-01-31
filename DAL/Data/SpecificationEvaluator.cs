using Microsoft.EntityFrameworkCore;
using Core.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace DAL.Specifications.Evaluator
{
    public static class SpecificationEvaluator<TEntity> where TEntity : BaseEntity
    {
        public static bool Test(IEnumerable<TEntity> inputList, ISpecification<TEntity> spec)
        {
            IEnumerable<TEntity> inputListMutated = inputList.ToList();
             if (spec.Criteria != null)
            {
                inputListMutated = inputListMutated.Where(spec.Criteria.Compile());
            }
            if (spec.OrderBy != null)
            {
                inputListMutated = inputListMutated.OrderBy(spec.OrderBy.Compile());
            }
            if (spec.OrderByDescending != null)
            {
                inputListMutated = inputListMutated.OrderByDescending(spec.OrderBy.Compile());
            }
            if (spec.IsPagingEnabled)
            {
                inputListMutated = inputListMutated.Skip(spec.Skip).Take(spec.Take);
            }
            return inputListMutated.SequenceEqual(inputList);
        }
        public static IQueryable<TEntity> GetQuery(IQueryable<TEntity> inputQuery,ISpecification<TEntity> spec)
        {
            var query = inputQuery;
            if(spec.Criteria != null)
            {
                query = query.Where(spec.Criteria);
            }
            query = spec.Includes.Aggregate(query, (current, include) => current.Include(include));
            if(spec.OrderBy != null)
            {
                query = query.OrderBy(spec.OrderBy);
            }
            if (spec.OrderByDescending != null)
            {
                query = query.OrderByDescending(spec.OrderByDescending);
            }


            if (spec.IsPagingEnabled)
            {
                query = query.Skip(spec.Skip).Take(spec.Take);
            }
            return query;
        }
    }
}
