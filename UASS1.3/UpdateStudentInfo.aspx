<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UpdateStudentInfo.aspx.cs" Inherits="UpdateStudentInfo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 26px;
        }
        .auto-style3 {
            width: 206px;
        }
        .auto-style4 {
            height: 26px;
            width: 206px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="Label1" runat="server" Text="Edit Student Information" Font-Bold="True" Font-Size="X-Large" ForeColor="Black"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="Label2" runat="server" Text="Enter Student Email hare" Font-Bold="True"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:TextBox ID="SearchTextBox1" runat="server" Width="155px" BackColor="#333333" BorderStyle="Double" ForeColor="#CCFFFF" Height="28px"></asp:TextBox>
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Search" BackColor="#003399" Font-Bold="True" ForeColor="Silver" Height="32px" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="Label3" runat="server" Text="Email:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server" Enabled="False" Width="175px" BackColor="#666666" Height="23px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:Label ID="Label4" runat="server" Text="Name:"></asp:Label>
                    </td>
                    <td class="auto-style2">
                        <asp:TextBox ID="TextBox3" runat="server" Width="174px" BackColor="#666666" Height="21px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="Label5" runat="server" Text="University:"></asp:Label>
&nbsp;</td>
                    <td>
                        <asp:TextBox ID="TextBox4" runat="server" Enabled="False" Width="174px" BackColor="#666666" Height="26px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:Label ID="Label6" runat="server" Text="Dept. Name:"></asp:Label>
                    </td>
                    <td class="auto-style2">
                        <asp:TextBox ID="TextBox5" runat="server" Width="173px" BackColor="#666666" Height="26px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="Label7" runat="server" Text="Quota Type:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox6" runat="server" Enabled="False" Width="173px" BackColor="#666666" Height="26px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td>
                        <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="Save" BackColor="#003399" Height="36px" Width="58px" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="Label8" runat="server" Text="Veiw updated student click " Font-Bold="True" Font-Size="Medium"></asp:Label>
                    </td>
                    <td>
                        <asp:Button ID="Button5" runat="server" Text="here" BackColor="#000099" BorderStyle="None" Font-Bold="True" Font-Size="Small" ForeColor="#FF0066" OnClick="Button5_Click" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:GridView ID="GridView1" runat="server">
                        </asp:GridView>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Button ID="Button2" runat="server" Text="Previous" BackColor="#000099" Font-Bold="True" ForeColor="#0099CC" Height="31px" OnClick="Button2_Click" Width="71px" />
                    </td>
                    <td>
                        <asp:Button ID="Button6" runat="server" Text="Cancel" BackColor="#990000" Font-Bold="True" Height="28px" OnClick="Button6_Click" Width="66px" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
