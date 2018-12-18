using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Model
{
    [MetadataType(typeof(TB_UsersDataAnnotation))]

    //这个必须要和自动生成的类同名,而且必须要在同一命名空间下
    public partial class TB_Users
    {
        public string Ticket { get; set; }
    }
    public class TB_UsersDataAnnotation
    {
        public string user_id { get; set; }
        [Required(ErrorMessage = "不能为空！")]
        [RegularExpression(@"^[\u4E00-\u9FA5\uf900-\ufa2d\w\.\s]{5,25}$", ErrorMessage = "*5-25位拼音或数字")]
        [MaxLength(50)]
        [MinLength(5)]
        public string user_name { get; set; }
        [Required(ErrorMessage = "不能为空！")]
        [StringLength(50, MinimumLength = 5, ErrorMessage = "*5-50位字符")]
        public string user_password { get; set; }
        [Required(ErrorMessage = "不能为空！")]
        [StringLength(25, MinimumLength = 5, ErrorMessage = "*5-25位字符")]
        public string fullname { get; set; }
        public string department_id { get; set; }
        public string status { get; set; }
        public Nullable<System.DateTime> createtime { get; set; }
        public Nullable<System.DateTime> modifytime { get; set; }
        public string remark { get; set; }
        public string url { get; set; }
    }
}
