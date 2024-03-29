﻿using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

namespace Project1_403.Models
{
    [Table("FoodType")]
    public class FoodType
    {
        [Key]
        [Required]
        [StringLength(5, MinimumLength = 2, ErrorMessage = "Restaurant food type code should be 2 to 5 characters long.")]
        [Display(Name = "Food Type Code")]
        public string RestFoodTypeCode { get; set; }

        [Required]
        [StringLength(15, MinimumLength = 2, ErrorMessage = "Restaurant food type description should be 2 to 15 characters long.")]
        [Display(Name = "Food Type Description")]
        public string FoodTypeDesc { get; set; }
    }
}