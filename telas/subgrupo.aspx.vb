Public Class subgrupo
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub cmd_gravar_Click(sender As Object, e As EventArgs) Handles cmd_gravar_sub.Click
        '//////////////Banco de dados variaveis/////////////////////

        Dim verp As New Data.SqlClient.SqlConnection
        Dim vcmdcomando As New Data.SqlClient.SqlCommand
        Dim vcmdcomando_gravar As New Data.SqlClient.SqlCommand
        Dim t_sub_grupo As Data.SqlClient.SqlDataReader

        '///////////////Variáveis///////////////////'
        Dim vselecao As String
        Dim vcodigo_sub_grupo As String
        Dim vdescricao_sub_grupo As String
        Dim vflag_obrigatorio As Integer ' 

        Try
            vselecao = ""
            vflag_obrigatorio = 0

            vcodigo_sub_grupo = Trim(cs_codigo_sub.Text)
            vdescricao_sub_grupo = Trim(cs_descricao_sub.Text)

            '///////////////////Consistencias/////////////////////////////////'

            If Trim(vcodigo_sub_grupo) = "" Then
                cs_codigo_sub.BackColor = Drawing.Color.Red
                vflag_obrigatorio = 1
            Else
                cs_codigo_sub.BackColor = Drawing.Color.Transparent
            End If

            If Trim(vdescricao_sub_grupo) = "" Then
                cs_descricao_sub.BackColor = Drawing.Color.Red
            Else
                cs_descricao_sub.BackColor = Drawing.Color.Transparent
            End If

            '////// abre o banco de dados /////////////////////////////////////////////////////////////////////////////////////////////////////
            verp.ConnectionString = My.Settings.vconexaobase
            verp.Open()

            vselecao = "SELECT * FROM subgrupo WHERE subgrupo_codigo='" & Trim(vcodigo_sub_grupo) & "'"

            vcmdcomando.CommandText = vselecao
            vcmdcomando.CommandType = CommandType.Text
            vcmdcomando.CommandTimeout = 0
            vcmdcomando.Connection = verp

            t_sub_grupo = vcmdcomando.ExecuteReader

            If t_sub_grupo.Read() Then
                vselecao = "UPDATE subgrupo SET "
                vselecao &= "subgrupo_descricao='" & Trim(vdescricao_sub_grupo) & "' "
                vselecao &= "WHERE subgrupo_codigo='" & Trim(vcodigo_sub_grupo) & "'"
                t_sub_grupo.Close()

                vcmdcomando_gravar.CommandText = vselecao
                vcmdcomando_gravar.CommandType = CommandType.Text
                vcmdcomando_gravar.CommandTimeout = 0
                vcmdcomando_gravar.Connection = verp
                vcmdcomando_gravar.ExecuteNonQuery()
            Else
                vselecao = "INSERT INTO subgrupo("
                vselecao &= "subgrupo_codigo, "
                vselecao &= "subgrupo_descricao) "
                vselecao &= "VALUES("
                vselecao &= "'" & vcodigo_sub_grupo & "', "
                vselecao &= "'" & vdescricao_sub_grupo & "')"
                t_sub_grupo.Close()

                vcmdcomando_gravar.CommandText = vselecao
                vcmdcomando_gravar.CommandType = CommandType.Text
                vcmdcomando_gravar.CommandTimeout = 0
                vcmdcomando_gravar.Connection = verp
                vcmdcomando_gravar.ExecuteNonQuery()
            End If

            ' Fechando a conexão com o banco de dados
            verp.Close()

        Catch ex As Exception
            ' Trate a exceção aqui
        End Try

    End Sub










    Protected Sub cmd_deletar_sub_CLick(sender As Object, e As EventArgs) Handles cmd_deletar_sub.Click




        Dim vflag_obrigatrio As String
        Dim vcodigo_sub_grupo As String


        Try

            vflag_obrigatrio = 0
            vcodigo_sub_grupo = Trim(cs_codigo_sub.Text)

            '///////////////////////////// Consistências /////////////////////////////////////////////////////////

            If Trim(vcodigo_sub_grupo) = "" Then
                cs_codigo_sub.BackColor = Drawing.Color.Red
                vflag_obrigatrio = 1
            Else
                cs_codigo_sub.BackColor = Drawing.Color.Transparent
            End If




        Catch ex As Exception

        End Try









    End Sub
End Class