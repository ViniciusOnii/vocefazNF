Public Class estadosuf
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub cmd_gravar_Click(sender As Object, e As EventArgs) Handles cmd_gravar.Click
        Dim verp As New Data.SqlClient.SqlConnection
        Dim vcmdcomando As New Data.SqlClient.SqlCommand
        Dim vcmdcomando_gravar As New Data.SqlClient.SqlCommand
        Dim tcondicoes As Data.SqlClient.SqlDataReader


        '///////////////Variáveis///////////////////'
        Dim vselecao As String
        Dim vcodigo_condicoes_pagamento As String
        Dim vdescricao_condicoes_pagamento As String
        Dim vparcelas_condicoes_pagamento
        Dim vflag_obrigatorio As Integer

        Try

            vselecao = ""
            vflag_obrigatorio = 0

            vcodigo_condicoes_pagamento = Trim(cs_codigo_condicoes_pagamento.Text)
            vdescricao_condicoes_pagamento = Trim(cs_descricao_condicoes_pagamento.Text)
            vparcelas_condicoes_pagamento = Trim(cs_qtd_parcelas_pagamento.Text)

            '///////////////////////////// Consistências ///////////////////////////
            If Trim(vcodigo_condicoes_pagamento) = "" Then
                cs_codigo_condicoes_pagamento.BackColor = Drawing.Color.Red
                vflag_obrigatorio = 1
            Else
                cs_codigo_condicoes_pagamento.BackColor = Drawing.Color.Transparent
            End If

            If Trim(vdescricao_condicoes_pagamento) = "" Then
                cs_descricao_condicoes_pagamento.BackColor = Drawing.Color.Red
                vflag_obrigatorio = 1
            Else
                cs_descricao_condicoes_pagamento.BackColor = Drawing.Color.Transparent
            End If

            If Trim(vparcelas_condicoes_pagamento) = "" Then
                cs_qtd_parcelas_pagamento.BackColor = Drawing.Color.Red
                vflag_obrigatorio = 1
            Else
                cs_qtd_parcelas_pagamento.BackColor = Drawing.Color.Red
            End If


        Catch ex As Exception

        End Try
    End Sub
End Class