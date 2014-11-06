<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="search.aspx.vb" Inherits="search" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">



    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:cars_nmiddendorff %>" SelectCommand="SELECT * FROM [cars_nmiddendorff]"></asp:SqlDataSource>

    Search by Make:
    <asp:TextBox ID="tbTool" runat="server"></asp:TextBox>
    <br />    
    <br />
    <br />

    <asp:GridView ID="GridView1" runat="server" AllowSorting="True" DataSourceID="SqlDataSource1" Width="447px"></asp:GridView>
    <br />
</asp:Content>

