Public Class estadosuf1
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub cmd_gravar_Click(sender As Object, e As EventArgs) Handles cmd_gravar.Click
        Dim verp As New Data.SqlClient.SqlConnection
        Dim vcmdcomando As New Data.SqlClient.SqlCommand
        Dim vcmdcomando_gravar As New Data.SqlClient.SqlCommand
        Dim testado As Data.SqlClient.SqlDataReader

        Dim vselecao As String
        Dim vsigla_estado As String
        Dim vdescricao_estado As String
        Dim vicms_interno As String
        Dim vicms_interestadual As String
        Dim vflag_obrigatorio As Integer

        Try
            vselecao = 0
            vflag_obrigatorio = 0

            vsigla_estado = Trim(cs_sigla_estado.Text)
            vdescricao_estado = Trim(cs_descricao_estado.Text)
            vicms_interno = Trim(cs_icms_interno.Text)
            vicms_interestadual = Trim(cs_icms_interestadual.Text)
            '///////////////////////////// Consistências //////////////////////
            If Trim(vsigla_estado) = "" Then
                cs_sigla_estado.BackColor = Drawing.Color.Red
                vflag_obrigatorio = 1
            Else
                cs_sigla_estado.BackColor = Drawing.Color.Transparent
            End If

            If Trim(vdescricao_estado) = "" Then
                cs_descricao_estado.BackColor = Drawing.Color.Red
                vflag_obrigatorio = 1
            Else
                cs_descricao_estado.BackColor = Drawing.Color.Transparent
            End If

            If Trim(vicms_interno) = "" Then
                cs_icms_interno.BackColor = Drawing.Color.Red
                vflag_obrigatorio = 1
            Else
                cs_icms_interno.BackColor = Drawing.Color.Transparent
            End If

            If Trim(vicms_interestadual) = "" Then
                cs_icms_interestadual.BackColor = Drawing.Color.Red
                vflag_obrigatorio = 1
            Else
                cs_icms_interestadual.BackColor = Drawing.Color.Transparent
            End If


            If (vflag_obrigatorio = 1) Then
                pnl_principal.Visible = False
                pnl_obrigatorio.Visible = True
                Exit Sub

            End If


            '////// abre o banco de dados ////////////////////////
            ' Abrir conexão com o banco de dados
            verp.ConnectionString = My.Settings.vconexaobase
            verp.Open()

            vselecao = "SELECT * FROM estadouf WHERE sigla_estado_uf='" & Trim(vsigla_estado) & "'"

            vcmdcomando.CommandText = vselecao
            vcmdcomando.CommandType = CommandType.Text
            vcmdcomando.CommandTimeout = 0
            vcmdcomando.Connection = verp

            testado = vcmdcomando.ExecuteReader

            If testado.Read() Then
                vselecao = "UPDATE estadouf SET "
                vselecao = vselecao & "descricao_estado='" & Trim(vdescricao_estado) & "', "
                vselecao = vselecao & "icms_interno='" & Trim(vicms_interno) & "', "
                vselecao = vselecao & "icms_interestadual='" & Trim(vicms_interestadual) & "' " ' Adicionando as novas colunas
                vselecao = vselecao & "WHERE sigla_estado_uf='" & Trim(vsigla_estado) & "'"
                testado.Close()

                vcmdcomando_gravar.CommandText = vselecao
                vcmdcomando_gravar.CommandType = CommandType.Text
                vcmdcomando_gravar.CommandTimeout = 0
                vcmdcomando_gravar.Connection = verp
                vcmdcomando_gravar.ExecuteNonQuery()

            Else

                vselecao = "INSERT INTO estadouf("
                vselecao = vselecao & "sigla_estado_uf,"
                vselecao = vselecao & "descricao_estado,"
                vselecao = vselecao & "icms_interno," ' Adicionando a nova coluna
                vselecao = vselecao & "icms_interestadual)" ' Adicionando a nova coluna
                vselecao = vselecao & "VALUES("
                vselecao = vselecao & "'" & vsigla_estado & "',"
                vselecao = vselecao & "'" & vdescricao_estado & "',"
                vselecao = vselecao & "'" & vicms_interno & "'," ' Adicionando a nova coluna
                vselecao = vselecao & "'" & vicms_interestadual & "')" ' Adicionando a nova coluna
                testado.Close()

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
            cs_sigla_estado.Text = ""
            cs_descricao_estado.Text = ""
            cs_icms_interno.Text = ""
            cs_icms_interestadual.Text = ""
            cs_sigla_estado.Focus()
        Catch ex As Exception
        End Try

    End Sub

    Protected Sub cmd_deletar_Click(sender As Object, e As EventArgs) Handles cmd_deletar.Click
        Dim verp As New Data.SqlClient.SqlConnection
        Dim vcmdcomando As New Data.SqlClient.SqlCommand
        Dim vcmdcomando_deletar As New Data.SqlClient.SqlCommand
        Dim testado As Data.SqlClient.SqlDataReader


        Dim vselecao As String
        Dim vflag_obrigatorio As Integer
        Dim vsigla_estado As String


        Try
            vflag_obrigatorio = 0
            vsigla_estado = Trim(cs_sigla_estado.Text)


            '///////////////////////////// Consistências /////////////////////
            If Trim(vsigla_estado) = "" Then
                cs_sigla_estado.BackColor = Drawing.Color.Red
                vflag_obrigatorio = 1
            Else
                cs_sigla_estado.BackColor = Drawing.Color.Transparent
            End If


            '////// abre o banco de dados ///////////////////////////////////////
            verp.ConnectionString = My.Settings.vconexaobase
            verp.Open()

            vselecao = "SELECT * FROM estadouf WHERE descricao_estado='" & Trim(vsigla_estado) & "'"

            vcmdcomando.CommandText = vselecao
            vcmdcomando.CommandType = CommandType.Text
            vcmdcomando.CommandTimeout = 0
            vcmdcomando.Connection = verp

            testado = vcmdcomando.ExecuteReader

            If testado.Read() Then

                vselecao = "DELETE FROM estadouf"
                vselecao = vselecao & "WHERE descricao_estado='" & Trim(vsigla_estado) & "'"

                testado.Close()


                vcmdcomando_deletar.CommandText = vselecao
                vcmdcomando_deletar.CommandType = CommandType.Text
                vcmdcomando_deletar.CommandTimeout = 0
                vcmdcomando_deletar.ExecuteNonQuery()

                cs_sigla_estado.Text = ""
                cs_descricao_estado.Text = ""


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

    Protected Sub cs_sigla_estado_TextChanged(sender As Object, e As EventArgs) Handles cs_sigla_estado.TextChanged
        Dim verp As New Data.SqlClient.SqlConnection
        Dim vcmdcomando As New Data.SqlClient.SqlCommand
        Dim testado As Data.SqlClient.SqlDataReader

        Dim vselecao As String
        Dim vsigla_estado As String

        Try
            vsigla_estado = UCase(Trim(cs_sigla_estado.Text))
            cs_sigla_estado.Text = vsigla_estado


            '////// abre o banco de dados ////////////////////
            verp.ConnectionString = My.Settings.vconexaobase
            verp.Open()

            vselecao = "SELECT * FROM estadouf WHERE sigla_estado_uf='" & Trim(vsigla_estado) & "'"

            vcmdcomando.CommandText = vselecao
            vcmdcomando.CommandType = CommandType.Text
            vcmdcomando.CommandTimeout = 0
            vcmdcomando.Connection = verp

            testado = vcmdcomando.ExecuteReader

            If testado.Read() Then

                cs_descricao_estado.Text = testado("descricao_estado")
                cmd_deletar.Visible = True
                cmd_gravar.Visible = True

            Else
                cs_descricao_estado.Text = ""
                cmd_deletar.Visible = False
                cmd_gravar.Visible = True


            End If

            cs_descricao_estado.Focus()
            testado.Close()
            verp.Close()
        Catch ex As Exception

        End Try
    End Sub

    Protected Sub cmd_imprimir_Click(sender As Object, e As EventArgs) Handles cmd_imprimir.Click
        cmd_gravar.Visible = False
        cmd_deletar.Visible = False

        cs_sigla_estado.Text = ""
        cs_descricao_estado.Text = ""
        cs_icms_interno.Text = ""
        cs_icms_interestadual.Text = ""

        cs_sigla_estado.Focus()
    End Sub
End Class