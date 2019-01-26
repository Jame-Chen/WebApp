using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using IDAL;
using DAL;

namespace BLL
{
    public abstract class BaseService<T> where T : class,new()
    {
        //创建实体层的访问实例
        protected IBaseRepository<T> CurrentRepository { get; set; }

        public IDbSession _dbSession = DbSessionFactory.GetCurrentDbSession();

        public abstract void SetCurrentRepository();

        public BaseService()
        {
            SetCurrentRepository();
        }


        /// <summary>
        /// 添加实体
        /// </summary>
        /// <param name="entity"></param>
        /// <returns></returns>
        public T AddEntity(T entity)
        {
            var addEntity = CurrentRepository.AddEntity(entity);
            _dbSession.Save();
            return addEntity;
        }

        /// <summary>
        /// 修改实体
        /// </summary>
        /// <param name="entity"></param>
        /// <returns></returns>
        public bool UpdateEntity(T entity)
        {
            CurrentRepository.UpdateEntity(entity);
            return _dbSession.Save() > 0;
        }

        /// <summary>
        /// 删除实体
        /// </summary>
        /// <param name="entity"></param>
        /// <returns></returns>
        public bool DeleteEntity(T entity)
        {
            CurrentRepository.DeleteEntity(entity);
            return _dbSession.Save() > 0;
        }

        /// <summary>
        /// 简单查询
        /// </summary>
        /// <param name="whereLambda"></param>
        /// <returns></returns>
        public IQueryable<T> LoadEntities(Func<T, bool> whereLambda, bool idTracking = false, bool CreationEnabled = false)
        {
            return CurrentRepository.LoadEntities(whereLambda, idTracking, CreationEnabled);
        }

        /// <summary>
        /// 分页查询
        /// </summary>
        /// <typeparam name="S"></typeparam>
        /// <param name="pageNum"></param>
        /// <param name="pageSize"></param>
        /// <param name="total"></param>
        /// <param name="whereLambda"></param>
        /// <param name="isAsc"></param>
        /// <param name="orderByLambda"></param>
        /// <returns></returns>
        public IQueryable<T> LoadPageEntities<S>(int pageNum, int pageSize, out int total, Func<T, bool> whereLambda, bool isAsc, Func<T, S> orderByLambda)
        {
            return CurrentRepository.LoadPageEntities<S>(pageNum, pageSize, out total, whereLambda, isAsc, orderByLambda);
        }

        public IQueryable<T> LoadPageEntitiesWithNavigateProperites<S>(int pageNum, int pageSize, out int total, Func<T, bool> whereLambda, bool isAsc, Func<T, S> orderByLambda, Dictionary<string, bool> navigateProperties)
        {
            return CurrentRepository.LoadPageEntitiesWithNavigateProperites<S>(pageNum, pageSize, out total, whereLambda, isAsc, orderByLambda, navigateProperties);
        }
    }
}

