<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="admin.aspx.vb" Inherits="site_mgr_admin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
    <asp:Image ID="Image1" runat="server" Height="120px" ImageUrl="~/css/admin.png" style="text-align: left" ImageAlign="Middle" />
    </div>
<br />
<br />
<asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/admin/Admin_ViewAll.aspx">View All (Editable)</asp:HyperLink>
<br />
<asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/admin/NewCar.aspx">Add New Car</asp:HyperLink>
<br />
<br />

</asp:Content>

