using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class VIEW_FILE : System.Web.UI.Page
{
    DB_OPERTION obj = new DB_OPERTION();
       
    protected void Page_Load(object sender, EventArgs e)
    {
        MultiView1.SetActiveView(View1);  
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "select id,name,address,email,mobile from regisration where status='pending' ";
        DataGrid1.DataSource = obj.getdata(cmd);
        DataGrid1.DataBind();

    }
    protected void DataGrid1_ItemCommand(object source, DataGridCommandEventArgs e)
    {
        int v =Convert.ToInt32( e.Item.Cells[0].Text);
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "update regisration set status='block' where id='" + v + "'";
        obj.execute(cmd);
        MultiView1.SetActiveView(View1);  
        cmd.CommandText = "select id,name,address,email,mobile from regisration where status='pending' ";
        DataGrid1.DataSource = obj.getdata(cmd);
        DataGrid1.DataBind();

    }
    protected void DataGrid1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        MultiView1.SetActiveView(View2);
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "select id,name,address,email,mobile from regisration where status='block' ";
        DataGrid2.DataSource = obj.getdata(cmd);
        DataGrid2.DataBind();
    }
}