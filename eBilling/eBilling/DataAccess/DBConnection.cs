using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Reflection;

namespace Database.LayerDataAccess
{
    public class DBConnection
    {
        string strcon;
        SqlConnection conDB;
        SqlCommand cmdDB;
        SqlDataAdapter sqlData;

        public SqlConnection setDBConnection()
        {
            strcon = ConfigurationManager.ConnectionStrings["Connection String"].ToString();
            conDB = new SqlConnection(strcon);
            conDB.Open();
            return conDB;
        }

        public SqlDataReader executeReader(object obj, string ProcName)
        {
            cmdDB = null;
            cmdDB = new SqlCommand();
            cmdDB.CommandType = CommandType.StoredProcedure;
            cmdDB.Connection = setDBConnection();
            cmdDB.CommandText = ProcName;
            Int32 i = 0;
            foreach (PropertyInfo param in obj.GetType().GetProperties())
            {
                if (i < obj.GetType().GetProperties().Length)
                {
                    cmdDB.Parameters.AddWithValue("@" + param.Name, param.GetValue(obj, null));
                    i = i + 1;
                }
            }
            return cmdDB.ExecuteReader();
        }
        public DataTable executeDataTable(object obj, string ProcName)
        {
            cmdDB = null;
            cmdDB = new SqlCommand();
            cmdDB.CommandType = CommandType.StoredProcedure;
            cmdDB.Connection = setDBConnection();
            cmdDB.CommandText = ProcName;
            DataTable dt = new DataTable();
            Int32 i = 0;
            foreach (PropertyInfo param in obj.GetType().GetProperties())
            {
                if (i < obj.GetType().GetProperties().Length)
                {
                    cmdDB.Parameters.AddWithValue("@" + param.Name, param.GetValue(obj, null));
                    i = i + 1;
                }
            }
            SqlDataAdapter sqlAdapter = new SqlDataAdapter(cmdDB);
            sqlAdapter.Fill(dt);
            return dt;
        }
        public DataSet executeDataset(object obj, string ProcName)
        {
            cmdDB = null;
            cmdDB = new SqlCommand();
            cmdDB.CommandType = CommandType.StoredProcedure;
            cmdDB.Connection = setDBConnection();
            cmdDB.CommandText = ProcName;
            DataSet ds = new DataSet();
            Int32 i = 0;
            foreach (PropertyInfo param in obj.GetType().GetProperties())
            {
                if (i < obj.GetType().GetProperties().Length)
                {
                    cmdDB.Parameters.AddWithValue("@" + param.Name, param.GetValue(obj, null));
                    i = i + 1;
                }
            }
            SqlDataAdapter sqlAdapter = new SqlDataAdapter(cmdDB);
            sqlAdapter.Fill(ds);
            return ds;
        }
        public SqlCommand setDBCommand(string sqlCmd)
        {
            cmdDB = null;
            cmdDB = new SqlCommand();
            //cmdDB = new SqlCommand();
            cmdDB.CommandType = CommandType.Text;
            cmdDB.Connection = setDBConnection();
            cmdDB.CommandText = sqlCmd;
            return cmdDB;
        }
    }
}