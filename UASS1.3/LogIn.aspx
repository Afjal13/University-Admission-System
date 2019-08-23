<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="LogIn.aspx.cs" Inherits="LogIn" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style1 {
        width: 100%;
    }
    .auto-style6 {
        width: 202px;
        height: 26px;
    }
    .auto-style7 {
        height: 26px;
    }
    .auto-style8 {
            width: 202px;
        }
        .auto-style9 {
            margin-left: 0px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
    <tr>
        <td class="auto-style8">
            <asp:Label ID="Label1" runat="server" Text="               Enter  Email :"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="enterEmailButton" runat="server" Width="202px" OnTextChanged="enterEmailButton_TextChanged"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td id="Password" class="auto-style6">
            <asp:Label ID="Label4" runat="server" Text="          Enter Password:"></asp:Label>
        </td>
        <td class="auto-style7">
            <asp:TextBox ID="passwordButton" runat="server" Width="202px" CssClass="auto-style9"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style8">
            <asp:Label ID="Label3" runat="server" Text="If you not registere yet? Click"></asp:Label>
        </td>
        <td>
            <asp:Button ID="hereButton" runat="server" Text="Here" OnClick="hereButton_Click" />
        </td>
    </tr>
    <tr>
        <td class="auto-style8">
            <asp:Button ID="forgotPasswordButton" runat="server" Text="Forgot Password" />
        </td>
        <td>
            <asp:Button ID="loginButton" runat="server" Text="Login" OnClick="loginButton_Click" />
        </td>
    </tr>
</table>
</asp:Content>

