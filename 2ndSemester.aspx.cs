using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

public partial class _2ndSemester : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            gridview_binding();
        }

    }

    protected void gridview_binding()
    {
        string conn = ConfigurationManager.ConnectionStrings["connectionstring"].ConnectionString;
        SqlConnection connectionRegistration = new SqlConnection(conn);
        connectionRegistration.Open();
        SqlCommand cmd = new SqlCommand("data_2st_sem", connectionRegistration);
        cmd.CommandType = CommandType.StoredProcedure;
        SqlDataAdapter sda = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        sda.Fill(ds);

        gridview_attendance.DataSource = ds;
        gridview_attendance.DataBind();

        connectionRegistration.Close();


    }


    protected void gridview_attendance_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        string value = e.CommandArgument.ToString();

        GridViewRow row = (GridViewRow)(((Button)e.CommandSource).NamingContainer);
        //Label StudentId = (Label)row.FindControl("StudentId");
        Label gv_enroll = (Label)row.FindControl("gv_enroll");
        Label gv_name = (Label)row.FindControl("gv_firstname");
        DropDownList ddl_present_absent = (DropDownList)row.FindControl("ddl_present_absent");


        if (e.CommandName == "update")
        {

            string conn = ConfigurationManager.ConnectionStrings["connectionstring"].ConnectionString;
            SqlConnection connectionRegistration = new SqlConnection(conn);
            connectionRegistration.Open();
            SqlCommand cmd = new SqlCommand("save_attendance_2nd_sem", connectionRegistration);
            cmd.CommandType = CommandType.StoredProcedure;

            cmd.Parameters.AddWithValue("@Date", txt_date_1st_sem.Text);
            cmd.Parameters.AddWithValue("@EnrollmentNumber", gv_enroll.Text);
            cmd.Parameters.AddWithValue("@Name", gv_name.Text);
            cmd.Parameters.AddWithValue("@Status", ddl_present_absent.SelectedValue);
            cmd.ExecuteNonQuery();
            connectionRegistration.Close();
        }

    }

    protected void gridview_attendance_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {

    }

    protected void gridview_attendance_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {

    }


}