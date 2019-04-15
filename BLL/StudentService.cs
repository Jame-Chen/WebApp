using Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BLL
{
    public partial class StudentService
    {
        /// <summary>
        /// 删除学生
        /// </summary>
        /// <param name="ids"></param>
        public void Delete(string ids)
        {
            string[] idarr = { };
            if (ids.Contains(","))
            {
                idarr = ids.Split(',');
            }
            else
            {
                idarr[0] = ids;
            }
            foreach (var item in idarr)
            {
                Student s = new Student();
                s.Id = Convert.ToInt32(item);
                CurrentRepository.DeleteEntity(s);
            }
            _dbSession.Save();
        }

        public void test()
        {
          
        }
    }
}
