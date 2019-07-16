using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Model;

namespace IBLL
{
    public partial interface ISysMenuService
    {
        List<SysMenu> GetMenu();
        List<SysMenu> GetTopMenu();
        List<SysMenu> GetLeftMenu(string ParentId);
    }
}
