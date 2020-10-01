using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Text;

namespace Models.DTO
{
    public class BasketItemDto
    {
        [Required]
        public int Id { get; set; }
        
        [Required]
        public string ProductName { get; set; }
        
        [Required]
        [Range(0.1,double.MaxValue,ErrorMessage ="Price us be greater than 0.1")]
        public decimal Price { get; set; }
        
        [Required]
        [Range(1,double.MaxValue,ErrorMessage = "Quantity us be greater than 1")]
        public int Quantity { get; set; }
        
        [Required]
        public string Brand { get; set; }
        
        [Required]
        public string Type { get; set; }
        
        [Required]
        public string PictureUrl { get; set; }
    }
}
