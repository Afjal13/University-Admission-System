<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UniversityProfile.aspx.cs" Inherits="UniversityProfile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 60%;
        }
        .auto-style3 {
            height: 29px;
            width: 103px;
        }
        .auto-style8 {
            width: 103px;
            height: 23px;
        }
        .auto-style9 {
            margin-left: 0px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Button ID="UPButton" runat="server" Height="51px" Text="Profile" Width="47px" BackColor="#336699" Font-Bold="True" ForeColor="Black" />
            <asp:Button ID="UEButton" runat="server" Height="51px" Text="Edit" Width="42px" BackColor="#336699" Font-Bold="True" />
            <asp:Button ID="URButton" runat="server" Height="51px" Text="Request" Width="62px" BackColor="#336699" Font-Bold="True" />
            <asp:Button ID="UMSButton" runat="server" Height="51px" Text="ManageStudent" Width="112px" BackColor="#336699" Font-Bold="True" Font-Size="Small" OnClick="UMSButton_Click" />
            <asp:Button ID="UUIButton" runat="server" Height="51px" Text="UpdateInfo" BackColor="#336699" Font-Bold="True" Width="88px" />
            <asp:Button ID="UMSeatButton" runat="server" Height="51px" Text="ManageSeat" BackColor="#336699" Font-Bold="True" OnClick="UMSeatButton_Click" Width="95px" />
            <asp:Button ID="UPLOButton" runat="server" BackColor="#336699" CssClass="auto-style9" Font-Bold="False" ForeColor="Red" Height="51px" OnClick="UPLOButton_Click" Text="Log Out" Width="59px" />
        </div>
        <div>

            <table class="auto-style1">
                <tr>
                    <td class="auto-style3">
                        <asp:Image ID="Image1" runat="server" Height="77px" Width="81px" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8">
                        <asp:Label ID="UNameLabel" runat="server" Text="Daffodil International university"></asp:Label>
                    </td>
                </tr>
            </table>

        </div>
    </form>
</body>
</html>
