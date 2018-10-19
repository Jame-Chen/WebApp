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
	
	public partial class ClassTabRepository : BaseRepository<ClassTab>,IClassTabRepository
    {
    }
	
	public partial class StudentsRepository : BaseRepository<Students>,IStudentsRepository
    {
    }
	
	public partial class UsersRepository : BaseRepository<Users>,IUsersRepository
    {
    }
	    
}