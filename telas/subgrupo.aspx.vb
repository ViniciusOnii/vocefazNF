Public Class subgrupo
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub cmd_gravar_Click(sender As Object, e As EventArgs) Handles cmd_gravar.Click
        Dim verp As New Data.SqlClient.SqlConnection
        Dim vcmdcomando As New Data.SqlClient.SqlCommand
        Dim vcmdcomando_gravar As New Data.SqlClient.SqlCommand
        Dim tsubgrupo As Data.SqlClient.SqlDataReader

        '///////////////Variáveis///////////////////'
        Dim vselecao As String
        Dim vcodigo_subgrupo As String
        Dim vdescricao_subgrupo As String
        Dim vflag_obrigatorio As Integer

        Try
            vselecao = ""
            vflag_obrigatorio = 0

            vcodigo_subgrupo = Trim(cs_codigo_sub_grupo.Text)
            vdescricao_subgrupo = Trim(cs_descricao_sub_grupo.Text)


            '///////////////////////////// Consistências ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
            If Trim(vcodigo_subgrupo) = "" Then
                cs_codigo_sub_grupo.BackColor = Drawing.Color.Red
                vflag_obrigatorio = 1
            Else
                cs_codigo_sub_grupo.BackColor = Drawing.Color.Transparent
            End If

            If Trim(vdescricao_subgrupo) = "" Then
                cs_descricao_sub_grupo.BackColor = Drawing.Color.Red
                vflag_obrigatorio = 1
            Else
                cs_descricao_sub_grupo.BackColor = Drawing.Color.Transparent
            End If


            If (vflag_obrigatorio = 1) Then

                pnl_principal.Visible = False
                pnl_obrigatorio.Visible = True
                Exit Sub

            End If



            '////// abre o banco de dados ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
            verp.ConnectionString = My.Settings.vconexaobase
            verp.Open()

            vselecao = "SELECT * FROM subgrupo WHERE subgrupo_codigo='" & Trim(vcodigo_subgrupo) & "'"

            vcmdcomando.CommandText = vselecao
            vcmdcomando.CommandType = CommandType.Text
            vcmdcomando.CommandTimeout = 0
            vcmdcomando.Connection = verp

            tsubgrupo = vcmdcomando.ExecuteReader

            If tsubgrupo.Read() Then
                vselecao = "UPDATE subgrupo SET "
                vselecao = vselecao & "subgrupo_descricao='" & Trim(vdescricao_subgrupo) & "' "
                vselecao = vselecao & "WHERE subgrupo_codigo='" & Trim(vcodigo_subgrupo) & "'"
                tsubgrupo.Close()

                vcmdcomando_gravar.CommandText = vselecao
                vcmdcomando_gravar.CommandType = CommandType.Text
                vcmdcomando_gravar.CommandTimeout = 0
                vcmdcomando_gravar.Connection = verp
                vcmdcomando_gravar.ExecuteNonQuery()
            Else
                vselecao = "INSERT INTO subgrupo("
                vselecao = vselecao & "subgrupo_codigo,"
                vselecao = vselecao & "subgrupo_descricao)"
                vselecao = vselecao & "VALUES("
                vselecao = vselecao & "'" & vcodigo_subgrupo & "',"
                vselecao = vselecao & "'" & vdescricao_subgrupo & "')"
                tsubgrupo.Close()

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
            cs_codigo_sub_grupo.Text = ""
            cs_descricao_sub_grupo.Text = ""
            cs_codigo_sub_grupo.Focus()



        Catch ex As Exception
            ' Trate a exceção aqui
        End Try
    End Sub



    Protected Sub cmd_deletar_Click(sender As Object, e As EventArgs) Handles cmd_deletar.Click

        Dim verp As New Data.SqlClient.SqlConnection
        Dim vcmdcomando As New Data.SqlClient.SqlCommand
        Dim vcmdcomando_deletar As New Data.SqlClient.SqlCommand
        Dim tsubgrupo As Data.SqlClient.SqlDataReader


        Dim vselecao As String

        Dim vflag_obrigatorio As Integer
        Dim vcodigo_subgrupo As String


        Try

            vflag_obrigatorio = 0
            vcodigo_subgrupo = Trim(cs_codigo_sub_grupo.Text)


            '///////////////////////////// Consistências ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////'///////////////////////////// Consistências ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
            If Trim(vcodigo_subgrupo) = "" Then
                cs_codigo_sub_grupo.BackColor = Drawing.Color.Red
                vflag_obrigatorio = 1
            Else
                cs_codigo_sub_grupo.BackColor = Drawing.Color.Transparent
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

            vselecao = "SELECT * FROM subgrupo WHERE subgrupo_codigo='" & Trim(vcodigo_subgrupo) & "'"

            vcmdcomando.CommandText = vselecao
            vcmdcomando.CommandType = CommandType.Text
            vcmdcomando.CommandTimeout = 0
            vcmdcomando.Connection = verp

            tsubgrupo = vcmdcomando.ExecuteReader

            If tsubgrupo.Read() Then


                vselecao = "DELETE FROM subgrupo "
                vselecao = vselecao & "WHERE subgrupo_codigo='" & Trim(vcodigo_subgrupo) & "'"


                tsubgrupo.Close()


                vcmdcomando_deletar.CommandText = vselecao
                vcmdcomando_deletar.CommandType = CommandType.Text
                vcmdcomando_deletar.CommandTimeout = 0
                vcmdcomando_deletar.Connection = verp
                vcmdcomando_deletar.ExecuteNonQuery()

                cs_codigo_sub_grupo.Text = ""
                cs_descricao_sub_grupo.Text = ""

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

    Protected Sub cs_codigo_TextChanged(sender As Object, e As EventArgs) Handles cs_codigo_sub_grupo.TextChanged

        Dim verp As New Data.SqlClient.SqlConnection
        Dim vcmdcomando As New Data.SqlClient.SqlCommand
        Dim tsubgrupo As Data.SqlClient.SqlDataReader


        Dim vselecao As String

        Dim vcodigo_subgrupo As String


        Try

            vcodigo_subgrupo = UCase(Trim(cs_codigo_sub_grupo.Text))
            cs_codigo_sub_grupo.Text = vcodigo_subgrupo

            '////// abre o banco de dados ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
            verp.ConnectionString = My.Settings.vconexaobase
            verp.Open()

            vselecao = "SELECT * FROM subgrupo WHERE subgrupo_codigo='" & Trim(vcodigo_subgrupo) & "'"

            vcmdcomando.CommandText = vselecao
            vcmdcomando.CommandType = CommandType.Text
            vcmdcomando.CommandTimeout = 0
            vcmdcomando.Connection = verp

            tsubgrupo = vcmdcomando.ExecuteReader

            If tsubgrupo.Read() Then

                cs_descricao_sub_grupo.Text = tsubgrupo("subgrupo_descricao")
                cmd_deletar.Visible = True
                cmd_gravar.Visible = True

            Else

                cs_descricao_sub_grupo.Text = ""
                cmd_deletar.Visible = False
                cmd_gravar.Visible = True


            End If

            cs_descricao_sub_grupo.Focus()

            tsubgrupo.Close()
            verp.Close()


        Catch ex As Exception

        End Try


    End Sub

    Protected Sub cmd_limpar_Click(sender As Object, e As EventArgs) Handles cmd_limpar.Click

        cmd_gravar.Visible = False
        cmd_deletar.Visible = False

        cs_codigo_sub_grupo.Text = ""
        cs_descricao_sub_grupo.Text = ""

        cs_codigo_sub_grupo.Focus()



    End Sub

End Class
