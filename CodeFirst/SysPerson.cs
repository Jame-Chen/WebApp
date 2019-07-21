namespace CodeFirst
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("SysPerson")]
    public partial class SysPerson
    {
        [StringLength(36)]
        public string Id { get; set; }

        [Required]
        [StringLength(200)]
        public string Name { get; set; }

        [StringLength(200)]
        public string MyName { get; set; }

        [Required]
        [StringLength(200)]
        public string Password { get; set; }

        [StringLength(200)]
        public string SurePassword { get; set; }

        [StringLength(200)]
        public string Sex { get; set; }

        [StringLength(36)]
        public string SysDepartmentId { get; set; }

        [StringLength(200)]
        public string Position { get; set; }

        [StringLength(200)]
        public string MobilePhoneNumber { get; set; }

        [StringLength(200)]
        public string PhoneNumber { get; set; }

        [StringLength(200)]
        public string Province { get; set; }

        [StringLength(200)]
        public string City { get; set; }

        [StringLength(200)]
        public string Village { get; set; }

        [StringLength(200)]
        public string Address { get; set; }

        [StringLength(200)]
        public string EmailAddress { get; set; }

        [StringLength(4000)]
        public string Remark { get; set; }

        [StringLength(200)]
        public string State { get; set; }

        public DateTime? CreateTime { get; set; }

        [StringLength(200)]
        public string CreatePerson { get; set; }

        public DateTime? UpdateTime { get; set; }

        public int? LogonNum { get; set; }

        public DateTime? LogonTime { get; set; }

        [StringLength(200)]
        public string LogonIP { get; set; }

        public DateTime? LastLogonTime { get; set; }

        [StringLength(200)]
        public string LastLogonIP { get; set; }

        [StringLength(200)]
        public string PageStyle { get; set; }

        [StringLength(200)]
        public string UpdatePerson { get; set; }

        [Column(TypeName = "timestamp")]
        [DatabaseGenerated(DatabaseGeneratedOption.Computed)]
        [MaxLength(8)]
        public byte[] Version { get; set; }

        [StringLength(200)]
        public string HDpic { get; set; }
    }
}
