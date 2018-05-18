using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAL;

namespace BLL
{
    public static class ProductLogic
    {
        public static List<Product> GetAllProducts()
        {
            return ProductAccess.GetAllProducts();
        }


    }
}
