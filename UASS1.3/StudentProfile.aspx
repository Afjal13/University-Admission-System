<%@ Page Language="C#" AutoEventWireup="true" CodeFile="StudentProfile.aspx.cs" Inherits="Extra" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
   
<body>

    <form id="form1" runat="server">
        <div>
            <asp:Button ID="SProfileButton" runat="server" Text="Profile" OnClick="Button1_Click" />
            <asp:Button ID="SEditButton" runat="server" Text="Edit" OnClick="SEditButton_Click" />
            <asp:Button ID="SCDButton" runat="server" Text="Change Dept." />
            <asp:Button ID="SNBButton" runat="server" Text="Notice Board" />
            <asp:Button ID="SReportButton" runat="server" Text="Report" />
            <asp:Button ID="SSoutButton" runat="server" Text="Sign Out" OnClick="SSoutButton_Click" />
            <br />
        </div>
   <div>
       <asp:Label ID="SPLb" runat="server" Text="afjal             "></asp:Label>
      
       
   </div>
    <div>
         <asp:Label ID="SAVNLabel" runat="server" Text="Admitted Versity:  "></asp:Label>
         <asp:Label ID="ShowVersitynameL" runat="server" Text="Dhaka University"></asp:Label>
    </div>
       <div>

           <asp:Label ID="profileInfoLabel" runat="server" Text="Show Profile Info"></asp:Label>

       </div>
    </form>
       
</body>
   
</html>
