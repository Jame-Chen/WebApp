namespace CodeFirst
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("SysRoleSysPerson")]
    public partial class SysRoleSysPerson
    {
        [StringLength(36)]
        public string Id { get; set; }

        [Required]
        [StringLength(36)]
        public string SysPersonId { get; set; }

        [Required]
        [StringLength(36)]
        public string SysRoleId { get; set; }
    }
}
