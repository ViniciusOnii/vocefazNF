Public Class familiadeclientes
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub cmd_gravar_Click(sender As Object, e As EventArgs) Handles cmd_gravar.Click
        Dim verp As New Data.SqlClient.SqlConnection
        Dim vcmdcomando As New Data.SqlClient.SqlCommand
        Dim vcmdcomando_gravar As New Data.SqlClient.SqlCommand
        Dim tfamilia As Data.SqlClient.SqlDataReader




        '//////////////Váriaveis////////////
        Dim vselecao As String
        Dim vcodigo_familia As String
        Dim vdescricao_familia As String
        Dim vflag_obrigatorio As Integer

        Try
            vselecao = ""
            vflag_obrigatorio = 0


            vcodigo_familia = Trim(cs_codigo_familia_cliente.Text)
            vdescricao_familia = Trim(cs_descricao_familia_cliente.Text)


            '///////////////////////////// Consistências /////////////////

            If Trim(vcodigo_familia) = "" Then
                cs_codigo_familia_cliente.BackColor = Drawing.Color.Red
                vflag_obrigatorio = 1
            Else
                cs_codigo_familia_cliente.BackColor = Drawing.Color.Transparent
            End If


            If Trim(vdescricao_familia) = "" Then
                cs_descricao_familia_cliente.BackColor = Drawing.Color.Red
                vflag_obrigatorio = 1
            Else
                cs_descricao_familia_cliente.BackColor = Drawing.Color.Transparent

            End If


            If (vflag_obrigatorio = 1) Then
                pnl_principal.Visible = False
                pnl_obrigatorio.Visible = True

                Exit Sub
            End If

            '////// abre o banco de dados /////////////////////////
            verp.ConnectionString = My.Settings.vconexaobase
            verp.Open()

            vselecao = "SELECT * FROM familiaclientes WHERE codigo_familia='" & Trim(vcodigo_familia) & "'"


            vcmdcomando.CommandText = vselecao
            vcmdcomando.CommandType = CommandType.Text
            vcmdcomando.CommandTimeout = 0
            vcmdcomando.Connection = verp

            tfamilia = vcmdcomando.ExecuteReader

            If tfamilia.Read() Then

                vselecao = "UPTADE familiaclientes SET"
                vselecao = vselecao & "descricao_familia='" & Trim(vdescricao_familia) & "' "
                vselecao = vselecao & "WHERE codigo_familia='" & Trim(vcodigo_familia) & "' "
                tfamilia.Close()

                vcmdcomando_gravar.CommandText = vselecao
                vcmdcomando_gravar.CommandType = CommandType.Text
                vcmdcomando_gravar.CommandTimeout = 0
                vcmdcomando_gravar.Connection = verp
                vcmdcomando_gravar.ExecuteNonQuery()

            Else

                vselecao = "INSERT INTO familiaclientes("
                vselecao = vselecao & "codigo_familia,"
                vselecao = vselecao & "descricao_familia)"
                vselecao = vselecao & "VALUES("
                vselecao = vselecao & "'" & vcodigo_familia & "',"
                vselecao = vselecao & "'" & vdescricao_familia & "')"
                tfamilia.Close()
            End If

        Catch ex As Exception

        End Try


    End Sub
End Class