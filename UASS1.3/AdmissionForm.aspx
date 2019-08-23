<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AdmissionForm.aspx.cs" Inherits="AdmissionForm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 148px;
        }
        .auto-style3 {
            width: 177px;
        }
        .auto-style6 {
            width: 58px;
        }
        .auto-style7 {
            width: 335px;
        }
        .auto-style8 {
            width: 148px;
            height: 48px;
        }
        .auto-style9 {
            width: 177px;
            height: 48px;
        }
        .auto-style10 {
            width: 58px;
            height: 48px;
        }
        .auto-style11 {
            width: 335px;
            height: 48px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style3">
                <asp:Label ID="Label4" runat="server" Text="Admission Form "></asp:Label>
            </td>
            <td class="auto-style6">&nbsp;</td>
            <td class="auto-style7">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
            <td class="auto-style7">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:Label ID="Label2" runat="server" Text="First Name:"></asp:Label>
            </td>
            <td class="auto-style3">
                <asp:TextBox ID="FnameTextBox" runat="server" Width="160px"></asp:TextBox>
            </td>
            <td class="auto-style6">
                <asp:Label ID="Label9" runat="server" Text="HSC Roll:"></asp:Label>
            </td>
            <td class="auto-style7">
                <asp:TextBox ID="hscRollTextBox" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:Label ID="Label3" runat="server" Text="Last Name:"></asp:Label>
            </td>
            <td class="auto-style3">
                <asp:TextBox ID="LnameTextBox" runat="server" Width="158px"></asp:TextBox>
            </td>
            <td class="auto-style6">
                <asp:Label ID="Label10" runat="server" Text="HSC CGPA:"></asp:Label>
            </td>
            <td class="auto-style7">
                <asp:TextBox ID="hscCgpaTextBox" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:Label ID="Label5" runat="server" Text="Phone Number:"></asp:Label>
            </td>
            <td class="auto-style3">
                <asp:TextBox ID="PnoTextBox" runat="server" Width="159px"></asp:TextBox>
            </td>
            <td class="auto-style6">
                <asp:Label ID="Label11" runat="server" Text="SSC Roll:"></asp:Label>
            </td>
            <td class="auto-style7">
                <asp:TextBox ID="sscRollTextBox" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:Label ID="Label6" runat="server" Text="Gender:"></asp:Label>
            </td>
            <td class="auto-style3">
                <asp:RadioButton ID="maleRadioButton" runat="server" Text="Male" GroupName="AFgender" />
                <asp:RadioButton ID="femaleRadioButton" runat="server" Text="Female" GroupName="AFgender" />
            </td>
            <td class="auto-style6">
                <asp:Label ID="Label12" runat="server" Text="SSC CGPA:"></asp:Label>
            </td>
            <td class="auto-style7">
                <asp:TextBox ID="sscCgpaTextBox" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style8">
                <asp:Label ID="Label7" runat="server" Text="Religion:"></asp:Label>
            </td>
            <td class="auto-style9">
                <asp:DropDownList ID="religionDropDownList" runat="server">
                    <asp:ListItem>Select</asp:ListItem>
                    <asp:ListItem>Islam</asp:ListItem>
                    <asp:ListItem>Hindu</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="auto-style10">
                <asp:Label ID="Label13" runat="server" Text="Quota Type:"></asp:Label>
            </td>
            <td class="auto-style11">
                <asp:RadioButton ID="meritRadioButton" runat="server" GroupName="quota" Text="Merit" />
                <asp:RadioButton ID="FdFRadioButton" runat="server" GroupName="quota" Text="Freedom Fighter" />
            </td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:Label ID="Label8" runat="server" Text="Parmanent Address:"></asp:Label>
            </td>
            <td class="auto-style3">
                <asp:TextBox ID="pAddressTextBox" runat="server" Height="57px" Width="162px"></asp:TextBox>
            </td>
            <td class="auto-style6">
                <asp:Label ID="Label14" runat="server" Text="Admit To:"></asp:Label>
            </td>
            <td class="auto-style7">
                <asp:RadioButton ID="diuRadioButton" runat="server" GroupName="admit" Text="DIU" />
                <asp:RadioButton ID="duRadioButton" runat="server" GroupName="admit" Text="DU" />
            </td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:Label ID="Label17" runat="server" Text="Date of Birth :"></asp:Label>
            </td>
            <td class="auto-style3">
                <asp:TextBox ID="dateOfBirth" runat="server" Width="162px"></asp:TextBox>
            </td>
            <td class="auto-style6">
                <asp:Label ID="Label16" runat="server" Text="Dept. Name: "></asp:Label>
            </td>
            <td class="auto-style7">
                <asp:RadioButton ID="cseRadioButton" runat="server" GroupName="dept" Text="CSE" />
                <asp:RadioButton ID="sweRadioButton" runat="server" GroupName="dept" Text="SWE" />
            </td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style6">
                <asp:Label ID="Label15" runat="server" Text="Enter Admission Test Code:"></asp:Label>
            </td>
            <td class="auto-style7">
                <asp:TextBox ID="atcodeTextBox" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:Button ID="AFCancelButton" runat="server" OnClick="AFCancelButton_Click" Text="Cancel" />
            </td>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
            <td class="auto-style7">
                <asp:Button ID="AFSubmitButton" runat="server" OnClick="AFSubmitButton_Click" Text="Submit" />
            </td>
        </tr>
    </table>
</asp:Content>

