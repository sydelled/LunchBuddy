
Partial Class _Default
    Inherits System.Web.UI.Page
    Dim cn As New Data.SqlClient.SqlConnection("Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\lunchbuddy.mdf;Integrated Security=True")
    Protected Sub bttnSubmit_Click(sender As Object, e As EventArgs) Handles bttnSubmit.Click
        cn.Open()

        Dim cmd As New Data.SqlClient.SqlCommand(("INSERT INTO MessageReply (messagereply, replyusername, replytitle) VALUES ('" & txtreplymessage.Text & "',  '" & ddlUserName.SelectedValue & "','" & ddlreplymessage.SelectedValue & "')"), cn)
        cmd.ExecuteNonQuery()
        cn.Close()

        txtreplymessage.Text = ""
        ddlreplymessage.SelectedIndex = "0"
        ddlUserName.SelectedIndex = "0"

        Label1.Text = "Your message has been submitted!"
    End Sub
    Protected Sub bttnClear_Click(sender As Object, e As EventArgs) Handles bttnClear.Click
        txtreplymessage.Text = ""
        ddlreplymessage.SelectedIndex = -1
        ddlUserName.SelectedIndex = -1
        Label1.Text = ""
    End Sub
End Class
