using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Text;

namespace Models.Entities
{
    public class Product : BaseEntity
    {
        [Required]
        [MaxLength(200)]
        public string Name { get; set; }
        [Required]
        [MaxLength(200)]
        public string Description { get; set; }
        [Required]
        [Column(TypeName = "decimal(18, 2)")]
        public decimal Price { get; set; }
        public string PictureUrl { get; set; }
        [ForeignKey("ProductTypeId")]
        public ProductType ProductType{ get; set; }
        public int ProductTypeId { get; set; }

        [ForeignKey("ProductBrandId")]
        public ProductBrand ProductBrand{ get; set; }
        public int ProductBrandId { get; set; }

    }
}
