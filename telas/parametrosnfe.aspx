<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="Topo.Master" CodeBehind="parametrosnfe.aspx.vb" Inherits="VoceFazNfe.parametrosnfe" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <!--/////////////////////////////////////////////////// Div com os dados Iniciais / PARAMETROS GERAIS /////////////////////////////////////////////////////////////////////////////////////////////-->

<div class="container-fluid" style="padding: 0px; margin: 0px; width: 100%; height: 30%">

    <div class="row" style="width: 100%; height: 200px"></div>

    <div class="row" style="width: 100%; height: 100%; padding: 0px; margin: 0px; background-color: transparent">

        <div id="div_parametros_NotaFiscal" name="div_parametros_NotaFiscal"
            style="display: block; visibility: visible; width: 100%; height: 100%; background-color: transparent; margin-left: 20px; margin-right: 20px; border: solid; border-color: #177CC0; border-width: 1px; border-radius: 10px; padding: 0 20px 20px 20px;">


            <div class="row" style="width: 100%; padding: 0px; margin: 0px; background-color: transparent; height: 120px; padding: 0px; margin: 0px">

                <div class="col"
                    style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px; padding-left: 10px">

                    <div class="row"
                        style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

                        <div class="col" style="width: 100%; height: 100%; background-color: transparent; padding: 10px; padding-top: 20px">
                            <div class="row">
                                <div class="col"
                                    style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                    Nome do Certificado Digital
                                </div>
                            </div>

                            <div class="row" style="padding: 0px; margin: 0px">
                                <div class="col" style="padding: 0px; margin: 0px; background-color: transparent">
                                    <asp:TextBox ID="cs_certificado_digital" runat="server" CssClass="layouttexto"
                                        Style="width: 90%;" onBlur="SetTextIn(this,0)" onFocus="SetTextIn(this,1)">
                                    </asp:TextBox>
                                </div>
                            </div>
                        </div>

                    </div>


                </div>

            </div>

            <!--/////////////////////////////////////////////////// Div com os dados Iniciais / 2 linha /////////////////////////////////////////////////////////////////////////////////////////////-->
            <div class="row" style="padding-left:10px;">

                <div class="col-xl-7"
                    style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px; padding-left: 10px">
                     
                    <div class="row"
                        style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

                        <div class="col" style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">
                            <div class="row">
                                <div class="col"
                                    style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                    Nome Serial do Certificado Digital
                                </div>
                            </div>
                            <div class="row" style="padding: 0px; margin: 0px">
                                <div class="col" style="padding: 0px; margin: 0px; background-color: transparent">
                                    <asp:TextBox ID="cs_serial_certificadodigital" runat="server" CssClass="layouttexto"
                                        Style="width: 100%;" onBlur="SetTextIn(this,0)" onFocus="SetTextIn(this,1)">
                                    </asp:TextBox>
                                </div>
                            </div>
                        </div>
                    </div>
                    
                 </div>

                      <div class="col-xl-5" style="width:100%;height:100%;background-color:transparent;padding:0px;margin:0px; padding-left:10px; padding-top:10px">
                
                        
                        <div class="row"
                            style="display: block; visibility: visible; width: 100%; height: 100%; background-color: transparent; padding-left:50px;">
                            <div class="col" style="padding: 0px; margin: 0px; background-color: transparent">
                            <a href="#">
                                
                                <img src="../Imagens/certificadoft.png" alt="Certificado Digital" style="width: 100px; height: 100px; border: 0;">

                                <p class="cs_pcertificado " style="font-family: Arial; font-size: 16px; color: #000000;">Selecione o Certificado Digital</p>
                            </a>
                        </div>
                            </div>
                        </div>
                    
                    </div>

                </div>
               
            </div>
        </div>
    

    


<!--/////////////////////////////////////////////////// DIV COM DADOS - INDENTIFICAÇÃO DO AMBIENTE DE VALIDADÇÃO DA NF /////////////////////////////////////////////////////////////////////////////////////////////-->

    <div class="container-fluid" style="padding: 0px; margin: 0px; width: 100%; height: 100%">
        <div class="row" style="width: 100%; height: 40px"></div>

        <div class="row" style="width: 100%; height: 100%; padding: 0px; margin: 0px; background-color: transparent">

            <div class="col-md-8" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px; padding-top: 10px">
                <!-- Este div ocupará 75% da largura -->
                <div id="div_identificacao_ambiente" name="div_identificacao_ambiente"
                    style="display: block; visibility: visible; width: 90%; height: 100%; background-color: transparent; margin-left: 20px; margin-right: 10px; border: solid; border-color: #177CC0; border-width: 1px; border-radius: 10px; padding: 0 20px 20px 20px;">
                    <div class="row">

                        <div class="col" style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold; padding-top: 20px; padding-left: 20px">
                            Ambiente de Validacção da NF-e
                        </div>
                    </div>
                    <div class="col" style="padding-top: 30px; background-color: transparent">
                        <div class="row" style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold; padding-top: 20px; padding-left: 20px">
                            <div class="col" style="padding: 0px; margin: 0px; background-color: transparent">
                                <table>
                                    <tr>
                                        <td>
                                            <asp:RadioButton ID="cs_Producao" runat="server" GroupName="ambiente" /></td>
                                        <td style="padding-left: 10px;">Produção</td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:RadioButton ID="cs_Homologacao" runat="server" GroupName="ambiente" /></td>
                                        <td style="padding-left: 10px;">Homologação</td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:RadioButton ID="cs_ContingenciaNA" runat="server" GroupName="ambiente" /></td>
                                        <td style="padding-left: 10px;">Contingência Ambiente Nacional NA</td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:RadioButton ID="cs_ContingenciaRS" runat="server" GroupName="ambiente" /></td>
                                        <td style="padding-left: 10px;">Contingência Ambiente Nacional RS</td>
                                    </tr>
                                </table>
                            </div>
                        </div>
                    </div>


                    <div class="col" style="padding-top: 30px">
                        <div class="row">
                            <div class="col"
                                style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                Série da Nota Fiscal
                            </div>
                        </div>
                        <div class="row" style="padding: 0px; margin: 0px">
                            <div class="col" style="padding: 0px; margin: 0px; background-color: transparent">
                                <asp:TextBox ID="TextBox1" runat="server" CssClass="layouttexto"
                                    Style="width: 100px;" onBlur="SetTextIn(this,0)" onFocus="SetTextIn(this,1)">
                                </asp:TextBox>
                            </div>
                        </div>
                    </div>

                    <div class="col" style="padding-top: 30px">
                        <div class="row">
                            <div class="col"
                                style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                Úlitmo Número Nota Fiscal
                            </div>
                        </div>
                        <div class="row" style="padding: 0px; margin: 0px">
                            <div class="col" style="padding: 0px; margin: 0px; background-color: transparent">
                                <asp:TextBox ID="TextBox2" runat="server" CssClass="layouttexto"
                                    Style="width: 150px;" onBlur="SetTextIn(this,0)" onFocus="SetTextIn(this,1)">
                                </asp:TextBox>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        <!--/////////////////////////////////////////////////// DIV COM DADOS - INDENTIFICAÇÃO DO AMBIENTE DE VALIDADÇÃO DA NF - LADO ESQUERDO /////////////////////////////////////////////////////////////////////////////////////////////-->


        
    </div>
</div>



</asp:Content>
