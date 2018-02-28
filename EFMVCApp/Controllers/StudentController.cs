using BLL;
using Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.Web;
using System.Web.Mvc;
using System.Net;
using Filters;

namespace EFMVCApp.Controllers
{

    public class StudentController : Controller
    {
        StudentService studentservice = new StudentService();
        AttributesService attributesservice = new AttributesService();
        //
        // GET: /Student/
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult GetList(string Name)
        {
            var pageNum = Request["page"] == null ? 1 : int.Parse(Request["page"]);
            var pageSize = Request["rows"] == null ? 10 : int.Parse(Request["rows"]);
            var total = 0;
            try
            {
                Dictionary<string, bool> ss = new Dictionary<string, bool>();
                ss.Add("Attributes", true);
                IQueryable<Student> rows = studentservice.LoadPageEntities(pageNum, pageSize, out total, s => true, true, t => t.Id)
                    .Select(s => new
              Student
              {
                  Id = s.Id,
                  Age = s.Age,
                  Name = s.Name,
                  Sexs = s.Sex == 1 ? "男" : "女",
                  Chinese = s.Chinese,
                  Math = s.Math,
                  English = s.English
              });
                if (!string.IsNullOrEmpty(Name))
                {
                    rows = rows.Where(w => w.Name.Contains(Name));
                }
                var data = new { total = total, rows = rows };
                return Json(data, JsonRequestBehavior.AllowGet);
            }
            catch (Exception e)
            {
                return Json(e.Message, JsonRequestBehavior.AllowGet);
            }
        }

        //
        // GET: /Student/Details/5
        public ActionResult Details(int id)
        {
            Dictionary<string, bool> ss = new Dictionary<string, bool>();
            ss.Add("Attributes", true);
            var total = 0;
            Student student = studentservice.LoadPageEntitiesWithNavigateProperites(1, 1, out total, s => s.Id == id, false, o => o.Id, ss).Select(s => new
           Student
           {
               Id = s.Id,
               Age = s.Age,
               Name = s.Name,
               Sexs = s.Sex == 1 ? "男" : "女",
               Chinese = s.Chinese,
               Math = s.Math,
               English = s.English,
               Attributes = s.Attributes
           }).FirstOrDefault();

            return View(student);
        }

        //
        // GET: /Student/Create
        public ActionResult Create()
        {
            List<SelectListItem> list = new List<SelectListItem>();
            SelectListItem sl = new SelectListItem();
            sl.Text = "男";
            sl.Value = "1";
            list.Add(sl);
            sl = new SelectListItem();
            sl.Text = "女";
            sl.Value = "2";
            list.Add(sl);
            ViewBag.SexList = list;


            return View();
        }

        //
        // POST: /Student/Create
        [HttpPost]
        public ActionResult Create(Student student)
        {
            try
            {
                studentservice.AddEntity(student);
                return Json(new { code = "1", msg = "新增成功!" });
            }
            catch
            {
                return View();
            }
        }

        //
        // GET: /Student/Edit/5
        public ActionResult Edit(int id)
        {

            Student student = studentservice.LoadEntities(s => s.Id == id).FirstOrDefault();

            List<SelectListItem> list = new List<SelectListItem>();
            SelectListItem sl = new SelectListItem();
            sl.Text = "男";
            sl.Value = "1";
            if (student.Sex == 1)
            {
                sl.Selected = true;
            }
            list.Add(sl);
            sl = new SelectListItem();
            sl.Text = "女";
            sl.Value = "2";
            if (student.Sex == 2)
            {
                sl.Selected = true;
            }
            list.Add(sl);

            ViewBag.SexList = list;

            return View(student);
        }

        //
        // POST: /Student/Edit/5
        [HttpPost]
        public ActionResult Edit(Student student)
        {
            try
            {
                studentservice.UpdateEntity(student);
                return Json(new { code = "1", msg = "修改成功!" });
            }
            catch
            {
                return View();
            }
        }

        //
        // GET: /Student/Delete/5
        public ActionResult Delete(int id)
        {
            return View();
        }

        //
        // POST: /Student/Delete/5
        [HttpPost]
        public ActionResult Delete(string ids)
        {
            try
            {
                studentservice.Delete(ids);
                return Json(new { code = "1", msg = "删除成功!" });
            }
            catch (Exception e)
            {
                return Json(new { code = "0", msg = e.Message });
            }
        }
    }
}
