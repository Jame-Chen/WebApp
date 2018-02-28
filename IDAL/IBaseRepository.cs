using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace IDAL
{
    public interface IBaseRepository<T> where T:class
    {
        T AddEntity(T entity);

        void UpdateEntity(T entity);

        void DeleteEntity(T entity);

        IQueryable<T> LoadEntities(Func<T, bool> whereLambda);

        IQueryable<T> LoadPageEntities<S>(int pageNum, int pageSize, out int total, Func<T, bool> whereLambda, bool isAsc, Func<T, S> orderByLambda);

        IQueryable<T> LoadPageEntitiesWithNavigateProperites<S>(int pageNum, int pageSize, out int total, Func<T, bool> whereLambda, bool isAsc, Func<T, S> orderByLambda, Dictionary<string, bool> navigateProperties);
    }
}
