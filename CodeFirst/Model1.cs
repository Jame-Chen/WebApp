namespace CodeFirst
{
    using System;
    using System.Data.Entity;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Linq;

    public partial class Model1 : DbContext
    {
        public Model1()
            : base("name=Model11")
        {
        }

        public virtual DbSet<FileUploader> FileUploader { get; set; }
        public virtual DbSet<SysAnnouncement> SysAnnouncement { get; set; }
        public virtual DbSet<SysDepartment> SysDepartment { get; set; }
        public virtual DbSet<SysDocumentSysDepartment> SysDocumentSysDepartment { get; set; }
        public virtual DbSet<SysDocumentSysPerson> SysDocumentSysPerson { get; set; }
        public virtual DbSet<SysEmail> SysEmail { get; set; }
        public virtual DbSet<SysEmailTemp> SysEmailTemp { get; set; }
        public virtual DbSet<SysException> SysException { get; set; }
        public virtual DbSet<SysField> SysField { get; set; }
        public virtual DbSet<SysLog> SysLog { get; set; }
        public virtual DbSet<SysMenu> SysMenu { get; set; }
        public virtual DbSet<SysMenuSysOperation> SysMenuSysOperation { get; set; }
        public virtual DbSet<SysMenuSysRoleSysOperation> SysMenuSysRoleSysOperation { get; set; }
        public virtual DbSet<SysMessage> SysMessage { get; set; }
        public virtual DbSet<SysMessageTemp> SysMessageTemp { get; set; }
        public virtual DbSet<SysNotice> SysNotice { get; set; }
        public virtual DbSet<SysOperation> SysOperation { get; set; }
        public virtual DbSet<SysPerson> SysPerson { get; set; }
        public virtual DbSet<SysRole> SysRole { get; set; }
        public virtual DbSet<SysRoleSysPerson> SysRoleSysPerson { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Entity<FileUploader>()
                .Property(e => e.FullPath)
                .IsUnicode(false);

            modelBuilder.Entity<SysPerson>()
                .Property(e => e.Version)
                .IsFixedLength();

            modelBuilder.Entity<SysPerson>()
                .Property(e => e.HDpic)
                .IsUnicode(false);
        }
    }
}
