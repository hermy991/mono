using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace SGPP.GSPPModels.UC
{
    public class CAuth
    {
        [Required(ErrorMessage = "El Id es requerido")]
        [Display(Name = "AuthId")]
        public int AuthId { get; set; }
        [Required(ErrorMessage = "El AuthName es requerido")]
        [Display(Name = "AuthName")]
        public string AuthName { get; set; }
    }
}