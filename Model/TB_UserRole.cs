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
    
    using System.ComponentModel.DataAnnotations;
    /// <summary>
    /// TB_UserRole
    /// </summary>
    [Serializable]
    public partial class TB_UserRole
    {
    public TB_UserRole()
        {
    	}
    			    /// <summary>
        /// 
        /// </summary>
        [Required(ErrorMessage = "请输入{0}")]
        [Key]
    
        public int id { get; set; }
    
         public virtual TB_Role TB_Role { get; set; }
         public virtual TB_Users TB_Users { get; set; }
    }
}
