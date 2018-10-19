using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Model
{
    [MetadataType(typeof(UsersDataAnnotation))]

    //这个必须要和自动生成的类同名,而且必须要在同一命名空间下
    public partial class Users
    {
        public string Ticket { get; set; }
    }
    public class UsersDataAnnotation
    {
        public int Id { get; set; }
        public string LoginName { get; set; }
        public string UserName { get; set; }
        public string PassWord { get; set; }
  
    }
}
