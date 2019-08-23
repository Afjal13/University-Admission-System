using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class VeiwStudentList : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string Vdb = ConfigurationManager.ConnectionStrings["Uas"].ConnectionString;
        SqlConnection vcon = new SqlConnection(Vdb);
        vcon.Open();
        string qry = "SELECT * FROM ExtraTable2";
        SqlCommand cmd = new SqlCommand(qry, vcon);
      //  SqlDataAdapter sda = new SqlDataAdapter(qry, vcon);
        //DataTable dt = new DataTable();
        //sda.Fill(dt);
        GridView1.DataSource = cmd.ExecuteReader();
        GridView1.DataBind();
        vcon.Close();
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        string eMail = interestSinfoTextBox.Text;
        string Vdb = ConfigurationManager.ConnectionStrings["Uas"].ConnectionString;
        SqlConnection vcon = new SqlConnection(Vdb);
        vcon.Open();
        string qry = "SELECT * FROM Extratable2 where email=@eMail";
        SqlCommand cmd = new SqlCommand(qry, vcon);
        cmd.Parameters.Add(new SqlParameter("@eMail", eMail));

        GridView2.DataSource = cmd.ExecuteReader();
        GridView2.DataBind();
        vcon.Close();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("ManageStudent.aspx");
    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        Response.Redirect("UniversityProfile.aspx");
    }
}