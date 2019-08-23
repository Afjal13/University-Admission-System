<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ManageStudent.aspx.cs" Inherits="ManageStudent" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            margin-left: 120px;
        }
        .auto-style2 {
            width: 44%;
        }
        .auto-style3 {
            height: 23px;
        }
    </style>
</head>
<body>
    <p>
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </p>
    <form id="form1" runat="server">
        <div class="auto-style1">
            <table class="auto-style2">
                <tr>
                    <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Click Option</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Button ID="UMSVListButton" runat="server" BackColor="#003366" Font-Bold="True" Font-Size="Medium" ForeColor="#CCCCCC" Height="45px" Text="View Student List" Width="169px" OnClick="UMSVListButton_Click" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Button ID="USMUSInfoButton" runat="server" BackColor="#003366" Font-Bold="True" Font-Size="Medium" ForeColor="#CCCCCC" Height="42px" Text="Update Student Info" Width="171px" OnClick="USMUSInfoButton_Click" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Button ID="USMDInfoButton" runat="server" BackColor="#003366" Font-Bold="True" Font-Size="Medium" ForeColor="#CCCCCC" Height="42px" Text="Delete Student Info" Width="172px" OnClick="USMDInfoButton_Click" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Button ID="USMCancelButton" runat="server" BackColor="Red" Font-Bold="True" Font-Size="Medium" OnClick="USMCancelButton_Click" Text="Cancel" Width="175px" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
