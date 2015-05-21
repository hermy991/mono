using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace SGPP.GSPPModels.UC
{
    public class CLogin
    {
        [Required(ErrorMessage = "El Id es requerido")]
        [Display(Name = "UserId")]
        public int UserId { get; set; }
        [Required(ErrorMessage = "El Usuario es requerido")]
        [Display(Name = "Usuario")]
        public string UserName { get; set; }
        [Required(ErrorMessage = "La Contraseña es requerida")]
        [Display(Name = "Contraseña")]
        public string Pass { get; set; }
        [Required(ErrorMessage = "Debe repetir la Contraseña")]
        [Display(Name = "Contraseña")]
        public string PassRep { get; set; }
        public int CreateById { get; set; }
    }
}