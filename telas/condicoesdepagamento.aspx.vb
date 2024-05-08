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
                cs_qtd_parcelas_pagamento.BackColor = Drawing.Color.Transparent
            End If

            '////// abre o banco de dados ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
            verp.ConnectionString = My.Settings.vconexaobase
            verp.Open()

            vselecao = "SELECT * FROM condicoesdepagamento WHERE codigo_condicoes_pagamento='" & Trim(vcodigo_condicoes_pagamento) & "'"

            vcmdcomando.CommandText = vselecao
            vcmdcomando.CommandType = CommandType.Text
            vcmdcomando.CommandTimeout = 0
            vcmdcomando.Connection = verp

            tcondicoes = vcmdcomando.ExecuteReader

            If tcondicoes.Read() Then
                vselecao = "UPDATE condicoesdepagamento SET "
                vselecao = vselecao & "descricao_condicoes_pagamento='" & Trim(vdescricao_condicoes_pagamento) & "', "
                vselecao = vselecao & "codigo_condicoes_pagamento='" & Trim(vcodigo_condicoes_pagamento) & "', "
                vselecao = vselecao & "parcelas_condicoes_pagamento='" & Trim(vparcelas_condicoes_pagamento) & "' " ' Adicionando a nova coluna
                vselecao = vselecao & "WHERE codigo_condicoes_pagamento='" & Trim(vcodigo_condicoes_pagamento) & "'"
                tcondicoes.Close()

                vcmdcomando_gravar.CommandText = vselecao
                vcmdcomando_gravar.CommandType = CommandType.Text
                vcmdcomando_gravar.CommandTimeout = 0
                vcmdcomando_gravar.Connection = verp
                vcmdcomando_gravar.ExecuteNonQuery()

            Else

                vselecao = "INSERT INTO condicoesdepagamento("
                vselecao = vselecao & "codigo_condicoes_pagamento, "
                vselecao = vselecao & "descricao_condicoes_pagamento, "
                vselecao = vselecao & "parcelas_condicoes_pagamento) " ' Adicionando a nova coluna
                vselecao = vselecao & "VALUES("
                vselecao = vselecao & "'" & vcodigo_condicoes_pagamento & "',"
                vselecao = vselecao & "'" & vdescricao_condicoes_pagamento & "',"
                vselecao = vselecao & "'" & vparcelas_condicoes_pagamento & "')" ' Adicionando a nova coluna
                tcondicoes.Close()

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
            cs_codigo_condicoes_pagamento.Text = ""
            cs_descricao_condicoes_pagamento.Text = ""
            cs_qtd_parcelas_pagamento.Text = ""
            cs_codigo_condicoes_pagamento.Focus()


        Catch ex As Exception
            ' Trate a exceção aqui
        End Try
    End Sub

    Protected Sub cmd_deletar_Click(sender As Object, e As EventArgs) Handles cmd_deletar.Click
        Dim verp As New Data.SqlClient.SqlConnection
        Dim vcmdcomando As New Data.SqlClient.SqlCommand
        Dim vcmdcomando_deletar As New Data.SqlClient.SqlCommand
        Dim tcondicoes As Data.SqlClient.SqlDataReader


        Dim vselecao As String

        Dim vflag_obrigatorio As Integer
        Dim vcodigo_condicoes_pagamento As String


        Try
            vflag_obrigatorio = 0
            vcodigo_condicoes_pagamento = Trim(cs_codigo_condicoes_pagamento.Text)

            '///////////////////////////// Consistências ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
            If Trim(vcodigo_condicoes_pagamento) = "" Then
                cs_codigo_condicoes_pagamento.BackColor = Drawing.Color.Red
                vflag_obrigatorio = 1
            Else
                cs_codigo_condicoes_pagamento.BackColor = Drawing.Color.Transparent
            End If


            '////// abre o banco de dados ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
            verp.ConnectionString = My.Settings.vconexaobase
            verp.Open()

            vselecao = "SELECT * FROM condicoesdepagamento WHERE codigo_condicoes_pagamento='" & Trim(vcodigo_condicoes_pagamento) & "'"

            vcmdcomando.CommandText = vselecao
            vcmdcomando.CommandType = CommandType.Text
            vcmdcomando.CommandTimeout = 0
            vcmdcomando.Connection = verp

            tcondicoes = vcmdcomando.ExecuteReader

            If tcondicoes.Read() Then


                vselecao = "DELETE FROM condicoesdepagamento "
                vselecao = vselecao & "WHERE codigo_condicoes_pagamento='" & Trim(vcodigo_condicoes_pagamento) & "'"


                tcondicoes.Close()


                vcmdcomando_deletar.CommandText = vselecao
                vcmdcomando_deletar.CommandType = CommandType.Text
                vcmdcomando_deletar.CommandTimeout = 0
                vcmdcomando_deletar.Connection = verp
                vcmdcomando_deletar.ExecuteNonQuery()

                cs_codigo_condicoes_pagamento.Text = ""
                cs_descricao_condicoes_pagamento.Text = ""
                cs_qtd_parcelas_pagamento.Text = ""

                cmd_gravar.Visible = False
                cmd_deletar.Visible = False

            Else

                '///erro 


            End If

        Catch ex As Exception

        End Try





    End Sub

    Protected Sub cmd_ok_gravar_Click(sender As Object, e As EventArgs) Handles cmd_ok_gravar.Click
        pnl_obrigatorio.Visible = False
        pnl_principal.Visible = True
    End Sub

    Protected Sub cs_codigo_condicoes_pagamento_TextChanged(sender As Object, e As EventArgs) Handles cs_codigo_condicoes_pagamento.TextChanged
        Dim verp As New Data.SqlClient.SqlConnection
        Dim vcmdcomando As New Data.SqlClient.SqlCommand
        Dim tcondicoes As Data.SqlClient.SqlDataReader


        Dim vselecao As String

        Dim vcodigo_condicoes_pagamento As String


        Try

            vcodigo_condicoes_pagamento = UCase(Trim(cs_codigo_condicoes_pagamento.Text))
            cs_codigo_condicoes_pagamento.Text = vcodigo_condicoes_pagamento

            '////// abre o banco de dados ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
            vcodigo_condicoes_pagamento = UCase(Trim(cs_codigo_condicoes_pagamento.Text))
            cs_codigo_condicoes_pagamento.Text = vcodigo_condicoes_pagamento
            '////// abre o banco de dados ////////////////////
            verp.ConnectionString = My.Settings.vconexaobase
            verp.Open()

            vselecao = "SELECT * FROM condicoesdepagamento WHERE codigo_condicoes_pagamento='" & Trim(vcodigo_condicoes_pagamento) & "'"

            vcmdcomando.CommandText = vselecao
            vcmdcomando.CommandType = CommandType.Text
            vcmdcomando.CommandTimeout = 0
            vcmdcomando.Connection = verp

            tcondicoes = vcmdcomando.ExecuteReader

            If tcondicoes.Read() Then

                cs_descricao_condicoes_pagamento.Text = tcondicoes("descricao_condicoes_pagamento")
                cmd_deletar.Visible = True
                cmd_gravar.Visible = True

            Else
                cs_descricao_condicoes_pagamento.Text = ""

                cmd_deletar.Visible = False
                cmd_gravar.Visible = True


            End If

            cs_descricao_condicoes_pagamento.Focus()
            tcondicoes.Close()
            verp.Close()




        Catch ex As Exception

        End Try

    End Sub

    Protected Sub cmd_limpar_Click(sender As Object, e As EventArgs) Handles cmd_limpar.Click
        cmd_gravar.Visible = False
        cmd_deletar.Visible = False

        cs_codigo_condicoes_pagamento.Text = ""
        cs_descricao_condicoes_pagamento.Text = ""
        cs_qtd_parcelas_pagamento.Text = ""

        cs_codigo_condicoes_pagamento.Focus()
    End Sub
End Class