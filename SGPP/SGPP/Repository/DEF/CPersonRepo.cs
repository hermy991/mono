using SGPP.GSPPModels.DEF;
using SGPP.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SGPP.Repository.DEF
{
    public class CPersonRepo
    {
        //Objeto de la Base de Datos SGPP
        SGPPEntities dbSGPP = new SGPPEntities();
        //Objeto de la Tabla Person
        Person tPers = new Person();

        private String cValidateForInsert(CPerson vPerson)
        {
            String messge = "";

            if (vPerson.Company.CompanyId < 1)
            {
                messge = "Compañia Invalida";
            }
            else if (vPerson.FirstName == "")
            {
                messge = "Nombre Invalido";
            }
            else if (vPerson.LastName == "")
            {
                messge = "Apellido Invalido";
            }
            else if (vPerson.DocumentTypeId < 1)
            {
                messge = "Apellido Invalido";
            }
            else if (vPerson.DocumenTypeDesc == "")
            {
                messge = "Documento Invalido";
            }
            else if (vPerson.Sex_ID < 1)
            {
                messge = "ID Invalido";
            }
            else
            {
                messge = "Ok";
            }

            return messge;
        }

        public void uInsert(CPerson vPerson)
        {
            tPers.Company_ID = vPerson.Company.CompanyId;
            tPers.FirstName = vPerson.FirstName;
            tPers.LastName = vPerson.LastName;
            tPers.IDType_ID = vPerson.DocumentTypeId;
            tPers.ID = vPerson.DocumenTypeDesc;
            tPers.CreatedBy_ID = vPerson.Auth.AuthId;
            tPers.Sex_ID = vPerson.Sex_ID;
            tPers.CreatedDate = DateTime.Now;

            dbSGPP.People.Add(tPers);
            dbSGPP.SaveChanges();

        }
    }
}