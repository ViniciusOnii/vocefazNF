Public Class banco
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub cmd_gravar_Click(sender As Object, e As EventArgs) Handles cmd_gravar.Click
        Dim verp As New Data.SqlClient.SqlConnection
        Dim vcmdcomando As New Data.SqlClient.SqlCommand
        Dim vcmdcomando_gravar As New Data.SqlClient.SqlCommand
        Dim tbancos As Data.SqlClient.SqlDataReader



        '///////////////Variáveis///////////////////'

        Dim vselecao As String
        Dim vcodigo_banco As String
        Dim vnome_banco As String
        Dim vflag_obrigatorio As Integer

        Try

            vselecao = ""
            vflag_obrigatorio = 0

            vcodigo_banco = Trim(cs_codigo_banco.Text)
            vnome_banco = Trim(cs_nome_banco.Text)


            '///////////////////////////// Consistências //////////////////////
            If Trim(vcodigo_banco) = "" Then
                cs_codigo_banco.BackColor = Drawing.Color.Red
                vflag_obrigatorio = 1
            Else
                cs_codigo_banco.BackColor = Drawing.Color.Transparent
            End If

            If Trim(vnome_banco) = "" Then
                cs_nome_banco.BackColor = Drawing.Color.Red
                vflag_obrigatorio = 1
            Else
                cs_nome_banco.BackColor = Drawing.Color.Transparent
            End If


            If (vflag_obrigatorio = 1) Then
                pnl_principal.Visible = False
                pnl_obrigatorio.Visible = True
                Exit Sub

            End If

            '////// abre o banco de dados ////////////////////////

            verp.ConnectionString = My.Settings.vconexaobase
            verp.Open()

            vselecao = "SELECT * FROM cadastrobanco WHERE codigo_banco='" & Trim(vcodigo_banco) & "'"

            vcmdcomando.CommandText = vselecao
            vcmdcomando.CommandType = CommandType.Text
            vcmdcomando.CommandTimeout = 0
            vcmdcomando.Connection = verp

            tbancos = vcmdcomando.ExecuteReader

            If tbancos.Read() Then
                vselecao = "UPTADE cadastrobanco SET"
                vselecao = vselecao & "nome_banco='" & Trim(vnome_banco) & "'"
                vselecao = vselecao & "codigo_banco='" & Trim(vcodigo_banco) & "'"
                tbancos.Close()

                vcmdcomando_gravar.CommandText = vselecao
                vcmdcomando_gravar.CommandType = CommandType.Text
                vcmdcomando_gravar.CommandTimeout = 0
                vcmdcomando_gravar.Connection = verp
                vcmdcomando_gravar.ExecuteNonQuery()

            Else

                vselecao = "INSERT INTO cadastrobanco("
                vselecao = vselecao & "codigo_banco,"
                vselecao = vselecao & "nome_banco)"
                vselecao = vselecao & "VALUES("
                vselecao = vselecao & "'" & vcodigo_banco & "',"
                vselecao = vselecao & "'" & vnome_banco & "')"
                tbancos.Close()

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
            cs_codigo_banco.Text = ""
            cs_nome_banco.Text = ""
            cs_codigo_banco.Focus()

        Catch ex As Exception

        End Try

    End Sub

    Protected Sub cmd_deletar_Click(sender As Object, e As EventArgs) Handles cmd_deletar.Click

        Dim verp As New Data.SqlClient.SqlConnection
        Dim vcmdcomando As New Data.SqlClient.SqlCommand
        Dim vcmdcomando_deletar As New Data.SqlClient.SqlCommand
        Dim tbancos As Data.SqlClient.SqlDataReader


        Dim vselecao As String
        Dim vflag_obrigatorio As Integer
        Dim vcodigo_banco As String


        Try

            vflag_obrigatorio = 0
            vcodigo_banco = Trim(cs_codigo_banco.Text)

            '///////////////////////////// Consistências /////////////////////
            If Trim(vcodigo_banco) = "" Then
                cs_codigo_banco.BackColor = Drawing.Color.Red
                vflag_obrigatorio = 1
            Else
                cs_codigo_banco.BackColor = Drawing.Color.Transparent
            End If


            '////// abre o banco de dados ///////////////////////////////////////
            verp.ConnectionString = My.Settings.vconexaobase
            verp.Open()

            vselecao = "SELECT * FROM cadastrobanco WHERE nome_banco='" & Trim(vcodigo_banco) & "'"

            vcmdcomando.CommandText = vselecao
            vcmdcomando.CommandType = CommandType.Text
            vcmdcomando.CommandTimeout = 0
            vcmdcomando.Connection = verp

            tbancos = vcmdcomando.ExecuteReader

            If tbancos.Read() Then

                vselecao = "DELETE FROM cadastrobanco"
                vselecao = vselecao & "WHERE nome_banco='" & Trim(vcodigo_banco) & "'"

                tbancos.Close()


                vcmdcomando_deletar.CommandText = vselecao
                vcmdcomando_deletar.CommandType = CommandType.Text
                vcmdcomando_deletar.CommandTimeout = 0
                vcmdcomando_deletar.ExecuteNonQuery()

                cs_codigo_banco.Text = ""
                cs_nome_banco.Text = ""


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

    Protected Sub cs_codigo_banco_TextChanged(sender As Object, e As EventArgs) Handles cs_codigo_banco.TextChanged

        Dim verp As New Data.SqlClient.SqlConnection
        Dim vcmdcomando As New Data.SqlClient.SqlCommand
        Dim tbancos As Data.SqlClient.SqlDataReader

        Dim vselecao As String
        Dim vcodigo_banco As String

        Try
            vcodigo_banco = UCase(Trim(cs_codigo_banco.Text))
            cs_codigo_banco.Text = vcodigo_banco

            '////// abre o banco de dados ////////////////////
            verp.ConnectionString = My.Settings.vconexaobase
            verp.Open()

            vselecao = "SELECT * FROM cadastrobanco WHERE codigo_banco='" & Trim(vcodigo_banco) & "'"

            vcmdcomando.CommandText = vselecao
            vcmdcomando.CommandType = CommandType.Text
            vcmdcomando.CommandTimeout = 0
            vcmdcomando.Connection = verp

            tbancos = vcmdcomando.ExecuteReader

            If tbancos.Read() Then

                cs_nome_banco.Text = tbancos("nome_banco")
                cmd_deletar.Visible = True
                cmd_gravar.Visible = True

            Else
                cs_nome_banco.Text = ""
                cmd_deletar.Visible = False
                cmd_gravar.Visible = True


            End If

            cs_nome_banco.Focus()
            tbancos.Close()
            verp.Close()



        Catch ex As Exception

        End Try


    End Sub

    Protected Sub cmd_limpar_Click(sender As Object, e As EventArgs) Handles cmd_limpar.Click
        cmd_gravar.Visible = False
        cmd_deletar.Visible = False

        cs_codigo_banco.Text = ""
        cs_nome_banco.Text = ""

        cs_codigo_banco.Focus()
    End Sub
End Class