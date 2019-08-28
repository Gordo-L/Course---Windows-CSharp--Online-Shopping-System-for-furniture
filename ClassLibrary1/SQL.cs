using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using MySql.Data.MySqlClient;
using System.Data;

namespace Proc
{
    public class SQL
    {
        static readonly byte[] ServerConf = Convert.FromBase64String("c2VydmVyPTQ3LjEwMy4zMC40Mjt1c2VyIGlkPWJzbWFsbDtwYXNzd29yZD1kb250bG9naW5wbGVhc2U7ZGF0YWJhc2U9YnNtYWxs");
        private MySqlConnection connection;
        public SQL()
        {
            connection = new MySqlConnection(Encoding.Default.GetString(ServerConf));
            Connect();
        }
        public void Connect()
        {
            connection.Open();
        }
        public void Execute(string command)
        {
            MySqlCommand mySqlCommand = new MySqlCommand(command, connection);
            mySqlCommand.ExecuteNonQuery();
        }
        public List<object[]> Select(string command)
        {
            DataSet dataSet = new DataSet();
            MySqlDataAdapter adapter = new MySqlDataAdapter(command, connection);
            adapter.Fill(dataSet);
            var list = new List<object[]>();
            foreach (DataRow i in dataSet.Tables[0].Rows)
            {
                list.Add(i.ItemArray);
            }
            return list;
        }
        public void Disconnect()
        {
            connection.Close();
        }
        ~SQL()
        {
            Disconnect();
        }
        public static string btoa(string raw)
        {
            return Convert.ToBase64String(Encoding.Default.GetBytes(raw));
        }

        public static string atob(object base64)
        {
            return Encoding.Default.GetString(Convert.FromBase64String((string)base64));
        }
    }
}
