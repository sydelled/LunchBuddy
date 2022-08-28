<%@ Page Title="Restuarant Report" Language="VB" MasterPageFile="~/LunchBuddyMaster.master" AutoEventWireup="false" CodeFile="RestuarantReports.aspx.vb" Inherits="Reports" %>

<%@ Register Assembly="Microsoft.ReportViewer.WebForms, Version=12.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" Namespace="Microsoft.Reporting.WebForms" TagPrefix="rsweb" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager> 
    <rsweb:ReportViewer ID="ReportViewer1" runat="server" Font-Names="Verdana" Font-Size="8pt" WaitMessageFont-Names="Verdana" WaitMessageFont-Size="14pt" Width="700px">
        <LocalReport ReportPath="AdminPages\Report.rdlc">
            <DataSources>
                <rsweb:ReportDataSource DataSourceId="ObjectDataSource2" Name="DataSet1" />
            </DataSources>
        </LocalReport>
    </rsweb:ReportViewer>
    <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="LunchBuddyDataSetTableAdapters.Restuarants1TableAdapter" UpdateMethod="Update">
        <DeleteParameters>
            <asp:Parameter Name="Original_business_id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="city" Type="String" />
            <asp:Parameter Name="state" Type="String" />
            <asp:Parameter Name="stars" Type="Decimal" />
            <asp:Parameter Name="categories" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="city" Type="String" />
            <asp:Parameter Name="state" Type="String" />
            <asp:Parameter Name="stars" Type="Decimal" />
            <asp:Parameter Name="categories" Type="String" />
            <asp:Parameter Name="Original_business_id" Type="Int32" />
        </UpdateParameters>
    </asp:ObjectDataSource>
    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="LunchBuddyDataSetTableAdapters.RestuarantsTableAdapter" UpdateMethod="Update">
        <DeleteParameters>
            <asp:Parameter Name="Original_business_id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="categories" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="categories" Type="String" />
            <asp:Parameter Name="Original_business_id" Type="Int32" />
        </UpdateParameters>
    </asp:ObjectDataSource>
   Go back to <a href="Reports.aspx">Reports</a><br />
    <br />
    
    </asp:Content>

