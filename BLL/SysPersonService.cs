using Common;
using Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Web;
using System.Web.Security;

namespace BLL
{
    public partial class SysPersonService
    {
        public Result SignIn(Login login)
        {
            Result ret = new Result();

            try
            {
                string pwd = EncryptionMD5.EncryptString(login.password);
                if (LoadEntities(l => l.Name == login.username && l.Password == pwd).Any())
                {
                    SysPerson sp = LoadEntities(l => l.Name == login.username && l.Password == pwd).FirstOrDefault();
                    string UserData = login.username + "#" + login.password + "#" + sp.MyName;
                    //数据放入ticket
                    FormsAuthenticationTicket ticket = new FormsAuthenticationTicket(1, login.username, DateTime.Now, DateTime.Now.AddSeconds(30), false, UserData);
                    //数据加密
                    string enyTicket = FormsAuthentication.Encrypt(ticket);

                    CookieHelper.SetCookie(FormsAuthentication.FormsCookieName, enyTicket);

                    ret.Msg = "登录成功!";
                    //
                }
                else
                {
                    ret.Msg = "用户名或密码错误!";
                }
            }
            catch (Exception)
            {
                ret.Msg = "登录失败!";
                throw;
            }
            return ret;
        }
        public Result SignOff()
        {
            Result ret = new Result();
            ret.Msg = "注销成功!";
            try
            {
                FormsAuthentication.SignOut();
            }
            catch (Exception)
            {

                throw;
            }
            return ret;
        }

        /// <summary>
        /// 判断用户是否登陆
        /// </summary>
        /// <returns>True,Fales</returns>
        public bool isLogin()
        {
            return HttpContext.Current.User.Identity.IsAuthenticated;
        }

        /// <summary>
        /// 获取凭据中的用户名
        /// </summary>
        /// <returns>用户名</returns>
        public string getUserName()
        {
            if (isLogin())
            {
                string strUserData = ((FormsIdentity)(HttpContext.Current.User.Identity)).Ticket.UserData;
                string[] UserData = strUserData.Split('#');
                if (UserData.Length != 0)
                {
                    return UserData[2].ToString();
                }
                else
                {
                    return "";
                }
            }
            else
            {
                return "";
            }
        }
        /// <summary>
        /// 获取凭据中的密码
        /// </summary>
        /// <returns>密码</returns>
        public string getPassWord()
        {
            if (isLogin())
            {
                string strUserData = ((FormsIdentity)(HttpContext.Current.User.Identity)).Ticket.UserData;
                string[] UserData = strUserData.Split('#');
                if (UserData.Length != 0)
                {
                    return UserData[1].ToString();
                }
                else
                {
                    return "";
                }
            }
            else
            {
                return "";
            }
        }
    }
}
