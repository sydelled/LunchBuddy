<%@ Page Title="Sign Up" Language="VB" MasterPageFile="~/LunchBuddyMaster.master" AutoEventWireup="false" CodeFile="SignUp.aspx.vb" Inherits="SignUp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style2 {
            height: 6px;
        }
        .auto-style3 {
            height: 26px;
        }
        .auto-style5 {
            height: 26px;
            width: 664px;
        }
        .auto-style6 {
            width: 664px;
        }
        .auto-style7 {
            height: 5px;
            width: 664px;
        }
        .auto-style9 {
            width: 381px;
            height: 531px;
            margin-right: 62px;
        }
        .auto-style10 {
            height: 27px;
            color: #E4F132;
        }
        .auto-style11 {
            height: 27px;
            width: 664px;
        }
        .auto-style18 {
            height: 15px;
        }
        .auto-style19 {
            height: 15px;
            width: 664px;
        }
        .auto-style20 {
            height: 4px;
        }
        .auto-style21 {
            width: 664px;
            height: 4px;
        }
        .auto-style22 {
            width: 711px;
            text-align: left;
        }
        .auto-style23 {
            height: 15px;
            width: 711px;
            text-align: left;
        }
        .auto-style24 {
            width: 711px;
            height: 4px;
            text-align: left;
        }
        .auto-style25 {
            height: 5px;
            width: 711px;
            text-align: left;
        }
        .auto-style26 {
            height: 27px;
            width: 711px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <table class="auto-style9">
        <tr>
            <td class="auto-style3">User Name:</td>
            <td class="auto-style6">
                <asp:TextBox ID="txtUserName" runat="server" Width="200px"></asp:TextBox>
            </td>
            <td class="auto-style22">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtUserName" ErrorMessage="* " ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="txtUserName" ErrorMessage="Min 5 and Max 20 characters required" ValidationExpression="^[\s\S]{5,20}$" ForeColor="Red"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style18">Password:</td>
            <td class="auto-style19">
                <asp:TextBox ID="txtPassword" runat="server" Width="199px"></asp:TextBox>
            </td>
            <td class="auto-style23">
                <asp:RequiredFieldValidator ID="RequiredValidatorPassword" runat="server" ControlToValidate="txtPassword" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularValidatorPassword" runat="server" ControlToValidate="txtPassword" ErrorMessage="Min 5 and Max 20 character reqired" ValidationExpression="^[\s\S]{5,20}$" ForeColor="Red"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style18">Confirm Password:</td>
            <td class="auto-style19">
                <asp:TextBox ID="txtConfirmPassword" runat="server" Width="200px"></asp:TextBox>
            </td>
            <td class="auto-style23">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtConfirmPassword" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidatorConfirmPassword" runat="server" ControlToCompare="txtPassword" ControlToValidate="txtConfirmPassword" ErrorMessage="Password Must Match" ForeColor="Red"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style20">Email:</td>
            <td class="auto-style21">
                <asp:TextBox ID="txtEmail" runat="server" Width="200px" ></asp:TextBox>
                
            </td>
            <td class="auto-style24">
                
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtEmail" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularValidatorEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="Enter a Valid Email Address (xxx@students.kennesaw.edu)" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@(students.kennesaw.edu)"></asp:RegularExpressionValidator>
                
            </td>
        </tr>
        <tr>
            <td class="auto-style17">Confirm Email:</td>
            <td class="auto-style7">
                <asp:TextBox ID="txtConfirmEmail" runat="server" Width="200px"></asp:TextBox>
            </td>
            <td class="auto-style25">
                <asp:RequiredFieldValidator ID="RequiredValidatorConfirmEmail" runat="server" ControlToValidate="txtConfirmEmail" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="CompareValidatorConfirmEmail" runat="server" ControlToValidate="txtConfirmEmail" ErrorMessage="Email must match" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor="Red"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style10"></td>
            <td class="auto-style11">
                <asp:button runat="server" text="Submit" ID="bttnSubmit" ForeColor="#3366FF" />
            </td>
            <td class="auto-style26">
                &nbsp;</td>
        </tr>
        </table>
    <p>&nbsp;&nbsp;</p>
    
    <p>"You must sign up to enjoy our great matching service&quot;</p>
        
</asp:Content>

