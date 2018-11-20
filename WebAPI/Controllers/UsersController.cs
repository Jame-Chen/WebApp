using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using BLL;
using Model;
using Newtonsoft.Json;
using System.Web.Security;
using System.Web;
using Common;
using WebAPI.Filter;
using System.Text;

namespace WebAPI.Controllers
{
    [RequestAuthorizeAttribute]
    [ModelValidationAttribute]
    public class UsersController : ApiController
    {
        TB_UsersService us = new TB_UsersService();
        /// <summary>
        /// 登录
        /// </summary>
        /// <param name="LoginName"></param>
        /// <param name="PassWord"></param>
        /// <returns></returns>
        [HttpGet]
        [AllowAnonymous]
        public Result Login(string LoginName, string PassWord)
        {
            return us.Login(LoginName, PassWord);
        }
        /// <summary>
        /// 远程验证token
        /// </summary>
        /// <param name="encryptTicket"></param>
        /// <returns></returns>
        [HttpGet]
        [AllowAnonymous]
        public Result RemoteTicket(string encryptTicket)
        {
            return us.RemoteTicket(encryptTicket);
        }

        /// <summary>
        /// 添加用户
        /// </summary>
        /// <param name="students"></param>
        /// <returns></returns>
        [HttpPost]
        public Result AddUser(TB_Users users)
        {

            return us.AddUser(users);
        }
        /// <summary>
        /// 修改用户
        /// </summary>
        /// <param name="users"></param>
        /// <returns></returns>
        [HttpPost]
        public Result EdtUser(TB_Users users)
        {
            return us.EdtUser(users);
        }
        /// <summary>
        /// 删除用户
        /// </summary>
        /// <param name="users"></param>
        /// <returns></returns>
        public Result DelUser(TB_Users users)
        {
            return us.DelUser(users);
        }
    }
}
