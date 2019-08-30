using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Proc;

namespace Big_homework
{
    public partial class upload_goods : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            button_submit.ServerClick += Button_submit_ServerClick;
        }

        private void Button_submit_ServerClick(object sender, EventArgs e)
        {
            try
            {
                var user = HttpContext.Current.Request.Cookies["user"];
                //var user = Response.Cookies["user"];
                if (user == null || user.Value == "") throw new Exception();
                string name = input_name.Value;
                string price = input_price.Value;
                string count = input_count.Value;
                string detail = input_detail.Value;
                if (name.Length < 1 || detail.Length < 1 || !photobox.HasFile) throw new Exception();
                decimal dprice = decimal.Parse(price);
                int icount = int.Parse(count);
                byte[] img = photobox.FileBytes;
                Product.Upload(int.Parse(user.Value), name, dprice, icount, detail, img);
                Response.Redirect("Default.aspx");
            }
            catch (Exception err)
            {
                Response.Write("<script>alert('商品输入不正确，各项均不能为空，或没有登录')</script>");
            }

        }
    }
}