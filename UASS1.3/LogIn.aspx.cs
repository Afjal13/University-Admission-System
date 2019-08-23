using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class LogIn : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Session["IsLoggedIn"] = "No";

    }

    protected void hereButton_Click(object sender, EventArgs e)
    {
        Response.Redirect("Register.aspx");
    }

    protected void loginButton_Click(object sender, EventArgs e)
    {

        string eMail = enterEmailButton.Text;
        string pass = passwordButton.Text;
        string Ldb = ConfigurationManager.ConnectionStrings["Uas"].ConnectionString;
        SqlConnection lcon = new SqlConnection(Ldb);
        lcon.Open();
        using (lcon)
        {
            SqlCommand cmd = new SqlCommand("Select * from UserRegister", lcon);
            
            SqlDataReader reader = cmd.ExecuteReader();
            using (reader)
            {
                while (reader.Read())
                {
                    string Email = (string)reader["email"];
                    string Password = (string)reader["password"];
                    string user = (string)reader["userType"];
                    if (Email.Equals(eMail) && Password.Equals(pass) && user.Equals("Student"))
                    {
                        Session["IsLoggedIn"] = "yes";
                        // Session["key"] = eMail;
                        Response.Redirect("StudentProfile.aspx?email=" + enterEmailButton.Text);

                    }
                    else if (Email.Equals(eMail) && Password.Equals(pass) && user.Equals("University"))
                     {
                        Session["IsLoggedIn"] = "yes";
                        // Session["key"] = eMail;
                        Response.Redirect("UniversityProfile.aspx?email=" + enterEmailButton.Text);
                    }
                    else
                    {
                        Session["IsLoggedIn"] = "No";
                        
                        
                    }

                }

            }
        }


      //  Response.Redirect("UniversityProfile.aspx");



    }

    protected void enterEmailButton_TextChanged(object sender, EventArgs e)
    {

    }
}