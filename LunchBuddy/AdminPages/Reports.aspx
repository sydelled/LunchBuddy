<%@ Page Title="" Language="VB" MasterPageFile="~/LunchBuddyMaster.master" AutoEventWireup="false" CodeFile="Reports.aspx.vb" Inherits="Reports" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>Here are the reports:</p><br />
    
        <a href="/AdminPages/MemberReport.aspx">Member Report</a><br />
    <a href="/AdminPages/RestuarantReports.aspx">Restuarant Report</a><br />
   <a href="/AdminPages/PostingReport.aspx">Posting Report</a><br />
        
</asp:Content>

