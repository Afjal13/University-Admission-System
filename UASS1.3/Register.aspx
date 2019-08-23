<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style1 {
        width: 100%;
    }
    .auto-style3 {
            width: 137px;
        }
        .auto-style4 {
            width: 137px;
            height: 26px;
        }
        .auto-style5 {
            height: 26px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
    <tr>
        <td class="auto-style3">
            <asp:Label ID="firstNameL" runat="server" Text="First Name:"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="RFname" runat="server" Width="171px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style3">
            <asp:Label ID="lastNameL" runat="server" Text="Last Name :"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="RLname" runat="server" Width="172px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style3">
            <asp:Label ID="email" runat="server" Text="Email :"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="REmail" runat="server" Width="171px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style3">
            <asp:Label ID="newPasswordL" runat="server" Text="Create Password :"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="RPasswordF" runat="server" ViewStateMode="Disabled" Width="171px"></asp:TextBox>
            <asp:Label ID="RSmessageLabel" runat="server" Text="Label"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="auto-style3">
            <asp:Label ID="confirmPassword" runat="server" Text="Confirm Password :"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="RCPasswordF" runat="server" Width="171px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style4">
            <asp:Label ID="phoneNumberL" runat="server" Text="Phone Number :"></asp:Label>
        </td>
        <td class="auto-style5">
            <asp:TextBox ID="RphoneNo" runat="server" Width="173px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style3">
            <asp:Label ID="genderL" runat="server" Text="Gender :"></asp:Label>
        </td>
        <td>
            <asp:RadioButton ID="RmaleRadioButton" runat="server" GroupName="Rgender" Text="Male" />
            <asp:RadioButton ID="RfemaleRadioButton" runat="server" GroupName="Rgender" Text="Female" />
        </td>
    </tr>
    <tr>
        <td class="auto-style3">
            <asp:Label ID="usertypeL" runat="server" Text="User Type :"></asp:Label>
        </td>
        <td>
            <asp:RadioButton ID="studentRadioButton" runat="server" Text="Student" GroupName="UserType" />
            <asp:RadioButton ID="universityRadioButton" runat="server" Text="University" GroupName="UserType" />
        </td>
    </tr>
    <tr>
        <td class="auto-style3">
            <asp:Label ID="addressL" runat="server" Text="Address :"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="Raddress" runat="server" Height="57px" Width="176px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style3">
            <asp:Button ID="RegisterCancelButton" runat="server" Text="Cancel" />
        </td>
        <td>
            <asp:Button ID="RegisterSubmitButton" runat="server" Text="Submit" OnClick="RegisterSubmitButton_Click" />
        </td>
    </tr>
</table>
</asp:Content>

