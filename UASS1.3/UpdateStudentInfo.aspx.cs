using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UpdateStudentInfo : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Session["eMail"] = null;
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string Email = SearchTextBox1.Text;
        string Vdb = ConfigurationManager.ConnectionStrings["Uas"].ConnectionString;
        SqlConnection vcon = new SqlConnection(Vdb);
        vcon.Open();
        SqlCommand cmd = new SqlCommand("Select * from Extratable2 where email = @Email", vcon);
        cmd.Parameters.Add(new SqlParameter("@Email", Email));
        SqlDataReader reader = cmd.ExecuteReader();
        reader.Read();
        TextBox2.Text = reader["email"].ToString();
        TextBox3.Text = reader["FirstName"].ToString();
        TextBox4.Text = reader["uName"].ToString();
        TextBox5.Text = reader["deptName"].ToString();
        TextBox6.Text = reader["quota"].ToString();
        Session["eMail"] = Email;
        vcon.Close();
    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        //string Email = (string)Session["eMail"];
       // string name = TextBox3.Text;
      // string dptname = TextBox5.Text;



        string Vdb = ConfigurationManager.ConnectionStrings["Uas"].ConnectionString;
        SqlConnection vcon = new SqlConnection(Vdb);
        vcon.Open();
       // string qry = "UPDATE ExtraTable2 SET FirstName='" + name + "',deptName='" + dptname + "'WHERE email='" + Email +"'";
          SqlCommand cmd = new SqlCommand("UPDATE  Extratable2 SET deptName=@Dptname, FirstName = @name WHERE email=@Email", vcon);
        //  SqlCommand cmd = new SqlCommand(qry, vcon);
       
        cmd.Parameters.Add("Dptname", TextBox5.Text);
        cmd.Parameters.Add("name", TextBox3.Text);
        cmd.Parameters.Add("Email", TextBox2.Text);

        cmd.ExecuteNonQuery();
     //   cmd.ExecuteScalar();

        vcon.Close();

    }

    protected void Button5_Click(object sender, EventArgs e)
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

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("ManageStudent.aspx");
    }

    protected void Button6_Click(object sender, EventArgs e)
    {
        Response.Redirect("UniversityProfile.aspx");
    }
}