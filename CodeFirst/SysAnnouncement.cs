namespace CodeFirst
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("SysAnnouncement")]
    public partial class SysAnnouncement
    {
        [StringLength(36)]
        public string Id { get; set; }

        [StringLength(100)]
        public string Title { get; set; }

        [StringLength(4000)]
        public string Message { get; set; }

        [StringLength(200)]
        public string State { get; set; }

        public DateTime? CreateTime { get; set; }

        [StringLength(200)]
        public string CreatePerson { get; set; }
    }
}
