Public Class cadastroclientes
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub
    Protected Sub RadioButton_CheckedChanged(sender As Object, e As EventArgs)
        Dim radioButton As RadioButton = CType(sender, RadioButton)

        ' Depending on which radio button was checked, enable/disable the TextBox
        If radioButton.ID = "cs_inscricao_estadual_possui" AndAlso cs_inscricao_estadual_possui.Checked Then
            cs_inscricao_estadual_numero.Enabled = True
        Else
            cs_inscricao_estadual_numero.Enabled = False
        End If

        ' Clear the text in the TextBox whenever a different option is selected
        cs_inscricao_estadual_numero.Text = ""
    End Sub

End Class