using IBLL;
using Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace EFMVCApp.Controllers
{

    public class HomeController : Controller
    {
        private ISysPersonService SysPersonService;
        public HomeController(ISysPersonService SysPersonService)
        {
            this.SysPersonService = SysPersonService;
        }
        // GET: Home

        public ActionResult Index()
        {
          ViewBag.UserName=  SysPersonService.getUserName();
            return View();
        }

        public ActionResult Form()
        {
            return View();
        }


        public ActionResult SignOff()
        {
            Result ret = SysPersonService.SignOff();
            return Json(ret, JsonRequestBehavior.AllowGet);
        }


    }
}