using SGPP.GSPPModels.UC;
using SGPP.Repository.UC;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace SGPP.Controllers
{
    public class HomeController : Controller
    {
        //
        // GET: /Home/

        public ActionResult Index()
        {
            return View();
        }
        [HttpGet]
        public ActionResult Login()
        {
            return View();
        }

        [HttpPost]
        public ActionResult Login(CLogin vData, string returnUrl)
        {
            CUserRepo tmpUserRep = new CUserRepo();

            var tmpResult = tmpUserRep.uGetUser(vData);

            if (tmpResult.Count == 2)
            {
                Session["LogedUserFullname"] = tmpResult[0];
                Session["LogedUserId"] = tmpResult[1];
                return RedirectToAction("Index", "Home");
            }
            ViewBag.ErrorUser = tmpResult[0];
            return View(vData);
        }

        public ActionResult Logout()
        {
            Session.Remove("LogedUserFullname");
            Session.RemoveAll();
            return RedirectToAction("Index", "Home");
        }

        public ActionResult Navigation()
        {

            return View();
        }

    }
}
