//------------------------------------------------------------------------------
// <auto-generated>
//     此代码已从模板生成。
//
//     手动更改此文件可能导致应用程序出现意外的行为。
//     如果重新生成代码，将覆盖对此文件的手动更改。
// </auto-generated>
//------------------------------------------------------------------------------

namespace Model
{
    using System;
    using System.Collections.Generic;
    
    public partial class TB_Role
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public TB_Role()
        {
            this.TB_MenuRole = new HashSet<TB_MenuRole>();
            this.TB_UserRole = new HashSet<TB_UserRole>();
        }
    
        public int role_id { get; set; }
        public string role_name { get; set; }
        public string description { get; set; }
        public Nullable<System.DateTime> createtime { get; set; }
        public Nullable<System.DateTime> modifytime { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<TB_MenuRole> TB_MenuRole { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<TB_UserRole> TB_UserRole { get; set; }
    }
}