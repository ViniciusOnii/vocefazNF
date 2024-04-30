Public Class formasdepgamento
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub cmd_gravar_Click(sender As Object, e As EventArgs) Handles cmd_gravar.Click
        Dim verp As New Data.SqlClient.SqlConnection
        Dim vcmdcomando As New Data.SqlClient.SqlCommand
        Dim vcmdcomando_gravar As New Data.SqlClient.SqlCommand
        Dim tformapagamento As Data.SqlClient.SqlDataReader


        '///////////////Variáveis///////////////////'

        Dim vselecao As String
        Dim vcodigo_forma_pagamento As String
        Dim vdescricao_forma_pagamento As String
        Dim vflag_obrigatorio As Integer

        '///////////////////////////// Consistências /////////////////////
        Try
            vselecao = ""
            vflag_obrigatorio = 0

            vcodigo_forma_pagamento = Trim(cs_codigo_forma_pagamento.Text)
            vdescricao_forma_pagamento = Trim(cs_descricao_forma_pagamento.Text)


            '///////////////////////////// Consistências //////////////////////
            If Trim(vcodigo_forma_pagamento) = "" Then
                cs_codigo_forma_pagamento.BackColor = Drawing.Color.Red
                vflag_obrigatorio = 1
            Else
                cs_codigo_forma_pagamento.BackColor = Drawing.Color.Transparent
            End If

            If Trim(vdescricao_forma_pagamento) = "" Then
                cs_descricao_forma_pagamento.BackColor = Drawing.Color.Red
                vflag_obrigatorio = 1
            Else
                cs_descricao_forma_pagamento.BackColor = Drawing.Color.Transparent
            End If


            If (vflag_obrigatorio = 1) Then
                pnl_principal.Visible = False
                pnl_obrigatorio.Visible = True
                Exit Sub

            End If

            '////// abre o banco de dados ////////////////////////
            verp.ConnectionString = My.Settings.vconexaobase
            verp.Open()

            vselecao = "SELECT * FROM formadepagamento WHERE codigo_forma_pagamento='" & Trim(vcodigo_forma_pagamento) & "'"

            vcmdcomando.CommandText = vselecao
            vcmdcomando.CommandType = CommandType.Text
            vcmdcomando.CommandTimeout = 0
            vcmdcomando.Connection = verp

            tformapagamento = vcmdcomando.ExecuteReader

            If tformapagamento.Read() Then
                vselecao = "UPTADE formadepagamento SET"
                vselecao = vselecao & "descricao_forma_pagamento='" & Trim(vdescricao_forma_pagamento) & "'"
                vselecao = vselecao & "codigo_forma_pagamento='" & Trim(vcodigo_forma_pagamento) & "'"
                tformapagamento.Close()

                vcmdcomando_gravar.CommandText = vselecao
                vcmdcomando_gravar.CommandType = CommandType.Text
                vcmdcomando_gravar.CommandTimeout = 0
                vcmdcomando_gravar.Connection = verp
                vcmdcomando_gravar.ExecuteNonQuery()

            Else

                vselecao = "INSERT INTO formadepagamento("
                vselecao = vselecao & "codigo_forma_pagamento,"
                vselecao = vselecao & "descricao_forma_pagamento)"
                vselecao = vselecao & "VALUES("
                vselecao = vselecao & "'" & vcodigo_forma_pagamento & "',"
                vselecao = vselecao & "'" & vdescricao_forma_pagamento & "')"
                tformapagamento.Close()

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
            cs_codigo_forma_pagamento.Text = ""
            cs_descricao_forma_pagamento.Text = ""
            cs_codigo_forma_pagamento.Focus()

        Catch ex As Exception

        End Try



    End Sub

    Protected Sub cmd_deletar_Click(sender As Object, e As EventArgs) Handles cmd_deletar.Click
        Dim verp As New Data.SqlClient.SqlConnection
        Dim vcmdcomando As New Data.SqlClient.SqlCommand
        Dim vcmdcomando_deletar As New Data.SqlClient.SqlCommand
        Dim tformapagamento As Data.SqlClient.SqlDataReader


        Dim vselecao As String
        Dim vflag_obrigatorio As Integer
        Dim vcodigo_forma_pagamento As String


        Try
            vflag_obrigatorio = 0
            vcodigo_forma_pagamento = Trim(cs_codigo_forma_pagamento.Text)

            '///////////////////////////// Consistências /////////////////////
            If Trim(vcodigo_forma_pagamento) = "" Then
                cs_codigo_forma_pagamento.BackColor = Drawing.Color.Red
                vflag_obrigatorio = 1
            Else
                cs_codigo_forma_pagamento.BackColor = Drawing.Color.Transparent
            End If


            '////// abre o banco de dados ///////////////////////////////////////
            verp.ConnectionString = My.Settings.vconexaobase
            verp.Open()

            vselecao = "SELECT * FROM formadepagamento WHERE descricao_forma_pagamento='" & Trim(vcodigo_forma_pagamento) & "'"

            vcmdcomando.CommandText = vselecao
            vcmdcomando.CommandType = CommandType.Text
            vcmdcomando.CommandTimeout = 0
            vcmdcomando.Connection = verp

            tformapagamento = vcmdcomando.ExecuteReader

            If tformapagamento.Read() Then

                vselecao = "DELETE FROM formadepagamento"
                vselecao = vselecao & "WHERE descricao_forma_pagamento='" & Trim(vcodigo_forma_pagamento) & "'"

                tformapagamento.Close()


                vcmdcomando_deletar.CommandText = vselecao
                vcmdcomando_deletar.CommandType = CommandType.Text
                vcmdcomando_deletar.CommandTimeout = 0
                vcmdcomando_deletar.ExecuteNonQuery()

                cs_codigo_forma_pagamento.Text = ""
                cs_descricao_forma_pagamento.Text = ""


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

    Protected Sub cs_codigo_forma_pagamento_TextChanged(sender As Object, e As EventArgs) Handles cs_codigo_forma_pagamento.TextChanged

        Dim verp As New Data.SqlClient.SqlConnection
        Dim vcmdcomando As New Data.SqlClient.SqlCommand
        Dim tformapagamento As Data.SqlClient.SqlDataReader

        Dim vselecao As String
        Dim vcodigo_forma_pagamento As String


        Try

            vcodigo_forma_pagamento = UCase(Trim(cs_codigo_forma_pagamento.Text))
            cs_codigo_forma_pagamento.Text = vcodigo_forma_pagamento

            '////// abre o banco de dados ////////////////////
            verp.ConnectionString = My.Settings.vconexaobase
            verp.Open()

            vselecao = "SELECT * FROM formadepagamento WHERE codigo_forma_pagamento='" & Trim(vcodigo_forma_pagamento) & "'"

            vcmdcomando.CommandText = vselecao
            vcmdcomando.CommandType = CommandType.Text
            vcmdcomando.CommandTimeout = 0
            vcmdcomando.Connection = verp

            tformapagamento = vcmdcomando.ExecuteReader

            If tformapagamento.Read() Then

                cs_descricao_forma_pagamento.Text = tformapagamento("descricao_forma_pagameto")
                cmd_deletar.Visible = True
                cmd_gravar.Visible = True

            Else
                cs_descricao_forma_pagamento.Text = ""
                cmd_deletar.Visible = False
                cmd_gravar.Visible = True


            End If

            cs_descricao_forma_pagamento.Focus()
            tformapagamento.Close()
            verp.Close()

        Catch ex As Exception

        End Try

    End Sub

    Protected Sub cmd_limpar_Click(sender As Object, e As EventArgs) Handles cmd_limpar.Click
        cmd_gravar.Visible = False
        cmd_deletar.Visible = False

        cs_codigo_forma_pagamento.Text = ""
        cs_descricao_forma_pagamento.Text = ""

        cs_codigo_forma_pagamento.Focus()
    End Sub
End Class