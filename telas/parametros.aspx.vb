Public Class parametros
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click


        Dim objcolecaocertificados As X509Certificate2Collection = Nothing
        Dim objcertificado As New X509Certificate2
        Dim getcertificados As New X509Store(StoreName.My, StoreLocation.LocalMachine)

        getcertificados.Open(OpenFlags.ReadOnly)

        For i = 0 To getcertificados.Certificates.Count - 1
            ' MsgBox(getcertificados.Certificates.Item(i).Subject & "   Serial Number " & getcertificados.Certificates.Item(i).SerialNumber)

            ListBox1.Items.Add(getcertificados.Certificates.Item(i).Subject)
        Next

    End Sub

    Protected Sub ListBox1_SelectedIndexChanged(sender As Object, e As EventArgs) Handles ListBox1.SelectedIndexChanged


    End Sub

    Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click

        MsgBox(ListBox1.Items(ListBox1.SelectedIndex).Value.ToString)


    End Sub
End Class