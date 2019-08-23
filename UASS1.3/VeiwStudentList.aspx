<%@ Page Language="C#" AutoEventWireup="true" CodeFile="VeiwStudentList.aspx.cs" Inherits="VeiwStudentList" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 57%;
        }
        .auto-style12 {
            height: 23px;
            width: 175px;
        }
        .auto-style13 {
            width: 5px;
        }
        .auto-style14 {
            height: 23px;
            width: 5px;
        }
        .auto-style15 {
            width: 175px;
        }
        .auto-style16 {
            width: 70px;
        }
        .auto-style17 {
            height: 23px;
            width: 70px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style16">&nbsp;</td>
                    <td class="auto-style15">
                        <asp:Label ID="Label1" runat="server" Text="Student Information List" BackColor="#003366" Font-Bold="True" Font-Size="Large" ForeColor="White"></asp:Label>
                    </td>
                    <td class="auto-style13">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style16">&nbsp;</td>
                    <td class="auto-style15">&nbsp;</td>
                    <td class="auto-style13">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style16">&nbsp;</td>
                    <td class="auto-style15">
                        <asp:GridView ID="GridView1" runat="server">
                            <Columns>
                                <asp:BoundField />
                            </Columns>
                        </asp:GridView>
                    </td>
                    <td class="auto-style13">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style17"></td>
                    <td class="auto-style12"></td>
                    <td class="auto-style14"></td>
                </tr>
                <tr>
                    <td class="auto-style16">&nbsp;</td>
                    <td class="auto-style15">
                        <asp:Label ID="Label2" runat="server" Text="Search Interest Student Info:" Font-Bold="True" Font-Size="Medium"></asp:Label>
                    </td>
                    <td class="auto-style13">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style16">
                        <asp:Label ID="Label3" runat="server" Text="Enter Email:" Font-Bold="True" Font-Size="Medium"></asp:Label>
                    </td>
                    <td class="auto-style15">
                        <asp:TextBox ID="interestSinfoTextBox" runat="server" Width="169px" BackColor="#333333" BorderStyle="Double" ForeColor="Silver" Height="30px"></asp:TextBox>
                        <asp:Button ID="showButton" runat="server" OnClick="Button3_Click" Text="Show" BackColor="#000099" Font-Bold="True" ForeColor="#CCFFFF" Height="37px" />
                    </td>
                    <td class="auto-style13">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style16">&nbsp;</td>
                    <td class="auto-style15">
                        <asp:GridView ID="GridView2" runat="server">
                        </asp:GridView>
                    </td>
                    <td class="auto-style13">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style16">
                        <asp:Button ID="Button1" runat="server" Text="Previous" BackColor="#000099" Font-Bold="True" ForeColor="#0099CC" Height="37px" OnClick="Button1_Click" Width="69px" />
                    </td>
                    <td class="auto-style15">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Button ID="Button4" runat="server" Text="Cancel" BackColor="Maroon" Font-Bold="True" Height="33px" OnClick="Button4_Click" Width="73px" />
                    </td>
                    <td class="auto-style13">&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
