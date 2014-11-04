<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">





    <p>
        <asp:SqlDataSource ID="Sql_cars" runat="server" ConnectionString="<%$ ConnectionStrings:cars_nmiddendorff %>" SelectCommand="SELECT * FROM [cars_nmiddendorff]" DeleteCommand="DELETE FROM [cars_nmiddendorff] WHERE [VIN] = @VIN" InsertCommand="INSERT INTO [cars_nmiddendorff] ([Make], [Model], [Year], [Engine]) VALUES (@Make, @Model, @Year, @Engine)" UpdateCommand="UPDATE [cars_nmiddendorff] SET [Make] = @Make, [Model] = @Model, [Year] = @Year, [Engine] = @Engine WHERE [VIN] = @VIN">
            <DeleteParameters>
                <asp:Parameter Name="VIN" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Make" Type="String" />
                <asp:Parameter Name="Model" Type="String" />
                <asp:Parameter Name="Year" Type="String" />
                <asp:Parameter Name="Engine" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Make" Type="String" />
                <asp:Parameter Name="Model" Type="String" />
                <asp:Parameter Name="Year" Type="String" />
                <asp:Parameter Name="Engine" Type="String" />
                <asp:Parameter Name="VIN" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    <br />
</p>
<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="VIN" DataSourceID="Sql_cars" Width="418px">
    <Columns>
        <asp:BoundField DataField="Make" HeaderText="Make" SortExpression="Make" />
        <asp:BoundField DataField="Model" HeaderText="Model" SortExpression="Model" />
        <asp:BoundField DataField="Year" HeaderText="Year" SortExpression="Year" />
        <asp:HyperLinkField DataNavigateUrlFields="VIN" DataNavigateUrlFormatString="details.aspx?VIN={0}" Text="More Details" />
    </Columns>
</asp:GridView>
    <br />
    <asp:Label ID="Label1" runat="server" style="text-align: center" Text="Label"></asp:Label>
<br />
<br />





</asp:Content>

