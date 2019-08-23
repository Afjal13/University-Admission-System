<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DeleteStudent.aspx.cs" Inherits="DeleteStudent" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 52%;
            height: 264px;
        }
        .auto-style3 {
            width: 268px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="X-Large" Text="Form for delete Student "></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td>
                    <asp:Button ID="Button2" runat="server" BackColor="#000099" Font-Bold="True" Font-Size="Medium" ForeColor="#CCCCCC" Height="35px" OnClick="Button2_Click" Text="View list" Width="73px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Large" Text="Enter Email:"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:TextBox ID="TextBox1" runat="server" BackColor="#333333" BorderColor="#333333" BorderStyle="Double" Font-Bold="False" Font-Size="Small" ForeColor="White" Height="29px" Width="181px"></asp:TextBox>
                    <asp:Button ID="Button1" runat="server" BackColor="#990000" Font-Bold="True" Font-Size="Medium" Height="33px" OnClick="Button1_Click" Text="Delete" Width="73px" />
                </td>
                <td>
                    <asp:GridView ID="GridView1" runat="server">
                    </asp:GridView>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Button ID="Button3" runat="server" BackColor="#003399" Height="38px" OnClick="Button3_Click" Text="Previous" />
                </td>
                <td>
                    <asp:Button ID="Button4" runat="server" BackColor="#CC0000" Font-Bold="True" Font-Size="Small" ForeColor="Silver" Height="39px" OnClick="Button4_Click" Text="Cancel" Width="76px" />
                </td>
            </tr>
        </table>
        <div>
        </div>
    </form>
</body>
</html>
