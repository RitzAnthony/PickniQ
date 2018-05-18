using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.InteropServices.ComTypes;
using System.Text;
using System.Threading.Tasks;

namespace DAL
{
    public static class ProductAccess
    {
        public static readonly PickNickDBContainer Ctx = new PickNickDBContainer();
        public static List<Product> GetAllProducts()
        {
            return Ctx.Products.ToList();
        }
    }
}
