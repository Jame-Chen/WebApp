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
    public partial class StudentService
    {
        public void Delete(string ids)
        {
            if (!string.IsNullOrEmpty(ids))
            {
                string[] ss = ids.Split(',');
                foreach (string item in ss)
                {
                    int q = Int32.Parse(item);
                    Student student = LoadEntities(s => s.Id == q).FirstOrDefault();
                    DeleteEntity(student);
                   
                }
            }
        }

        public StudentResult GetStudent(int PageNum, int PageSize)
        { 
            int total=0;
            IQueryable<Student> liststudent = LoadPageEntities(PageNum, PageSize, out total, s => true, true, s => s.Id);
            StudentResult sr = new StudentResult();
            sr.numResults = total;
            sr.results = liststudent;
            return sr;
        }
      
    }
}
