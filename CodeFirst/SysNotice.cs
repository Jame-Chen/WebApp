namespace CodeFirst
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("SysNotice")]
    public partial class SysNotice
    {
        [StringLength(36)]
        public string Id { get; set; }

        [StringLength(4000)]
        public string Message { get; set; }

        public DateTime? LostTime { get; set; }

        [StringLength(36)]
        public string PersonId { get; set; }

        [StringLength(4000)]
        public string Remark { get; set; }

        [StringLength(200)]
        public string State { get; set; }

        public DateTime? CreateTime { get; set; }

        [StringLength(200)]
        public string CreatePerson { get; set; }
    }
}
