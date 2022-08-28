<%@ Page Title="" Language="VB" MasterPageFile="~/LunchBuddyMaster.master" AutoEventWireup="false" CodeFile="messagereply.aspx.vb" Inherits="messagereplyaspx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" CellPadding="2" DataKeyNames="postreply_Id" DataSourceID="ObjectDataSource1" GridLines="None" Height="50px" Width="500px" ForeColor="Black" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px">
        <AlternatingRowStyle BackColor="PaleGoldenrod" />
        <EditRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
        <Fields>
            <asp:BoundField DataField="replytitle" HeaderText="Re:Title" SortExpression="replytitle" />
            <asp:BoundField DataField="replyusername" HeaderText="UserName" SortExpression="replyusername" />
            <asp:BoundField DataField="messagereply" HeaderText="Re:Message" SortExpression="messagereply" />
        </Fields>
        <FooterStyle BackColor="Tan" />
        <HeaderStyle BackColor="Tan" Font-Bold="True" />
        <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
    </asp:DetailsView>
    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetDataBy" TypeName="LunchBuddyDataSetTableAdapters.MessageReplyTitleTableAdapter" UpdateMethod="Update">
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
            <asp:QueryStringParameter Name="replytitle" QueryStringField="replytitle" Type="String" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="messagereply" Type="String" />
            <asp:Parameter Name="replyusername" Type="String" />
            <asp:Parameter Name="p1" Type="String" />
            <asp:Parameter Name="replytitle" Type="String" />
            <asp:Parameter Name="Original_postreply_Id" Type="Int32" />
        </UpdateParameters>
    </asp:ObjectDataSource>
    <p>Back to <a href="Postboard.aspx">Postboard</a>.</p>
</asp:Content>

