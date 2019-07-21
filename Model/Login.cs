using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using System.ComponentModel.DataAnnotations;

namespace Model
{
    public class Login
    {
        [Required(ErrorMessage = "用户名不能为空!")]
        [MaxLength(20, ErrorMessage = "最多只能输入20个字符")]
        [StringLength(20, ErrorMessage = "最多只能输入20个字符")]
        public string username { get; set; }

        [Required(ErrorMessage = "密码不能为空!")]
        [MaxLength(20, ErrorMessage = "最多只能输入20个字符")]
        [StringLength(20, ErrorMessage = "最多只能输入20个字符")]
        [DataType(DataType.Password)]

        public string password { get; set; }
    }
}
