using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Proc
{
    public class Product
    {
        public int ID
        {
            get;
            private set;
        }
        public string Name;
        public decimal Price;
        public int Count;
        public int Detail_ID
        {
            get;
            private set;
        }
        public string Detail;
        public int Host;

        public Product() { }

        public Product(int ID)
        {
            SQL sql = new SQL();
            var product = sql.Select("SELECT Name, Price, Count, Detail_ID, Detail, Type FROM Product WHERE ID=" + ID);
            if (product.Count != 1) throw new Exception("No Product");
            var pro = product[0];
            this.ID = ID;
            Name = SQL.atob(pro[0]);
            Price = (decimal)pro[1];
            Count = (int)pro[2];
            Detail_ID = (int)pro[3];
            Detail = SQL.atob(pro[4]);
            Host = (int)pro[5];
        }

        public static bool Buy(int ID)
        {
            try
            {
                Product pro = new Product(ID);
                if (pro.Count <= 0) return false;
                SQL sql = new SQL();
                sql.Execute("UPDATE Product SET Count=Count-1 WHERE ID=" + ID);
                return true;
            }
            catch (Exception)
            {
                return false;
            }
        }

        public static Product Upload(int Host, string Name, decimal Price, int Count, string Detail, byte[] Img)
        {
            Product product = new Product
            {
                ID = 0,
                Name = Name,
                Price = Price,
                Count = Count,
                Detail = Detail,
                Detail_ID = 0,
                Host = Host
            };
            string img = Common.ImgToHex(Img);
            SQL sql = new SQL();
            sql.Execute("BEGIN");
            sql.Execute("INSERT INTO Product(ID, Cover) VALUES(0, UNHEX('" + img + "'))");
            product.Detail_ID = (int)sql.Select("SELECT max(ID) FROM ProductDetail")[0][0];
            sql.Execute("INSERT INTO Product(ID, Name, Type, Price, Count, Detail, Detail_ID, Type) VALUES(" +
                "0, '" + SQL.btoa(product.Name) + "', " + product.Price + ", " +
                product.Count + ", '" + SQL.btoa(product.Detail) + "', " + product.Detail_ID + ", " +
                product.Host + ")");
            product.ID = (int)sql.Select("SELECT max(ID) FROM Product")[0][0];
            sql.Execute("COMMIT");
            sql.Disconnect();
            return product;
        }

        public static void Remove(int ID)
        {
            SQL sql = new SQL();
            sql.Execute("BEGIN");
            var detail = sql.Select("SELECT Detail_ID FROM Product WHERE ID=" + ID);
            if (detail.Count != 1) return;
            sql.Execute("DELETE FROM ProductDetail WHERE ID=" + (int)detail[0][0]);
            sql.Execute("DELETE FROM Product WHERE ID=" + ID);
            sql.Execute("COMMIT");
            sql.Disconnect();
        }

        public static byte[] Image(int ID)
        {
            SQL sql = new SQL();
            var Detail_ID = sql.Select("SELECT Detail_ID FROM Product WHERE ID=" + ID);
            if (Detail_ID.Count != 1) return new byte[0];
            var img = sql.Select("SELECT Cover FROM ProductDetail WHERE ID=" + (int)Detail_ID[0][0]);
            if (img.Count != 1) return new byte[0];
            return (byte[])img[0][0];
        }

        public static List<Product> Explore(int Host = 0)
        {
            SQL sql = new SQL();
            List<Product> products = new List<Product>();
            var prod = sql.Select("SELECT Name, Price, Count, Detail_ID, Detail, ID, Type FROM Product" + 
                (Host == 0 ? "" : "WHERE Type=" + Host));
            foreach (var pro in prod)
            {
                Product product = new Product
                {
                    ID = (int)pro[5],
                    Name = SQL.atob(pro[0]),
                    Price = (decimal)pro[1],
                    Count = (int)pro[2],
                    Detail_ID = (int)pro[3],
                    Detail = SQL.atob(pro[4]),
                    Host = (int)pro[6]
                };
                products.Add(product);
            };
            return products;
        }
    }
}
