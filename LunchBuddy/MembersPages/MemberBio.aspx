<%@ Page Title="Member Biopage" Language="VB" MasterPageFile="~/LunchBuddyMaster.master" AutoEventWireup="false" CodeFile="MemberBio.aspx.vb" Inherits="MemberBio" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <br />
    <br />
    <br />
    Find Lunch Buddies By Last Names:<br />
    <br />
    <asp:DropDownList ID="ddlLname" runat="server" AutoPostBack="True" DataSourceID="ObjectDataSource2" DataTextField="LastName" DataValueField="LastName" Height="35px" Width="86px">
    </asp:DropDownList>
    <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="LunchBuddyDataSetTableAdapters.GetLastNameTableAdapter"></asp:ObjectDataSource>
    <br />
    <br />
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ProfileId" DataSourceID="ObjectDataSource1">
        <Columns>
            <asp:BoundField DataField="FirstName" HeaderText="First Name" SortExpression="FirstName" />
            <asp:BoundField DataField="LastName" HeaderText="Last Name" SortExpression="LastName" />
            <asp:BoundField DataField="Age" HeaderText=" Age " SortExpression="Age" />
            <asp:BoundField DataField="City" HeaderText=" City " SortExpression="City" />
            <asp:BoundField DataField="State" HeaderText=" State " SortExpression="State" />
            <asp:BoundField DataField="Bio" HeaderText=" Bio " SortExpression="Bio" />
            <asp:ImageField DataImageUrlField="picture" ControlStyle-Width  ="200" ControlStyle-Height ="200" HeaderText ="View Image">
<ControlStyle Height="200px" Width="200px"></ControlStyle>
            </asp:ImageField>
        </Columns>
    </asp:GridView>
    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetDataBy" TypeName="LunchBuddyDataSetTableAdapters.MemberBioTableAdapter">
        <SelectParameters>
            <asp:ControlParameter ControlID="ddlLname" Name="LastName" PropertyName="SelectedValue" Type="String" />
        </SelectParameters>
    </asp:ObjectDataSource>
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    </asp:Content>

