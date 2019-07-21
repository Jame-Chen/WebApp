namespace CodeFirst
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("SysMenuSysRoleSysOperation")]
    public partial class SysMenuSysRoleSysOperation
    {
        [StringLength(36)]
        public string Id { get; set; }

        [StringLength(36)]
        public string SysMenuId { get; set; }

        [StringLength(36)]
        public string SysOperationId { get; set; }

        [StringLength(36)]
        public string SysRoleId { get; set; }
    }
}
