
Partial Class search
    Inherits System.Web.UI.Page

    Protected Sub tbTool_TextChanged(sender As Object, e As EventArgs) Handles tbTool.TextChanged

        Dim searchWord As String
        searchWord = "Select * From cars_nmiddendorff where (Make Like '%" _
+ tbTool.Text.ToString() + "%')"
        SqlDataSource1.SelectCommand = searchWord

    End Sub


End Class
