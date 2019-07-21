namespace CodeFirst
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("SysMessageTemp")]
    public partial class SysMessageTemp
    {
        [StringLength(36)]
        public string Id { get; set; }

        [Required]
        [StringLength(200)]
        public string MessageName { get; set; }

        [StringLength(400)]
        public string Content { get; set; }

        [StringLength(200)]
        public string IsDefault { get; set; }

        [StringLength(200)]
        public string MessageType { get; set; }

        [StringLength(4000)]
        public string Remark { get; set; }

        [StringLength(200)]
        public string State { get; set; }

        public DateTime? CreateTime { get; set; }

        [StringLength(200)]
        public string CreatePerson { get; set; }
    }
}
