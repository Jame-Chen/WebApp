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
        /// <summary>
        /// 主键
        /// </summary>
        [Required(ErrorMessage = "请输入{0}")]
        [Display(Name = "主键")]
        [Key]
        public int id { get; set; }
        /// <summary>
        /// 角色名称
        /// </summary>
        [Display(Name = "角色名称")]
        public int? role_id { get; set; }
        /// <summary>
        /// 用户名称
        /// </summary>
        [Display(Name = "用户名称")]
        public int? user_id { get; set; }
    
         public virtual TB_Role TB_Role { get; set; }
         public virtual TB_Users TB_Users { get; set; }
    }
}
