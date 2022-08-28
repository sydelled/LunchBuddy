

Imports System.Data
Imports System.Configuration
Imports System.Data.SqlClient
Imports System.Net
Imports System.Net.Mail
Partial Class SignUp
    Inherits System.Web.UI.Page
    Protected Sub RegisterUser(sender As Object, e As EventArgs) Handles bttnSubmit.Click
        Dim userId As Integer = 0
        Using con As New SqlConnection("Data Source=(LocalDB)\MSSQLLocalDB;AttachDBFilename=|DataDirectory|\lunchbuddy.mdf;Integrated Security=True")
            Using cmd As New SqlCommand("Insert_Users")
                Using sda As New SqlDataAdapter
                    cmd.CommandType = CommandType.StoredProcedure
                    cmd.Parameters.AddWithValue("@Username", txtUserName.Text.Trim())
                    cmd.Parameters.AddWithValue("@Password", txtPassword.Text.Trim())
                    cmd.Parameters.AddWithValue("@Email", txtEmail.Text.Trim)
                    cmd.Connection = con
                    con.Open()
                    userId = Convert.ToInt32(cmd.ExecuteScalar())
                    con.Close()
                End Using
            End Using
            Dim messege As String = String.Empty
            Select Case userId
                Case -1
                    messege = "Username already exists."
                Case -2
                    messege = "This email address has already been used before."
                Case Else
                    messege = "Registration has been sucessful! Please check your email to complete activation!"
                    SendActivationEmail(userId)
                    Exit Select
            End Select
            ClientScript.RegisterStartupScript([GetType](), "alert",
(Convert.ToString("alert( ' ") & messege) + " ');", True)
        End Using
    End Sub
    Private Sub SendActivationEmail(userId As Integer)
        Dim activationCode As String = Guid.NewGuid().ToString()
        Using con As New SqlConnection("Data Source=(LocalDB)\MSSQLLocalDB;AttachDBFilename=|DataDirectory|\Lunchbuddy.mdf;Integrated Security=True")
            Using cmd As New SqlCommand("INSERT INTO UserActivation VALUES(@UserId,@ActivationCode)")
                Using sda As New SqlDataAdapter
                    cmd.CommandType = CommandType.Text
                    cmd.Parameters.AddWithValue("@UserId", userId)
                    cmd.Parameters.AddWithValue("@ActivationCode", activationCode)
                    cmd.Connection = con
                    con.Open()
                    cmd.ExecuteNonQuery()
                    con.Close()
                End Using
            End Using
        End Using
        Using mm As New MailMessage("lunchbuddycap@gmail.com", txtEmail.Text)
            mm.Subject = "Lunch Buddy Account Activation"
            Dim body As String = "Hello " + txtUserName.Text.Trim() + ","
            body += "<br /><br />Thank you for signing up for Lunch Buddy  "
            body += "<br />Please click the link below to activate your account."
            body += "<br />For security purposes the link will expire in 24 hours."
            body += "<br /><br />Thank you!"
            body += "<br />-Lunch Buddy Team"
            body += "<br /><br /><a href = '" +
Request.Url.GetLeftPart(UriPartial.Authority) +
Page.ResolveUrl("~/Activation.aspx?ActivationCode=" & activationCode) + "'> Click here to activate your account!"
            mm.Body = body
            mm.IsBodyHtml = True
            Dim smtp As New SmtpClient()
            smtp.Host = "smtp.gmail.com"
            smtp.EnableSsl = True
            Dim NetworkCred As New System.Net.NetworkCredential()
            NetworkCred.UserName = "lunchbuddycap@gmail.com"
            NetworkCred.Password = "capstone1"
            smtp.UseDefaultCredentials = True
            smtp.Credentials = NetworkCred
            smtp.Port = 587
            smtp.Send(mm)
        End Using

        txtUserName.Text = ""
        txtPassword.Text = ""
        txtConfirmPassword.Text = ""
        txtConfirmEmail.Text = ""
        txtEmail.Text = ""
    End Sub
    Protected Sub txtPassword_TextChanged(sender As Object, e As EventArgs) Handles txtPassword.TextChanged

    End Sub
End Class