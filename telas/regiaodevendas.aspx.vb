Public Class regiaodevendas
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub cmd_gravar_Click(sender As Object, e As EventArgs) Handles cmd_gravar.Click
        Dim verp As New Data.SqlClient.SqlConnection
        Dim vcmdcomando As New Data.SqlClient.SqlCommand
        Dim vcmdcomando_gravar As New Data.SqlClient.SqlCommand
        Dim tvendas As Data.SqlClient.SqlDataReader


        '///////////////Variáveis///////////////////'
        Dim vselecao As String
        Dim vcodigo_vendas As String
        Dim vdescricao_vendas As String
        Dim vflag_obrigatorio As Integer

        Try
            vselecao = ""
            vflag_obrigatorio = 0

            vcodigo_vendas = Trim(cs_codigo_registro_vendas.Text)
            vdescricao_vendas = Trim(cs_descricao_registro_vendas.Text)


            '///////////////////////////// Consistências //////////////////////

            If Trim(vcodigo_vendas) = "" Then
                cs_codigo_registro_vendas.BackColor = Drawing.Color.Red
                vflag_obrigatorio = 1
            Else
                cs_codigo_registro_vendas.BackColor = Drawing.Color.Transparent
            End If


            If Trim(vdescricao_vendas) = "" Then
                cs_descricao_registro_vendas.BackColor = Drawing.Color.Red
                vflag_obrigatorio = 1
            Else
                cs_descricao_registro_vendas.BackColor = Drawing.Color.Transparent
            End If


            If (vflag_obrigatorio = 1) Then

                pnl_principal.Visible = False
                pnl_obrigatorio.Visible = True

                Exit Sub
            End If

            '////// abre o banco de dados ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
            verp.ConnectionString = My.Settings.vconexaobase
            verp.Open()

            vselecao = "SELECT * FROM regiaovendas WHERE vendas_codigo='" & Trim(vcodigo_vendas) & "'"

            vcmdcomando.CommandText = vselecao
            vcmdcomando.CommandType = CommandType.Text
            vcmdcomando.CommandTimeout = 0
            vcmdcomando.Connection = verp

            tvendas = vcmdcomando.ExecuteReader

            If tvendas.Read() Then
                vselecao = "UPDATE regiaovendas SET "
                vselecao = vselecao & "vendas_descricao='" & Trim(vdescricao_vendas) & "' "
                vselecao = vselecao & "WHERE vendas_codigo='" & Trim(vcodigo_vendas) & "'"
                tvendas.Close()

                vcmdcomando_gravar.CommandText = vselecao
                vcmdcomando_gravar.CommandType = CommandType.Text
                vcmdcomando_gravar.CommandTimeout = 0
                vcmdcomando_gravar.Connection = verp
                vcmdcomando_gravar.ExecuteNonQuery()
            Else
                vselecao = "INSERT INTO regiaovendas("
                vselecao = vselecao & "vendas_codigo,"
                vselecao = vselecao & "vendas_descricao)"
                vselecao = vselecao & "VALUES("
                vselecao = vselecao & "'" & vcodigo_vendas & "',"
                vselecao = vselecao & "'" & vdescricao_vendas & "')"
                tvendas.Close()

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
            cs_codigo_registro_vendas.Text = ""
            cs_descricao_registro_vendas.Text = ""
            cs_codigo_registro_vendas.Focus()

        Catch ex As Exception

        End Try








    End Sub

    Protected Sub cmd_deletar_Click(sender As Object, e As EventArgs) Handles cmd_deletar.Click
        Dim verp As New Data.SqlClient.SqlConnection
        Dim vcmdcomando As New Data.SqlClient.SqlCommand
        Dim vcmdcomando_deletar As New Data.SqlClient.SqlCommand
        Dim tvendas As Data.SqlClient.SqlDataReader

        Dim vselecao As String
        Dim vflag_obrigatorio As Integer
        Dim vcodigo_vendas



        Try

            vflag_obrigatorio = 0
            vcodigo_vendas = Trim(cs_codigo_registro_vendas.Text)

            '///////////////////////////// Consistências /////////////////////
            If Trim(vcodigo_vendas) = "" Then
                cs_codigo_registro_vendas.BackColor = Drawing.Color.Red
                vflag_obrigatorio = 1
            Else
                cs_codigo_registro_vendas.BackColor = Drawing.Color.Transparent
            End If

            '////// abre o banco de dados ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
            verp.ConnectionString = My.Settings.vconexaobase
            verp.Open()

            vselecao = "SELECT * FROM compradores WHERE comprador_codigo='" & Trim(vcodigo_vendas) & "'"

            vcmdcomando.CommandText = vselecao
            vcmdcomando.CommandType = CommandType.Text
            vcmdcomando.CommandTimeout = 0
            vcmdcomando.Connection = verp

            tvendas = vcmdcomando.ExecuteReader

            If tvendas.Read() Then


                vselecao = "DELETE FROM compradores "
                vselecao = vselecao & "WHERE comprador_codigo='" & Trim(vcodigo_vendas) & "'"


                tvendas.Close()


                vcmdcomando_deletar.CommandText = vselecao
                vcmdcomando_deletar.CommandType = CommandType.Text
                vcmdcomando_deletar.CommandTimeout = 0
                vcmdcomando_deletar.Connection = verp
                vcmdcomando_deletar.ExecuteNonQuery()

                cs_codigo_registro_vendas.Text = ""
                cs_descricao_registro_vendas.Text = ""

                cmd_gravar.Visible = False
                cmd_deletar.Visible = False

            Else

                '///erro 


            End If
        Catch ex As Exception
            '//// Tratar exeções 
        End Try
    End Sub

    Protected Sub cmd_voltar_obrigatorio_Click(sender As Object, e As EventArgs) Handles cmd_voltar_obrigatorio.Click
        pnl_obrigatorio.Visible = False
        pnl_principal.Visible = True
    End Sub

    Protected Sub cs_codigo_registro_vendas_TextChanged(sender As Object, e As EventArgs) Handles cs_codigo_registro_vendas.TextChanged
        Dim verp As New Data.SqlClient.SqlConnection
        Dim vcmdcomando As New Data.SqlClient.SqlCommand
        Dim tvendas As Data.SqlClient.SqlDataReader


        Dim vselecao As String

        Dim vcodigo_vendas As String



        Try

            vcodigo_vendas = UCase(Trim(cs_codigo_registro_vendas.Text))
            cs_codigo_registro_vendas.Text = vcodigo_vendas

            '////// abre o banco de dados ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
            verp.ConnectionString = My.Settings.vconexaobase
            verp.Open()

            vselecao = "SELECT * FROM regiaovendas WHERE vendas_codigo='" & Trim(vcodigo_vendas) & "'"

            vcmdcomando.CommandText = vselecao
            vcmdcomando.CommandType = CommandType.Text
            vcmdcomando.CommandTimeout = 0
            vcmdcomando.Connection = verp

            tvendas = vcmdcomando.ExecuteReader

            If tvendas.Read() Then

                cs_descricao_registro_vendas.Text = tvendas("vendas_descricao")
                cmd_deletar.Visible = True
                cmd_gravar.Visible = True

            Else

                cs_descricao_registro_vendas.Text = ""
                cmd_deletar.Visible = False
                cmd_gravar.Visible = True


            End If

            cs_descricao_registro_vendas.Focus()

            tvendas.Close()
            verp.Close()


        Catch ex As Exception

        End Try


    End Sub

    Protected Sub cmd_limpar_Click(sender As Object, e As EventArgs) Handles cmd_limpar.Click
        cmd_gravar.Visible = False
        cmd_deletar.Visible = False

        cs_codigo_registro_vendas.Text = ""
        cs_descricao_registro_vendas.Text = ""

        cs_codigo_registro_vendas.Focus()
    End Sub
End Class