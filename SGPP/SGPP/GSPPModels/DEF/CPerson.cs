using SGPP.GSPPModels.UC;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace SGPP.GSPPModels.DEF
{
    public class CPerson
    {
        [Required(ErrorMessage = "Id Persona es Requerido")]
        [Display(Name = "Id Persona")]
        public int PersonId { get; set; }
        public CCompany Company { get; set; }
        [Required(ErrorMessage = "Nombre es requerido")]
        [Display(Name = "Nombre")]
        public string FirstName { get; set; }
        [Required(ErrorMessage = "Apellido es requerido")]
        [Display(Name = "Apellido")]
        public string LastName { get; set; }
        [Required(ErrorMessage = "Tipo Identificación requerido")]
        [Display(Name = "Tipo de Identificación")]
        public int DocumentTypeId { get; set; }
        [Required(ErrorMessage = "Identificación Descripción requerido")]
        [Display(Name = "Identificación Descripción")]
        public string DocumenTypeDesc { get; set; }
        [Required(ErrorMessage = "Sexo requerido")]
        [Display(Name = "Sexso")]
        public int Sex_ID { get; set; }
        public int CreatedById { get; set; }
        public int ModifiedById { get; set; }
        public CAuth Auth { get; set; }
    }
}