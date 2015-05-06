using SGPP.Models;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Mvc;


namespace SGPP.Controllers
{
    public class PublicController : Controller
    {
        //
        // GET: /Public/

        public ActionResult StartView()
        {

            return View();
        }


        public ActionResult Navigation()
        {

            return View();
        }


    }
}
