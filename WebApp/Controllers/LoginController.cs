using IBLL;
using Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace EFMVCApp.Controllers
{
    [AllowAnonymous]
    public class LoginController : Controller
    {
        private ISysPersonService SysPersonService;

        public LoginController(ISysPersonService SysPersonService)
        {
            this.SysPersonService = SysPersonService;
        }
      
        // GET: Login
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult SignIn(Login login)
        {
            Result ret = SysPersonService.SignIn(login);
            return Json(ret, JsonRequestBehavior.AllowGet);
        }
    }
}