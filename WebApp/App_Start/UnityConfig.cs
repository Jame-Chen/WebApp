//TT模板命名空间
//生成的文件后缀名为.cs

//使用TT模板自动生成的代码片段
using System.Web.Mvc;
using Unity;
using Unity.Mvc5;
using IBLL;
using Microsoft.Practices.Unity;
using Microsoft.Practices.Unity.Configuration;
using System.Configuration;

namespace EFMVCApp
{
    public static class UnityConfig
    {
        public static void RegisterComponents()
        {
            var container = new UnityContainer();

            // register all your components with the container here
            // it is NOT necessary to register your controllers

            // e.g. container.RegisterType<ITestService, TestService>();

            UnityConfigurationSection config = (UnityConfigurationSection)ConfigurationManager.GetSection(UnityConfigurationSection.SectionName);
            config.Configure(container, "defaultContainer");
            DependencyResolver.SetResolver(new UnityDependencyResolver(container));
        }
    }
}
