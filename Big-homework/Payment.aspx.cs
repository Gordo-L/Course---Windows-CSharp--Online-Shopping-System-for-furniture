using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Big_homework
{
    public partial class Payment : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            button_pay.ServerClick += Button_pay_ServerClick;
            string money = Request["src"];
            label_money.InnerText = "￥" + money;
        }

        private void Button_pay_ServerClick(object sender, EventArgs e)
        {
            Response.Write("<script>alert('支付成功');window.location.href='Default.aspx';</script>");
        }
    }
}