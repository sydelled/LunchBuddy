<%@ Page Title="" Language="VB" MasterPageFile="~/LunchBuddyMaster.master" AutoEventWireup="false" CodeFile="Postboard.aspx.vb" Inherits="Postboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2>Welcome to the PostBoard!</h2>
    <p>Please look through posts sorted by category to meet with a person looking for lunch. You can post a new message by clicking this <a href="NewPost.aspx">link.</a></p>
    <asp:DropDownList AppendDataBoundItems="True" ID="ddlCategory" runat="server" AutoPostBack="True" DataSourceID="ObjectDataSource3" DataTextField="foodcategory" DataValueField="foodcategory" Width="200px">
        <asp:ListItem>Choose Category</asp:ListItem>
    </asp:DropDownList>
    <asp:ObjectDataSource ID="ObjectDataSource3" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetDataByFoodCategory" TypeName="LunchBuddyDataSetTableAdapters.PostingCategoryFoodTableAdapter"></asp:ObjectDataSource>
    <br /><br />
    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" DataKeyNames="post_id" DataSourceID="ObjectDataSource4" ForeColor="Black" GridLines="None" Width="800px">
        <AlternatingRowStyle BackColor="PaleGoldenrod" />
        <Columns>
            <asp:BoundField DataField="foodcategory" HeaderText="Category" SortExpression="foodcategory" />
            <asp:BoundField DataField="postusername" HeaderText="UserName" SortExpression="postusername" />
            <asp:BoundField DataField="title" HeaderText="Title" SortExpression="title" />
            <asp:BoundField DataField="message" HeaderText="Message" SortExpression="message" />
            <asp:HyperLinkField DataNavigateUrlFields="post_id" DataNavigateUrlFormatString="messagedetails.aspx?post_id={0}" HeaderText="Message Info" Text="Message Info" />
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
    <asp:ObjectDataSource ID="ObjectDataSource4" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="LunchBuddyDataSetTableAdapters.PostingCategoryTableAdapter" UpdateMethod="Update">
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
            <asp:ControlParameter ControlID="ddlCategory" Name="foodcategory" PropertyName="SelectedValue" Type="String" />
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
    <p>Please look through the posts sorted by title to check to see if there is a reply to your post. Please click this <a href="PostReply.aspx">link</a> to reply to a post.</p>
    <asp:DropDownList AppendDataBoundItems="True" ID="ddlTitle" runat="server" DataSourceID="ObjectDataSource1" DataTextField="replytitle" DataValueField="replytitle" Width="200px" AutoPostBack="True">
        <asp:ListItem>Choose Title</asp:ListItem>
    </asp:DropDownList>
    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetDataGetTitle" TypeName="LunchBuddyDataSetTableAdapters.GetTitleTableAdapter"></asp:ObjectDataSource>
    <br /><br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="postreply_Id" DataSourceID="ObjectDataSource2" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" GridLines="None" Width="800px" ForeColor="Black">
        <AlternatingRowStyle BackColor="PaleGoldenrod" />
        <Columns>
            <asp:BoundField DataField="replytitle" HeaderText="Title" SortExpression="replytitle" />
            <asp:BoundField DataField="replyusername" HeaderText="UserName" SortExpression="replyusername" />
            <asp:BoundField DataField="messagereply" HeaderText="Replied Message" SortExpression="messagereply" />
            <asp:HyperLinkField DataNavigateUrlFields="replytitle" DataNavigateUrlFormatString="messagereply.aspx?replytitle={0}" HeaderText="Message" Text="Message" />
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
    <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetDataByTitle" TypeName="LunchBuddyDataSetTableAdapters.MessageReplyTitleTableAdapter" UpdateMethod="Update">
        <DeleteParameters>
            <asp:Parameter Name="Original_postreply_Id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="messagereply" Type="String" />
            <asp:Parameter Name="replyusername" Type="String" />
            <asp:Parameter Name="p1" Type="String" />
            <asp:Parameter Name="replytitle" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="ddlTitle" Name="replytitle" PropertyName="SelectedValue" Type="String" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="messagereply" Type="String" />
            <asp:Parameter Name="replyusername" Type="String" />
            <asp:Parameter Name="p1" Type="String" />
            <asp:Parameter Name="replytitle" Type="String" />
            <asp:Parameter Name="Original_postreply_Id" Type="Int32" />
        </UpdateParameters>
    </asp:ObjectDataSource>
</asp:Content>

