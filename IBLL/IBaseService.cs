using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using IDAL;


namespace IBLL
{
    public interface IBaseService<T> where T : class,new()
    {
        //创建实体层的访问实例
        //protected IBaseRepository<T> CurrentRepository{get;set;}

        void SetCurrentRepository();

        T AddEntity(T entity);

        bool UpdateEntity(T entity);

        bool DeleteEntity(T entity);

        IQueryable<T> LoadEntities(Func<T, bool> whereLambda, bool idTracking = false, bool CreationEnabled = false);

        IQueryable<T> LoadPageEntities<S>(int pageNum, int pageSize, out int total, Func<T, bool> whereLambda, bool isAsc, Func<T, S> orderByLambda);

        IQueryable<T> LoadPageEntitiesWithNavigateProperites<S>(int pageNum, int pageSize, out int total, Func<T, bool> whereLambda, bool isAsc, Func<T, S> orderByLambda, Dictionary<string, bool> navigateProperties);
    }
}
