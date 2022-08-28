<%@ Page Title="Login" Language="VB" MasterPageFile="~/LunchBuddyMaster.master" AutoEventWireup="false" CodeFile="Login.aspx.vb" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 80%;
        }
        .auto-style2 {
            height: 31px;
        }
        .auto-style4 {
            color: #0a3409;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <table class="body1">
        <tr>
            <td class="auto-style2">
                <asp:Login ID="Login1" runat="server" CssClass="auto-style4">
                </asp:Login>
                <br />
                <a href="SignUp.aspx">Dont Have An Account? Sign Up!</a>
            </td>
        </tr>
        </table>
    <br />
</asp:Content>

