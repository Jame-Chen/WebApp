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
    
    public partial class TB_Menu
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public TB_Menu()
        {
            this.TB_MenuRole = new HashSet<TB_MenuRole>();
        }
    
        public int menu_id { get; set; }
        public string menu_name { get; set; }
        public string menu_url { get; set; }
        public string parent_id { get; set; }
        public string menu_level { get; set; }
        public string sort_order { get; set; }
        public string status { get; set; }
        public string remark { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<TB_MenuRole> TB_MenuRole { get; set; }
    }
}
