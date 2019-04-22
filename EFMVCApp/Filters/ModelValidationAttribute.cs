using Model;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web;
using System.Web.Mvc;

namespace Filters
{
    [AttributeUsage(AttributeTargets.Class | AttributeTargets.Method, Inherited = true)]
    public class ModelValidationAttribute : ActionFilterAttribute
    {
        public override void OnActionExecuting(ActionExecutingContext filterContext)
        {
            var modelState = filterContext.Controller.ViewData.ModelState;
            if (!modelState.IsValid)
            {
                var errorMessage = modelState.Values
               .SelectMany(m => m.Errors)
               .Select(m => m.ErrorMessage)
               .First();
                //直接响应验证结果
                filterContext.Result = new JsonResult()
                {
                    Data = new Result() { Code = "500", Msg = errorMessage }
                };
            }
        }
    }
}