﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Proc
{
    public struct User
    {
        public int ID;
        public string email;
        public int type;

        public static User Login(string email, string password)
        {
            SQL sql = new SQL();
            var usr = sql.Select("SELECT ID, Password, Type FROM User WHERE Email = '" + email + "'");
            if (usr.Count != 1) return new User();
            if (password != (string)usr[0][1]) return new User();
            return new User
            {
                ID = (int)usr[0][0],
                email = email,
                type = (int)usr[0][2]
            };
        }

        public static User AutoLogin(int id)
        {
            SQL sql = new SQL();
            var usr = sql.Select("SELECT Email, Type FROM User WHERE ID = " + id);
            if (usr.Count == 1)
            {
                return new User
                {
                    ID = id,
                    email = (string)usr[0][0],
                    type = (int)usr[0][1]
                };
            }
            return new User();
        }

        public static bool Register(string email, string password, int type)
        {
            SQL sql = new SQL();
            if (sql.Select("SELECT ID FROM User WHERE Email = '" + email + "'").Count != 0) return false;
            sql.Execute("INSERT INTO User(ID, Type, Name, Password, Email, Rank, Coin, Paid_Coin) VALUES(" + 
                "0, " + type + ", ' ', '" + password + "', '" + email + "', 0, 0, 0)");
            return true;
        }

        public static List<User> Explore()
        {
            SQL sql = new SQL();
            var users = sql.Select("SELECT ID, Email, Type FROM User WHERE ID != 3");
            List<User> usr = new List<User>();
            foreach (var i in users)
            {
                usr.Add(new User
                {
                    ID = (int)i[0],
                    email = (string)i[1],
                    type = (int)i[2]
                });
            }
            return usr;
        }

        public static void Remove(int user)
        {
            if (user == 3) return;
            SQL sql = new SQL();
            sql.Execute("DELETE FROM User WHERE ID=" + user);
        }
    }
}
