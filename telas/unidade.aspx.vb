Public Class unidade
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub cmd_gravar_Click(sender As Object, e As EventArgs) Handles cmd_gravar.Click
        Dim verp As New Data.SqlClient.SqlConnection
        Dim vcmdcomando As New Data.SqlClient.SqlCommand
        Dim vcmdcomando_gravar As New Data.SqlClient.SqlCommand
        Dim tunidade As Data.SqlClient.SqlDataReader

        '//////////Variáveis///////////////////'
        Dim vselecao As String
        Dim vcodigo_unidade As String
        Dim vdescricao_unidade As String
        Dim vflag_obrigatorio As Integer


        Try

            vselecao = ""
            vflag_obrigatorio = 0

            vcodigo_unidade = Trim(cs_codigo_unidade.Text)
            vdescricao_unidade = Trim(cs_descricao_unidade.Text)



            '////////////////////////Consistências//////////////////

            If Trim(vcodigo_unidade) = "" Then
                cs_codigo_unidade.BackColor = Drawing.Color.Red
                vflag_obrigatorio = 1
            Else
                cs_codigo_unidade.BackColor = Drawing.Color.Transparent
            End If

            If Trim(vdescricao_unidade) = "" Then
                cs_descricao_unidade.BackColor = Drawing.Color.Red
                vflag_obrigatorio = 1
            Else
                cs_descricao_unidade.BackColor = Drawing.Color.Transparent
            End If


            If (vflag_obrigatorio = 1) Then
                pnl_obrigatorio.Visible = False
                pnl_obrigatorio.Visible = True
                Exit Sub

            End If







            '////////////////Conexeção banco de dados///////////////'
            verp.ConnectionString = My.Settings.vconexaobase
            verp.Open()

            vselecao = "SELECT * FROM unidade WHERE unidade_codigo='" & Trim(vcodigo_unidade) & "'"

            vcmdcomando.CommandText = vselecao
            vcmdcomando.CommandType = CommandType.Text
            vcmdcomando.CommandTimeout = 0
            vcmdcomando.Connection = verp

            tunidade = vcmdcomando.ExecuteReader

            If tunidade.Read() Then
                vselecao = "UPTADE unidade SET"
                vselecao = vselecao & "unidade_descricao='" & Trim(vdescricao_unidade) & "'"
                vselecao = vselecao & " WHERE unidade_codigo='" & Trim(vcodigo_unidade) & "'"
                tunidade.Close()

                vcmdcomando_gravar.CommandText = vselecao
                vcmdcomando_gravar.CommandType = CommandType.Text
                vcmdcomando_gravar.CommandTimeout = 0
                vcmdcomando_gravar.Connection = verp
                vcmdcomando_gravar.ExecuteNonQuery()
            Else

                vselecao = "INSERT INTO unidade("
                vselecao = vselecao & "unidade_codigo,"
                vselecao = vselecao & "unidade_descricao"
                vselecao = vselecao & "VALUES("
                vselecao = vselecao & "'" & vcodigo_unidade & "')"
                tunidade.Close()

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
            cs_codigo_unidade.Text = ""
            cs_descricao_unidade.Text = ""
            cs_codigo_unidade.Focus()

        Catch ex As Exception
            ' Trate a exceção aqui
        End Try
    End Sub



    Protected Sub cmd_deletar_Click(sender As Object, e As EventArgs) Handles cmd_deletar.Click
        Dim verp As New Data.SqlClient.SqlConnection
        Dim vcmdcomando As New Data.SqlClient.SqlCommand
        Dim vcmdcomando_deletar As New Data.SqlClient.SqlCommand
        Dim tunidade As Data.SqlClient.SqlDataReader

        Dim vselecao As String

        Dim vflag_obrigatorio As Integer
        Dim vcodigo_unidade As String

        Try
            vflag_obrigatorio = 0
            vcodigo_unidade = Trim(cs_codigo_unidade.Text)


            '///////////////////////////// Consistências ////////////'

            If Trim(vcodigo_unidade) = "" Then
                cs_codigo_unidade.BackColor = Drawing.Color.Red
                vflag_obrigatorio = 1
            Else
                cs_codigo_unidade.BackColor = Drawing.Color.Transparent
            End If


            '////// abre o banco de dados ///////////////////'

            verp.ConnectionString = My.Settings.vconexaobase
            verp.Open()

            vselecao = "SELECT * FROM unidade WHERE unidade_codigo='" & Trim(vcodigo_unidade) & "'"

            vcmdcomando.CommandText = vselecao
            vcmdcomando.CommandType = CommandType.Text
            vcmdcomando.CommandTimeout = 0
            vcmdcomando.Connection = verp

            tunidade = vcmdcomando.ExecuteReader

            If tunidade.Read() Then

                vselecao = "DELETE FROM unidade"
                vselecao = "WHERE unidade_codigo='" & Trim(vcodigo_unidade) & "'"

                tunidade.Close()

                vcmdcomando_deletar.CommandText = vselecao
                vcmdcomando_deletar.CommandType = CommandType.Text
                vcmdcomando_deletar.CommandTimeout = 0
                vcmdcomando_deletar.Connection = verp
                vcmdcomando_deletar.ExecuteNonQuery()

                cs_codigo_unidade.Text = ""
                cs_descricao_unidade.Text = ""

                cmd_gravar.Visible = False
                cmd_deletar.Visible = False

            Else
                '///erro 

            End If



        Catch ex As Exception
            ' Trate a exceção aqui
        End Try

    End Sub

    Protected Sub cmd_voltar_obrigatorio_Click(sender As Object, e As EventArgs) Handles cmd_voltar_obrigatorio.Click
        pnl_obrigatorio.Visible = False
        pnl_principal.Visible = True
    End Sub

    Protected Sub cs_codigo_unidade_TextChanged(sender As Object, e As EventArgs) Handles cs_codigo_unidade.TextChanged
        Dim verp As New Data.SqlClient.SqlConnection
        Dim vcmdcomando As New Data.SqlClient.SqlCommand
        Dim tunidade As Data.SqlClient.SqlDataReader

        Dim vselecao As String

        Dim vcodigo_unidade As String


        Try

            vcodigo_unidade = UCase(Trim(cs_codigo_unidade.Text))
            cs_codigo_unidade.Text = vcodigo_unidade

            '////// abre o banco de dados ////////////////////

            verp.ConnectionString = My.Settings.vconexaobase
            verp.Open()

            vselecao = "SELECT * FROM unidade WHERE unidade_codigo='" & Trim(vcodigo_unidade) & "'"

            vcmdcomando.CommandText = vselecao
            vcmdcomando.CommandType = CommandType.Text
            vcmdcomando.CommandTimeout = 0
            vcmdcomando.Connection = verp

            tunidade = vcmdcomando.ExecuteReader

            If tunidade.Read() Then

                cs_descricao_unidade.Text = tunidade("unidade_descricao")
                cmd_deletar.Visible = True
                cmd_gravar.Visible = True

            Else

                cs_descricao_unidade.Text = ""
                cmd_deletar.Visible = False
                cmd_gravar.Visible = True

            End If


            cs_descricao_unidade.Focus()

            tunidade.Close()
            verp.Close()

        Catch ex As Exception

        End Try

    End Sub

    Protected Sub cmd_limpar_Click(sender As Object, e As EventArgs) Handles cmd_limpar.Click
        cmd_gravar.Visible = False
        cmd_deletar.Visible = False

        cs_codigo_unidade.Text = ""
        cs_descricao_unidade.Text = ""

        cs_codigo_unidade.Focus()

    End Sub
End Class