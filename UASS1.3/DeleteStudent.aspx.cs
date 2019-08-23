using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class DeleteStudent : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        string Vdb = ConfigurationManager.ConnectionStrings["Uas"].ConnectionString;
        SqlConnection vcon = new SqlConnection(Vdb);
        vcon.Open();
        string qry = "SELECT * FROM Extratable2";
        SqlCommand cmd = new SqlCommand(qry, vcon);


        GridView1.DataSource = cmd.ExecuteReader();
        GridView1.DataBind();

        vcon.Close();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string Vdb = ConfigurationManager.ConnectionStrings["Uas"].ConnectionString;
        SqlConnection vcon = new SqlConnection(Vdb);
        vcon.Open();
        string qry = "DELETE FROM Extratable2 WHERE email=@Email";
        SqlCommand cmd = new SqlCommand(qry, vcon);
        cmd.Parameters.Add("@Email", TextBox1.Text);
        cmd.ExecuteScalar();
        vcon.Close();
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("ManageStudent.aspx");
    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        Response.Redirect("UniversityProfile.aspx");
    }
}