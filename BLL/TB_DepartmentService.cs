﻿using Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BLL
{
   public partial class TB_DepartmentService
    {
        /// <summary>
        /// 添加部门
        /// </summary>
        /// <param name="Departments"></param>
        /// <returns></returns>
       public Result AddDepartment(TB_Department Departments)
        {
            Result result = new Result();
            try
            {
                if (LoadEntities(s => s.department_name == Departments.department_name).Any())
                {
                    result.Code = "400";
                    result.Msg = "该名称已存在!";
                }
                else
                {

                    Departments.status = "1";
                    result.Data = AddEntity(Departments);
                    result.Code = "200";
                    result.Msg = "添加成功!";
                }
            }
            catch (Exception e)
            {
                result.Code = "500";
                result.Msg = e.Message;
            }
            return result;
        }
        /// <summary>
        /// 修改部门
        /// </summary>
        /// <param name="Departments"></param>
        /// <returns></returns>
        public Result EdtDepartment(TB_Department Departments)
        {
            Result result = new Result();
            try
            {
                if (Departments.department_id == 0)
                {
                    result.Code = "400";
                    result.Msg = "要修改的ID不能为空!";
                }
                else
                {
                    if (LoadEntities(s => s.department_id == Departments.department_id).Any())
                    {

                       
                        UpdateEntity(Departments);
                        result.Code = "200";
                        result.Msg = "修改成功!";
                    }
                    else
                    {
                        result.Code = "400";
                        result.Msg = "该部门不存在!";
                    }

                }
            }
            catch (Exception e)
            {
                result.Code = "500";
                result.Msg = e.Message;
            }
            return result;
        }
        /// <summary>
        /// 删除部门
        /// </summary>
        /// <param name="Departments"></param>
        /// <returns></returns>
        public Result DelDepartment(TB_Department Departments)
        {
            Result result = new Result();
            try
            {
                if (Departments.department_id == 0)
                {
                    result.Code = "400";
                    result.Msg = "要删除的ID不能为空!";
                }
                else
                {
                    if (LoadEntities(s => s.department_id == Departments.department_id).Any())
                    {
                        DeleteEntity(Departments);
                        result.Code = "200";
                        result.Msg = "删除成功!";
                    }
                    else
                    {
                        result.Code = "400";
                        result.Msg = "该部门不存在!";
                    }
                }
            }
            catch (Exception e)
            {
                result.Code = "500";
                result.Msg = e.Message;
            }
            return result;
        }
        /// <summary>
        /// 根据ID获取部门
        /// </summary>
        /// <param name="department_id"></param>
        /// <returns></returns>
        public Result GetDepartmentByID(int department_id)
        {
            Result result = new Result();
            try
            {
                if (department_id == null)
                {
                    result.Code = "400";
                    result.Msg = "ID不能为空!";
                }
                else
                {
                    if (LoadEntities(s => s.department_id == department_id).Any())
                    {
                        result.Data = LoadEntities(s => s.department_id == department_id).FirstOrDefault();
                        result.Code = "200";
                        result.Msg = "查询成功!";
                    }
                    else
                    {
                        result.Code = "400";
                        result.Msg = "该部门不存在!";
                    }
                }
            }
            catch (Exception e)
            {
                result.Code = "500";
                result.Msg = e.Message;
            }
            return result;
        }
        /// <summary>
        /// 根据条件查询部门
        /// </summary>
        /// <param name="Page"></param>
        /// <param name="pageSize"></param>
        /// <param name="DepartmentName"></param>
        /// <param name="DepID"></param>
        /// <returns></returns>
        public Result GetDepartmentByWhere(int Page, int pageSize, string DepartmentName)
        {
            Result result = new Result();
            try
            {
                int total = 0;
                var query = LoadPageEntities(Page, pageSize, out total, s => true, true, o => o.department_id);
                if (!string.IsNullOrEmpty(DepartmentName))
                {
                    query = query.Where(w => w.department_name.Contains(DepartmentName));
                }

                result.Code = "200";
                result.Msg = "查询成功!";
                result.Data = query.ToList();
            }
            catch (Exception e)
            {
                result.Code = "500";
                result.Msg = e.Message;
            }
            return result;
        }
    }
}