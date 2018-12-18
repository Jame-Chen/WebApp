//TT模板命名空间
//生成的文件后缀名为.cs

//使用TT模板自动生成的代码片段
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using IDAL;

namespace DAL
{
    //统一管理上下文的各种操作
    public partial class DbSession : IDbSession
    {
        public ITB_DepartmentRepository TB_DepartmentRepository
        {
            get
            {
                return new TB_DepartmentRepository();
            }
        }

        public ITB_MenuRepository TB_MenuRepository
        {
            get
            {
                return new TB_MenuRepository();
            }
        }

        public ITB_MenuRoleRepository TB_MenuRoleRepository
        {
            get
            {
                return new TB_MenuRoleRepository();
            }
        }

        public ITB_RoleRepository TB_RoleRepository
        {
            get
            {
                return new TB_RoleRepository();
            }
        }

        public ITB_UserRoleRepository TB_UserRoleRepository
        {
            get
            {
                return new TB_UserRoleRepository();
            }
        }

        public ITB_UsersRepository TB_UsersRepository
        {
            get
            {
                return new TB_UsersRepository();
            }
        }


        public int Save()
        {
            return EFContextFactory.GetCurrentDbContext().SaveChanges();
        }


        public int ExcuteSqlCommand(string strSql, params System.Data.Common.DbParameter[] parameters)
        {
            return EFContextFactory.GetCurrentDbContext().Database.ExecuteSqlCommand(strSql, parameters);
        }
    }
}