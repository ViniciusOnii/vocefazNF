Public Class empresa
    Inherits System.Web.UI.Page

    ' Declaração da variável mensagemErro
    Protected mensagemErro As String = String.Empty

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load

        If Not IsPostBack Then
            ' Defina o texto padrão como "Brasil" no TextBox cs_nomePais
            cs_nomePais.Text = "Brasil"

            ' Defina o texto padrão "55" no TextBox cs_codPais
            cs_codPais.Text = "1058"

            ' Define o atributo "oninput" do TextBox cs_emissao para chamar a função JavaScript de validação de números e formatação de CNPJ
            cs_emissao.Attributes("oninput") = "formatarCNPJ(this);"

        End If

    End Sub

    Protected Sub cs_emissao_TextChanged(sender As Object, e As EventArgs) Handles cs_emissao.TextChanged


    End Sub

    Protected Sub cs_codPais_TextChanged(sender As Object, e As EventArgs)

    End Sub
End Class
