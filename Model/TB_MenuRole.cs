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
    /// TB_MenuRole
    /// </summary>
    [Serializable]
    public partial class TB_MenuRole
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
        /// 菜单名称
        /// </summary>
        [Display(Name = "菜单名称")]
        public int? menu_id { get; set; }
        /// <summary>
        /// 角色类型
        /// </summary>
        [Display(Name = "角色类型")]
        [MaxLength(10,ErrorMessage="最多只能输入10个字符")]
        [StringLength(10,ErrorMessage="最多只能输入10个字符")]
        public string role_type { get; set; }
        /// <summary>
        /// 按钮名称
        /// </summary>
        [Display(Name = "按钮名称")]
        [MaxLength(50,ErrorMessage="最多只能输入50个字符")]
        [StringLength(50,ErrorMessage="最多只能输入50个字符")]
        public string button_id { get; set; }
    
         public virtual TB_Menu TB_Menu { get; set; }
         public virtual TB_Role TB_Role { get; set; }
    }
}
