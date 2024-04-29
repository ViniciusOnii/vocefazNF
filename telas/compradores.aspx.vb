Public Class compradores
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub cmd_gravar_Click(sender As Object, e As EventArgs) Handles cmd_gravar.Click

        Dim verp As New Data.SqlClient.SqlConnection
        Dim vcmdcomando As New Data.SqlClient.SqlCommand
        Dim vcmdcomando_gravar As New Data.SqlClient.SqlCommand
        Dim tcomprador As Data.SqlClient.SqlDataReader

        '///////////////Variáveis///////////////////'
        Dim vselecao As String
        Dim vcodigo_comprador As String
        Dim vnome_comprador As String
        Dim vflag_obrigatorio As Integer


        Try

            vselecao = ""
            vflag_obrigatorio = 0

            vcodigo_comprador = Trim(cs_codigo_comprador.Text)
            vnome_comprador = Trim(cs_nome_completo.Text)


            '///////////////////////////// Consistências ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
            If Trim(vcodigo_comprador) = "" Then
                cs_codigo_comprador.BackColor = Drawing.Color.Red
                vflag_obrigatorio = 1
            Else
                cs_codigo_comprador.BackColor = Drawing.Color.Transparent
            End If

            If Trim(vnome_comprador) = "" Then
                cs_nome_completo.BackColor = Drawing.Color.Red
                vflag_obrigatorio = 1
            Else
                cs_nome_completo.BackColor = Drawing.Color.Transparent
            End If


            If (vflag_obrigatorio = 1) Then

                pnl_principal.Visible = False
                pnl_obrigatorio.Visible = True
                Exit Sub

            End If


            '////// abre o banco de dados ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
            verp.ConnectionString = My.Settings.vconexaobase
            verp.Open()

            vselecao = "SELECT * FROM compradores WHERE comprador_codigo='" & Trim(vcodigo_comprador) & "'"

            vcmdcomando.CommandText = vselecao
            vcmdcomando.CommandType = CommandType.Text
            vcmdcomando.CommandTimeout = 0
            vcmdcomando.Connection = verp

            tcomprador = vcmdcomando.ExecuteReader

            If tcomprador.Read() Then
                vselecao = "UPDATE compradores SET "
                vselecao = vselecao & "comprador_nome='" & Trim(vnome_comprador) & "' "
                vselecao = vselecao & "WHERE comprador_codigo='" & Trim(vcodigo_comprador) & "'"
                tcomprador.Close()

                vcmdcomando_gravar.CommandText = vselecao
                vcmdcomando_gravar.CommandType = CommandType.Text
                vcmdcomando_gravar.CommandTimeout = 0
                vcmdcomando_gravar.Connection = verp
                vcmdcomando_gravar.ExecuteNonQuery()
            Else
                vselecao = "INSERT INTO compradores("
                vselecao = vselecao & "comprador_codigo,"
                vselecao = vselecao & "comprador_nome)"
                vselecao = vselecao & "VALUES("
                vselecao = vselecao & "'" & vcodigo_comprador & "',"
                vselecao = vselecao & "'" & vnome_comprador & "')"
                tcomprador.Close()

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
            cs_codigo_comprador.Text = ""
            cs_nome_completo.Text = ""
            cs_codigo_comprador.Focus()






        Catch ex As Exception

        End Try
    End Sub

    Protected Sub cmd_deletar_Click(sender As Object, e As EventArgs) Handles cmd_deletar.Click
        Dim verp As New Data.SqlClient.SqlConnection
        Dim vcmdcomando As New Data.SqlClient.SqlCommand
        Dim vcmdcomando_deletar As New Data.SqlClient.SqlCommand
        Dim tcomprador As Data.SqlClient.SqlDataReader


        Dim vselecao As String

        Dim vflag_obrigatorio As Integer
        Dim vcodigo_comprador As String


        Try

            vflag_obrigatorio = 0
            vcodigo_comprador = Trim(cs_codigo_comprador.Text)


            '///////////////////////////// Consistências ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////'///////////////////////////// Consistências ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
            If Trim(vcodigo_comprador) = "" Then
                cs_codigo_comprador.BackColor = Drawing.Color.Red
                vflag_obrigatorio = 1
            Else
                cs_codigo_comprador.BackColor = Drawing.Color.Transparent
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

            vselecao = "SELECT * FROM compradores WHERE comprador_codigo='" & Trim(vcodigo_comprador) & "'"

            vcmdcomando.CommandText = vselecao
            vcmdcomando.CommandType = CommandType.Text
            vcmdcomando.CommandTimeout = 0
            vcmdcomando.Connection = verp

            tcomprador = vcmdcomando.ExecuteReader

            If tcomprador.Read() Then


                vselecao = "DELETE FROM compradores "
                vselecao = vselecao & "WHERE comprador_codigo='" & Trim(vcodigo_comprador) & "'"


                tcomprador.Close()


                vcmdcomando_deletar.CommandText = vselecao
                vcmdcomando_deletar.CommandType = CommandType.Text
                vcmdcomando_deletar.CommandTimeout = 0
                vcmdcomando_deletar.Connection = verp
                vcmdcomando_deletar.ExecuteNonQuery()

                cs_codigo_comprador.Text = ""
                cs_nome_completo.Text = ""

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

    Protected Sub cs_codigo_comprador_TextChanged(sender As Object, e As EventArgs) Handles cs_codigo_comprador.TextChanged
        Dim verp As New Data.SqlClient.SqlConnection
        Dim vcmdcomando As New Data.SqlClient.SqlCommand
        Dim tcomprador As Data.SqlClient.SqlDataReader


        Dim vselecao As String

        Dim vcodigo_comprador As String


        Try

            vcodigo_comprador = UCase(Trim(cs_codigo_comprador.Text))
            cs_codigo_comprador.Text = vcodigo_comprador

            '////// abre o banco de dados ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
            verp.ConnectionString = My.Settings.vconexaobase
            verp.Open()

            vselecao = "SELECT * FROM compradores WHERE comprador_codigo='" & Trim(vcodigo_comprador) & "'"

            vcmdcomando.CommandText = vselecao
            vcmdcomando.CommandType = CommandType.Text
            vcmdcomando.CommandTimeout = 0
            vcmdcomando.Connection = verp

            tcomprador = vcmdcomando.ExecuteReader

            If tcomprador.Read() Then

                cs_nome_completo.Text = tcomprador("comprador_nome")
                cmd_deletar.Visible = True
                cmd_gravar.Visible = True

            Else

                cs_nome_completo.Text = ""
                cmd_deletar.Visible = False
                cmd_gravar.Visible = True


            End If

            cs_nome_completo.Focus()

            tcomprador.Close()
            verp.Close()


        Catch ex As Exception

        End Try
    End Sub

    Protected Sub cmd_limpar_Click(sender As Object, e As EventArgs) Handles cmd_limpar.Click
        cmd_gravar.Visible = False
        cmd_deletar.Visible = False

        cs_codigo_comprador.Text = ""
        cs_nome_completo.Text = ""

        cs_codigo_comprador.Focus()
    End Sub
End Class