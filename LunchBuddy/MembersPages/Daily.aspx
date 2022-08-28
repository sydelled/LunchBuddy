<%@ Page Title="" Language="VB" MasterPageFile="~/LunchBuddyMaster.master" AutoEventWireup="false" CodeFile="Daily.aspx.vb" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">


    <style type="text/css">
    .auto-style3 {
        text-align: right;
    }
    .auto-style4 {
        width: 59%;
        height: 261px;
    }
</style>


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <table class="auto-style4">
        <tr>
            <td>&nbsp;</td>
            <td>Tell us what you want to Eat today!<br />
                We have some recommendations for you</td>
        </tr>
        <tr>
            <td class="auto-style3">
                <asp:CheckBoxList ID="CheckBoxList1" runat="server" AutoPostBack="True" DataSourceID="Daily_checkbox" DataTextField="categories" DataValueField="categories">
                </asp:CheckBoxList>
                <asp:ObjectDataSource ID="Daily_checkbox" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetCategories" TypeName="LunchBuddyDataSetTableAdapters.Daily_filterTableAdapter"></asp:ObjectDataSource>
            </td>
            <td>
                <asp:ListBox ID="ListBox1" runat="server" DataSourceID="daily_result" DataTextField="name" DataValueField="name" Height="162px" Width="249px"></asp:ListBox>
                <asp:ObjectDataSource ID="daily_result" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="LunchBuddyDataSetTableAdapters.DailyTableAdapter" UpdateMethod="Update">
                    <DeleteParameters>
                        <asp:Parameter Name="Original_business_id" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="name" Type="String" />
                        <asp:Parameter Name="city" Type="String" />
                        <asp:Parameter Name="stars" Type="Decimal" />
                        <asp:Parameter Name="categories" Type="String" />
                        <asp:Parameter Name="Expr1" Type="String" />
                    </InsertParameters>
                    <SelectParameters>
                        <asp:ControlParameter ControlID="CheckBoxList1" Name="categories" PropertyName="SelectedValue" Type="String" />
                    </SelectParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="name" Type="String" />
                        <asp:Parameter Name="city" Type="String" />
                        <asp:Parameter Name="stars" Type="Decimal" />
                        <asp:Parameter Name="categories" Type="String" />
                        <asp:Parameter Name="Expr1" Type="String" />
                        <asp:Parameter Name="Original_business_id" Type="Int32" />
                    </UpdateParameters>
                </asp:ObjectDataSource>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>


</asp:Content>

