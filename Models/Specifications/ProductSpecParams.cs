using System;
using System.Collections.Generic;
using System.Text;

namespace DAL.Specifications
{
    public class ProductSpecParams
    {
        private const int MaxPageSize = 50;
        public int PageIndex { get; set; } = 1;
        private int _pageSize = 6;
        public int PageSize
        {
            get => _pageSize;
            set => _pageSize = Math.Min(MaxPageSize, Math.Max(value,1));
        }
        public int? BrandId { get; set; }
        public int? TypeId { get; set; }
        public string Sort{ get; set; }
        public string _search;
        public string Search
        {
            get => _search;
            set => _search = value.ToLower();
        }
    }
}
