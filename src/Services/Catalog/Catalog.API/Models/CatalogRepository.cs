using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Threading.Tasks;

namespace Catalog.API.Models
{
    public class CatalogRepository : ICatalogRepository
    {
        private SqlConnection _db;
        public CatalogRepository(string connectionString) =>
            _db = new SqlConnection(connectionString);
        
        public void Dispose() =>
            _db.Dispose();

        public CatalogItem GetItemById(int id)
        {
            throw new NotImplementedException();
        }

        public IEnumerable<CatalogItem> GetItems(int pageSize, int pageNum)
        {
            throw new NotImplementedException();
        }
    }
}
