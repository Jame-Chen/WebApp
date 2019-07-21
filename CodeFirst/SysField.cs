namespace CodeFirst
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("SysField")]
    public partial class SysField
    {
        [StringLength(36)]
        public string Id { get; set; }

        [Required]
        [StringLength(200)]
        public string MyTexts { get; set; }

        [StringLength(36)]
        public string ParentId { get; set; }

        [StringLength(200)]
        public string MyTables { get; set; }

        [StringLength(200)]
        public string MyColums { get; set; }

        public int? Sort { get; set; }

        [StringLength(4000)]
        public string Remark { get; set; }

        public DateTime? CreateTime { get; set; }

        [StringLength(200)]
        public string CreatePerson { get; set; }

        public DateTime? UpdateTime { get; set; }

        [StringLength(200)]
        public string UpdatePerson { get; set; }
    }
}
