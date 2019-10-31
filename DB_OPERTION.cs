using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Data.Sql;
using System.Data.OleDb;
using System.Data.SqlClient;
public class DB_OPERTION
{
    SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-4J8K227\SQLEXPRESS;Initial Catalog=C:\INETPUB\WWWROOT\HOMOMORPHIC\APP_DATA\HOMORPIC.MDF;Integrated Security=True");
    public void execute(SqlCommand cmd)
    {
        cmd.Connection = con;
        try
        {
            con.Open();
            cmd.ExecuteNonQuery();
        }
        catch (Exception e)
        {
            e.ToString();
        }
        con.Close();
    }
     public DataTable getdata(SqlCommand cmd)
     {
         cmd.Connection = con;
         SqlDataAdapter da = new SqlDataAdapter();
         da.SelectCommand = cmd;
         DataSet ds = new DataSet();
         da.Fill(ds);
         return ds.Tables[0];
     }
     public int max_id(SqlCommand cmd)
     {
        cmd.Connection = con;
        int i;
        try
        {
            con.Open();
            i = Convert.ToInt32(cmd.ExecuteScalar()) + 1;
        }
        catch
        {
            i = 1;
        }
        con.Close();
        return i;
    }

	public DB_OPERTION()
	{
		//
		// TODO: Add constructor logic here
		//
	}
}