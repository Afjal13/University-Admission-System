using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class EnterAdmission : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        int n = 1;
        Button SignUp = (Button)Master.FindControl("signUpButton");
        Button SignIn = (Button)Master.FindControl("signInButton");
       

        if (n==1)
        {
            SignUp.Visible = false;
            SignIn.Visible = false;
        }
        Session["IsLoggedIn"] = "No";
    }

    protected void EAokButton_Click(object sender, EventArgs e)
    {
        string eMail = EAEmail.Text;
        string pass = EAPass.Text;
        string rdb = ConfigurationManager.ConnectionStrings["Uas"].ConnectionString;
        SqlConnection rcon = new SqlConnection(rdb);
        rcon.Open();
        using (rcon)
        {
            SqlCommand cmd = new SqlCommand("Select * from UserRegister", rcon);
            //  cmd.Parameters.Add(new SqlParameter("@email", email));
            // cmd.Parameters.Add(new SqlParameter("@pass", pass));
            SqlDataReader reader = cmd.ExecuteReader();
            // int i = 0;
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
                          Response.Redirect("AdmissionForm.aspx?email=" + EAEmail.Text);
                        
                    }
                    else
                    {
                        Session["IsLoggedIn"] = "No";
                    }

                }
               
            }
        }
    }
    public string Email
    {
        get
        {
            return EAEmail.Text;
        }
    }
}