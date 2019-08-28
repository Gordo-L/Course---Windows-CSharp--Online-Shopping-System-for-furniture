using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Big_homework
{
    public partial class Image : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string id = Request["src"];
            if (id == null) return;
            byte[] img = Proc.Product.Image(int.Parse(id));
            Response.ContentType = "image/png";
            Response.BinaryWrite(img);
        }
    }
}