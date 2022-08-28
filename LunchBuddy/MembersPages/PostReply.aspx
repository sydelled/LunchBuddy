<%@ Page Title="Reply to a Message" Language="VB" MasterPageFile="~/LunchBuddyMaster.master" AutoEventWireup="false" CodeFile="PostReply.aspx.vb" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2>Reply to a message:</h2>
    <br />
    
    <br />
    
    <table class="auto-style3">
        <tr>
            <td>User Name:</td>
            <td><asp:DropDownList AppendDataBoundItems="True" ID="ddlUserName" runat="server" AutoPostBack="True" DataSourceID="ObjectDataSource2" DataTextField="UserName" DataValueField="UserName" Width="200px">
                <asp:ListItem>Choose UserName</asp:ListItem>
                </asp:DropDownList>
                <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetDataByUserName" TypeName="LunchBuddyDataSetTableAdapters.GetUserNameTableAdapter"></asp:ObjectDataSource>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="ddlUserName" ErrorMessage="*User Name is Required!" ForeColor="#CC0000"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>Choose a Title to Reply:</td>
            <td><asp:DropDownList AppendDataBoundItems="True" ID="ddlreplymessage" runat="server" AutoPostBack="True" DataSourceID="ObjectDataSource1" DataTextField="title" DataValueField="title" Width="200px">
                <asp:ListItem>Choose Message</asp:ListItem>
                </asp:DropDownList>
                <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetDataByNewPostTitle" TypeName="LunchBuddyDataSetTableAdapters.NewPostTitleTableAdapter"></asp:ObjectDataSource>
    <asp:RequiredFieldValidator ID="RequiredFieldValidatorChooseMessage" runat="server" ControlToValidate="ddlreplymessage" ErrorMessage="*Choose Message!" ForeColor="#CC0000"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td>Reply to a message:</td>
            <td>
                <asp:TextBox ID="txtreplymessage" runat="server" Height="100px" Width="500px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtreplymessage" ErrorMessage="*Message Required!" ForeColor="#CC0000"></asp:RequiredFieldValidator>
            </td>
        </tr>
        
    </table>
    <p><asp:Button ID="bttnSubmit" runat="server" Text="Submit" />&nbsp;
    <asp:Button ID="bttnClear" runat="server" Text="Clear" /></p>
    <p>
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    </p>
</asp:Content>

