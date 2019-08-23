using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Extra : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        profileInfoLabel.Text = "He is Good Student";
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("StudentProfile.aspx");
    }

    protected void SEditButton_Click(object sender, EventArgs e)
    {


    }

    protected void SSoutButton_Click(object sender, EventArgs e)
    {
        Response.Redirect("home.aspx");
    }
}