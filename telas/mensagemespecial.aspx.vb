Public Class mensagemespecial
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub cmd_gravar_Click(sender As Object, e As EventArgs) Handles cmd_gravar.Click
        Dim verp As New Data.SqlClient.SqlConnection
        Dim vcmdcomando As New Data.SqlClient.SqlCommand
        Dim vcmdcomando_gravar As New Data.SqlClient.SqlCommand
        Dim tmensagem As Data.SqlClient.SqlDataReader


        Dim vselecao As String
        Dim vcodigo_mensagem_especial As String
        Dim vdescricao_mensagem_especial As String
        Dim vflag_obrigatorio As Integer


        Try
            vselecao = 0
            vflag_obrigatorio = 0

            vcodigo_mensagem_especial = Trim(cs_codigo_mesangem_especial.Text)
            vdescricao_mensagem_especial = Trim(cs_descricao_mensagem_especial.Text)
            '///////////////////////////// Consistências //////////////////////
            If Trim(vcodigo_mensagem_especial) = "" Then
                cs_codigo_mesangem_especial.BackColor = Drawing.Color.Red
                vflag_obrigatorio = 1
            Else
                cs_codigo_mesangem_especial.BackColor = Drawing.Color.Transparent
            End If

            If Trim(vdescricao_mensagem_especial) = "" Then
                cs_descricao_mensagem_especial.BackColor = Drawing.Color.Red
                vflag_obrigatorio = 1
            Else
                cs_descricao_mensagem_especial.BackColor = Drawing.Color.Transparent
            End If


            If (vflag_obrigatorio = 1) Then
                pnl_principal.Visible = False
                pnl_obrigatorio.Visible = True
                Exit Sub

            End If

            '////// abre o banco de dados ////////////////////////
            verp.ConnectionString = My.Settings.vconexaobase
            verp.Open()

            vselecao = "SELECT * FROM mensagemespecial WHERE codigo_mensagem_especial='" & Trim(vcodigo_mensagem_especial) & "'"

            vcmdcomando.CommandText = vselecao
            vcmdcomando.CommandType = CommandType.Text
            vcmdcomando.CommandTimeout = 0
            vcmdcomando.Connection = verp

            tmensagem = vcmdcomando.ExecuteReader

            If tmensagem.Read() Then
                vselecao = "UPTADE mensagemespecial SET"
                vselecao = vselecao & "descricao_mensagem_especial='" & Trim(vdescricao_mensagem_especial) & "'"
                vselecao = vselecao & "codigo_mensagem_especial='" & Trim(vcodigo_mensagem_especial) & "'"
                tmensagem.Close()

                vcmdcomando_gravar.CommandText = vselecao
                vcmdcomando_gravar.CommandType = CommandType.Text
                vcmdcomando_gravar.CommandTimeout = 0
                vcmdcomando_gravar.Connection = verp
                vcmdcomando_gravar.ExecuteNonQuery()

            Else

                vselecao = "INSERT INTO mensagemespecial("
                vselecao = vselecao & "codigo_mensagem_especial,"
                vselecao = vselecao & "descricao_mensagem_especial)"
                vselecao = vselecao & "VALUES("
                vselecao = vselecao & "'" & vcodigo_mensagem_especial & "',"
                vselecao = vselecao & "'" & vdescricao_mensagem_especial & "')"
                tmensagem.Close()

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
            cs_codigo_mesangem_especial.Text = ""
            cs_descricao_mensagem_especial.Text = ""
            cs_codigo_mesangem_especial.Focus()

        Catch ex As Exception

        End Try







    End Sub

    Protected Sub cmd_deletar_Click(sender As Object, e As EventArgs) Handles cmd_deletar.Click
        Dim verp As New Data.SqlClient.SqlConnection
        Dim vcmdcomando As New Data.SqlClient.SqlCommand
        Dim vcmdcomando_deletar As New Data.SqlClient.SqlCommand
        Dim tmensagem As Data.SqlClient.SqlDataReader


        Dim vselecao As String
        Dim vflag_obrigatorio As Integer
        Dim vcodigo_mensagem_especial As String

        Try
            vflag_obrigatorio = 0
            vcodigo_mensagem_especial = Trim(cs_codigo_mesangem_especial.Text)


            '///////////////////////////// Consistências /////////////////////
            If Trim(vcodigo_mensagem_especial) = "" Then
                cs_codigo_mesangem_especial.BackColor = Drawing.Color.Red
                vflag_obrigatorio = 1
            Else
                cs_codigo_mesangem_especial.BackColor = Drawing.Color.Transparent
            End If


            '////// abre o banco de dados ///////////////////////////////////////
            verp.ConnectionString = My.Settings.vconexaobase
            verp.Open()

            vselecao = "SELECT * FROM mensagemespecial WHERE descricao_mensagem_especial='" & Trim(vcodigo_mensagem_especial) & "'"

            vcmdcomando.CommandText = vselecao
            vcmdcomando.CommandType = CommandType.Text
            vcmdcomando.CommandTimeout = 0
            vcmdcomando.Connection = verp

            tmensagem = vcmdcomando.ExecuteReader

            If tmensagem.Read() Then

                vselecao = "DELETE FROM mensagemespecial"
                vselecao = vselecao & "WHERE descricao_mensagem_especial='" & Trim(vcodigo_mensagem_especial) & "'"

                tmensagem.Close()


                vcmdcomando_deletar.CommandText = vselecao
                vcmdcomando_deletar.CommandType = CommandType.Text
                vcmdcomando_deletar.CommandTimeout = 0
                vcmdcomando_deletar.ExecuteNonQuery()

                cs_codigo_mesangem_especial.Text = ""
                cs_descricao_mensagem_especial.Text = ""


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

    Protected Sub cs_codigo_mesangem_especial_TextChanged(sender As Object, e As EventArgs) Handles cs_codigo_mesangem_especial.TextChanged
        Dim verp As New Data.SqlClient.SqlConnection
        Dim vcmdcomando As New Data.SqlClient.SqlCommand
        Dim tmensagem As Data.SqlClient.SqlDataReader

        Dim vselecao As String
        Dim vcodigo_mensagem_especial As String


        Try
            vcodigo_mensagem_especial = UCase(Trim(cs_codigo_mesangem_especial.Text))
            cs_codigo_mesangem_especial.Text = vcodigo_mensagem_especial

            '////// abre o banco de dados ////////////////////
            verp.ConnectionString = My.Settings.vconexaobase
            verp.Open()

            vselecao = "SELECT * FROM mensagemespecial WHERE codigo_mensagem_especial='" & Trim(vcodigo_mensagem_especial) & "'"

            vcmdcomando.CommandText = vselecao
            vcmdcomando.CommandType = CommandType.Text
            vcmdcomando.CommandTimeout = 0
            vcmdcomando.Connection = verp

            tmensagem = vcmdcomando.ExecuteReader

            If tmensagem.Read() Then

                cs_descricao_mensagem_especial.Text = tmensagem("descricao_mensagem_especial")
                cmd_deletar.Visible = True
                cmd_gravar.Visible = True

            Else
                cs_descricao_mensagem_especial.Text = ""
                cmd_deletar.Visible = False
                cmd_gravar.Visible = True


            End If

            cs_descricao_mensagem_especial.Focus()
            tmensagem.Close()
            verp.Close()

        Catch ex As Exception

        End Try
    End Sub

    Protected Sub cmd_imprimir_Click(sender As Object, e As EventArgs) Handles cmd_imprimir.Click
        cmd_gravar.Visible = False
        cmd_deletar.Visible = False

        cs_codigo_mesangem_especial.Text = ""
        cs_descricao_mensagem_especial.Text = ""

        cs_codigo_mesangem_especial.Focus()
    End Sub
End Class