using SGPP.GSPPModels.UC;
using SGPP.Models;
using SGPP.Repository.UC;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace SGPP.Controllers
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
        public ActionResult CreateUser()
        {
            ViewBag.Sex_ID = new SelectList(dbSGPP.V_Sex, "Sex_ID", "SexName");
            ViewBag.IDType_ID = new SelectList(dbSGPP.V_DocumentType, "IDType_ID", "DocumentType");

            CUserRepo tmpUserRep = new CUserRepo();

            return View();
        }

        [HttpPost]
        public ActionResult CreateUser(CUser vUser)
        {

            CUserRepo tmpUserRep = new CUserRepo();
            ViewBag.CreateUserError = tmpUserRep.uInsertUser(vUser);

            tmpUserRep.uInsertUser(vUser);

            return RedirectToAction("Login", "Home");
        }
    }
}
