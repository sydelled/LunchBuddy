<%@ Page Title="Post a New Message" Language="VB" MasterPageFile="~/LunchBuddyMaster.master" AutoEventWireup="false" CodeFile="NewPost.aspx.vb" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style3 {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2>Post a new message:</h2>
    <p> &nbsp;<table class="auto-style3">
        <tr>
            <td>User Name:</td>
            <td>
                <asp:DropDownList AppendDataBoundItems="true" ID="ddlUserName" runat="server" AutoPostBack="True" DataSourceID="ObjectDataSource2" DataTextField="UserName" DataValueField="UserName" Width="200px">
                    <asp:ListItem>Select UserName</asp:ListItem>
                </asp:DropDownList>
                <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetDataByUserName" TypeName="LunchBuddyDataSetTableAdapters.GetUserNameTableAdapter"></asp:ObjectDataSource>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="ddlUserName" ErrorMessage="*User Name is Required!" ForeColor="#CC0000"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>Title:</td>
            <td><asp:TextBox ID="txtTitle" runat="server" Width="500px" MaxLength="200"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidatorTitle" runat="server" ControlToValidate="txtTitle" ErrorMessage="*Title Required!" ForeColor="#CC0000"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td>Choose a Food Category:</td>
            <td>
                <asp:DropDownList AppendDataBoundItems="true" ID="ddlFoodtype" runat="server" AutoPostBack="True" DataSourceID="ObjectDataSource1" DataTextField="categories" DataValueField="categories" Width="200px">
                    <asp:ListItem>Choose FoodType</asp:ListItem>
                </asp:DropDownList>
                <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetDataCategories" TypeName="LunchBuddyDataSetTableAdapters.GetCategoriesTableAdapter"></asp:ObjectDataSource>
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorFoodType" runat="server" ControlToValidate="ddlFoodtype" ErrorMessage="*Choose Food Type" ForeColor="#CC0000"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>New Message</td>
            <td><asp:TextBox ID="txtNewMessage" runat="server" Width="500px" Height="100px" MaxLength="500"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorNewMessage" runat="server" ControlToValidate="txtNewMessage" ErrorMessage="Message Required!" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                </p>
            </td>
        </tr>
    </table>
        <asp:Button ID="bttnSubmitNew" runat="server" Text="Submit" />
        &nbsp;<asp:Button ID="bttnClearNew" runat="server" Text="Clear" />
    <p> 
    <br />
    
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>

    
</asp:Content>

