 //TT模板命名空间
	//生成的文件后缀名为.cs
//使用TT模板自动生成的代码片段
using System;
using System.Collections.Generic;
using System.Data.Common;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using IDAL;

namespace IDAL
{
	//统一管理上下文的各种操作
    public interface IDbSession
    {  
				ITB_DepartmentRepository TB_DepartmentRepository{ get; }

				ITB_MenuRepository TB_MenuRepository{ get; }

				ITB_MenuRoleRepository TB_MenuRoleRepository{ get; }

				ITB_RoleRepository TB_RoleRepository{ get; }

				ITB_UserRoleRepository TB_UserRoleRepository{ get; }

				ITB_UsersRepository TB_UsersRepository{ get; }

		
        int Save();       

        int ExcuteSqlCommand(string strSql, params System.Data.Common.DbParameter[] parameters);
    }
}