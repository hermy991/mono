using SGPP.Models.UC;
using SGPP.Repository.DEF;
using SGPP.Repository.UC;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace SGPP.Controllers.UC
{
    public class UserController : Controller
    {
        SGPPEntities dbSGPP = new SGPPEntities();
        //
        // GET: /User/
        public ActionResult Index()
        {
            return View();
        }
         [HttpGet]
        public ActionResult CreateUserView()
        {
            ViewBag.SexId = new SelectList(dbSGPP.V_Sex, "SexId", "SexName");
            ViewBag.DocumentTypeId = new SelectList(dbSGPP.V_DocumentTipe, "DocumentTypeId", "DocumentType");

            CUserRep tmpUserRep = new CUserRep();

            return View();
        }

        [HttpPost]
        public ActionResult CreateUser(CUser vUser)
        {
            
            CUserRep tmpUserRep = new CUserRep();
            ViewBag.CreateUserError = tmpUserRep.uInsertUser(vUser);

            tmpUserRep.uInsertUser(vUser);

            return RedirectToAction("Login", "Home");
        }

    }
}
