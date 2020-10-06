using System;
using System.Collections.Generic;
using System.Text;

namespace Models.DTO
{
    public class PagedResult<T>
    {
 
        

        public PagedResult(int pageIndex, int pageSize, int totalItems, IReadOnlyList<T> data)
        {
            PageNumber = pageIndex;
            PageSize = pageSize;
            AllResultsCount = totalItems;
            Data = data;
        }

        public IReadOnlyList<T> Data { get; set; }
        public int? AllResultsCount { get; set; }
        public int? PageNumber { get; set; }
        public int? PageSize { get; set; }
    }
}
