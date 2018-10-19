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
using System.Web.Security;
using System.Web;

namespace WebAPI.Controllers
{
    public class UsersController : ApiController
    {
        UsersService us = new UsersService();
        [HttpGet]
        public string Login(string LoginName, string PassWord)
        {
            Result r = new Result();
            try
            {
                if (!us.ValidateUser(LoginName, PassWord))
                {
                    r.Code = "404";
                    r.Msg = "用户名或密码错误";
                    return JsonConvert.SerializeObject(r);
                }
                FormsAuthenticationTicket ticket = new FormsAuthenticationTicket(0, LoginName, DateTime.Now,
                               DateTime.Now.AddHours(1), true, string.Format("{0}&{1}", LoginName, PassWord),
                               FormsAuthentication.FormsCookiePath);
                //返回登录结果、用户信息、用户验证票据信息
                var Users = new Users { LoginName = LoginName, PassWord = PassWord, Ticket = FormsAuthentication.Encrypt(ticket) };
                //将身份信息保存在session中，验证当前请求是否是有效请求
                HttpContext.Current.Session[LoginName] = Users;
                r.Code = "200";
                r.Msg = Users;
            }
            catch (Exception e)
            {

                r.Code = "500";
                r.Msg = e.Message;
            }

            return JsonConvert.SerializeObject(r);
        }

        /// <summary>
        /// 添加用户
        /// </summary>
        /// <param name="students"></param>
        /// <returns></returns>
        [HttpPost]
        public string AddUser(Users users)
        {
            Result result = new Result();
            try
            {
                us.AddEntity(users);
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
    }
}
