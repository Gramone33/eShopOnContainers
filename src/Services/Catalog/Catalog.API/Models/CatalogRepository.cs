using Dapper;
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

        const string selectQuery = @"
                SELECT Items.*, Brands.Name AS BrandName, Types.Title AS TypeTitle
                FROM Items
                    INNER JOIN Brands ON IdBrand = Brands.Id
                    INNER JOIN Types ON IdType = Types.Id";

        public CatalogRepository(string connectionString) =>
            _db = new SqlConnection(connectionString);
        
        public void Dispose() =>
            _db.Dispose();

        public CatalogItem GetItemById(int id) =>
            _db.QueryFirstOrDefault<CatalogItem>(
                $"{selectQuery} WHERE items.id=@id", new { id = id });     
                

        public IEnumerable<CatalogItem> GetItems(int pageSize, int pageNum)
        {
            if (pageSize < 1 || pageSize > 50)
            {
                throw new ArgumentOutOfRangeException("PageSize must be in 1-50");
            }
            if (pageNum < 0)
            {
                throw new ArgumentOutOfRangeException("PageNum must be positive");
            }
            return _db.Query<CatalogItem>(
                $"{selectQuery} ORDER BY Items.Id OFFSET @PageNum * @PageSize ROWS FETCH NEXT @PageSize ROWS ONLY",
                new { PageNum = pageNum, PageSize = pageSize }
            );
        }
    }
}
