using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using Amazon;
using Amazon.S3;
using Amazon.S3.Transfer;
public partial class view__file : System.Web.UI.Page
{
    
    DB_OPERTION obj = new DB_OPERTION();
    AesAlg aes =new AesAlg();
    protected void Page_Load(object sender, EventArgs e)
    {
        //SqlCommand cmd = new SqlCommand();

        //cmd.CommandText = "select * from file1  ";
        //DataGrid1.DataSource = obj.getdata(cmd);
        //DataGrid1.DataBind();

       
               
    }
    DB_OPERTION db = new DB_OPERTION();
    protected void Button1_Click(object sender, EventArgs e)
    {
        string res = aes.EncryptStringToBytes_Aes(TextBox1.Text);
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "select * from file1 where id in(select distinct fid from findex where fkey like '%" + res + "%')";
       // cmd.CommandText = "";
        DataGrid1.DataSource = db.getdata(cmd);
        DataGrid1.DataBind();


    }
    protected void DataGrid1_ItemCommand(object source, DataGridCommandEventArgs e)
    {
        string fname = Server.MapPath(e.Item.Cells[2].Text);
        
        Response.AppendHeader("Content-Disposition", "attachment: filename=" + fname);
        Response.WriteFile(fname);
        Response.End();


       

    }
}