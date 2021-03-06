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
    /// SysRoleSysPerson
    /// </summary>
    [Serializable]
    public partial class SysRoleSysPerson
    {
    public SysRoleSysPerson()
        {
    	}
    			    /// <summary>
        /// Id
        /// </summary>
        [Required(ErrorMessage = "请输入{0}")]
        [Display(Name = "Id")]
        [MaxLength(36,ErrorMessage="最多只能输入36个字符")]
        [StringLength(36,ErrorMessage="最多只能输入36个字符")]
        [Key]
    
        public string Id { get; set; }
        /// <summary>
        /// 人员
        /// </summary>
        [Required(ErrorMessage = "请输入{0}")]
        [Display(Name = "人员")]
        [MaxLength(36,ErrorMessage="最多只能输入36个字符")]
        [StringLength(36,ErrorMessage="最多只能输入36个字符")]
    
        public string SysPersonId { get; set; }
        /// <summary>
        /// 角色
        /// </summary>
        [Required(ErrorMessage = "请输入{0}")]
        [Display(Name = "角色")]
        [MaxLength(36,ErrorMessage="最多只能输入36个字符")]
        [StringLength(36,ErrorMessage="最多只能输入36个字符")]
    
        public string SysRoleId { get; set; }
    }
}
