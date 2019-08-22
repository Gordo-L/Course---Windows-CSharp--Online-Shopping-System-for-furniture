using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Proc
{
    public class Login
    {
        public static int LoginByName(string email, string password)
        {
            SQL sql = new SQL();
            var usr = sql.ExecSelect("SELECT ID, Password FROM User WHERE Email = '" + email + "'");
            if (usr.Count != 1) return 0;
            if (password != (string)usr[0][1]) return 0;
            return (int)usr[0][0];
        }
    }
}
