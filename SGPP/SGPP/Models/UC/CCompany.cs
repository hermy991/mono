using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace SGPP.Models.UC
{
    public class CCompany
    {
        [Required(ErrorMessage = "Id Compañia requerido")]
        [Display(Name = "Id Compañia")]
        public int CompanyId { get; set; }
        [Required(ErrorMessage = "Nombre Compañia Requerida")]
        [Display(Name = "Nombre Compañia")]
        public string DisplayName { get; set; }
        [Required(ErrorMessage = "Local requerido")]
        [Display(Name = "Local")]
        public string Local { get; set; }
        public int CreatedById { get; set; }
        public int ModifiedById { get; set; }
        public CAuth Auth { get; set; }
    }
}