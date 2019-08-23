using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdmissionForm : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        int n = 1;
        Button SignUp = (Button)Master.FindControl("signUpButton");
        Button SignIn = (Button)Master.FindControl("signInButton");
        Button applyadmission = (Button)Master.FindControl("applyAadmssion");
        Button Search = (Button)Master.FindControl("searchButton");
        Button Home = (Button)Master.FindControl("home");
        Button Notice = (Button)Master.FindControl("noticesButton");


        if (n == 1)
        {
            SignUp.Visible = false;
            SignIn.Visible = false;
            applyadmission.Visible = false;
            Search.Visible = false;
            Home.Visible = false;
            Notice.Visible = false;
        }
    }

    protected void AFCancelButton_Click(object sender, EventArgs e)
    {
        Response.Redirect("home.aspx");
    }

    protected void AFSubmitButton_Click(object sender, EventArgs e)
    {
       
        string email = (Request.QueryString["eMail"]).ToString();
    //    string email = Request.QueryString["email"].ToString();
        string rdb = ConfigurationManager.ConnectionStrings["Uas"].ConnectionString;
        SqlConnection rcon = new SqlConnection(rdb);
        rcon.Open();
        // using (rcon)
        // {
        //string Email = email.ToString();
        //string Email = "afjal@gmail.com";
        string firstname = FnameTextBox.Text;
        string quota = "";
            string versity = "";
            string dept = "";
            if (meritRadioButton.Checked)
            {
                quota = meritRadioButton.Text.ToString();
            }
            else if (FdFRadioButton.Checked)
            {
                quota = FdFRadioButton.Text.ToString();
            }
            if (diuRadioButton.Checked)
            {
                versity = diuRadioButton.Text.ToString();
            }
            else if (duRadioButton.Checked)
            {
                versity = duRadioButton.Text.ToString();
            }
            if (cseRadioButton.Checked)
            {
                dept = cseRadioButton.Text.ToString();
            }
            else if (sweRadioButton.Checked)
            {
                dept = sweRadioButton.Text.ToString();
            }
        //string eMail = Convert.ToString(email);
        //  String email = Session["key"].ToString();
       

        string qry = "insert into ExtraTable2 values('" + email + "','" + quota + "','" + versity + "','" + dept + "','"+ firstname+"')";
          
            // cmd.Parameters.Add("@DeptName", System.Data.SqlDbType.NVarChar,50).Value = dept;
            SqlCommand cmd = new SqlCommand(qry, rcon);
           
            cmd.ExecuteNonQuery();

      //  }

        Response.Redirect("Success.aspx");


    }
   
}