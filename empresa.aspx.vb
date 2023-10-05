Public Class empresa
    Inherits System.Web.UI.Page

    ' Declaração da variável mensagemErro
    Protected mensagemErro As String = String.Empty

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        If Not IsPostBack Then
            ' Defina o texto padrão como "Brasil"
            cs_nomePais.Text = "Brasil"

            ' Define o atributo "oninput" do TextBox cs_emissao para chamar a função JavaScript de validação de números e formatação de CNPJ
            cs_emissao.Attributes("oninput") = "formatarCNPJ(this);"
        End If
    End Sub

    Protected Sub cs_emissao_TextChanged(sender As Object, e As EventArgs) Handles cs_emissao.TextChanged
        ' Remove todos os caracteres não numéricos do texto
        cs_emissao.Text = New String(cs_emissao.Text.Where(Function(c) Char.IsDigit(c)).ToArray())
    End Sub
End Class
