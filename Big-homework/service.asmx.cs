using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using Proc;

namespace Big_homework
{
    /// <summary>
    /// service 的摘要说明
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // 若要允许使用 ASP.NET AJAX 从脚本中调用此 Web 服务，请取消注释以下行。 
    [System.Web.Script.Services.ScriptService]
    public class service : System.Web.Services.WebService
    {
        [WebMethod]
        public string[] explore()
        {
            var prods = Product.Explore();
            string[] str_array = new string[prods.Count];
            for (int i = 0; i < prods.Count; i++)
            {
                str_array[i] =
                    "{\"name\": \"" + prods[i].Name + "\", " +
                    "\"id\": " + prods[i].ID + ", " +
                    "\"price\": \"" + prods[i].Price.ToString("#0.00") + "\", " +
                    "\"count\": " + prods[i].Count + ", " +
                    "\"detail\": \"" + prods[i].Detail + "\"}";
            }
            return str_array;
        }

        [WebMethod]
        public void add_to_shop_cart(int user, int ID)
        {
            Proc.Shopcart.Add(user, ID);
        }

        [WebMethod]
        public string[] shopcart(int user)
        {
            var carts = Proc.Shopcart.Explore(user);
            string[] str_array = new string[carts.Count];
            for (int i = 0; i < carts.Count; i++)
            {
                Product product = new Product(carts[i].product);
                str_array[i] =
                    "{\"id\": " + carts[i].ID + ", " +
                    "\"name\": \"" + product.Name + "\", " +
                    "\"price\": \"" + product.Price.ToString("#0.00") + "\", " +
                    "\"num\": " + carts[i].num + ", " +
                    "\"total_price\": \"" + (carts[i].num * product.Price).ToString("#0.00") + "\"}";
            }
            return str_array;
        }

        [WebMethod]
        public string total_price(int user)
        {
            var carts = Proc.Shopcart.Explore(user);
            decimal money = 0;
            for (int i = 0; i < carts.Count; i++)
            {
                Product product = new Product(carts[i].product);
                money += product.Price * carts[i].num;
            }
            return money.ToString("#0.00");
        }

        [WebMethod]
        public bool remove_cart(int id)
        {
            return Proc.Shopcart.Sub(id);
        }

        [WebMethod]
        public bool add_cart(int id)
        {
            return Proc.Shopcart.Sub(id, true);
        }

        [WebMethod]
        public bool pay(int user)
        {
            return Product.Buy_All(user);
        }

        [WebMethod]
        public string[] orders(int user)
        {
            var order = Order.Explore(user);
            string[] ord = new string[order.Count];
            for (int i = 0; i < order.Count; i++)
            {
                ord[i] =
                    "{\"id\": " + order[i].ID + ", " +
                    "\"name\": \"" + order[i].name + "\", " +
                    "\"num\": " + order[i].num + ", " +
                    "\"date\": \"" + order[i].date + "\"}";
            }
            return ord;
        }

        [WebMethod]
        public string[] users()
        {
            var user = Proc.User.Explore();
            string[] usr = new string[user.Count];
            for (int i = 0; i < user.Count; i++)
            {
                usr[i] =
                    "{\"id\": " + user[i].ID + ", " +
                    "\"email\": \"" + user[i].email + "\", " +
                    "\"type\": \"" + (user[i].type == 1 ? "卖家" : "买家" ) + "\"}";
            }
            return usr;
        }

        [WebMethod]
        public string[] products(int user)
        {
            var prods = Proc.Product.Explore(user);
            string[] str_array = new string[prods.Count];
            for (int i = 0; i < prods.Count; i++)
            {
                str_array[i] =
                    "{\"name\": \"" + prods[i].Name + "\", " +
                    "\"id\": " + prods[i].ID + ", " +
                    "\"price\": \"" + prods[i].Price.ToString("#0.00") + "\", " +
                    "\"count\": " + prods[i].Count + ", " +
                    "\"detail\": \"" + prods[i].Detail + "\"}";
            }
            return str_array;
        }

        [WebMethod]
        public void remove_user(int id)
        {
            Proc.User.Remove(id);
        }

        [WebMethod]
        public void remove_product(int id)
        {
            Proc.Product.Remove(id);
        }

        [WebMethod]
        public bool modify_product(int id, string price, string count)
        {
            try
            {
                decimal dprice = decimal.Parse(price);
                int icount = int.Parse(count);
                return Proc.Product.Modify(id, dprice, icount);
            } 
            catch (Exception e)
            {
                return false;
            }
        }
    }
}
