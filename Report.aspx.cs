using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

public partial class Report : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        gridview_binding();
        gridview_binding2();
    }
    protected void gridview_binding()
    {
        string conn = ConfigurationManager.ConnectionStrings["connectionstring"].ConnectionString;
        SqlConnection connectionRegistration = new SqlConnection(conn);
        connectionRegistration.Open();
        SqlCommand cmd = new SqlCommand("Report_1st_sem", connectionRegistration);
        cmd.CommandType = CommandType.StoredProcedure;
        SqlDataAdapter sda = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        sda.Fill(ds);

        gridview_attendance.DataSource = ds;
        gridview_attendance.DataBind();

        connectionRegistration.Close();

        //------------------
      
    }
    protected void gridview_binding2()
    {
        string conn1 = ConfigurationManager.ConnectionStrings["connectionstring"].ConnectionString;
        SqlConnection connectionRegistration1 = new SqlConnection(conn1);
        connectionRegistration1.Open();
        SqlCommand cmd1 = new SqlCommand("Report_2nd_sem", connectionRegistration1);
        cmd1.CommandType = CommandType.StoredProcedure;
        SqlDataAdapter sda1 = new SqlDataAdapter(cmd1);
        DataSet ds1 = new DataSet();
        sda1.Fill(ds1);

        gridview_2nd_sem.DataSource = ds1;
        gridview_2nd_sem.DataBind();

        connectionRegistration1.Close();
    }

    protected void gridview_attendance_RowCommand(object sender, GridViewCommandEventArgs e)
    {

    }

    protected void gridview_attendance_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {

    }

    protected void gridview_attendance_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {

    }
}