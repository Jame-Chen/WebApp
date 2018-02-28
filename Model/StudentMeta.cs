using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.ComponentModel.DataAnnotations;

namespace Model
{
    [MetadataType(typeof(StudentMeta))]
    public partial class Student
    {
        [Display(Name = "性别")]
        public string Sexs { get; set; }

    }

    public class StudentResult
    {
        public int numResults { get; set; }
        public IQueryable<Student> results { get; set; }
    }
    public class StudentMeta
    {

        public int Id { get; set; }
        [Display(Name = "姓名")]
        public string Name { get; set; }
        [Display(Name = "年龄")]
        public Nullable<int> Age { get; set; }
        [Display(Name = "性别")]
        public Nullable<int> Sex { get; set; }
        [Display(Name = "语文")]
        public decimal Chinese { get; set; }
        [Display(Name = "数学")]
        public decimal Math { get; set; }
        [Display(Name = "英语")]
        public decimal English { get; set; }

    }
}
