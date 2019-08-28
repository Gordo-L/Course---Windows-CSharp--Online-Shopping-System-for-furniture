using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Security.Cryptography;
using System.Text.RegularExpressions;

namespace Proc
{
    public class Common
    {
        public static string ToMD5(string str)
        {
            MD5 md5 = MD5.Create();
            var hash = md5.ComputeHash(Encoding.Default.GetBytes(str));
            StringBuilder sb = new StringBuilder(32);
            foreach (byte i in hash)
            {
                sb.Append(i.ToString("X2"));
            }
            return sb.ToString();
        }
        
        public static bool IsEmail(string email)
        {
            return Regex.IsMatch(email, @"^[a-zA-Z0-9_-]+@[a-zA-Z0-9_-]+(\.[a-zA-Z0-9_-]+)+$");
        }

        public static string ImgToHex(byte[] Img)
        {
            StringBuilder sb = new StringBuilder();
            foreach (byte i in Img)
            {
                sb.Append(i.ToString("X2"));
            }
            return sb.ToString();
        }
        
    }
}
