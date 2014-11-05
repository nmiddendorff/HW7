
Partial Class MasterPage
    Inherits System.Web.UI.MasterPage

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        Label1.Text = "Today's Date is: " & Format(DateTime.Now, "dddd, MMM d yyyy")
    End Sub
End Class

