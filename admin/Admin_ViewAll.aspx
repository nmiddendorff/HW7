<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Admin_ViewAll.aspx.vb" Inherits="ViewAll" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


    <p>
    <br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:cars_nmiddendorff %>" SelectCommand="SELECT * FROM [cars_nmiddendorff]"></asp:SqlDataSource>
</p>
<p>
    <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="VIN" DataSourceID="SqlDataSource1" HorizontalAlign="Center" Width="295px">
        <Columns>
            <asp:BoundField DataField="Model" HeaderText="Model" SortExpression="Model" />
            <asp:BoundField DataField="Year" HeaderText="Year" SortExpression="Year" />
            <asp:HyperLinkField DataNavigateUrlFields="VIN" DataNavigateUrlFormatString="admin_details.aspx?VIN={0}" HeaderText="Details" Text="Select" />
        </Columns>
    </asp:GridView>
</p>
<p>
</p>


</asp:Content>

