using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Model;

namespace Filters
{
    public class AuthorizationFilter : FilterAttribute, IAuthorizationFilter
    {
        public void OnAuthorization(AuthorizationContext filterContext)
        {
            if (filterContext.HttpContext.Request.IsAjaxRequest())
            {
                //判断session是否存在
                if (filterContext.HttpContext.Session["CurrentLogin"] == null)
                {
                    filterContext.Result = new JsonResult
                    {
                        Data = new { code = "-1", msg = "session超时，请重新登录!" },
                        JsonRequestBehavior = JsonRequestBehavior.AllowGet
                    };
                }
            }
            else
            {
                //判断session是否存在
                if (filterContext.HttpContext.Session["CurrentLogin"] == null)
                {
                    filterContext.Result = new RedirectResult("/Login/Index");
                }
            }
        }
    }
}