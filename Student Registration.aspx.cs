using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

public partial class Student_Registration : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btn_submit_Click(object sender, EventArgs e)
    {
        string conn = ConfigurationManager.ConnectionStrings["connectionstring"].ConnectionString;
        SqlConnection connectionRegistration = new SqlConnection(conn);
        connectionRegistration.Open();
        SqlCommand cmd = new SqlCommand("uspStudentData", connectionRegistration);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@FirstName", txt_firstname.Text.Trim());
        cmd.Parameters.AddWithValue("@LastName", txt_last.Text.Trim());
        cmd.Parameters.AddWithValue("@EnrollmentNumber", txt_enrollment.Text.Trim());
        cmd.Parameters.AddWithValue("@Semester", ddl_Sem.SelectedValue);
        cmd.Parameters.AddWithValue("@Email", txt_email.Text.Trim());
        cmd.Parameters.AddWithValue("@PhoneNumber", txt_phone.Text.Trim());
        cmd.Parameters.AddWithValue("@DateOfBirth", txt_birth.Text);
        cmd.Parameters.AddWithValue("@Address", txt_address.Text);
        cmd.ExecuteNonQuery();
        connectionRegistration.Close();
    }
}