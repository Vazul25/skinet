using Models.Entities;
using System;
using System.Collections.Generic;
using System.Text;

namespace DAL.Specifications
{
    public class ProductWithFiltersForCountSpecification : BaseSpecification<Product>
    {
        public ProductWithFiltersForCountSpecification(ProductSpecParams specParams) : base(p =>
          (string.IsNullOrEmpty(specParams.Search) || p.Name.ToLower().Contains(specParams.Search)) &&
          (!specParams.BrandId.HasValue || p.ProductBrandId == specParams.BrandId) &&
          (!specParams.TypeId.HasValue || p.ProductTypeId == specParams.TypeId)
        )
        {

        }
    }
}
