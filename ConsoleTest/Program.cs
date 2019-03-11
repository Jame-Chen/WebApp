using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using BLL;
using Model;

namespace ConsoleTest
{
    class Program
    {
        static void Main(string[] args)
        {
            ClassTabService cs = new ClassTabService();
            int total = 0;
            Dictionary<string, bool> dic = new Dictionary<string, bool>();
            dic.Add("Students", true);
            var students = cs.LoadPageEntitiesWithNavigateProperites<ICollection< Students>>(1,10,out total,s=>s.Id==1,false,s=>s.Students, dic);

            // var sid = db.Set<ClassTab>().Where(w => w.ClassName.Contains("1")).Select(s => s.Students);

            //var students = db.Set<ClassTab>().Where(w => w.ClassName.Contains("1"));

            foreach (var item in students)
            {
                Console.WriteLine("----------------------------");
                Console.WriteLine(item.ClassName);
                foreach (var jtem in item.Students)
                {
                    Console.WriteLine(jtem.Id);
                    Console.WriteLine(jtem.Chinese);
                    Console.WriteLine(jtem.English);
                    Console.WriteLine(jtem.Math);
                }
               
            }
            Console.ReadLine();



        }
    }
}
