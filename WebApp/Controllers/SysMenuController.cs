using BLL;
using Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace EFMVCApp.Controllers
{
    public class SysMenuController : Controller
    {
        SysMenuService sysmenuservice = new SysMenuService();
        // GET: SysMenu
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult TopMenu()
        {
            List<SysMenu> model = sysmenuservice.GetTopMenu();
            return PartialView(model);
        }

        public ActionResult LeftMenu(string ParentId)
        {
            List<SysMenu> model = sysmenuservice.GetLeftMenu(ParentId);
            ViewBag.pName= sysmenuservice.GetMenu().Where(w => w.Id == model.FirstOrDefault().ParentId).FirstOrDefault().Name;
            return PartialView(model);
        }

       
    }
}