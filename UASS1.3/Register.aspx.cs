using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Register : System.Web.UI.Page
{
   

    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    protected void RegisterSubmitButton_Click(object sender, EventArgs e)
    {
        string rdb = ConfigurationManager.ConnectionStrings["Uas"].ConnectionString;
        SqlConnection rcon = new SqlConnection(rdb);
        rcon.Open();
        using (rcon)
        {
            string fname = RFname.Text;
            string lname = RLname.Text;
            string email = REmail.Text;
            string password = RPasswordF.Text;
            string Cpassword = RCPasswordF.Text;
            string pNo = RphoneNo.Text;
            string gender = "";
            if (RmaleRadioButton.Checked)
            {
                gender = RmaleRadioButton.Text;
            }
            else if (RfemaleRadioButton.Checked)
            {
                gender = RfemaleRadioButton.Text;
            }
            string usertype = "";
            if (studentRadioButton.Checked)
            {
                usertype = studentRadioButton.Text;
            }
            else if (universityRadioButton.Checked)
            {
                usertype = universityRadioButton.Text;
            }
            string address = Raddress.Text;
            if (password.Equals(Cpassword))
            {
                SqlCommand cmd = new SqlCommand("Insert into UserRegister(Fname, Lname, email, password, phoneNo, gender, userType, address) values(@fname, @lname, @email,@password, @phoneNo, @gender, @usertype, @address)", rcon);
                cmd.Parameters.Add(new SqlParameter("@fname", fname));
                cmd.Parameters.Add(new SqlParameter("@lname", lname));
                cmd.Parameters.Add(new SqlParameter("@email", email));
                cmd.Parameters.Add(new SqlParameter("@password", password));
                cmd.Parameters.Add(new SqlParameter("@phoneNo", pNo));
                cmd.Parameters.Add(new SqlParameter("@gender", gender));
                cmd.Parameters.Add(new SqlParameter("@usertype", usertype));
                cmd.Parameters.Add(new SqlParameter("@address", address));
                cmd.ExecuteNonQuery();
            }
            else
            {
                RSmessageLabel.Text = "password not match";
               
            }
        }

        Response.Redirect("Success.aspx");

    }
}