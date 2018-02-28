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
				public IAttributesRepository AttributesRepository
        {
            get
            {
                return new AttributesRepository();
            }
        }

				public IStudentRepository StudentRepository
        {
            get
            {
                return new StudentRepository();
            }
        }

		
           public  int Save()
        {
            return  EFContextFactory.GetCurrentDbContext().SaveChanges();
        }


        public int ExcuteSqlCommand(string strSql, params System.Data.Common.DbParameter[] parameters)
        {
            return EFContextFactory.GetCurrentDbContext().Database.ExecuteSqlCommand(strSql, parameters);
        }
    }
}