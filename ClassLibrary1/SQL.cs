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
        private bool isConnected;
        public SQL(bool isConnect = true)
        {
            connection = new MySqlConnection(Encoding.Default.GetString(ServerConf));
            if (isConnect) WaitAndConnect();
        }
        public bool Connect()
        {
            if (connection.State != ConnectionState.Closed)
            {
                return false;
            }
            connection.Open();
            isConnected = true;
            return true;
        }
        public void WaitAndConnect()
        {
            while (isConnected) ;
            Connect();
        }
        public void ExecCommand(string command)
        {
            MySqlCommand mySqlCommand = new MySqlCommand(command, connection);
            mySqlCommand.ExecuteNonQuery();
        }
        public List<object[]> ExecSelect(string command)
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
            if (!isConnected) return;
            isConnected = false;
            connection.Close();
        }
        ~SQL()
        {
            Disconnect();
        }
    }
}
