Public Class grupopagamentos
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub cmd_gravar_Click(sender As Object, e As EventArgs) Handles cmd_gravar.Click
        Dim verp As New Data.SqlClient.SqlConnection
        Dim vcmdcomando As New Data.SqlClient.SqlCommand
        Dim vcmdcomando_gravar As New Data.SqlClient.SqlCommand
        Dim tpagamentos As Data.SqlClient.SqlDataReader


        '///////////////Variáveis///////////////////'

        Dim vselecao As String
        Dim vcodigo_pagamentos As String
        Dim vdescricao_pagamentos As String
        Dim vflag_obrigatorio As Integer

        Try

            vselecao = ""
            vflag_obrigatorio = 0

            vcodigo_pagamentos = Trim(cs_codigo_pagamentos.Text)
            vdescricao_pagamentos = Trim(cs_descricao_pagamentos.Text)


            '///////////////////////////// Consistências //////////////////////
            If Trim(vcodigo_pagamentos) = "" Then
                cs_codigo_pagamentos.BackColor = Drawing.Color.Red
                vflag_obrigatorio = 1
            Else
                cs_codigo_pagamentos.BackColor = Drawing.Color.Transparent
            End If

            If Trim(vdescricao_pagamentos) = "" Then
                cs_descricao_pagamentos.BackColor = Drawing.Color.Red
                vflag_obrigatorio = 1
            Else
                cs_descricao_pagamentos.BackColor = Drawing.Color.Transparent
            End If


            If (vflag_obrigatorio = 1) Then
                pnl_principal.Visible = False
                pnl_obrigatorio.Visible = True
                Exit Sub

            End If

            '////// abre o banco de dados ////////////////////////

            verp.ConnectionString = My.Settings.vconexaobase
            verp.Open()

            vselecao = "SELECT * FROM grupodepagamentos WHERE codigo_pagamentos='" & Trim(vcodigo_pagamentos) & "'"

            vcmdcomando.CommandText = vselecao
            vcmdcomando.CommandType = CommandType.Text
            vcmdcomando.CommandTimeout = 0
            vcmdcomando.Connection = verp

            tpagamentos = vcmdcomando.ExecuteReader

            If tpagamentos.Read() Then
                vselecao = "UPTADE grupodepagamentos SET"
                vselecao = vselecao & "descricao_pagamentos='" & Trim(vdescricao_pagamentos) & "'"
                vselecao = vselecao & "codigo_pagamentos='" & Trim(vcodigo_pagamentos) & "'"
                tpagamentos.Close()

                vcmdcomando_gravar.CommandText = vselecao
                vcmdcomando_gravar.CommandType = CommandType.Text
                vcmdcomando_gravar.CommandTimeout = 0
                vcmdcomando_gravar.Connection = verp
                vcmdcomando_gravar.ExecuteNonQuery()

            Else

                vselecao = "INSERT INTO grupodepagamentos("
                vselecao = vselecao & "codigo_pagamentos,"
                vselecao = vselecao & "descricao_pagamentos)"
                vselecao = vselecao & "VALUES("
                vselecao = vselecao & "'" & vcodigo_pagamentos & "',"
                vselecao = vselecao & "'" & vdescricao_pagamentos & "')"
                tpagamentos.Close()

                vcmdcomando_gravar.CommandText = vselecao
                vcmdcomando_gravar.CommandType = CommandType.Text
                vcmdcomando_gravar.CommandTimeout = 0
                vcmdcomando_gravar.Connection = verp
                vcmdcomando_gravar.ExecuteNonQuery()


            End If

            ' Fechando a conexão com o banco de dados
            verp.Close()

            cmd_gravar.Visible = False
            cmd_deletar.Visible = False
            cs_codigo_pagamentos.Text = ""
            cs_descricao_pagamentos.Text = ""
            cs_codigo_pagamentos.Focus()





        Catch ex As Exception

        End Try
    End Sub

    Protected Sub cmd_deletar_Click(sender As Object, e As EventArgs) Handles cmd_deletar.Click
        Dim verp As New Data.SqlClient.SqlConnection
        Dim vcmdcomando As New Data.SqlClient.SqlCommand
        Dim vcmdcomando_deletar As New Data.SqlClient.SqlCommand
        Dim tpagamentos As Data.SqlClient.SqlDataReader


        Dim vselecao As String
        Dim vflag_obrigatorio As Integer
        Dim vcodigo_pagamentos As String

        Try

            vflag_obrigatorio = 0
            vcodigo_pagamentos = Trim(cs_codigo_pagamentos.Text)

            '///////////////////////////// Consistências /////////////////////
            If Trim(vcodigo_pagamentos) = "" Then
                cs_codigo_pagamentos.BackColor = Drawing.Color.Red
                vflag_obrigatorio = 1
            Else
                cs_codigo_pagamentos.BackColor = Drawing.Color.Transparent
            End If


            '////// abre o banco de dados ///////////////////////////////////////
            verp.ConnectionString = My.Settings.vconexaobase
            verp.Open()

            vselecao = "SELECT * FROM grupodepagamentos WHERE descricao_pagamentos='" & Trim(vcodigo_pagamentos) & "'"

            vcmdcomando.CommandText = vselecao
            vcmdcomando.CommandType = CommandType.Text
            vcmdcomando.CommandTimeout = 0
            vcmdcomando.Connection = verp

            tpagamentos = vcmdcomando.ExecuteReader

            If tpagamentos.Read() Then

                vselecao = "DELETE FROM grupodepagamentos"
                vselecao = vselecao & "WHERE descricao_pagamentos='" & Trim(vcodigo_pagamentos) & "'"

                tpagamentos.Close()


                vcmdcomando_deletar.CommandText = vselecao
                vcmdcomando_deletar.CommandType = CommandType.Text
                vcmdcomando_deletar.CommandTimeout = 0
                vcmdcomando_deletar.ExecuteNonQuery()

                cs_codigo_pagamentos.Text = ""
                cs_descricao_pagamentos.Text = ""


                cmd_gravar.Visible = False
                cmd_deletar.Visible = False

            Else
                '///erro 

            End If





        Catch ex As Exception

        End Try
    End Sub

    Protected Sub cmd_voltar_obrigatorio_Click(sender As Object, e As EventArgs) Handles cmd_voltar_obrigatorio.Click
        pnl_obrigatorio.Visible = False
        pnl_principal.Visible = True
    End Sub

    Protected Sub cs_codigo_pagamentos_TextChanged(sender As Object, e As EventArgs) Handles cs_codigo_pagamentos.TextChanged
        Dim verp As New Data.SqlClient.SqlConnection
        Dim vcmdcomando As New Data.SqlClient.SqlCommand
        Dim tpagamentos As Data.SqlClient.SqlDataReader

        Dim vselecao As String
        Dim vcodigo_pagamentos As String

        Try


            vcodigo_pagamentos = UCase(Trim(cs_codigo_pagamentos.Text))
            cs_codigo_pagamentos.Text = vcodigo_pagamentos

            '////// abre o banco de dados ////////////////////
            verp.ConnectionString = My.Settings.vconexaobase
            verp.Open()

            vselecao = "SELECT * FROM grupodepagamentos WHERE codigo_pagamentos='" & Trim(vcodigo_pagamentos) & "'"

            vcmdcomando.CommandText = vselecao
            vcmdcomando.CommandType = CommandType.Text
            vcmdcomando.CommandTimeout = 0
            vcmdcomando.Connection = verp

            tpagamentos = vcmdcomando.ExecuteReader

            If tpagamentos.Read() Then

                cs_descricao_pagamentos.Text = tpagamentos("descricao_pagamento")
                cmd_deletar.Visible = True
                cmd_gravar.Visible = True

            Else
                cs_descricao_pagamentos.Text = ""
                cmd_deletar.Visible = False
                cmd_gravar.Visible = True


            End If

            cs_descricao_pagamentos.Focus()
            tpagamentos.Close()
            verp.Close()




        Catch ex As Exception

        End Try
    End Sub

    Protected Sub cmd_imprimir_Click(sender As Object, e As EventArgs) Handles cmd_imprimir.Click
        cmd_gravar.Visible = False
        cmd_deletar.Visible = False

        cs_codigo_pagamentos.Text = ""
        cs_descricao_pagamentos.Text = ""

        cs_codigo_pagamentos.Focus()
    End Sub
End Class