
using Filters;
using System.Web;
using System.Web.Mvc;

namespace EFMVCApp
{
    public class FilterConfig
    {
        public static void RegisterGlobalFilters(GlobalFilterCollection filters)
        {
           // filters.Add(new HandleErrorAttribute());
            //filters.Add(new AuthorizationFilter());
            filters.Add(new ExceptionFilter());
            filters.Add(new ModelValidationAttribute());
        }
    }
}
