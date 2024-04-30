Public Class locaisestoque
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub



    Protected Sub cmd_gravar_Click(sender As Object, e As EventArgs) Handles cmd_gravar.Click
        Dim verp As New Data.SqlClient.SqlConnection
        Dim vcmdcomando As New Data.SqlClient.SqlCommand
        Dim vcmdcomando_gravar As New Data.SqlClient.SqlCommand
        Dim testoque As Data.SqlClient.SqlDataReader

        '///////////////Variáveis///////////////////'

        Dim vselecao As String
        Dim vcodigo_local_estoque As String
        Dim vdescricao_local_estoque As String
        Dim vflag_obrigatorio As Integer

        Try

            vselecao = ""
            vflag_obrigatorio = 0

            vcodigo_local_estoque = Trim(cs_codigo_local_estoque.Text)
            vdescricao_local_estoque = Trim(cs_descricao_local_estoque.Text)


            '///////////////////////////// Consistências //////////////////////
            If Trim(vcodigo_local_estoque) = "" Then
                cs_codigo_local_estoque.BackColor = Drawing.Color.Red
                vflag_obrigatorio = 1
            Else
                cs_codigo_local_estoque.BackColor = Drawing.Color.Transparent
            End If

            If Trim(vdescricao_local_estoque) = "" Then
                cs_descricao_local_estoque.BackColor = Drawing.Color.Red
                vflag_obrigatorio = 1
            Else
                cs_descricao_local_estoque.BackColor = Drawing.Color.Transparent
            End If


            If (vflag_obrigatorio = 1) Then
                pnl_principal.Visible = False
                pnl_obrigatorio.Visible = True
                Exit Sub

            End If

            '////// abre o banco de dados ////////////////////////

            verp.ConnectionString = My.Settings.vconexaobase
            verp.Open()

            vselecao = "SELECT * FROM local_estoque WHERE codigo_local_estoque='" & Trim(vcodigo_local_estoque) & "'"

            vcmdcomando.CommandText = vselecao
            vcmdcomando.CommandType = CommandType.Text
            vcmdcomando.CommandTimeout = 0
            vcmdcomando.Connection = verp

            testoque = vcmdcomando.ExecuteReader

            If testoque.Read() Then
                vselecao = "UPTADE local_estoque SET"
                vselecao = vselecao & "descricao_local_estoque='" & Trim(vdescricao_local_estoque) & "'"
                vselecao = vselecao & "codigo_local_estoque='" & Trim(vcodigo_local_estoque) & "'"
                testoque.Close()

                vcmdcomando_gravar.CommandText = vselecao
                vcmdcomando_gravar.CommandType = CommandType.Text
                vcmdcomando_gravar.CommandTimeout = 0
                vcmdcomando_gravar.Connection = verp
                vcmdcomando_gravar.ExecuteNonQuery()

            Else

                vselecao = "INSERT INTO local_estoque("
                vselecao = vselecao & "codigo_local_estoque,"
                vselecao = vselecao & "descricao_local_estoque)"
                vselecao = vselecao & "VALUES("
                vselecao = vselecao & "'" & vcodigo_local_estoque & "',"
                vselecao = vselecao & "'" & vdescricao_local_estoque & "')"
                testoque.Close()

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
            cs_codigo_local_estoque.Text = ""
            cs_descricao_local_estoque.Text = ""
            cs_codigo_local_estoque.Focus()



        Catch ex As Exception

        End Try



    End Sub

    Protected Sub cmd_deletar_Click(sender As Object, e As EventArgs) Handles cmd_deletar.Click
        Dim verp As New Data.SqlClient.SqlConnection
        Dim vcmdcomando As New Data.SqlClient.SqlCommand
        Dim vcmdcomando_deletar As New Data.SqlClient.SqlCommand
        Dim testoque As Data.SqlClient.SqlDataReader


        Dim vselecao As String
        Dim vflag_obrigatorio As Integer
        Dim vcodigo_local_estoque As String


        Try

            vflag_obrigatorio = 0
            vcodigo_local_estoque = Trim(cs_codigo_local_estoque.Text)

            '///////////////////////////// Consistências /////////////////////
            If Trim(vcodigo_local_estoque) = "" Then
                cs_codigo_local_estoque.BackColor = Drawing.Color.Red
                vflag_obrigatorio = 1
            Else
                cs_codigo_local_estoque.BackColor = Drawing.Color.Transparent
            End If


            '////// abre o banco de dados ///////////////////////////////////////
            verp.ConnectionString = My.Settings.vconexaobase
            verp.Open()

            vselecao = "SELECT * FROM local_estoque WHERE descricao_local_estoque='" & Trim(vcodigo_local_estoque) & "'"

            vcmdcomando.CommandText = vselecao
            vcmdcomando.CommandType = CommandType.Text
            vcmdcomando.CommandTimeout = 0
            vcmdcomando.Connection = verp

            testoque = vcmdcomando.ExecuteReader

            If testoque.Read() Then

                vselecao = "DELETE FROM local_estoque"
                vselecao = vselecao & "WHERE descricao_local_estoque='" & Trim(vcodigo_local_estoque) & "'"

                testoque.Close()


                vcmdcomando_deletar.CommandText = vselecao
                vcmdcomando_deletar.CommandType = CommandType.Text
                vcmdcomando_deletar.CommandTimeout = 0
                vcmdcomando_deletar.ExecuteNonQuery()

                cs_codigo_local_estoque.Text = ""
                cs_descricao_local_estoque.Text = ""


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

    Protected Sub cs_codigo_local_estoque_TextChanged(sender As Object, e As EventArgs) Handles cs_codigo_local_estoque.TextChanged
        Dim verp As New Data.SqlClient.SqlConnection
        Dim vcmdcomando As New Data.SqlClient.SqlCommand
        Dim testoque As Data.SqlClient.SqlDataReader

        Dim vselecao As String
        Dim vcodigo_local_estoque As String


        Try

            vcodigo_local_estoque = UCase(Trim(cs_codigo_local_estoque.Text))
            cs_codigo_local_estoque.Text = vcodigo_local_estoque

            '////// abre o banco de dados ////////////////////
            verp.ConnectionString = My.Settings.vconexaobase
            verp.Open()

            vselecao = "SELECT * FROM local_estoque WHERE codigo_local_estoque='" & Trim(vcodigo_local_estoque) & "'"

            vcmdcomando.CommandText = vselecao
            vcmdcomando.CommandType = CommandType.Text
            vcmdcomando.CommandTimeout = 0
            vcmdcomando.Connection = verp

            testoque = vcmdcomando.ExecuteReader

            If testoque.Read() Then

                cs_descricao_local_estoque.Text = testoque("descricao_local_estoque")
                cmd_deletar.Visible = True
                cmd_gravar.Visible = True

            Else
                cs_descricao_local_estoque.Text = ""
                cmd_deletar.Visible = False
                cmd_gravar.Visible = True


            End If

            cs_descricao_local_estoque.Focus()
            testoque.Close()
            verp.Close()


        Catch ex As Exception

        End Try
    End Sub

    Protected Sub cmd_limpar_Click(sender As Object, e As EventArgs) Handles cmd_limpar.Click
        cmd_gravar.Visible = False
        cmd_deletar.Visible = False

        cs_codigo_local_estoque.Text = ""
        cs_descricao_local_estoque.Text = ""

        cs_codigo_local_estoque.Focus()
    End Sub
End Class