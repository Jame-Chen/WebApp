using Common;
using Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BLL
{
    public partial class SysMenuService
    {

        public  List<SysMenu> GetMenu()
        {
            List<SysMenu> list = (List<SysMenu>)CacheHelper.GetCache("SysMenu");
            if (list == null)
            {
                list = LoadEntities(l => true).ToList();
                CacheHelper.SetCache("SysMenu", list);
            }
            return list;
        }

        public List<SysMenu> GetTopMenu()
        {
            List<SysMenu> list = GetMenu();
            return list.Where(l => l.ParentId == null).OrderBy(o => o.Sort).ToList();
        }

        public List<SysMenu> GetLeftMenu(string ParentId)
        {
            List<SysMenu> list = GetMenu();
            if (!string.IsNullOrEmpty(ParentId))
            {
                list = list.Where(w => w.ParentId == ParentId).ToList();
            }
            else
            {
                string id = list.Where(w => w.ParentId == null).OrderBy(o => o.Sort).FirstOrDefault().Id;
                list = list.Where(w => w.ParentId == id).ToList();
            }

            return list;
        }

     
    }
}
