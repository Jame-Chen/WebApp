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
	    
}