Public Class cadastrocores
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub cmd_gravar_Click(sender As Object, e As EventArgs) Handles cmd_gravar.Click
        Dim verp As New Data.SqlClient.SqlConnection
        Dim vcmdcomando As New Data.SqlClient.SqlCommand
        Dim vcmdcomando_gravar As New Data.SqlClient.SqlCommand
        Dim tcores As Data.SqlClient.SqlDataReader


        '///////////////Variáveis///////////////////'

        Dim vselecao As String
        Dim vcodigo_cores As String
        Dim vdescricao_cores As String
        Dim vflag_obrigatorio As Integer

        Try

            vselecao = ""
            vflag_obrigatorio = 0

            vcodigo_cores = Trim(cs_codigo_cores.Text)
            vdescricao_cores = Trim(cs_descricao_cores.Text)


            '///////////////////////////// Consistências //////////////////////
            If Trim(vcodigo_cores ) = "" Then
                cs_codigo_cores.BackColor = Drawing.Color.Red
                vflag_obrigatorio = 1
            Else
                cs_codigo_cores.BackColor = Drawing.Color.Transparent
            End If

            If Trim(vdescricao_cores) = "" Then
                cs_descricao_cores.BackColor = Drawing.Color.Red
                vflag_obrigatorio = 1
            Else
                cs_descricao_cores.BackColor = Drawing.Color.Transparent
            End If


            If (vflag_obrigatorio = 1) Then
                pnl_principal.Visible = False
                pnl_obrigatorio.Visible = True
                Exit Sub

            End If

            '////// abre o banco de dados ////////////////////////

            verp.ConnectionString = My.Settings.vconexaobase
            verp.Open()

            vselecao = "SELECT * FROM cadastrodecores WHERE codigo_cores='" & Trim(vcodigo_cores) & "'"

            vcmdcomando.CommandText = vselecao
            vcmdcomando.CommandType = CommandType.Text
            vcmdcomando.CommandTimeout = 0
            vcmdcomando.Connection = verp

            tcores = vcmdcomando.ExecuteReader

            If tcores.Read() Then
                vselecao = "UPTADE cadastrodecores SET"
                vselecao = vselecao & "descricao_cores='" & Trim(vdescricao_cores) & "'"
                vselecao = vselecao & "codigo_cores='" & Trim(vcodigo_cores) & "'"
                tcores.Close()

                vcmdcomando_gravar.CommandText = vselecao
                vcmdcomando_gravar.CommandType = CommandType.Text
                vcmdcomando_gravar.CommandTimeout = 0
                vcmdcomando_gravar.Connection = verp
                vcmdcomando_gravar.ExecuteNonQuery()

            Else

                vselecao = "INSERT INTO cadastrodecores("
                vselecao = vselecao & "codigo_cores,"
                vselecao = vselecao & "descricao_cores)"
                vselecao = vselecao & "VALUES("
                vselecao = vselecao & "'" & vcodigo_cores & "',"
                vselecao = vselecao & "'" & vdescricao_cores & "')"
                tcores.Close()

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
            cs_codigo_cores.Text = ""
            cs_descricao_cores.Text = ""
            cs_codigo_cores.Focus()




        Catch ex As Exception

        End Try


    End Sub

    Protected Sub cmd_deletar_Click(sender As Object, e As EventArgs) Handles cmd_deletar.Click


        Dim verp As New Data.SqlClient.SqlConnection
        Dim vcmdcomando As New Data.SqlClient.SqlCommand
        Dim vcmdcomando_deletar As New Data.SqlClient.SqlCommand
        Dim tcores As Data.SqlClient.SqlDataReader


        Dim vselecao As String
        Dim vflag_obrigatorio As Integer
        Dim vcodigo_cores As String



        Try

            vflag_obrigatorio = 0
            vcodigo_cores = Trim(cs_codigo_cores.Text)

            '///////////////////////////// Consistências /////////////////////
            If Trim(vcodigo_cores) = "" Then
                cs_codigo_cores.BackColor = Drawing.Color.Red
                vflag_obrigatorio = 1
            Else
                cs_codigo_cores.BackColor = Drawing.Color.Transparent
            End If


            '////// abre o banco de dados ///////////////////////////////////////
            verp.ConnectionString = My.Settings.vconexaobase
            verp.Open()

            vselecao = "SELECT * FROM cadastrodecores WHERE descricao_cores='" & Trim(vcodigo_cores) & "'"

            vcmdcomando.CommandText = vselecao
            vcmdcomando.CommandType = CommandType.Text
            vcmdcomando.CommandTimeout = 0
            vcmdcomando.Connection = verp

            tcores = vcmdcomando.ExecuteReader

            If tcores.Read() Then

                vselecao = "DELETE FROM cadastrodecores"
                vselecao = vselecao & "WHERE descricao_cores='" & Trim(vcodigo_cores) & "'"

                tcores.Close()


                vcmdcomando_deletar.CommandText = vselecao
                vcmdcomando_deletar.CommandType = CommandType.Text
                vcmdcomando_deletar.CommandTimeout = 0
                vcmdcomando_deletar.ExecuteNonQuery()

                cs_codigo_cores.Text = ""
                cs_descricao_cores.Text = ""


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

    Protected Sub cs_codigo_cores_TextChanged(sender As Object, e As EventArgs) Handles cs_codigo_cores.TextChanged
        Dim verp As New Data.SqlClient.SqlConnection
        Dim vcmdcomando As New Data.SqlClient.SqlCommand
        Dim tcores As Data.SqlClient.SqlDataReader

        Dim vselecao As String
        Dim vcodigo_cores As String


        Try


            vcodigo_cores = UCase(Trim(cs_codigo_cores.Text))
            cs_codigo_cores.Text = vcodigo_cores

            '////// abre o banco de dados ////////////////////
            verp.ConnectionString = My.Settings.vconexaobase
            verp.Open()

            vselecao = "SELECT * FROM cadastrodecores WHERE codigo_cores='" & Trim(vcodigo_cores) & "'"

            vcmdcomando.CommandText = vselecao
            vcmdcomando.CommandType = CommandType.Text
            vcmdcomando.CommandTimeout = 0
            vcmdcomando.Connection = verp

            tcores = vcmdcomando.ExecuteReader

            If tcores.Read() Then

                cs_descricao_cores.Text = tcores("descricao_cores")
                cmd_deletar.Visible = True
                cmd_gravar.Visible = True

            Else
                cs_descricao_cores.Text = ""
                cmd_deletar.Visible = False
                cmd_gravar.Visible = True


            End If

            cs_descricao_cores.Focus()
            tcores.Close()
            verp.Close()



        Catch ex As Exception

        End Try
    End Sub

    Protected Sub cmd_limpar_Click(sender As Object, e As EventArgs) Handles cmd_limpar.Click
        cmd_gravar.Visible = False
        cmd_deletar.Visible = False

        cs_codigo_cores.Text = ""
        cs_descricao_cores.Text = ""

        cs_codigo_cores.Focus()
    End Sub
End Class