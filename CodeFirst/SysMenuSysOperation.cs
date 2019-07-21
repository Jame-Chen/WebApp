namespace CodeFirst
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("SysMenuSysOperation")]
    public partial class SysMenuSysOperation
    {
        [StringLength(36)]
        public string Id { get; set; }

        [Required]
        [StringLength(36)]
        public string SysMenuId { get; set; }

        [Required]
        [StringLength(36)]
        public string SysOperationId { get; set; }
    }
}
