using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ManageStudent : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void USMCancelButton_Click(object sender, EventArgs e)
    {
        Response.Redirect("UniversityProfile.aspx");
    }

    protected void UMSVListButton_Click(object sender, EventArgs e)
    {
        Response.Redirect("VeiwStudentList.aspx");
    }

    protected void USMUSInfoButton_Click(object sender, EventArgs e)
    {
        Response.Redirect("UpdateStudentInfo.aspx");
    }

    protected void USMDInfoButton_Click(object sender, EventArgs e)
    {
        Response.Redirect("DeleteStudent.aspx");
    }
}