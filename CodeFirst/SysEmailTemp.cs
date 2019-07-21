namespace CodeFirst
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("SysEmailTemp")]
    public partial class SysEmailTemp
    {
        [StringLength(36)]
        public string Id { get; set; }

        [Required]
        [StringLength(200)]
        public string Mail_name { get; set; }

        [Required]
        [StringLength(200)]
        public string Subject { get; set; }

        [Column(TypeName = "ntext")]
        public string Content { get; set; }

        [StringLength(200)]
        public string Reply_email { get; set; }

        [StringLength(200)]
        public string IsDefault { get; set; }

        [StringLength(200)]
        public string Mail_type { get; set; }

        [StringLength(4000)]
        public string Remark { get; set; }

        [StringLength(200)]
        public string State { get; set; }

        public DateTime? CreateTime { get; set; }

        [StringLength(200)]
        public string CreatePerson { get; set; }
    }
}
