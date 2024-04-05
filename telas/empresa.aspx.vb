Public Class empresa
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load


        Dim verp As New Data.SqlClient.SqlConnection
        Dim vcmdcomando As New Data.SqlClient.SqlCommand
        Dim tempresa As Data.SqlClient.SqlDataReader

        Dim vselecao As String
        Dim vcnpj As String

        Dim vaux As String
        Dim vlogo As String

        Dim vcertificado As String
        Dim vsenhacertificado As String


        Try

            If Not Page.IsPostBack Then

                vselecao = ""

                vcnpj = "18050976000134"


                '////////////// Carrega o logotipo da empresa se houver ///////////////////////////////////////////////////////////////////////////////////////////////////////////

                vlogo = "C:\VoceFazNfe\Logotipos\" + vcnpj + ".BMP"

                If System.IO.File.Exists(vlogo) Then
                    img_logo.ImageUrl = "../Logotipos/" + vcnpj + ".bmp"
                Else
                    img_logo.ImageUrl = "../Logotipos/logoempresa.bmp"
                End If



                '////// abre o banco de dados  na locaweb ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
                verp.ConnectionString = My.Settings.vconexaobase
                    verp.Open()

                    vselecao = "SELECT * FROM empresa WHERE cnpj_emitente='" & Trim(vcnpj) & "'"

                    vcmdcomando.CommandText = vselecao
                    vcmdcomando.CommandType = CommandType.Text
                    vcmdcomando.CommandTimeout = 0
                    vcmdcomando.Connection = verp

                    tempresa = vcmdcomando.ExecuteReader

                    If tempresa.Read() Then

                        vaux = tempresa("cnpj_emitente")
                        vaux = Mid(vaux, 1, 2) & "." & Mid(vaux, 3, 3) & "." & Mid(vaux, 6, 3) & "/" & Mid(vaux, 9, 4) & "-" & Mid(vaux, 13, 2)
                        cs_cnpj.Text = vaux

                        cs_razaosocial.Text = tempresa("xnome_emitente")
                        cs_nomefantasia.Text = tempresa("xfant_emitente")
                        cs_inscricaoestadual.Text = tempresa("ie_emitente")
                        cs_cnaeFiscal.Text = tempresa("cnae_emitente")
                        cs_im.Text = tempresa("im_emitente")
                        cs_contato.Text = tempresa("nome_contato")
                        cs_email.Text = tempresa("email")
                        cmb_regime_tributario.Text = tempresa("crt_emitente")

                        vaux = tempresa("cep_emitente")
                        vaux = Mid(vaux, 1, 5) & "-" & Mid(vaux, 6, 3)
                        cs_cep.Text = vaux
                        cs_endereco.Text = tempresa("xlgr_emitente")
                        cs_numero.Text = tempresa("nro_emitente")
                        cs_complemento.Text = tempresa("xcpl_emitente")
                        cs_bairro.Text = tempresa("xbairro_emitente")
                        cs_codMunicipio.Text = tempresa("cmun_emitente")
                        cs_nomemunicipio.Text = tempresa("xmun_emitente")
                        cs_uf.Text = tempresa("uf_emitente")

                    cs_telefone.Text = tempresa("fone_emitente")

                    cs_senha_certificado.Text = tempresa("senha_certificado")


                    cs_iest_ac.Text = tempresa("iest_ac_emitente")
                    cs_iest_al.Text = tempresa("iest_al_emitente")
                    cs_iest_ap.Text = tempresa("iest_ap_emitente")
                        cs_iest_am.Text = tempresa("iest_am_emitente")
                        cs_iest_ba.Text = tempresa("iest_ba_emitente")
                        cs_iest_ce.Text = tempresa("iest_ce_emitente")
                        cs_iest_es.Text = tempresa("iest_es_emitente")
                        cs_iest_go.Text = tempresa("iest_go_emitente")
                        cs_iest_ma.Text = tempresa("iest_ma_emitente")
                        cs_iest_mt.Text = tempresa("iest_mt_emitente")
                        cs_iest_ms.Text = tempresa("iest_ms_emitente")
                        cs_iest_mg.Text = tempresa("iest_mg_emitente")
                        cs_iest_pa.Text = tempresa("iest_pa_emitente")
                        cs_iest_pb.Text = tempresa("iest_pb_emitente")
                        cs_iest_pr.Text = tempresa("iest_pr_emitente")
                        cs_iest_pe.Text = tempresa("iest_pe_emitente")
                        cs_iest_pi.Text = tempresa("iest_pi_emitente")
                        cs_iest_rj.Text = tempresa("iest_rj_emitente")
                        cs_iest_rn.Text = tempresa("iest_rn_emitente")
                        cs_iest_rs.Text = tempresa("iest_rs_emitente")
                        cs_iest_ro.Text = tempresa("iest_ro_emitente")
                        cs_iest_rr.Text = tempresa("iest_rr_emitente")
                        cs_iest_sc.Text = tempresa("iest_sc_emitente")
                        cs_iest_sp.Text = tempresa("iest_sp_emitente")
                        cs_iest_se.Text = tempresa("iest_se_emitente")
                        cs_iest_to.Text = tempresa("iest_to_emitente")
                    cs_iest_df.Text = tempresa("iest_df_emitente")


                    cmb_ambiente.SelectedValue = tempresa("ambiente")

                    cs_serie1.Text = tempresa("serie_1")
                    cs_serie2.Text = tempresa("serie_2")
                    cs_serie3.Text = tempresa("serie_3")
                    cs_serie4.Text = tempresa("serie_4")
                    cs_serie5.Text = tempresa("serie_5")

                    cs_nota1.Text = tempresa("nota_1")
                    cs_nota2.Text = tempresa("nota_2")
                    cs_nota3.Text = tempresa("nota_3")
                    cs_nota4.Text = tempresa("nota_4")
                    cs_nota5.Text = tempresa("nota_5")


                    '////////////// Busca os dados do certificado digital caso ele exista ////////////////////////////////////////////////////////////////////////////////////////////

                    Try

                        If Trim(tempresa("nome_certificado")) <> "" Then

                            vcertificado = "C:\VoceFazNfe\Certificados\" + tempresa("nome_certificado")
                            vsenhacertificado = cs_senha_certificado.Text

                            If System.IO.File.Exists(vcertificado) Then

                                Dim oCert As X509Certificate = New X509Certificate2(vcertificado, vsenhacertificado)

                                lbl_certificado.Text = oCert.Subject & Chr(13) & Chr(10) & "Válido até: " & oCert.GetExpirationDateString

                            End If

                        End If

                    Catch ex As Exception

                        lbl_certificado.Text = "Erro no certificado digital. Verifique se o arquivo foi carregado e se a senha esta correta."

                    End Try

                    '/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

                End If


                tempresa.Close()
                    verp.Close()

                End If

        Catch ex As Exception



        End Try




    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click


        Dim verp As New Data.SqlClient.SqlConnection
        Dim vcmdcomando As New Data.SqlClient.SqlCommand
        Dim vcmdcomando_gravar As New Data.SqlClient.SqlCommand
        Dim tempresa As Data.SqlClient.SqlDataReader

        Dim vselecao As String
        Dim vcnpj As String
        Dim vfone As String
        Dim vie As String
        Dim vcep As String

        Dim vflag_obrigatorio As Integer





        Try

            vselecao = ""

            vcnpj = Replace(Replace(Replace(cs_cnpj.Text, ".", ""), "/", ""), "-", "")
            vfone = Replace(Replace(Replace(Replace(cs_telefone.Text, " ", ""), "(", ""), ")", ""), "-", "")
            vie = Replace(Replace(Replace(Replace(cs_inscricaoestadual.Text, ".", ""), "-", ""), "/", ""), " ", "")
            vcep = Replace(cs_cep.Text, "-", "")

            vflag_obrigatorio = 0

            '///////////////////////////// Consistências ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
            If Trim(vcnpj) = "" Then
                cs_cnpj.BackColor = Drawing.Color.Red
                vflag_obrigatorio = 1
            Else
                cs_cnpj.BackColor = Drawing.Color.Transparent
            End If

            If Trim(cs_razaosocial.Text) = "" Then
                cs_razaosocial.BackColor = Drawing.Color.Red
                vflag_obrigatorio = 1
            Else
                cs_razaosocial.BackColor = Drawing.Color.Transparent
            End If

            If Trim(cs_nomefantasia.Text) = "" Then
                cs_nomefantasia.BackColor = Drawing.Color.Red
                vflag_obrigatorio = 1
            Else
                cs_nomefantasia.BackColor = Drawing.Color.Transparent
            End If

            If Trim(cs_telefone.Text) = "" Then
                cs_telefone.BackColor = Drawing.Color.Red
                vflag_obrigatorio = 1
            Else
                cs_telefone.BackColor = Drawing.Color.Transparent
            End If

            If Trim(cs_contato.Text) = "" Then
                cs_contato.BackColor = Drawing.Color.Red
                vflag_obrigatorio = 1
            Else
                cs_contato.BackColor = Drawing.Color.Transparent
            End If

            If Trim(cs_email.Text) = "" Then
                cs_email.BackColor = Drawing.Color.Red
                vflag_obrigatorio = 1
            Else
                cs_email.BackColor = Drawing.Color.Transparent
            End If

            If Trim(cs_cep.Text) = "" Then
                cs_cep.BackColor = Drawing.Color.Red
                vflag_obrigatorio = 1
            Else
                cs_cep.BackColor = Drawing.Color.Transparent
            End If

            If Trim(cs_endereco.Text) = "" Then
                cs_endereco.BackColor = Drawing.Color.Red
                vflag_obrigatorio = 1
            Else
                cs_endereco.BackColor = Drawing.Color.Transparent
            End If

            If Trim(cs_numero.Text) = "" Then
                cs_numero.BackColor = Drawing.Color.Red
                vflag_obrigatorio = 1
            Else
                cs_numero.BackColor = Drawing.Color.Transparent
            End If

            If Trim(cs_bairro.Text) = "" Then
                cs_bairro.BackColor = Drawing.Color.Red
                vflag_obrigatorio = 1
            Else
                cs_bairro.BackColor = Drawing.Color.Transparent
            End If

            If Trim(cs_codMunicipio.Text) = "" Then
                cs_codMunicipio.BackColor = Drawing.Color.Red
                vflag_obrigatorio = 1
            Else
                cs_codMunicipio.BackColor = Drawing.Color.Transparent
            End If

            If Trim(cs_nomemunicipio.Text) = "" Then
                cs_nomemunicipio.BackColor = Drawing.Color.Red
                vflag_obrigatorio = 1
            Else
                cs_nomemunicipio.BackColor = Drawing.Color.Transparent
            End If

            If Trim(cs_uf.Text) = "" Then
                cs_uf.BackColor = Drawing.Color.Red
                vflag_obrigatorio = 1
            Else
                cs_uf.BackColor = Drawing.Color.Transparent
            End If


            If Not IsNumeric(Trim(cs_nota1.Text)) And Trim(cs_nota1.Text) <> "" Then
                cs_nota1.BackColor = Drawing.Color.Red
                vflag_obrigatorio = 1
            Else
                cs_nota1.BackColor = Drawing.Color.Transparent
            End If


            If Not IsNumeric(Trim(cs_nota2.Text)) And Trim(cs_nota2.Text) <> "" Then
                cs_nota2.BackColor = Drawing.Color.Red
                vflag_obrigatorio = 1
            Else
                cs_nota2.BackColor = Drawing.Color.Transparent
            End If


            If Not IsNumeric(Trim(cs_nota3.Text)) And Trim(cs_nota3.Text) <> "" Then
                cs_nota3.BackColor = Drawing.Color.Red
                vflag_obrigatorio = 1
            Else
                cs_nota3.BackColor = Drawing.Color.Transparent
            End If


            If Not IsNumeric(Trim(cs_nota4.Text)) And Trim(cs_nota4.Text) <> "" Then
                cs_nota4.BackColor = Drawing.Color.Red
                vflag_obrigatorio = 1
            Else
                cs_nota4.BackColor = Drawing.Color.Transparent
            End If


            If Not IsNumeric(Trim(cs_nota5.Text)) And Trim(cs_nota5.Text) <> "" Then
                cs_nota5.BackColor = Drawing.Color.Red
                vflag_obrigatorio = 1
            Else
                cs_nota5.BackColor = Drawing.Color.Transparent
            End If


            '///////////////////////////// FIM Consistencias ////////////////////////////////////////////////////////////////////////////////////////

            If (vflag_obrigatorio = 1) Then

                pnl_principal.Visible = False
                pnl_obrigatório.Visible = True

                Exit Sub

            End If



            '////// abre o banco de dados  na locaweb ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
            verp.ConnectionString = My.Settings.vconexaobase
            verp.Open()

            vselecao = "SELECT * FROM empresa WHERE cnpj_emitente='" & Trim(vcnpj) & "'"

            vcmdcomando.CommandText = vselecao
            vcmdcomando.CommandType = CommandType.Text
            vcmdcomando.CommandTimeout = 0
            vcmdcomando.Connection = verp

            tempresa = vcmdcomando.ExecuteReader

            If tempresa.Read() Then

                vselecao = "UPDATE empresa SET "
                vselecao = vselecao & "cnpj_emitente='" & vcnpj & "',"
                vselecao = vselecao & "xnome_emitente='" & cs_razaosocial.Text & "',"
                vselecao = vselecao & "xfant_emitente='" & cs_nomefantasia.Text & "',"
                vselecao = vselecao & "xlgr_emitente='" & cs_endereco.Text & "',"
                vselecao = vselecao & "nro_emitente='" & cs_numero.Text & "',"
                vselecao = vselecao & "xcpl_emitente='" & cs_complemento.Text & "',"
                vselecao = vselecao & "xbairro_emitente='" & cs_bairro.Text & "',"
                vselecao = vselecao & "cmun_emitente='" & cs_codMunicipio.Text & "',"
                vselecao = vselecao & "xmun_emitente='" & cs_nomemunicipio.Text & "',"
                vselecao = vselecao & "uf_emitente='" & cs_uf.Text & "',"
                vselecao = vselecao & "cep_emitente='" & vcep & "',"
                vselecao = vselecao & "cpais_emitente='" & "1058" & "',"
                vselecao = vselecao & "xpais_emitente='" & "BRASIL" & "',"
                vselecao = vselecao & "fone_emitente='" & vfone & "',"
                vselecao = vselecao & "ie_emitente='" & Mid(vie, 1, 14) & "',"
                vselecao = vselecao & "im_emitente='" & cs_im.Text & "',"
                vselecao = vselecao & "crt_emitente='" & cmb_regime_tributario.Text & "',"
                vselecao = vselecao & "cnae_emitente='" & cs_cnaeFiscal.Text & "',"

                vselecao = vselecao & "nome_contato='" & cs_contato.Text & "',"
                vselecao = vselecao & "email='" & cs_email.Text & "',"


                '//////////////////////////////////////// Grava os dados do certificado Digital ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////
                If filecertificado.HasFile Then

                    Dim vnomeArquivo As String = filecertificado.PostedFile.FileName
                    Dim vauxarquivo As String

                    vauxarquivo = Mid(vnomeArquivo, vnomeArquivo.Length - 3, 4)

                    filecertificado.PostedFile.SaveAs(Server.MapPath("~/Certificados/" + vcnpj + vauxarquivo))

                    vselecao = vselecao & "nome_certificado='" & vcnpj + vauxarquivo & "',"

                End If

                vselecao = vselecao & "ambiente='" & cmb_ambiente.SelectedValue & "',"

                vselecao = vselecao & "serie_1='" & cs_serie1.Text & "',"
                vselecao = vselecao & "serie_2='" & cs_serie2.Text & "',"
                vselecao = vselecao & "serie_3='" & cs_serie3.Text & "',"
                vselecao = vselecao & "serie_4='" & cs_serie4.Text & "',"
                vselecao = vselecao & "serie_5='" & cs_serie5.Text & "',"

                vselecao = vselecao & "nota_1='" & cs_nota1.Text & "',"
                vselecao = vselecao & "nota_2='" & cs_nota2.Text & "',"
                vselecao = vselecao & "nota_3='" & cs_nota3.Text & "',"
                vselecao = vselecao & "nota_4='" & cs_nota4.Text & "',"
                vselecao = vselecao & "nota_5='" & cs_nota5.Text & "',"

                vselecao = vselecao & "senha_certificado='" & cs_senha_certificado.Text & "',"

                vselecao = vselecao & "iest_ac_emitente='" & cs_iest_ac.Text & "',"
                vselecao = vselecao & "iest_al_emitente='" & cs_iest_al.Text & "',"
                vselecao = vselecao & "iest_ap_emitente='" & cs_iest_ap.Text & "',"
                vselecao = vselecao & "iest_am_emitente='" & cs_iest_am.Text & "',"
                vselecao = vselecao & "iest_ba_emitente='" & cs_iest_ba.Text & "',"
                vselecao = vselecao & "iest_ce_emitente='" & cs_iest_ce.Text & "',"
                vselecao = vselecao & "iest_es_emitente='" & cs_iest_es.Text & "',"
                vselecao = vselecao & "iest_go_emitente='" & cs_iest_go.Text & "',"
                vselecao = vselecao & "iest_ma_emitente='" & cs_iest_ma.Text & "',"
                vselecao = vselecao & "iest_mt_emitente='" & cs_iest_mt.Text & "',"
                vselecao = vselecao & "iest_ms_emitente='" & cs_iest_ms.Text & "',"
                vselecao = vselecao & "iest_mg_emitente='" & cs_iest_mg.Text & "',"
                vselecao = vselecao & "iest_pa_emitente='" & cs_iest_pa.Text & "',"
                vselecao = vselecao & "iest_pb_emitente='" & cs_iest_pb.Text & "',"
                vselecao = vselecao & "iest_pr_emitente='" & cs_iest_pr.Text & "',"
                vselecao = vselecao & "iest_pe_emitente='" & cs_iest_pe.Text & "',"
                vselecao = vselecao & "iest_pi_emitente='" & cs_iest_pi.Text & "',"
                vselecao = vselecao & "iest_rj_emitente='" & cs_iest_rj.Text & "',"
                vselecao = vselecao & "iest_rn_emitente='" & cs_iest_rn.Text & "',"
                vselecao = vselecao & "iest_rs_emitente='" & cs_iest_rs.Text & "',"
                vselecao = vselecao & "iest_ro_emitente='" & cs_iest_ro.Text & "',"
                vselecao = vselecao & "iest_rr_emitente='" & cs_iest_rr.Text & "',"
                vselecao = vselecao & "iest_sc_emitente='" & cs_iest_sc.Text & "',"
                vselecao = vselecao & "iest_sp_emitente='" & cs_iest_sp.Text & "',"
                vselecao = vselecao & "iest_se_emitente='" & cs_iest_se.Text & "',"
                vselecao = vselecao & "iest_to_emitente='" & cs_iest_to.Text & "',"
                vselecao = vselecao & "iest_df_emitente='" & cs_iest_df.Text & "'"

                vselecao = vselecao & " WHERE cnpj_emitente='" & vcnpj & "'"


                tempresa.Close()

                vcmdcomando_gravar.CommandText = vselecao
                vcmdcomando_gravar.CommandType = CommandType.Text
                vcmdcomando_gravar.CommandTimeout = 0
                vcmdcomando_gravar.Connection = verp
                vcmdcomando_gravar.ExecuteNonQuery()


                pnl_gravar.Visible = True
                pnl_obrigatório.Visible = False



            Else

                '////MsgBox("O CNPJ informado não possui uma licença válida. Entre em contato com o suporte para regularizar.", 64, My.Settings.vmensagem)

            End If

            verp.Close()


        Catch ex As Exception

            '///MsgBox(ex.Message)

        End Try


    End Sub

    Protected Sub cs_cnpj_TextChanged(sender As Object, e As EventArgs) Handles cs_cnpj.TextChanged



    End Sub

    Protected Sub cmd_ok_gravar_Click(sender As Object, e As EventArgs) Handles cmd_ok_gravar.Click


        pnl_principal.Visible = True
        pnl_gravar.Visible = False

    End Sub

    Protected Sub cmd_voltar_obrigatorio_Click(sender As Object, e As EventArgs) Handles cmd_voltar_obrigatorio.Click


        pnl_obrigatório.Visible = False
        pnl_principal.Visible = True


    End Sub

    Protected Sub cs_email_TextChanged(sender As Object, e As EventArgs) Handles cs_email.TextChanged

    End Sub

    Protected Sub cmd_carregar_loco_Click(sender As Object, e As EventArgs) Handles cmd_carregar_logo.Click

        Try


            If file_logo.HasFile Then

                Dim vnomeArquivo As String = file_logo.PostedFile.FileName
                Dim vcnpj As String

                vcnpj = Replace(Replace(Replace(cs_cnpj.Text, ".", ""), "-", ""), "/", "")


                '///// verifica se o arquivo é extensao BMP
                If vnomeArquivo.Contains(".bmp") Then

                    Dim vtamanhoArquivo As Long = file_logo.PostedFile.ContentLength
                    Dim vtamanholimite As Long = 500000

                    If vtamanhoArquivo > vtamanholimite Then

                        lblmsg.Text = "Tamanho do arquivo excede o limite"
                        lblmsg.Visible = True


                    Else

                        file_logo.PostedFile.SaveAs(Server.MapPath("~/Logotipos/" + vcnpj + ".BMP"))
                        lblmsg.Text = "Arquivo enviado com sucesso." & vbCrLf & "Tamanho do Arquivo = " & vtamanhoArquivo.ToString() & "bytes"
                        lblmsg.Visible = True

                        img_logo.ImageUrl = "~/Logotipos/" & vcnpj & ".bmp"

                    End If


                Else

                    lblmsg.Text = "Somente arquivo com formato BMP"
                    lblmsg.Visible = True

                End If

            Else

                lblmsg.Text = "Por Favor, selecione um arquivo a enviar."
                lblmsg.Visible = True

            End If


        Catch ex As Exception

            lblmsg.Text = "Ocorreu um erro de leitura. Verifique se o tamanho do arquivo excede o limite"
            lblmsg.Visible = True

        End Try

    End Sub
End Class