using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Proc
{
    public struct Shopcart
    {
        int ID;
        int user;
        int product;
        int num;

        public static List<Shopcart> Explore(int user)
        {
            SQL sql = new SQL();
            var carts = sql.Select("SELECT ID, Product_ID, Number FROM Shopcart WHERE User_ID=" + user);
            List<Shopcart> shopcarts = new List<Shopcart>();
            foreach (var i in carts)
            {
                shopcarts.Add(new Shopcart
                {
                    ID = (int)i[0],
                    user = (int)i[1],
                    product = (int)i[2],
                    num = (int)i[3]
                });
            }
            return shopcarts;
        }
        
        public static void Add(int user, int product)
        {
            SQL sql = new SQL();
            var carts = sql.Select("SELECT ID FROM Shopcart " + 
                "WHERE User_ID=" + user + " AND Product_ID=" + product);
            if (carts.Count != 0)
            {
                sql.Execute("UPDATE Shopcart SET Number=Number+1");
                return;
            }
            else
            {
                sql.Execute("INSERT INTO Shopcart(ID, User_ID, Product_ID, Number) VALUES(" +
                    "0, " + user + ", " + product + ", " + "1)");
            }
        }

        public static int Remove(int user, int product)
        {
            int number = 0;
            SQL sql = new SQL();
            var carts = sql.Select("SELECT ID, Number FROM Shopcart " + 
                "WHERE User_ID=" + user + " AND Product_ID=" + product);
            if (carts.Count != 0)
            {
                number = (int)carts[0][1];
            }
            sql.Execute("DELETE FROM Shopcart WHERE ID=" + (int)carts[0][0]);
            return number;
        }
    }
}
