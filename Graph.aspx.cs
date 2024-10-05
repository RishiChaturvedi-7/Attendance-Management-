using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


public partial class Graph : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        CreateStudentChart();
    }


    protected void CreateStudentChart()
    {
        // StringBuilder to hold the dynamic chart data
        StringBuilder sb = new StringBuilder();

        // Query the database to get dynamic data
        DataTable dt = GetStudentAttendanceData();

        // Format the present and absent counts
        List<int> presentCounts = new List<int>();
        List<int> absentCounts = new List<int>();

        foreach (DataRow row in dt.Rows)
        {
            presentCounts.Add(Convert.ToInt32(row["Present"]));
            absentCounts.Add(Convert.ToInt32(row["Absent"]));
        }

        // Create Highcharts figure and script
        sb.Append("<figure class=\"highcharts-figure\">");
        sb.Append("    <div id=\"container\"></div>");
        sb.Append("    <p class=\"highcharts-description\">");
        sb.Append("        This chart compares estimated present and absent count of students semester wise.");
        sb.Append("    </p>");
        sb.Append("</figure>");
        sb.Append("<script src=\"https://code.highcharts.com/highcharts.js\"></script>");
        sb.Append("<script>");
        sb.Append("Highcharts.chart('container', {");
        sb.Append("    chart: {");
        sb.Append("        type: 'column'");
        sb.Append("    },");
        sb.Append("    title: {");
        sb.Append("        text: 'Semester wise Present / Absent Data',");
        sb.Append("        align: 'left'");
        sb.Append("    },");
        sb.Append("    xAxis: {");
        sb.Append("        categories: ['Semester 1', 'Semester 2', 'Semester 3', 'Semester 4'],");
        sb.Append("        crosshair: true,");
        sb.Append("        accessibility: {");
        sb.Append("            description: 'Semesters'");
        sb.Append("        }");
        sb.Append("    },");
        sb.Append("    yAxis: {");
        sb.Append("        min: 0,");
        sb.Append("        title: {");
        sb.Append("            text: 'No. of Present / Absent'");
        sb.Append("        }");
        sb.Append("    },");
        sb.Append("    tooltip: {");
        sb.Append("        valueSuffix: ' (days)'");
        sb.Append("    },");
        sb.Append("    plotOptions: {");
        sb.Append("        column: {");
        sb.Append("            pointPadding: 0.2,");
        sb.Append("            borderWidth: 0");
        sb.Append("        }");
        sb.Append("    },");
        sb.Append("    series: [");
        sb.Append($"        {{ name: 'Present', data: [{string.Join(",", presentCounts)}] }},");
        sb.Append($"        {{ name: 'Absent', data: [{string.Join(",", absentCounts)}] }}");
        sb.Append("    ]");
        sb.Append("});");
        sb.Append("</script>");

        // Inject the generated script into the Literal control
        containerClient.Text = sb.ToString();
    }

    protected DataTable GetStudentAttendanceData()
    {
        // Fetch data from the database (use your connection string)
        string connectionString = ConfigurationManager.ConnectionStrings["connectionstring"].ConnectionString;
        DataTable dt = new DataTable();

        using (SqlConnection con = new SqlConnection(connectionString))
        {
            using (SqlCommand cmd = new SqlCommand("sp_GetStudentAttendanceData", con))
            {
                cmd.CommandType = CommandType.StoredProcedure;
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                da.Fill(dt);
            }
        }

        return dt;
    }


}