using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage : System.Web.UI.MasterPage
{
   
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    protected void home_Click(object sender, EventArgs e)
    {
        Response.Redirect("home.aspx");
    }

    protected void signInButton_Click(object sender, EventArgs e)
    {
        Response.Redirect("LogIn.aspx");
    }

    protected void signUpButton_Click(object sender, EventArgs e)
    {
        Response.Redirect("Register.aspx");
    }

    protected void aboutButton_Click(object sender, EventArgs e)
    {
        
    }

    public void Button1_Click(object sender, EventArgs e)
    {
          
            Response.Redirect("EnterAdmission.aspx");
            
        
    }
}
