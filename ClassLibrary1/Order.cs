using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Proc
{
    public struct Order
    {
        public int ID;
        public int user;
        public int product;
        public DateTime date;

        public static List<Order> Explore(int user)
        {
            SQL sql = new SQL();
            var orders = sql.Select("SELECT ID, Product_ID, Date FROM Orders WHERE User_ID=" + user);
            List<Order> ord = new List<Order>();
            foreach (var i in orders)
            {
                ord.Add(new Order
                {
                    ID = (int)i[0],
                    user = user,
                    product = (int)i[1],
                    date = (DateTime)i[2]
                });
            }
            return ord;
        }

        public static void Add(int user, int product)
        {
            SQL sql = new SQL();
            sql.Execute("INSERT INTO Orders(ID, User_ID, Shopcart_Ornot, Product_ID, Date, Status) VALUES(" +
                "0, " + user + ", " + "b'0', " + product + ", '" + DateTime.Now + "', " + "0)");
        }

    }
}
