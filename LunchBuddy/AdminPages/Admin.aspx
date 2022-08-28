<%@ Page Title="Welcome Admin Pages" Language="VB" MasterPageFile="~/LunchBuddyMaster.master" AutoEventWireup="false" CodeFile="Admin.aspx.vb" Inherits="AdminPages_Admin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="lblWelcome" runat="server" Text="Label"></asp:Label>

    <p>Welcome Administrators this is where you can manage admin pages. Please choose the following links:</p>
        <h2><a href="UserData.aspx">Manage User Data</a></h2><br />
    <h2><a href="Reports.aspx">View Reports</a></h2>
    

</asp:Content>

