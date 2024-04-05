
Public Class Grupo
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub cmd_gravar_Click(sender As Object, e As EventArgs) Handles cmd_gravar.Click
        Dim verp As New Data.SqlClient.SqlConnection
        Dim vcmdcomando As New Data.SqlClient.SqlCommand
        Dim vcmdcomando_gravar As New Data.SqlClient.SqlCommand
        Dim tgrupo As Data.SqlClient.SqlDataReader

        '///////////////Variáveis///////////////////'
        Dim vselecao As String
        Dim vcodigo_grupo As String
        Dim vdescricao_grupo As String
        Dim vflag_obrigatorio As Integer

        Try
            vselecao = ""
            vflag_obrigatorio = 0

            vcodigo_grupo = Trim(cs_codigo.Text)
            vdescricao_grupo = Trim(cs_descricao.Text)


            '///////////////////////////// Consistências ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
            If Trim(vcodigo_grupo) = "" Then
                cs_codigo.BackColor = Drawing.Color.Red
                vflag_obrigatorio = 1
            Else
                cs_codigo.BackColor = Drawing.Color.Transparent
            End If

            If Trim(vdescricao_grupo) = "" Then
                cs_descricao.BackColor = Drawing.Color.Red
                vflag_obrigatorio = 1
            Else
                cs_descricao.BackColor = Drawing.Color.Transparent
            End If


            If (vflag_obrigatorio = 1) Then

                pnl_principal.Visible = False
                pnl_obrigatorio.visible = True
                Exit Sub

            End If


            ' ///////////////////////////// Refresh auto ////////////////////////////////////////////////////////////////////////////////////////
            '////// abre o banco de dados ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
            verp.ConnectionString = My.Settings.vconexaobase
            verp.Open()

            vselecao = "SELECT * FROM grupo WHERE grupo_codigo='" & Trim(vcodigo_grupo) & "'"

            vcmdcomando.CommandText = vselecao
            vcmdcomando.CommandType = CommandType.Text
            vcmdcomando.CommandTimeout = 0
            vcmdcomando.Connection = verp

            tgrupo = vcmdcomando.ExecuteReader

            If tgrupo.Read() Then
                vselecao = "UPDATE grupo SET "
                vselecao = vselecao & "grupo_descricao='" & Trim(vdescricao_grupo) & "' "
                vselecao = vselecao & "WHERE grupo_codigo='" & Trim(vcodigo_grupo) & "'"
                tgrupo.Close()

                vcmdcomando_gravar.CommandText = vselecao
                vcmdcomando_gravar.CommandType = CommandType.Text
                vcmdcomando_gravar.CommandTimeout = 0
                vcmdcomando_gravar.Connection = verp
                vcmdcomando_gravar.ExecuteNonQuery()
            Else
                vselecao = "INSERT INTO grupo("
                vselecao = vselecao & "grupo_codigo,"
                vselecao = vselecao & "grupo_descricao)"
                vselecao = vselecao & "VALUES("
                vselecao = vselecao & "'" & vcodigo_grupo & "',"
                vselecao = vselecao & "'" & vdescricao_grupo & "')"
                tgrupo.Close()

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
            cs_codigo.Text = ""
            cs_descricao.Text = ""
            cs_codigo.Focus()



        Catch ex As Exception
            ' Trate a exceção aqui
        End Try
    End Sub



    Protected Sub cmd_deletar_Click(sender As Object, e As EventArgs) Handles cmd_deletar.Click

        Dim verp As New Data.SqlClient.SqlConnection
        Dim vcmdcomando As New Data.SqlClient.SqlCommand
        Dim vcmdcomando_deletar As New Data.SqlClient.SqlCommand
        Dim tgrupo As Data.SqlClient.SqlDataReader


        Dim vselecao As String

        Dim vflag_obrigatorio As Integer
        Dim vcodigo_grupo As String


        Try

            vflag_obrigatorio = 0
            vcodigo_grupo = Trim(cs_codigo.Text)


            '///////////////////////////// Consistências ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
            If Trim(vcodigo_grupo) = "" Then
                cs_codigo.BackColor = Drawing.Color.Red
                vflag_obrigatorio = 1
            Else
                cs_codigo.BackColor = Drawing.Color.Transparent
            End If



            '///////////////////////////// FIM Consistencias ////////////////////////////////////////////////////////////////////////////////////////

            'If (vflag_obrigatorio = 1) Then

            'pnl_principal.Visible = False
            'pnl_obrigatório.Visible = True

            'Exit Sub

            'End If


            '////// abre o banco de dados ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
            verp.ConnectionString = My.Settings.vconexaobase
            verp.Open()

            vselecao = "SELECT * FROM grupo WHERE grupo_codigo='" & Trim(vcodigo_grupo) & "'"

            vcmdcomando.CommandText = vselecao
            vcmdcomando.CommandType = CommandType.Text
            vcmdcomando.CommandTimeout = 0
            vcmdcomando.Connection = verp

            tgrupo = vcmdcomando.ExecuteReader

            If tgrupo.Read() Then


                vselecao = "DELETE FROM grupo "
                vselecao = vselecao & "WHERE grupo_codigo='" & Trim(vcodigo_grupo) & "'"


                tgrupo.Close()


                vcmdcomando_deletar.CommandText = vselecao
                vcmdcomando_deletar.CommandType = CommandType.Text
                vcmdcomando_deletar.CommandTimeout = 0
                vcmdcomando_deletar.Connection = verp
                vcmdcomando_deletar.ExecuteNonQuery()

                cs_codigo.Text = ""
                cs_descricao.Text = ""

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

    Protected Sub cs_codigo_TextChanged(sender As Object, e As EventArgs) Handles cs_codigo.TextChanged

        Dim verp As New Data.SqlClient.SqlConnection
        Dim vcmdcomando As New Data.SqlClient.SqlCommand
        Dim tgrupo As Data.SqlClient.SqlDataReader


        Dim vselecao As String

        Dim vcodigo_grupo As String


        Try

            vcodigo_grupo = UCase(Trim(cs_codigo.Text))
            cs_codigo.Text = vcodigo_grupo

            '////// abre o banco de dados ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
            verp.ConnectionString = My.Settings.vconexaobase
            verp.Open()

            vselecao = "SELECT * FROM grupo WHERE grupo_codigo='" & Trim(vcodigo_grupo) & "'"

            vcmdcomando.CommandText = vselecao
            vcmdcomando.CommandType = CommandType.Text
            vcmdcomando.CommandTimeout = 0
            vcmdcomando.Connection = verp

            tgrupo = vcmdcomando.ExecuteReader

            If tgrupo.Read() Then

                cs_descricao.Text = tgrupo("grupo_descricao")
                cmd_deletar.Visible = True
                cmd_gravar.Visible = True

            Else

                cs_descricao.Text = ""
                cmd_deletar.Visible = False
                cmd_gravar.Visible = True


            End If

            cs_descricao.Focus()

            tgrupo.Close()
            verp.Close()


        Catch ex As Exception

        End Try


    End Sub

    Protected Sub cmd_limpar_Click(sender As Object, e As EventArgs) Handles cmd_limpar.Click

        cmd_gravar.Visible = False
        cmd_deletar.Visible = False

        cs_codigo.Text = ""
        cs_descricao.Text = ""

        cs_codigo.Focus()



    End Sub
End Class