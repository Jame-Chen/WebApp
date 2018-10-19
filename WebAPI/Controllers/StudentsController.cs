using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using BLL;
using Model;
using Newtonsoft.Json;
using WebAPI.Models;
using WebAPI.Filter;

namespace WebAPI.Controllers
{
    //[RequestAuthorizeAttribute]
    public class StudentsController : ApiController
    {
        StudentsService ss = new StudentsService();
        /// <summary>
        /// 根据ID查询一个学生
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        [HttpGet]
        public string GetStudent(int id)
        {
            IQueryable<Students> students = ss.LoadEntities(s=>true);
          List<Students> list=  students.ToList();
          string ret = JsonConvert.SerializeObject(list);
            return ret;
        }
        /// <summary>
        /// 添加学生
        /// </summary>
        /// <param name="students"></param>
        /// <returns></returns>
        [HttpPost]
        public string AddStudent(Students students)
        {
            Result result = new Result();
            try
            {
                ss.AddEntity(students);
                result.Code = "200";
                result.Msg = "添加成功!";
            }
            catch (Exception e)
            {
                result.Code = "500";
                result.Msg = e.Message;
            }

            return JsonConvert.SerializeObject(result);
        }
        /// <summary>
        /// 修改学生
        /// </summary>
        /// <param name="students"></param>
        /// <returns></returns>
        [HttpPut]
        public string EdtStudent(Students students)
        {
            Result result = new Result();
            try
            {
                ss.UpdateEntity(students);
                result.Code = "200";
                result.Msg = "修改成功!";
            }
            catch (Exception e)
            {
                result.Code = "500";
                result.Msg = e.Message;
            }

            return JsonConvert.SerializeObject(result);
        }

        [HttpDelete]
        public string DelStudent(int id)
        {
            Result result = new Result();
            try
            {
                ss.DeleteEntity(new Students() { Id = id });
                result.Code = "200";
                result.Msg = "删除成功!";
            }
            catch (Exception e)
            {
                result.Code = "500";
                result.Msg = e.Message;
            }

            return JsonConvert.SerializeObject(result);
        }
    }
}
