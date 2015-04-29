using SGPP.Models.DEF;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace SGPP.Models.UC
{
    public class CUser
    {
        [Required(ErrorMessage = "Id Usuario")]
        [Display(Name = "Id Usuario")]
        public int UserId { get; set; }
        public CPerson Person { get; set; }
        public CLogin Login { get; set; }
        [Required(ErrorMessage = "Id Email es Requerido")]
        [Display(Name = "Correo")]
        public string Email { get; set; }
        public int AccessId { get; set; }
        public int UserStatusId { get; set; }
        public int CreatedById { get; set; }
        public int ModifiedById { get; set; }
        public CAuth Auth { get; set; }

    }
}