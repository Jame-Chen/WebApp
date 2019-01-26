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
		
    public partial  class AttributesService:BaseService<Attributes>,IAttributesService
    {
        public override void SetCurrentRepository()
        {
            CurrentRepository = DbSessionFactory.GetCurrentDbSession().AttributesRepository;
        }
    }
		
    public partial  class StudentService:BaseService<Student>,IStudentService
    {
        public override void SetCurrentRepository()
        {
            CurrentRepository = DbSessionFactory.GetCurrentDbSession().StudentRepository;
        }
    }
		
    public partial  class TB_DepartmentService:BaseService<TB_Department>,ITB_DepartmentService
    {
        public override void SetCurrentRepository()
        {
            CurrentRepository = DbSessionFactory.GetCurrentDbSession().TB_DepartmentRepository;
        }
    }
		
    public partial  class TB_MenuService:BaseService<TB_Menu>,ITB_MenuService
    {
        public override void SetCurrentRepository()
        {
            CurrentRepository = DbSessionFactory.GetCurrentDbSession().TB_MenuRepository;
        }
    }
		
    public partial  class TB_MenuRoleService:BaseService<TB_MenuRole>,ITB_MenuRoleService
    {
        public override void SetCurrentRepository()
        {
            CurrentRepository = DbSessionFactory.GetCurrentDbSession().TB_MenuRoleRepository;
        }
    }
		
    public partial  class TB_RoleService:BaseService<TB_Role>,ITB_RoleService
    {
        public override void SetCurrentRepository()
        {
            CurrentRepository = DbSessionFactory.GetCurrentDbSession().TB_RoleRepository;
        }
    }
		
    public partial  class TB_UserRoleService:BaseService<TB_UserRole>,ITB_UserRoleService
    {
        public override void SetCurrentRepository()
        {
            CurrentRepository = DbSessionFactory.GetCurrentDbSession().TB_UserRoleRepository;
        }
    }
		
    public partial  class TB_UsersService:BaseService<TB_Users>,ITB_UsersService
    {
        public override void SetCurrentRepository()
        {
            CurrentRepository = DbSessionFactory.GetCurrentDbSession().TB_UsersRepository;
        }
    }
	    
}