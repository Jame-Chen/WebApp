﻿using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Routing;
using Model;

namespace Filters
{
     [AttributeUsage(AttributeTargets.Method | AttributeTargets.Class, Inherited = true, AllowMultiple = true)]
    public class AuthorizationFilter : FilterAttribute, IAuthorizationFilter
    {
        public void OnAuthorization(AuthorizationContext filterContext)
        {
            //得到用户登录的信息
            SysPerson CurrentUserInfo = HttpContext.Current.Session["UserInfo"] as SysPerson;
            //判断用户是否为空
            if (CurrentUserInfo == null)
            {
                if (filterContext.HttpContext.Request.IsAjaxRequest())
                {
                    filterContext.HttpContext.Response.AppendHeader("sessionstatus", "timeout");
                    filterContext.HttpContext.Response.End();
                }
                else
                {
                    //以下两句代码无法彻底截断请求、还会继续请求原来的action
                    //filterContext.HttpContext.Response.Redirect("/Login/Index");
                    //filterContext.HttpContext.Response.End();

                    //下面的代码可以截断原来的action请求
                    filterContext.Result = new RedirectToRouteResult(
                        new RouteValueDictionary(
                                new
                                {
                                    Controller = "Login",
                                    action = "Index",
                                    bAjaxReq = false,
                                    message = "操作超时，请尝试重新登录。"
                                }
                            )
                         );
                }
            }
        }
    }
}