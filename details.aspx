<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="details.aspx.vb" Inherits="details" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
    <br />
        <asp:SqlDataSource ID="Sql_cars_details" runat="server" ConnectionString="<%$ ConnectionStrings:cars_nmiddendorff %>" SelectCommand="SELECT * FROM [cars_nmiddendorff] WHERE ([VIN] = @VIN)" DeleteCommand="DELETE FROM [cars_nmiddendorff] WHERE [VIN] = @VIN" InsertCommand="INSERT INTO [cars_nmiddendorff] ([Make], [Model], [Year], [Engine]) VALUES (@Make, @Model, @Year, @Engine)" UpdateCommand="UPDATE [cars_nmiddendorff] SET [Make] = @Make, [Model] = @Model, [Year] = @Year, [Engine] = @Engine WHERE [VIN] = @VIN">
            <DeleteParameters>
                <asp:Parameter Name="VIN" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Make" Type="String" />
                <asp:Parameter Name="Model" Type="String" />
                <asp:Parameter Name="Year" Type="String" />
                <asp:Parameter Name="Engine" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:QueryStringParameter Name="VIN" QueryStringField="VIN" Type="Int32" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="Make" Type="String" />
                <asp:Parameter Name="Model" Type="String" />
                <asp:Parameter Name="Year" Type="String" />
                <asp:Parameter Name="Engine" Type="String" />
                <asp:Parameter Name="VIN" Type="Int32" />
            </UpdateParameters>
    </asp:SqlDataSource>
    </p>
<p>
    <asp:DetailsView ID="DetailsView1" runat="server" DataSourceID="Sql_cars_details" Height="50px" Width="298px" AutoGenerateRows="False" DataKeyNames="VIN" HorizontalAlign="Center">
        <Fields>
            <asp:BoundField DataField="VIN" HeaderText="VIN" InsertVisible="False" ReadOnly="True" SortExpression="VIN" />
            <asp:BoundField DataField="Make" HeaderText="Make" SortExpression="Make" />
            <asp:BoundField DataField="Model" HeaderText="Model" SortExpression="Model" />
            <asp:BoundField DataField="Year" HeaderText="Year" SortExpression="Year" />
            <asp:BoundField DataField="Engine" HeaderText="Engine" SortExpression="Engine" />
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
        </Fields>
    </asp:DetailsView>
</p>
</asp:Content>

