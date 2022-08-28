<%@ Page Title="" Language="VB" MasterPageFile="~/LunchBuddyMaster.master" AutoEventWireup="false" CodeFile="UserData.aspx.vb" Inherits="AdminPages_UserData" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<p>This table allows you to change user to admin or user. To change a user to admin change RoleId = 1 and then to change back to a user change RoleId = 2.</p><br />

   <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" DataKeyNames="UserId" DataSourceID="ObjectDataSource2" ForeColor="Black" GridLines="None">
       <AlternatingRowStyle BackColor="PaleGoldenrod" />
       <Columns>
           <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
           <asp:BoundField DataField="UserId" HeaderText="UserId" InsertVisible="False" ReadOnly="True" SortExpression="UserId" />
           <asp:BoundField DataField="UserName" HeaderText="UserName" SortExpression="UserName" />
           <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
           <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
           <asp:BoundField DataField="RoleId" HeaderText="RoleId" SortExpression="RoleId" />
       </Columns>
       <FooterStyle BackColor="Tan" />
       <HeaderStyle BackColor="Tan" Font-Bold="True" />
       <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
       <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
       <SortedAscendingCellStyle BackColor="#FAFAE7" />
       <SortedAscendingHeaderStyle BackColor="#DAC09E" />
       <SortedDescendingCellStyle BackColor="#E1DB9C" />
       <SortedDescendingHeaderStyle BackColor="#C2A47B" />
    </asp:GridView>
    <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="LunchBuddyDataSetTableAdapters.UsersTableAdapter" UpdateMethod="Update">
        <DeleteParameters>
            <asp:Parameter Name="Original_UserId" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="UserName" Type="String" />
            <asp:Parameter Name="Password" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="RoleId" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="UserName" Type="String" />
            <asp:Parameter Name="Password" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="RoleId" Type="Int32" />
            <asp:Parameter Name="Original_UserId" Type="Int32" />
        </UpdateParameters>
    </asp:ObjectDataSource>
    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server"></asp:ObjectDataSource>
    <br />

    <p>This table allows you to change Member Bio information. For gender 1 = female and 2 = male.</p><br />

    <asp:GridView ID="GridView2" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" DataKeyNames="ProfileId" DataSourceID="ObjectDataSource3" ForeColor="Black" GridLines="None">
        <AlternatingRowStyle BackColor="PaleGoldenrod" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
            <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
            <asp:BoundField DataField="Age" HeaderText="Age" SortExpression="Age" />
            <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
            <asp:BoundField DataField="State" HeaderText="State" SortExpression="State" />
            <asp:BoundField DataField="Bio" HeaderText="Bio" SortExpression="Bio" />
            <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
            <asp:BoundField DataField="picture" HeaderText="picture" SortExpression="picture" />
        </Columns>
        <FooterStyle BackColor="Tan" />
        <HeaderStyle BackColor="Tan" Font-Bold="True" />
        <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
        <SortedAscendingCellStyle BackColor="#FAFAE7" />
        <SortedAscendingHeaderStyle BackColor="#DAC09E" />
        <SortedDescendingCellStyle BackColor="#E1DB9C" />
        <SortedDescendingHeaderStyle BackColor="#C2A47B" />
    </asp:GridView>

    <asp:ObjectDataSource ID="ObjectDataSource3" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="LunchBuddyDataSetTableAdapters.ProfileSignUpTableAdapter" UpdateMethod="Update">
        <DeleteParameters>
            <asp:Parameter Name="Original_ProfileId" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="FirstName" Type="String" />
            <asp:Parameter Name="Age" Type="Int32" />
            <asp:Parameter Name="City" Type="String" />
            <asp:Parameter Name="State" Type="String" />
            <asp:Parameter Name="Bio" Type="String" />
            <asp:Parameter Name="Gender" Type="String" />
            <asp:Parameter Name="LastName" Type="String" />
            <asp:Parameter Name="picture" Type="String" />
            <asp:Parameter Name="UserId" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="FirstName" Type="String" />
            <asp:Parameter Name="Age" Type="Int32" />
            <asp:Parameter Name="City" Type="String" />
            <asp:Parameter Name="State" Type="String" />
            <asp:Parameter Name="Bio" Type="String" />
            <asp:Parameter Name="Gender" Type="String" />
            <asp:Parameter Name="LastName" Type="String" />
            <asp:Parameter Name="picture" Type="String" />
            <asp:Parameter Name="UserId" Type="Int32" />
            <asp:Parameter Name="Original_ProfileId" Type="Int32" />
        </UpdateParameters>
    </asp:ObjectDataSource>

    <br />

    <p>This table is to edit new posts in the postboard.</p><br />

    <asp:GridView ID="GridView3" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" DataKeyNames="post_id" DataSourceID="ObjectDataSource4" ForeColor="Black" GridLines="None">
        <AlternatingRowStyle BackColor="PaleGoldenrod" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="title" HeaderText="Title" SortExpression="title" />
            <asp:BoundField DataField="postusername" HeaderText="UserName" SortExpression="postusername" />
            <asp:BoundField DataField="foodcategory" HeaderText="Category" SortExpression="foodcategory" />
            <asp:BoundField DataField="message" HeaderText="Message" SortExpression="message" />
        </Columns>
        <FooterStyle BackColor="Tan" />
        <HeaderStyle BackColor="Tan" Font-Bold="True" />
        <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
        <SortedAscendingCellStyle BackColor="#FAFAE7" />
        <SortedAscendingHeaderStyle BackColor="#DAC09E" />
        <SortedDescendingCellStyle BackColor="#E1DB9C" />
        <SortedDescendingHeaderStyle BackColor="#C2A47B" />
    </asp:GridView>
    <asp:ObjectDataSource ID="ObjectDataSource4" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="LunchBuddyDataSetTableAdapters.PostingTableAdapter" UpdateMethod="Update">
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
        <UpdateParameters>
            <asp:Parameter Name="title" Type="String" />
            <asp:Parameter Name="message" Type="String" />
            <asp:Parameter Name="UserId" Type="Int32" />
            <asp:Parameter Name="foodcategory" Type="String" />
            <asp:Parameter Name="postusername" Type="String" />
            <asp:Parameter Name="Original_post_id" Type="Int32" />
        </UpdateParameters>
    </asp:ObjectDataSource>
    <br />

    <p>This table is to edit message replies to new posts.</p>

    <asp:GridView ID="GridView4" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" DataKeyNames="postreply_Id" DataSourceID="ObjectDataSource5" ForeColor="Black" GridLines="None">
        <AlternatingRowStyle BackColor="PaleGoldenrod" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="replyusername" HeaderText="replyusername" SortExpression="replyusername" />
            <asp:BoundField DataField="replytitle" HeaderText="replytitle" SortExpression="replytitle" />
            <asp:BoundField DataField="messagereply" HeaderText="messagereply" SortExpression="messagereply" />
        </Columns>
        <FooterStyle BackColor="Tan" />
        <HeaderStyle BackColor="Tan" Font-Bold="True" />
        <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
        <SortedAscendingCellStyle BackColor="#FAFAE7" />
        <SortedAscendingHeaderStyle BackColor="#DAC09E" />
        <SortedDescendingCellStyle BackColor="#E1DB9C" />
        <SortedDescendingHeaderStyle BackColor="#C2A47B" />
    </asp:GridView>
    <asp:ObjectDataSource ID="ObjectDataSource5" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="LunchBuddyDataSetTableAdapters.MessageReplyTableAdapter" UpdateMethod="Update">
        <DeleteParameters>
            <asp:Parameter Name="Original_postreply_Id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="messagereply" Type="String" />
            <asp:Parameter Name="replyusername" Type="String" />
            <asp:Parameter Name="replytitle" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="messagereply" Type="String" />
            <asp:Parameter Name="replyusername" Type="String" />
            <asp:Parameter Name="replytitle" Type="String" />
            <asp:Parameter Name="Original_postreply_Id" Type="Int32" />
        </UpdateParameters>
    </asp:ObjectDataSource>
    </asp:Content>

