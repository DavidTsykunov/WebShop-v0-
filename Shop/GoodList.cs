using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Shop
{
    public class GoodList
    {
        private static GoodList repository = new GoodList();
        private List<Good> goods = new List<Good>();

        public static GoodList GetRepository()
        {
            return repository;
        }

        public IEnumerable<Good> GetAllResponses()
        {
            return goods;
        }

        public void AddResponse(Good response)
        {
            goods.Add(response);
        }
    }
}