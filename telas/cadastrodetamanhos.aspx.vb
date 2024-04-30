Public Class cadastrodetamanhos
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub cmd_gravar_Click(sender As Object, e As EventArgs) Handles cmd_gravar.Click
        Dim verp As New Data.SqlClient.SqlConnection
        Dim vcmdcomando As New Data.SqlClient.SqlCommand
        Dim vcmdcomando_gravar As New Data.SqlClient.SqlCommand
        Dim ttamanhos As Data.SqlClient.SqlDataReader


        '///////////////Variáveis///////////////////'

        Dim vselecao As String
        Dim vcodigo_tamanhos As String
        Dim vdescricao_tamanhos As String
        Dim vflag_obrigatorio As Integer

        Try

            vselecao = ""
            vflag_obrigatorio = 0

            vcodigo_tamanhos = Trim(cs_codigo_tamanhos.Text)
            vdescricao_tamanhos = Trim(cs_descricao_tamanhos.Text)


            '///////////////////////////// Consistências //////////////////////
            If Trim(vcodigo_tamanhos) = "" Then
                cs_codigo_tamanhos.BackColor = Drawing.Color.Red
                vflag_obrigatorio = 1
            Else
                cs_codigo_tamanhos.BackColor = Drawing.Color.Transparent
            End If

            If Trim(vdescricao_tamanhos) = "" Then
                cs_descricao_tamanhos.BackColor = Drawing.Color.Red
                vflag_obrigatorio = 1
            Else
                cs_descricao_tamanhos.BackColor = Drawing.Color.Transparent
            End If


            If (vflag_obrigatorio = 1) Then
                pnl_principal.Visible = False
                pnl_obrigatorio.Visible = True
                Exit Sub

            End If


            '////// abre o banco de dados ////////////////////////

            verp.ConnectionString = My.Settings.vconexaobase
            verp.Open()

            vselecao = "SELECT * FROM cadastrodetamanhos WHERE codigo_tamanhos='" & Trim(vcodigo_tamanhos) & "'"

            vcmdcomando.CommandText = vselecao
            vcmdcomando.CommandType = CommandType.Text
            vcmdcomando.CommandTimeout = 0
            vcmdcomando.Connection = verp

            ttamanhos = vcmdcomando.ExecuteReader

            If ttamanhos.Read() Then
                vselecao = "UPTADE cadastrodetamanhos SET"
                vselecao = vselecao & "descricao_tamanhos='" & Trim(vdescricao_tamanhos) & "'"
                vselecao = vselecao & "codigo_tamanhos='" & Trim(vcodigo_tamanhos) & "'"
                ttamanhos.Close()

                vcmdcomando_gravar.CommandText = vselecao
                vcmdcomando_gravar.CommandType = CommandType.Text
                vcmdcomando_gravar.CommandTimeout = 0
                vcmdcomando_gravar.Connection = verp
                vcmdcomando_gravar.ExecuteNonQuery()

            Else

                vselecao = "INSERT INTO cadastrodetamanhos("
                vselecao = vselecao & "codigo_tamanhos,"
                vselecao = vselecao & "descricao_tamanhos)"
                vselecao = vselecao & "VALUES("
                vselecao = vselecao & "'" & vcodigo_tamanhos & "',"
                vselecao = vselecao & "'" & vdescricao_tamanhos & "')"
                ttamanhos.Close()

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
            cs_codigo_tamanhos.Text = ""
            cs_descricao_tamanhos.Text = ""
            cs_codigo_tamanhos.Focus()

        Catch ex As Exception

        End Try
    End Sub

    Protected Sub cmd_deletar_Click(sender As Object, e As EventArgs) Handles cmd_deletar.Click
        Dim verp As New Data.SqlClient.SqlConnection
        Dim vcmdcomando As New Data.SqlClient.SqlCommand
        Dim vcmdcomando_deletar As New Data.SqlClient.SqlCommand
        Dim ttamanhos As Data.SqlClient.SqlDataReader

        Dim vselecao As String
        Dim vflag_obrigatorio As Integer
        Dim vcodigo_tamanhos As String


        Try

            vflag_obrigatorio = 0
            vcodigo_tamanhos = Trim(cs_codigo_tamanhos.Text)

            '///////////////////////////// Consistências /////////////////////
            If Trim(vcodigo_tamanhos) = "" Then
                cs_codigo_tamanhos.BackColor = Drawing.Color.Red
                vflag_obrigatorio = 1
            Else
                cs_codigo_tamanhos.BackColor = Drawing.Color.Transparent
            End If


            '////// abre o banco de dados ///////////////////////////////////////
            verp.ConnectionString = My.Settings.vconexaobase
            verp.Open()

            vselecao = "SELECT * FROM cadastrodetamanhos WHERE descricao_tamanhos='" & Trim(vcodigo_tamanhos) & "'"

            vcmdcomando.CommandText = vselecao
            vcmdcomando.CommandType = CommandType.Text
            vcmdcomando.CommandTimeout = 0
            vcmdcomando.Connection = verp

            ttamanhos = vcmdcomando.ExecuteReader

            If ttamanhos.Read() Then

                vselecao = "DELETE FROM local_estoque"
                vselecao = vselecao & "WHERE descricao_local_estoque='" & Trim(vcodigo_tamanhos) & "'"

                ttamanhos.Close()


                vcmdcomando_deletar.CommandText = vselecao
                vcmdcomando_deletar.CommandType = CommandType.Text
                vcmdcomando_deletar.CommandTimeout = 0
                vcmdcomando_deletar.ExecuteNonQuery()

                cs_codigo_tamanhos.Text = ""
                cs_descricao_tamanhos.Text = ""


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

    Protected Sub cs_codigo_tamanhos_TextChanged(sender As Object, e As EventArgs) Handles cs_codigo_tamanhos.TextChanged
        Dim verp As New Data.SqlClient.SqlConnection
        Dim vcmdcomando As New Data.SqlClient.SqlCommand
        Dim ttamanhos As Data.SqlClient.SqlDataReader

        Dim vselecao As String
        Dim vcodigo_tamanhos As String

        Try


            vcodigo_tamanhos = UCase(Trim(cs_codigo_tamanhos.Text))
            cs_codigo_tamanhos.Text = vcodigo_tamanhos

            '////// abre o banco de dados ////////////////////
            verp.ConnectionString = My.Settings.vconexaobase
            verp.Open()

            vselecao = "SELECT * FROM cadastrodetamanhos WHERE codigo_tamanhos='" & Trim(vcodigo_tamanhos) & "'"

            vcmdcomando.CommandText = vselecao
            vcmdcomando.CommandType = CommandType.Text
            vcmdcomando.CommandTimeout = 0
            vcmdcomando.Connection = verp

            ttamanhos = vcmdcomando.ExecuteReader

            If ttamanhos.Read() Then

                cs_descricao_tamanhos.Text = ttamanhos("descricao_tamanhos")
                cmd_deletar.Visible = True
                cmd_gravar.Visible = True

            Else
                cs_descricao_tamanhos.Text = ""
                cmd_deletar.Visible = False
                cmd_gravar.Visible = True


            End If

            cs_descricao_tamanhos.Focus()
            ttamanhos.Close()
            verp.Close()




        Catch ex As Exception

        End Try
    End Sub

    Protected Sub cmd_imprimir_Click(sender As Object, e As EventArgs) Handles cmd_imprimir.Click
        cmd_gravar.Visible = False
        cmd_deletar.Visible = False

        cs_codigo_tamanhos.Text = ""
        cs_descricao_tamanhos.Text = ""

        cs_descricao_tamanhos.Focus()
    End Sub
End Class