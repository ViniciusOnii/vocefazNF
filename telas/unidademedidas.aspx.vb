Public Class unidademedidas
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub cmd_gravar_estoque_Click(sender As Object, e As EventArgs) Handles cmd_gravar_estoque.Click

        Dim verp As New Data.SqlClient.SqlConnection
        Dim vcmdcomando As New Data.SqlClient.SqlCommand
        Dim vcmdcomando_gravar As New Data.SqlClient.SqlCommand

        '///////////////Variáveis///////////////////'
        Dim vselecao As String
        Dim vsigla_estoque As String
        Dim vdescricao_estoque As String
        Dim vflag_obrigatorio As Integer ' Corrigido o nome da variável
        Dim t_estoque As Data.SqlClient.SqlDataReader

        Try

            vselecao = ""
            vflag_obrigatorio = 0

            vsigla_estoque = Trim(cs_sigla_estoque.Text)
            vdescricao_estoque = Trim(cs_descricao_estoque.Text)
            '///////////////////Consistencias////////////////////////

            cs_sigla_estoque.BackColor = If(Trim(vsigla_estoque) = "", Drawing.Color.Red, Drawing.Color.Transparent)
            cs_descricao_estoque.BackColor = If(Trim(vdescricao_estoque) = "", Drawing.Color.Red, Drawing.Color.Transparent)

            '////// abre o banco de dados ////////////////////
            verp.ConnectionString = My.Settings.vconexaobase
            verp.Open()

            vselecao = "SELECT * FROM unidade WHERE unidade_codigo='" & Trim(vsigla_estoque) & "'"

            vcmdcomando.CommandText = vselecao
            vcmdcomando.CommandType = CommandType.Text ' Corrigido para CommandType.Text
            vcmdcomando.CommandTimeout = 0
            vcmdcomando.Connection = verp

            t_estoque = vcmdcomando.ExecuteReader

            If t_estoque.Read() Then
                vselecao = "UPDATE unidade SET " ' Corrigido o nome da tabela na cláusula UPDATE
                vselecao &= "unidade_descricao='" & Trim(vdescricao_estoque) & "' "
                vselecao &= "WHERE unidade_codigo='" & Trim(vsigla_estoque) & "'"
                t_estoque.Close()

                vcmdcomando_gravar.CommandText = vselecao
                vcmdcomando_gravar.CommandType = CommandType.Text
                vcmdcomando_gravar.CommandTimeout = 0
                vcmdcomando_gravar.Connection = verp
                vcmdcomando_gravar.ExecuteNonQuery()

            Else

                vselecao = "INSERT INTO unidade("
                vselecao &= "unidade_codigo, " ' Corrigido o nome da tabela na cláusula INSERT
                vselecao &= "unidade_descricao) "
                vselecao &= "VALUES ("
                vselecao &= "'" & vsigla_estoque & "', "
                vselecao &= "'" & vdescricao_estoque & "')"
                t_estoque.Close()

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


    Protected Sub cmd_deletar_estoque_Click(sender As Object, e As EventArgs) Handles cmd_deletar_estoque.Click

        Dim vflag_obrigatrio As String
        Dim vsigla_estoque As String




        Try
            vflag_obrigatrio = 0
            vsigla_estoque = Trim(cs_sigla_estoque.Text)

            '///////////////////////////// Consistências ///////

            If Trim(vsigla_estoque) = "" Then

                cs_sigla_estoque.BackColor = Drawing.Color.Red
            Else
                cs_sigla_estoque.BackColor = Drawing.Color.Transparent

            End If


        Catch ex As Exception

        End Try

    End Sub
End Class