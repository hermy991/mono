using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using SGPP.Models.UC;

namespace SGPP.Repository.UC
{
    public class CCompanyRep
    {
        //Objeto de la Base de Datos SGPP
        SGPPEntities dbSGPP = new SGPPEntities();
        //Objeto de la Tabla Company
        Company tComp = new Company();

        public void uInsert(CCompany vCompany)
        {
            tComp.DisplayName = vCompany.DisplayName;
            tComp.Local = vCompany.Local;
            tComp.CreatedBy_ID = vCompany.Auth.AuthId;
            tComp.CreatedDate = DateTime.Now;
            dbSGPP.Company.Add(tComp);
            dbSGPP.SaveChanges();
        }

        public List<Company> CompanyList()
        {
            List<Company> CompanyList = new List<Company>();
            CompanyList = dbSGPP.Company.ToList();

            return CompanyList;
        }

    }
}