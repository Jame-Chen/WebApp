using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Model;
using System.Web.Security;
using System.Web;
using Newtonsoft.Json;

namespace BLL
{
    public partial class UsersService
    {
        //校验用户名密码
        public bool ValidateUser(string LoginName, string PassWord)
        {
            IQueryable<Users> user = LoadEntities(s => s.LoginName == LoginName && s.PassWord == PassWord);
            if (user.Count() > 0)
            {
                return true;
            }
            else
            {
                return false;
            }
        }

        //校验用户名密码
        public bool ValidateTicket(string encryptTicket)
        {
            //解密Ticket
            var strTicket = FormsAuthentication.Decrypt(encryptTicket).UserData;

            //从Ticket里面获取用户名和密码
            var index = strTicket.IndexOf("&");
            string LoginName = strTicket.Substring(0, index);
            string PassWord = strTicket.Substring(index + 1);
            var obj = HttpContext.Current.Session[LoginName];
            if (obj==null)
            {
                return false;
            }
            Users users = null;
            if (obj != null)
            {
                users = JsonConvert.DeserializeObject<Users>(JsonConvert.SerializeObject( obj));
            }
            // IQueryable<Users> user = LoadEntities(s => s.LoginName == LoginName && s.PassWord == PassWord);
            if (users.LoginName == LoginName && users.PassWord == PassWord)
            {
                return true;
            }
            else
            {
                return false;
            }
        }
    }
}
