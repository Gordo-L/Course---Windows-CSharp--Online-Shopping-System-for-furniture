using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Proc;

namespace Big_homework
{
    public partial class Log_on : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Button_logon1.Click += Button_logon1_Click;
        }

        private void Button_logon1_Click(object sender, EventArgs e)
        {
            try
            {
                string email = input_email1.Value;
                string password = input_password1.Value;
                if (!Common.IsEmail(email)) throw new Exception();
                bool chk = checkbox_checkmeout1.Checked;
                password = Common.ToMD5(password);
                User user = Proc.User.Login(email, password);
                if (user.ID == 0) throw new Exception();
                HttpContext.Current.Request.Cookies.Remove("user");
                HttpContext.Current.Request.Cookies.Add(new HttpCookie("user", user.ID.ToString()));
                //Response.Redirect("Default.aspx");
                Response.Write("<script>alert('点击')</script>");

            }
            catch (Exception )
            {
                Response.Write("<script>alert('用户名或密码不正确')</script>");
            }
        }
    }
}