<%@ Page Title="About Us" Language="VB" MasterPageFile="~/LunchBuddyMaster.master" AutoEventWireup="false" CodeFile="AboutUs.aspx.vb" Inherits="AboutUs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   
    <h2>About Us</h2>
     <asp:Image ID="Image1" runat="server" ImageUrl="~/images/lunchlogo.png" Width="80px" />
     <p>The Lunch Buddy website was made by Team Gold for the Capstone Course at Kennesaw State University. </p>
    <p>You can search for restuarants in the Kennesaw area and connect with other members in the postboard in order to meet up and have lunch with them.</p>
    <p>Only member can enjoy our service! </p>
    <p>please join us</p>
    <p>&nbsp;</p>
    <p>
     </p>
    <asp:LinkButton ID="LinkButton2" runat="server" BorderStyle="Double" BorderWidth="0px" ForeColor="Blue" Height="20px" PostBackUrl="~/Login.aspx" Width="70px">Log-in</asp:LinkButton>
    &nbsp;&nbsp;
    <asp:LinkButton ID="LinkButton1" runat="server" BorderStyle="Double" BorderWidth="0px" ForeColor="Blue" Height="20px" PostBackUrl="~/SignUp.aspx" Width="70px">Sign up</asp:LinkButton>
    &nbsp;
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>
        
    </p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>

    <p>Our Team mebers</p>
    <p>&nbsp;</p>
    <p>Khianna Williams</p>
    <p>Sujin Kang</p>
    <p>Sydney Elledge</p>
    <p>Jacob Clover</p>
    <p>
        &nbsp;</p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
</asp:Content>

