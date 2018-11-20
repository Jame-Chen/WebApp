 //TT模板命名空间
	//生成的文件后缀名为.cs

//使用TT模板自动生成的代码片段
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Model;

namespace IDAL
{
		
	public interface ITB_DepartmentRepository : IBaseRepository<TB_Department>
    {
    }
		
	public interface ITB_MenuRepository : IBaseRepository<TB_Menu>
    {
    }
		
	public interface ITB_MenuRoleRepository : IBaseRepository<TB_MenuRole>
    {
    }
		
	public interface ITB_RoleRepository : IBaseRepository<TB_Role>
    {
    }
		
	public interface ITB_UserRoleRepository : IBaseRepository<TB_UserRole>
    {
    }
		
	public interface ITB_UsersRepository : IBaseRepository<TB_Users>
    {
    }
	    
}