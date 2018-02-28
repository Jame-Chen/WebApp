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
	
	public partial class AttributesRepository : BaseRepository<Attributes>,IAttributesRepository
    {
    }
	
	public partial class StudentRepository : BaseRepository<Student>,IStudentRepository
    {
    }
	    
}