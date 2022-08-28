
Partial Class ProfileSignup
    Inherits System.Web.UI.Page

    Dim cn As New Data.SqlClient.SqlConnection("Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\lunchbuddy.mdf;Integrated Security=True")
    Protected Sub bttnSubmit_Click(sender As Object, e As EventArgs) Handles btnSubmit.Click

        cn.Open()
        Dim cmd As New Data.SqlClient.SqlCommand(("INSERT INTO  ProfileSignUp (FirstName, Age, City, State, Bio, Gender, LastName, picture) VALUES ('" & txtFirstName.Text & "', '" & ddlAge.SelectedValue & "', '" & txtCity.Text & "','" & ddlState.SelectedValue & "', '" & txtBio.Text & "','" & ddlGender.SelectedValue & "', '" & txtFirstName.Text & "', '" & "\images\rose.jpg" & "')"), cn)
        cmd.ExecuteNonQuery()
        cn.Close()

        txtFirstName.Text = ""
        txtLastName.Text = ""
        ddlAge.Text = ""
        txtCity.Text = ""
        ddlState.SelectedIndex = "0"
        txtBio.Text = ""
        ddlGender.SelectedIndex = "0"
        txtFirstName.Focus()
    End Sub
    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        Dim UpPath As String
        Dim UpName As String
        UpPath = "C:\Users\IS 4880\Documents\Visual Studio 2015\WebSites\LunchBuddy\images\"
        UpName = Dir(UpPath, vbDirectory)

        If (UpName = "") Then
            MkDir("C:\Users\IS 4880\Documents\Visual Studio 2015\WebSites\LunchBuddy\images\")
        End If
    End Sub
    Protected Sub bttnUpload_Click(ByVal sender As Object, ByVal e As EventArgs) Handles bttnUpload.Click
        FileName.InnerHtml = FileUploadPic.PostedFile.FileName
        FileContent.InnerHtml = FileUploadPic.PostedFile.ContentType
        FileSize.InnerHtml = FileUploadPic.PostedFile.ContentLength
        UploadDetails.Visible = True

        Dim myFileName As String
        myFileName = FileUploadPic.PostedFile.FileName
        Dim c As String = System.IO.Path.GetFileName(myFileName)
        Try
            FileUploadPic.PostedFile.SaveAs("C:\Users\IS 4880\Documents\Visual Studio 2015\WebSites\LunchBuddy\images\" + c)
            span1.InnerHtml = "File Upload Succesful."
        Catch ex As Exception
            span1.InnerHtml = "File Upload Failed."
            UploadDetails.Visible = False
        End Try
    End Sub
End Class
