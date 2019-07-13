 //TT模板命名空间
	//生成的文件后缀名为.cs

//使用TT模板自动生成的代码片段
using System.Web.Mvc;
using Unity;
using Unity.Mvc5;
using IBLL;
using BLL;


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
			            container.RegisterType<IFileUploaderService, FileUploaderService>();
			            container.RegisterType<ISysAnnouncementService, SysAnnouncementService>();
			            container.RegisterType<ISysDepartmentService, SysDepartmentService>();
			            container.RegisterType<ISysDocumentSysDepartmentService, SysDocumentSysDepartmentService>();
			            container.RegisterType<ISysDocumentSysPersonService, SysDocumentSysPersonService>();
			            container.RegisterType<ISysEmailService, SysEmailService>();
			            container.RegisterType<ISysEmailTempService, SysEmailTempService>();
			            container.RegisterType<ISysExceptionService, SysExceptionService>();
			            container.RegisterType<ISysFieldService, SysFieldService>();
			            container.RegisterType<ISysLogService, SysLogService>();
			            container.RegisterType<ISysMenuService, SysMenuService>();
			            container.RegisterType<ISysMenuSysOperationService, SysMenuSysOperationService>();
			            container.RegisterType<ISysMenuSysRoleSysOperationService, SysMenuSysRoleSysOperationService>();
			            container.RegisterType<ISysMessageService, SysMessageService>();
			            container.RegisterType<ISysMessageTempService, SysMessageTempService>();
			            container.RegisterType<ISysNoticeService, SysNoticeService>();
			            container.RegisterType<ISysOperationService, SysOperationService>();
			            container.RegisterType<ISysPersonService, SysPersonService>();
			            container.RegisterType<ISysRoleService, SysRoleService>();
			            container.RegisterType<ISysRoleSysPersonService, SysRoleSysPersonService>();
			    
            DependencyResolver.SetResolver(new UnityDependencyResolver(container));
        }
    }
}
