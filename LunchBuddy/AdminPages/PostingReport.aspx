<%@ Page Title="Posting Report" Language="VB" MasterPageFile="~/LunchBuddyMaster.master" AutoEventWireup="false" CodeFile="PostingReport.aspx.vb" Inherits="PostingReport" %>

<%@ Register Assembly="Microsoft.ReportViewer.WebForms, Version=12.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" Namespace="Microsoft.Reporting.WebForms" TagPrefix="rsweb" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <rsweb:ReportViewer ID="ReportViewer1" runat="server" Font-Names="Verdana" Font-Size="8pt" WaitMessageFont-Names="Verdana" WaitMessageFont-Size="14pt" Width="700px">
        <LocalReport ReportPath="AdminPages\Report2.rdlc">
            <DataSources>
                <rsweb:ReportDataSource DataSourceId="ObjectDataSource1" Name="DataSet1" />
            </DataSources>
        </LocalReport>
    </rsweb:ReportViewer>

    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="LunchBuddyDataSetTableAdapters.PostingTableAdapter" UpdateMethod="Update">
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

    Go back to <a href="Reports.aspx">Reports</a><br />

</asp:Content>

