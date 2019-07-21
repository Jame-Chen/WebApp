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
    public class SysMenuController : Controller
    {
        private ISysMenuService SysMenuService;

        public SysMenuController(ISysMenuService SysMenuService)
        {
            this.SysMenuService = SysMenuService;
        }
        // GET: SysMenu
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult TopMenu()
        {
            List<SysMenu> model = SysMenuService.GetTopMenu();
            return PartialView(model);
        }

        public ActionResult LeftMenu(string ParentId)
        {
            List<SysMenu> model = SysMenuService.GetLeftMenu(ParentId);
            ViewBag.pName = SysMenuService.GetMenu().Where(w => w.Id == model.FirstOrDefault().ParentId).FirstOrDefault().Name;
            return PartialView(model);
        }


    }
}