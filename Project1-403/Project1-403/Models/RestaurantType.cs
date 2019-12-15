﻿using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace Project1_403.Models
{
    public class RestaurantType
    {
        [Key]
        [Required]
        [StringLength(5, MinimumLength = 2, ErrorMessage = "Restaurant type code should be 2 to 5 characters long.")]
        [Display(Name = "Restaurant Type Code")]
        public string RestTypeCode { get; set; }

        [Required]
        [StringLength(15, MinimumLength = 2, ErrorMessage = "Restaurant type description should be 2 to 15 characters long.")]
        [Display(Name = "Type of Restaurant")]
        public string RestTypeDesc { get; set; }
    }
}