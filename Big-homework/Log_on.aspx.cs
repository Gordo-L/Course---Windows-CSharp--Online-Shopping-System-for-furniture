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
                Response.Cookies.Remove("user");
                HttpCookie cookie = new HttpCookie("user", user.ID.ToString());
                HttpCookie type = new HttpCookie("type", user.type.ToString());
                if (chk)
                {
                    cookie.Expires = DateTime.Now.AddDays(3);
                }
                Response.Cookies.Add(cookie);
                Response.Cookies.Add(type);
                Response.Write("<script>alert('登录成功');window.location.href='Default.aspx';</script>");
                //Response.Redirect("Default.aspx");

            }
            catch (Exception)
            {
                Response.Write("<script>alert('邮箱地址或密码不正确')</script>");
            }
        }
    }
}