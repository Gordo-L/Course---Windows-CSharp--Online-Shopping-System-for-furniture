using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Proc
{
    public struct Shopcart
    {
        public int ID;
        public int user;
        public int product;
        public int num;

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
                    user = user,
                    product = (int)i[1],
                    num = (int)i[2]
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

        public static void Remove(int user)
        {
            SQL sql = new SQL();
            sql.Execute("DELETE FROM Shopcart WHERE User_ID=" + user);
        }

        //public static int Remove(int ID)
        //{
        //    int number = 0;
        //    SQL sql = new SQL();
        //    var carts = sql.Select("SELECT ID, Number FROM Shopcart " +
        //        "WHERE ID=" + ID);
        //    if (carts.Count != 0)
        //    {
        //        number = (int)carts[0][1];
        //    }
        //    sql.Execute("DELETE FROM Shopcart WHERE ID=" + (int)carts[0][0]);
        //    return number;
        //}

        public static void Sub(int ID)
        {
            SQL sql = new SQL();
            var carts = sql.Select("SELECT ID, Number FROM Shopcart " +
                "WHERE ID=" + ID);
            if (carts.Count != 1)
            {
                return;
            }
            if ((int)carts[0][1] == 1)
            {
                sql.Execute("DELETE FROM Shopcart WHERE ID=" + (int)carts[0][0]);
            } else
            {
                sql.Execute("UPDATE Shopcart SET Number=Number-1 WHERE ID=" + (int)carts[0][0]);
            }

        }

    }
}
