Public Class empresa
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load


        cs_emissao.Text = Format(Date.Now.Year, "0000") & "-" & Format(Date.Now.Month, "00") & "-" & Format(Date.Now.Day, "00")

    End Sub

    Protected Sub cs_emissao_TextChanged(sender As Object, e As EventArgs) Handles cs_emissao.TextChanged




    End Sub
End Class