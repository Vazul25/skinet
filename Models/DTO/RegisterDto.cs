using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Text;

namespace Models.DTO
{
    public class RegisterDto
    {
        [Required]
        [EmailAddress]
        public string Email { get; set; }
       
        [Required]
        public string DisplayName { get; set; }
        
        [Required]
        [RegularExpression(@"^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[#$^+=!*()@%&]).{8,}$",
            ErrorMessage ="Password must have 1 Uppercase, 1 lowercase, 1 number,1 alphanumeric and at least 6 char long")]
        public string Password { get; set; }
    }
}
