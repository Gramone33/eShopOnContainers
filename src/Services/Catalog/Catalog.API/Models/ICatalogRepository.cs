﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Catalog.API.Models
{
    public interface ICatalogRepository : IDisposable
    {
        IEnumerable<CatalogItem> GetItems(int pageSize, int pageNum);

        CatalogItem GetItemById(int id);
    }
}
