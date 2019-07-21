namespace CodeFirst
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("SysDocumentSysDepartment")]
    public partial class SysDocumentSysDepartment
    {
        [StringLength(36)]
        public string Id { get; set; }

        [Required]
        [StringLength(36)]
        public string SysDepartmentId { get; set; }

        [Required]
        [StringLength(36)]
        public string Sys_Id { get; set; }
    }
}
