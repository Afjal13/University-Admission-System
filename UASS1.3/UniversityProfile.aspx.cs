using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UniversityProfile : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string eMail = Request.QueryString["email"];
        string Vdb = ConfigurationManager.ConnectionStrings["Uas"].ConnectionString;
        SqlConnection vcon = new SqlConnection(Vdb);
        vcon.Open();
        SqlCommand cmd = new SqlCommand("Select * from UserRegister where email =@Email", vcon);
        cmd.Parameters.Add(new SqlParameter("@Email", eMail));
        SqlDataReader reader = cmd.ExecuteReader();
        reader.Read();
        string type = reader["userType"].ToString();
        UNameLabel.Text = type;

    }

    protected void Menu1_MenuItemClick(object sender, MenuEventArgs e)
    {

    }

    protected void UPLOButton_Click(object sender, EventArgs e)
    {
        Response.Redirect("home.aspx");
    }

    protected void UMSeatButton_Click(object sender, EventArgs e)
    {
        Response.Redirect("ManageSeat.aspx");
    }

    protected void UMSButton_Click(object sender, EventArgs e)
    {
        Response.Redirect("ManageStudent.aspx");
    }
}