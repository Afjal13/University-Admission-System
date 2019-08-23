<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="EnterAdmission.aspx.cs" Inherits="EnterAdmission" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style1 {
        width: 100%;
    }
    .auto-style2 {
        width: 178px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
    <tr>
        <td class="auto-style2">Enter Reg. email:</td>
        <td>
            <asp:TextBox ID="EAEmail" runat="server" Width="208px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style2">Enter Password</td>
        <td>
            <asp:TextBox ID="EAPass" runat="server" Width="208px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style2">&nbsp;</td>
        <td>
            <asp:Button ID="EAokButton" runat="server" OnClick="EAokButton_Click" Text="Ok" />
        </td>
    </tr>
</table>
</asp:Content>

