 //TT模板命名空间
	//生成的文件后缀名为.cs

//使用TT模板自动生成的代码片段
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Model;
using IDAL;

namespace DAL
{
	
	public partial class TB_DepartmentRepository : BaseRepository<TB_Department>,ITB_DepartmentRepository
    {
    }
	
	public partial class TB_MenuRepository : BaseRepository<TB_Menu>,ITB_MenuRepository
    {
    }
	
	public partial class TB_MenuRoleRepository : BaseRepository<TB_MenuRole>,ITB_MenuRoleRepository
    {
    }
	
	public partial class TB_RoleRepository : BaseRepository<TB_Role>,ITB_RoleRepository
    {
    }
	
	public partial class TB_UserRoleRepository : BaseRepository<TB_UserRole>,ITB_UserRoleRepository
    {
    }
	
	public partial class TB_UsersRepository : BaseRepository<TB_Users>,ITB_UsersRepository
    {
    }
	    
}