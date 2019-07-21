namespace CodeFirst
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("SysDocumentSysPerson")]
    public partial class SysDocumentSysPerson
    {
        [StringLength(36)]
        public string Id { get; set; }

        [Required]
        [StringLength(36)]
        public string SysPersonId { get; set; }

        [Required]
        [StringLength(36)]
        public string SysSysDocumentId_Id { get; set; }
    }
}
