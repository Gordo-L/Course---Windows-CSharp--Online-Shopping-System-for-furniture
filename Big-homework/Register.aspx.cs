using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Big_homework
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            button_register.ServerClick += Button_register_ServerClick;
        }

        private void Button_register_ServerClick(object sender, EventArgs e)
        {
            try
            {
                string email = input_email2.Value;
                string password = input_password2.Value;
                string confirm = input_confirm2.Value;
                if (!Proc.Common.IsEmail(email) || password.Length < 1 || confirm != password) throw new Exception();
                bool merchant = radio_register1.Checked;
                password = Proc.Common.ToMD5(password);
                if (!Proc.User.Register(email, password, merchant ? 0 : 1))
                {
                    Response.Write("<script>alert('该电子邮件已被注册')</script>");
                    return;
                }
                Response.Write("<script>alert('注册成功')</script>");
                Response.Redirect("Log_on.aspx");
            }
            catch (Exception)
            {
                Response.Write("<script>alert('电子邮件格式不正确或两次输入的密码不一致')</script>");
            }
        }
    }
}