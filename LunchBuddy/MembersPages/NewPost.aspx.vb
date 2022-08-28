
Partial Class _Default
    Inherits System.Web.UI.Page
    Dim cn As New Data.SqlClient.SqlConnection("Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\lunchbuddy.mdf;Integrated Security=True")
    Sub bttnClear_Click(sender As Object, e As EventArgs) Handles bttnClearNew.Click
        txtTitle.Text = ""
        txtNewMessage.Text = ""
        ddlFoodtype.SelectedIndex = -1
        ddlUserName.SelectedIndex = -1
        Label1.Text = ""
    End Sub

    Protected Sub bttnSubmitNew_Click(sender As Object, e As EventArgs) Handles bttnSubmitNew.Click
        cn.Open()

        Dim cmd As New Data.SqlClient.SqlCommand(("INSERT INTO Posting (title, message, foodcategory, postusername) VALUES ('" & txtTitle.Text & "', '" & txtNewMessage.Text & "', '" & ddlFoodtype.SelectedValue & "','" & ddlUserName.SelectedValue & "')"), cn)
        cmd.ExecuteNonQuery()
        cn.Close()

        txtNewMessage.Text = ""
        txtTitle.Text = ""
        ddlFoodtype.SelectedIndex = "0"
        ddlUserName.SelectedIndex = "0"

        Label1.Text = "Your message has been submitted!"
    End Sub
End Class
