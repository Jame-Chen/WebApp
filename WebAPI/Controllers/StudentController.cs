using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Data.Entity.Infrastructure;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using System.Web.Http.Description;
using Model;
using BLL;
using WebAPI.Filter;

namespace WebAPI.Controllers
{
    [CustomBasicAuthenticationFilter]
    public class StudentController : ApiController
    {
        private StudentService ss = new StudentService();
        /// <summary>
        /// 获取学生
        /// </summary>
        /// <returns></returns>
        public IQueryable<Student> GetStudent()
        {
            return ss.LoadEntities(s => true);
        }

        /// <summary>
        /// 分页获取学生
        /// </summary>
        /// <param name="PageNum"></param>
        /// <param name="PageSize"></param>
        /// <returns></returns>
        [ResponseType(typeof(StudentResult))]
        public IHttpActionResult GetStudent(int PageNum, int PageSize)
        {
            return Ok(ss.GetStudent(PageNum, PageSize));
        }


        /// <summary>
        /// 获取一个学生
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        [ResponseType(typeof(Student))]
        public IHttpActionResult GetStudent(int id)
        {
            Student student = ss.LoadEntities(s => s.Id == id).FirstOrDefault();
            if (student == null)
            {
                return NotFound();
            }
            return Ok(student);
        }

        /// <summary>
        /// 修改一个学生
        /// </summary>
        /// <param name="id"></param>
        /// <param name="student"></param>
        /// <returns></returns>
        public IHttpActionResult PutStudent(int id, Student student)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            if (id != student.Id)
            {
                return BadRequest();
            }


            try
            {
                ss.UpdateEntity(student);
            }
            catch (DbUpdateConcurrencyException)
            {
                if (ss.LoadEntities(s => s.Id == id) == null)
                {
                    return NotFound();
                }
                else
                {
                    throw;
                }
            }

            return StatusCode(HttpStatusCode.NoContent);
        }

        /// <summary>
        /// 添加一个学生
        /// </summary>
        /// <param name="student"></param>
        /// <returns></returns>
        [ResponseType(typeof(Student))]
        public IHttpActionResult PostStudent(Student student)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            ss.AddEntity(student);

            return CreatedAtRoute("DefaultApi", new { id = student.Id }, student);
        }

        /// <summary>
        /// 删除一个学生
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        [ResponseType(typeof(Student))]
        public IHttpActionResult DeleteStudent(int id)
        {
            Student student = ss.LoadEntities(s => s.Id == id).FirstOrDefault();
            if (student == null)
            {
                return NotFound();
            }

            ss.DeleteEntity(student);
            return Ok(student);
        }


    }
}