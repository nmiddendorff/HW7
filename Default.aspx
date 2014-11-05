<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 282px;
            height: 179px;
        }
    </style>
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

      <div class="page-header">
        <h1>Auto Upgrade</h1>
      </div>
      <div class="row">
        <div class="col-sm-4">
          <div class="panel panel-primary">
            <div class="panel-heading">
              <h3 class="panel-title">Featured Vehicle</h3>
            </div>
            <div class="panel-body">
               <img alt="Silverado" class="auto-style1" src="css/yukon.jpg" /><p>Description</p> 

            </div>
          </div>
          
        </div><!-- /.col-sm-4 -->
        <div class="col-sm-4">
          <div class="panel panel-primary">
            <div class="panel-heading">
              <h3 class="panel-title">Featured Vehicle</h3>
            </div>
            <div class="panel-body">
               <img alt="Silverado" class="auto-style1" src="css/images.jpg" /><p>Description</p> 
        

            </div>
          </div>

          
        </div><!-- /.col-sm-4 -->
        <div class="col-sm-4">
          <div class="panel panel-primary">
            <div class="panel-heading">
              <h3 class="panel-title">Featured Vehicle</h3>
            </div>
            <div class="panel-body">
                 <img alt="Silverado" class="auto-style1" src="css/silverado.jpg" /><p>Description</p>  
             
            </div>
          </div>

        </div><!-- /.col-sm-4 -->
      </div>


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
<div>
<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="VIN" DataSourceID="Sql_cars" Width="418px" HorizontalAlign="Center">
    <Columns>
        <asp:BoundField DataField="Make" HeaderText="Make" SortExpression="Make" />
        <asp:BoundField DataField="Model" HeaderText="Model" SortExpression="Model" />
        <asp:BoundField DataField="Year" HeaderText="Year" SortExpression="Year" />
        <asp:HyperLinkField DataNavigateUrlFields="VIN" DataNavigateUrlFormatString="details.aspx?VIN={0}" Text="More Details" />
    </Columns>
</asp:GridView>
    <br />
</div>




</asp:Content>

