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
using DAL;
using IBLL;

namespace BLL
{
		
    public partial  class ClassTabService:BaseService<ClassTab>,IClassTabService
    {
        public override void SetCurrentRepository()
        {
            CurrentRepository = DbSessionFactory.GetCurrentDbSession().ClassTabRepository;
        }
    }
		
    public partial  class StudentsService:BaseService<Students>,IStudentsService
    {
        public override void SetCurrentRepository()
        {
            CurrentRepository = DbSessionFactory.GetCurrentDbSession().StudentsRepository;
        }
    }
		
    public partial  class UsersService:BaseService<Users>,IUsersService
    {
        public override void SetCurrentRepository()
        {
            CurrentRepository = DbSessionFactory.GetCurrentDbSession().UsersRepository;
        }
    }
	    
}