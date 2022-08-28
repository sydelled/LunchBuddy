<%@ Page Title="" Language="VB" MasterPageFile="~/LunchBuddyMaster.master" AutoEventWireup="false" CodeFile="messagedetails.aspx.vb" Inherits="messagedetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" DataKeyNames="post_id" DataSourceID="ObjectDataSource1" ForeColor="Black" GridLines="None" Height="50px" Width="125px">
        <AlternatingRowStyle BackColor="PaleGoldenrod" />
        <EditRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
        <Fields>
            <asp:BoundField DataField="postusername" HeaderText="UserName" SortExpression="postusername" />
            <asp:BoundField DataField="foodcategory" HeaderText="Category" SortExpression="foodcategory" />
            <asp:BoundField DataField="title" HeaderText="Title" SortExpression="title" />
            <asp:BoundField DataField="message" HeaderText="Message" SortExpression="message" />
        </Fields>
        <FooterStyle BackColor="Tan" />
        <HeaderStyle BackColor="Tan" Font-Bold="True" />
        <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
    </asp:DetailsView>
    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetDataByPostID" TypeName="LunchBuddyDataSetTableAdapters.PostingCategoryTableAdapter" UpdateMethod="Update">
        <DeleteParameters>
            <asp:Parameter Name="Original_post_id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="title" Type="String" />
            <asp:Parameter Name="message" Type="String" />
            <asp:Parameter Name="UserId" Type="Int32" />
            <asp:Parameter Name="foodcategory" Type="String" />
            <asp:Parameter Name="postusername" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:QueryStringParameter Name="post_id" QueryStringField="post_id" Type="Int32" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="title" Type="String" />
            <asp:Parameter Name="message" Type="String" />
            <asp:Parameter Name="UserId" Type="Int32" />
            <asp:Parameter Name="foodcategory" Type="String" />
            <asp:Parameter Name="postusername" Type="String" />
            <asp:Parameter Name="Original_post_id" Type="Int32" />
        </UpdateParameters>
    </asp:ObjectDataSource>
    Go back to <a href="Postboard.aspx">PostBoard</a>
</asp:Content>

