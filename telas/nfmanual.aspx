

                <%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/telas/Topo.Master" CodeBehind="nfmanual.aspx.vb" Inherits="VoceFazNfe.nfmanual" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <div class="row" style="width: 100%; height: 210px; background-color: transparent"></div>

    <!-- Menu das seçoes da nota fiscal -->
    <nav class="navbar navbar-expand-lg navbar-light bg-light">

        <a class="navbar-brand" style="color: #177CC0; padding-left: 10px; padding-top: 0px; font-family: Arial; font-size: 20px; font-weight: bold;">Nota Fiscal Eletrônica</a>

        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="true" aria-label="Alterna navegação">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse justify-content-center" id="navbarNavAltMarkup">

            <div class="navbar-nav justify-content-sm-center">

                <a id="menu_dados_iniciais" name="menu_dados_iniciais" class="nav-item" style="cursor: pointer; color: #177CC0; width: 170px; padding-top: 10px; padding-left: 20px" onmouseover="muda_foco_menu_nfe(this,1)" onmouseout="muda_foco_menu_nfe(this,0)" onclick="seleciona_menu_nfe(this)">Dados Principais</a>
                <a id="menu_dados_destinatario" name="menu_dados_destinatario" class="nav-item" style="cursor: pointer; width: 140px; padding-top: 10px; padding-left: 20px" onmouseover="muda_foco_menu_nfe(this,1)" onmouseout="muda_foco_menu_nfe(this,0)" onclick="seleciona_menu_nfe(this)">Destinatário</a>
                <a id="menu_itens_nota" name="menu_itens_nota" class="nav-item" style="cursor: pointer; width: 140px; padding-top: 10px; padding-left: 20px" onmouseover="muda_foco_menu_nfe(this,1)" onmouseout="muda_foco_menu_nfe(this,0)" onclick="seleciona_menu_nfe(this)">Itens da Nota</a>
                <a id="menu_totais_nota" name="menu_totais_nota" class="nav-item" style="cursor: pointer; width: 140px; padding-top: 10px; padding-left: 20px" onmouseover="muda_foco_menu_nfe(this,1)" onmouseout="muda_foco_menu_nfe(this,0)" onclick="seleciona_menu_nfe(this)">Totais da Nota</a>
                <a id="menu_informacoes_complementares" name="menu_informacoes_complementares" class="nav-item" style="cursor: pointer; width: 150px; padding-top: 10px; padding-left: 20px; padding-bottom: 20px" onmouseover="muda_foco_menu_nfe(this,1)" onmouseout="muda_foco_menu_nfe(this,0)" onclick="seleciona_menu_nfe(this)">Dados Adicionais</a>

            </div>

        </div>

    </nav>
          <asp:Panel ID="Panel2"  runat="server" BackColor="Transparent" Height="100%" Visible="True">
              <div class="container-fluid" name="div_dados_iniciais" id="div_dados_iniciais" style="padding:0px; margin:0px; width:98%; height:100%">

     <div class="row" style="width:100%;height:15px"></div>

      


          <div class="row" style="width:100%;height:100%;padding:0px;margin:0px;background-color:transparent">

<div class="row" style="width:100%;height:100%;padding-left: 20px;  padding-top: 0px;margin-left:0px">
    <div id="i_dados_iniciais2_on" name="i_dados_iniciais2_on" class="col" align="left" style="visibility:visible; font-size:20px;color:red;margin-right:20px;border-bottom:none;cursor:pointer" onclick="mostra_div_informacao('div_dados_iniciais2','i_dados_iniciais2_on','i_dados_iniciais2_off',0)"><span style="color: #177CC0;font-family: Arial; font-size: 20px; font-weight: bold;">Dados Iniciais</span>&nbsp;&nbsp;<i class="fa fa-toggle-on"></i></div>
    <div id="i_dados_iniciais2_off" name="i_dados_iniciais2_off" class="col" align="left" style="display:none;visibility:hidden; font-size:20px;color:red;margin-right:20px;border-bottom:solid;border-width:1px;border-color:#767676;cursor:pointer" onclick="mostra_div_informacao('div_dados_iniciais2','i_dados_iniciais2_on','i_dados_iniciais2_off',1)"><span style="color: #177CC0;font-family: Arial; font-size: 20px; font-weight: bold;">Dados Iniciais</span>&nbsp;&nbsp;<i class="fa fa-toggle-off"></i></div>
</div>

           <div class="row" style="width:100%;height:20px"></div>

    <div name="div_dados_iniciais2" id="div_dados_iniciais2"   style=" display:block;visibility:visible;  width:100%;height:100%;background-color:transparent;margin-left:20px;margin-right:20px;border:solid;border-color:#177CC0;border-width:1px;border-radius:10px;padding: 0px 20px 20px 20px;">
        

                    
                    
                    <div class="row"
                        style="width: 100%; padding: 0px; margin: 0px; background-color: transparent; height: 100%; padding: 0px; margin: 0px">
                        <!--/////////////////////////////////////////////////// Div com os dados Iniciais / LADO ESQUERDO    /////////////////////////////////////////////////////////////////////////////////////////////-->
                        <div class="col-xl-6" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px; padding-left: 10px">

                            <div class="row" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

                                <div class="col-md-6" style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-left: 10px; padding-top: 20px">
                                    <div class="row">
                                        <div class="col" style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                            Tipo de Emissão da NF-e&nbsp &nbsp <img alt="" src="../Imagens/ihelp.png"  style="width: 20px; height: 21px; cursor:pointer" onclick="anima_informacao(1,'contigencia')" />
                                        </div>
                                    </div>
                                    <div class="row" style="padding: 0px; margin: 0px">
                                        <div class="col" style="padding: 0px; margin: 0px">
                                            <asp:DropDownList ID="cs_emissao_nf" onBlur="SetTextIn(this,0);SetDiv('div_dados_iniciais2',0)" onFocus="SetTextIn(this,1);SetDiv('div_dados_iniciais2',1)" CssClass="layouttexto" runat="server">
                                                <asp:ListItem style="width: 100%;" Text="Contigência FS-IA" Value="1" />
                                                <asp:ListItem style="width: 100%;" Text="Contigência SCAN" Value="2" />
                                                <asp:ListItem style="width: 100%;" Text="Contigência DPEC" Value="3" />
                                                <asp:ListItem style="width: 100%;" Text="Contigência FS-DA" Value="4" />
                                                <asp:ListItem style="width: 100%;" Text="Contigência SVC-AN" Value="5" />
                                                <asp:ListItem style="width: 100%;" Text="Contigência SVC-RS" Value="6" />
                                                <asp:ListItem style="width: 100%;" Text="Contigência off-line" Value="7" />
                                            </asp:DropDownList>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-md-6" style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-left: 10px; padding-top: 20px">
                                    <div class="row">
                                        <div class="col" style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                            Finalide da Emissão da NF-e &nbsp &nbsp <img alt="" src="../Imagens/ihelp.png"  style="width: 20px; height: 20px; cursor:pointer" onclick="anima_informacao(1,'finalidadedeemissao')" />
                                        </div>
                                    </div>
                                    <div class="row" style="padding: 0px; margin: 0px">
                                        <div class="col" style="padding: 0px; margin: 0px">
                                            <asp:DropDownList ID="cs_finalidade_nf" onBlur="SetTextIn(this,0);SetDiv('div_dados_iniciais2',0)" onFocus="SetTextIn(this,1);SetDiv('div_dados_iniciais2',1)"  CssClass="layouttexto" runat="server">
                                                <asp:ListItem style="width: 100%;" Text="NF-e normal" Value="1" />
                                                <asp:ListItem style="width: 100%;" Text="NF-e complementar" Value="2" />
                                                <asp:ListItem style="width: 100%;" Text="NF-e de ajuste" Value="3" />
                                                <asp:ListItem style="width: 100%;" Text="Devolução de mercadoria" Value="4" />
                                            </asp:DropDownList>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!--/////////////////////////////////////////////////// Div com os dados Iniciais - LADO DIREITO /////////////////////////////////////////////////////////////////////////////////////////////-->
                        <div class="col-xl-6" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px; padding-left: 10px">

                            <div class="row" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

                                <div class="col-md-6" style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-left: 10px; padding-top: 20px">
                                    <div class="row">
                                        <div class="col" style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                            Operação com Consumidor
                                        </div>
                                    </div>
                                    <div class="row" style="padding: 0px; margin: 0px">
                                        <div class="col" style="padding: 0px; margin: 0px">
                                            <asp:DropDownList ID="cs_operacao_consumidor" onBlur="SetTextIn(this,0);SetDiv('div_dados_iniciais2',0)" onFocus="SetTextIn(this,1);SetDiv('div_dados_iniciais2',1)"  CssClass="layouttexto" runat="server">
                                                <asp:ListItem style="width: 100%;" Text="Normal" Value="1" />
                                                <asp:ListItem style="width: 100%;" Text="Consumidor Final" Value="2" />
                                            </asp:DropDownList>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-md-6" style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-left: 10px; padding-top: 20px">
                                    <div class="row">
                                        <div class="col" style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                            Tipo de Opreração  &nbsp &nbsp <img alt="" src="../Imagens/ihelp.png"  style="width: 20px; height: 20px; cursor:pointer" onclick="anima_informacao(1,'tipodeoperacao')" />

                                        </div>
                                    </div>
                                    <div class="row" style="padding: 0px; margin: 0px">
                                        <div class="col" style="padding: 0px; margin: 0px">
                                            <asp:DropDownList ID="cs_tipo_operacao" onBlur="SetTextIn(this,0);SetDiv('div_dados_iniciais2',0)" onFocus="SetTextIn(this,1);SetDiv('div_dados_iniciais2',1)"  CssClass="layouttexto" runat="server">
                                                <asp:ListItem style="width: 100%;" Text="Entrada" Value="1" />
                                                <asp:ListItem style="width: 100%;" Text="Saida" Value="2" />
                                            </asp:DropDownList>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>



                    <!--/////////////////////////////////////////////////// Div com os dados Iniciais 2 linha -   /////////////////////////////////////////////////////////////////////////////////////////////-->
                    <div class="row" style="height: 30px"></div>
                    <div class="row">
                        <div class="col-xl-6" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px; padding-left: 20px">

                            <div class="row" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

                                <div class="col-md-6" style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-left: 15px; padding-top: 10px">
                                    <div class="row">
                                        <div class="col" style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                            Natureza da Operação
                                        </div>
                                    </div>
                                    <div class="row" style="padding: 0px; margin: 0px;">
                                        <div class="col" style="padding: 0px; margin: 0px; background-color: transparent">
                                            <asp:TextBox ID="cs_natureza_da_operacao" runat="server" CssClass="layouttexto"
                                                Style="width: 80%;" onBlur="SetTextIn(this,0);SetDiv('div_dados_iniciais2',0)" onFocus="SetTextIn(this,1);SetDiv('div_dados_iniciais2',1)" >
                                            </asp:TextBox> 
                                        </div>
                                    </div>
                                </div>

                                <div class="col-md-6" style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-left: 15px; padding-top: 10px">
                                    <div class="row">
                                        <div class="col" style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                            Numero do Documento Fiscal&nbsp &nbsp <img alt="" src="../Imagens/ihelp.png"  style="width: 20px; height: 20px; cursor:pointer" onclick="anima_informacao(1,'numerodocumento')" />
                                        </div>
                                    </div>
                                    <div class="row" style="padding: 0px; margin: 0px">
                                        <div class="col" style="padding: 0px; margin: 0px">
                                            <asp:TextBox ID="cs_numero_documento_fiscal" runat="server" CssClass="layouttexto"
                                                Style="width: 93%;" onBlur="SetTextIn(this,0);SetDiv('div_dados_iniciais2',0)" onFocus="SetTextIn(this,1);SetDiv('div_dados_iniciais2',1)" >
                                            </asp:TextBox>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!--/////////////////////////////////////////////////// 2 LINHA - LADO DIREITO /////////////////////////////////////////////////////////////////////////////////////////////-->
                        <div class="col-xl-6" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px; padding-left: 20px">

                            <div class="row" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

                                <div class="col-md-5" style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-left: 15px; padding-top: 10px">
                                    <div class="row">
                                        <div class="col" style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                            Série 
                                        </div>
                                    </div>
                                    <div class="row" style="padding: 0px; margin: 0px">
                                        <div class="col" style="padding: 0px; margin: 0px">
                                            <asp:TextBox ID="cs_serie_documento_fiscal" runat="server" CssClass="layouttexto"
                                                Style="width: 50px;" onBlur="SetTextIn(this,0);SetDiv('div_dados_iniciais2',0)" onFocus="SetTextIn(this,1);SetDiv('div_dados_iniciais2',1)" >
                                            </asp:TextBox>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-md-7" style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-left: 15px; padding-top: 10px">
                                    <div class="row">
                                        <div class="col" style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                            Data e Hora da Emissão

                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col">
                                            <asp:TextBox ID="cs_data_hora_emissao" runat="server" CssClass="layouttexto" Style="width: 40%;" onBlur="SetTextIn(this,0);SetDiv('div_dados_iniciais2',0)" onFocus="SetTextIn(this,1);SetDiv('div_dados_iniciais2',1)" ></asp:TextBox>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>


                    <!--/////////////////////////////////////////////////// ÚLTIMA linha -LADO DIREITO /////////////////////////////////////////////////////////////////////////////////////////////-->
                    <div class="row" style="height: 30px"></div>
                    <div class="row">

                        <div class="col-xl-6" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px; padding-left: 20px">

                            <div class="row" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

                                <div class="col-md-6" style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-left: 15px; padding-top: 10px">
                                    <div class="row">
                                        <div class="col" style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                            Forma de Pagamento
                                        </div>
                                    </div>
                                    <div class="row" style="padding: 0px; margin: 0px">
                                        <div class="col" style="padding: 0px; margin: 0px">
                                            <asp:DropDownList ID="cs_forma_de_pagamento" onBlur="SetTextIn(this,0);SetDiv('div_dados_iniciais2',0)" onFocus="SetTextIn(this,1);SetDiv('div_dados_iniciais2',1)"  CssClass="layouttexto" runat="server">
                                                <asp:ListItem style="width: 100%;" Text="Pagamento à vista" Value="1" />
                                                <asp:ListItem style="width: 100%;" Text="Pagamento a prazo" Value="2" />
                                                <asp:ListItem style="width: 100%;" Text="Outros" Value="3" />
                                            </asp:DropDownList>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-md-6" style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-left: 15px; padding-top: 20px">
                                    <div class="row">
                                        <div class="col" style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                            Destino da Operação
                                        </div>
                                    </div>
                                    <div class="row" style="padding: 0px; margin: 0px">
                                        <div class="col" style="padding: 0px; margin: 0px">
                                            <asp:DropDownList ID="cs_destino_da_operacao" onBlur="SetTextIn(this,0);SetDiv('div_dados_iniciais2',0)" onFocus="SetTextIn(this,1);SetDiv('div_dados_iniciais2',1)"  CssClass="layouttexto" runat="server">
                                                <asp:ListItem style="width: 100%;" Text="Operação Interna" Value="1" />
                                                <asp:ListItem style="width: 100%;" Text="Operação Interestadual" Value="2" />
                                                <asp:ListItem style="width: 100%;" Text="Operação com exterior" Value="3" />
                                            </asp:DropDownList>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!--/////////////////////////////////////////////////// 2 LINHA - LADO DIREITO /////////////////////////////////////////////////////////////////////////////////////////////-->
                        <div class="col-xl-6" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px; padding-left: 20px">

                            <div class="row" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

                                <div class="col-md-6" style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-left: 15px; padding-top: 20px">
                                    <div class="row">
                                        <div class="col" style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                            Código do Municipio &nbsp &nbsp <img alt="" src="../Imagens/ihelp.png"  style="width: 20px; height: 20px; cursor:pointer" onclick="anima_informacao(1,'codigomunicipio')" />
                                        </div>
                                    </div>
                                    <div class="input-group">
                                        <asp:TextBox ID="cs_codigo_municipio_dados_principais" runat="server" CssClass="layouttexto"
                                            Style="width: 200px" onBlur="SetTextIn(this,0);SetDiv('div_dados_iniciais2',0)" onFocus="SetTextIn(this,1);SetDiv('div_dados_iniciais2',1)" >
                                        </asp:TextBox>
                                        <div class="input-group-append">
                                            <button class="material-symbols-outlined">
                                                <i
                                                    class="fa-solid fa-magnifying-glass"></i>
                                            </button>
                                        </div>
                                    </div>
                                </div>


                            </div>
                        </div>


                    </div>
                    <!--/////////////////////////////////////////////////// última linha -  /////////////////////////////////////////////////////////////////////////////////////////////-->
                    <div class="row" style="height: 30px"></div>
                    <div class="row">

                        <div class="col-md-auto" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px; padding-left: 10px">
                            <div class="row" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

                                <div class="col" style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-left: 5px; padding-top: 10px">
                                    <div class="row" style="padding: 0px; margin: 0px;">
                                        <div class="col" style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                            Indicador de Presença

                                        </div>
                                    </div>
                                    <div class="row" style="padding: 0px; margin: 0px">
                                        <div class="col" style="padding: 0px; margin: 0px">
                                            <asp:DropDownList ID="cs_indicador_de_presenca" onBlur="SetTextIn(this,0);SetDiv('div_dados_iniciais2',0)" onFocus="SetTextIn(this,1);SetDiv('div_dados_iniciais2',1)"  CssClass="layouttexto" runat="server">
                                                <asp:ListItem style="width: 100%;" Text="Não se aplica" Value="1" />
                                                <asp:ListItem style="width: 100%;" Text="Operação presencial" Value="2" />
                                                <asp:ListItem style="width: 100%;" Text="Operação presencial, pela internet" Value="3" />
                                                <asp:ListItem style="width: 100%;" Text="Operação presencial, Teleadtendimento" Value="4" />
                                                <asp:ListItem style="width: 100%;" Text="NFC-e em operação com entrega a domicílio" Value="5" />
                                                <asp:ListItem style="width: 100%;" Text="Operação não presencial, outros" Value="6" />
                                            </asp:DropDownList>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            
        
        
        <!--/////////////////////////////////////////////////// 2 Container dados Principais -  /////////////////////////////////////////////////////////////////////////////////////////////-->
        <div class="container-fluid" style="padding: 0px; margin: 0px; width: 100%; height: 100%">
            <div class="row" style="width: 100%; height: 50px"></div>

           
            <div class="row" style="width: 100%; height: 100%; padding: 0px; margin: 0px; background-color: transparent">

               

                   <div class="row" style="width:100%;height:100%;color: #177CC0; padding-left: 20px; padding-top: 0px; font-family: Arial; font-size: 20px; font-weight: bold;margin-left:0px">

                        <div id="i_modelo_referencia_on" name="i_modelo_referencia_on" class="col" align="left" style="display:none;visibility:hidden; font-size:20px;color:red;margin-right:20px;border-bottom:none;cursor:pointer" onclick="mostra_div_informacao('div_modelo_referencia','i_modelo_referencia_on','i_modelo_referencia_off',0)"><span style="color: #177CC0;font-family: Arial; font-size: 20px; font-weight: bold;">NF modelo 1/1A referenciada</span>&nbsp;&nbsp;<i class="fa fa-toggle-on"></i></div>
                         <div id="i_modelo_referencia_off" name="i_modelo_referencia_off" class="col" align="left" style="display:block;visibility:visible; font-size:20px;color:red;margin-right:20px;border-bottom:solid;border-width:1px;border-color:#767676;cursor:pointer" onclick="mostra_div_informacao('div_modelo_referencia','i_modelo_referencia_on','i_modelo_referencia_off',1)"><span style="color: #177CC0;font-family: Arial; font-size: 20px; font-weight: bold;">NF modelo 1/1A referenciada</span>&nbsp;&nbsp;<i class="fa fa-toggle-off"></i></div>
             
                    </div>

                     <div class="row" style="width:100%;height:20px"></div>


                <div id="div_modelo_referencia" name="div_modelo_referencia" style="display:none;visibility: hidden;width:100%;height:100%;background-color:transparent;margin-left:20px;margin-right:20px;border:solid;border-color:#177CC0;border-width:1px;border-radius:10px;padding: 0px 20px 20px 20px;">
                        
                 <div class="row" style="width:100%;padding:0px;margin:0px;background-color:transparent;height:100%;padding:0px;margin:0px">

                        <!--/////////////////////////////////////////////////// LINHA LADO DIREITO - CHAVE DE ACESSO/ UF do emitente/ ANO E MES DA NF-e  /////////////////////////////////////////////////////////////////////////////////////////////-->
                        <div class="col-xl-6" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

                            <div class="row" style="width: 100%; padding: 0px; margin: 0px; background-color: transparent; height: 100%; padding: 0px; margin: 0px">
                                <div class="col-md-8" style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">

                                    <div class="row">
                                        <div class="col" style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                            Chave de Acesso da NF-e &nbsp &nbsp <img alt="" src="../Imagens/ihelp.png"  style="width: 20px; height: 21px; cursor:pointer" onclick="anima_informacao(1,'ChaveAcessoNFE')" />
                                        </div>
                                    </div>

                                    <div class="row" style="padding: 0px; margin: 0px">
                                        <div class="col" style="padding: 0px; margin: 0px">
                                            <asp:TextBox ID="cs_chave_de_acesso" runat="server" CssClass="layouttexto"
                                                Style="width: 90%; padding: 0px; margin: 0px"
                                                onBlur="SetTextIn(this,0);SetDiv('div_modelo_referencia',0)" onFocus="SetTextIn(this,1);SetDiv('div_modelo_referencia',1)" >
                                            </asp:TextBox>

                                        </div>
                                    </div>
                                </div>

                                <div class="col-md-4"
                                    style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">


                                    <div class="row">
                                        <div class="col"
                                            style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                            UF do emitente
                                        </div>
                                    </div>

                                    <div class="row" style="padding: 0px; margin: 0px">
                                        <div class="col" style="padding: 0px; margin: 0px">
                                            <asp:TextBox ID="cs_uf_emitente_" runat="server" CssClass="layouttexto"
                                                Style="width: 150px; padding: 0px; margin: 0px"
                                                onBlur="SetTextIn(this,0);SetDiv('div_modelo_referencia',0)" onFocus="SetTextIn(this,1);SetDiv('div_modelo_referencia',1)">

                                            </asp:TextBox>
                                        </div>
                                    </div>

                                </div>

                            </div>
                        </div>

                        <div class="col-xl-6" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

                            <div class="row" style="width: 100%; padding: 0px; margin: 0px; background-color: transparent; height: 100%; padding: 0px; margin: 0px">
                                <div class="col-md-6" style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">

                                    <div class="row">
                                        <div class="col" style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                            Ano e Mês de emissão
                                        </div>
                                    </div>

                                    <div class="row" style="padding: 0px; margin: 0px">
                                        <div class="col" style="padding: 0px; margin: 0px">
                                            <asp:TextBox ID="TextBox3" runat="server" CssClass="layouttexto"
                                                Style="width: 150px; padding: 0px; margin: 0px"
                                                onBlur="SetTextIn(this,0);SetDiv('div_modelo_referencia',0)" onFocus="SetTextIn(this,1);SetDiv('div_modelo_referencia',1)">
                                            </asp:TextBox>

                                        </div>
                                    </div>
                                </div>

                                <div class="col-md-6"
                                    style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">


                                    <div class="row">
                                        <div class="col"
                                            style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                            CNPJ do emitente
                                        </div>
                                    </div>

                                    <div class="row" style="padding: 0px; margin: 0px">
                                        <div class="col" style="padding: 0px; margin: 0px">
                                            <asp:TextBox ID="TextBox4" runat="server" CssClass="layouttexto"
                                                Style="width: 50%; padding: 0px; margin: 0px"
                                                onBlur="SetTextIn(this,0);SetDiv('div_modelo_referencia',0)" onFocus="SetTextIn(this,1);SetDiv('div_modelo_referencia',1)">

                                            </asp:TextBox>
                                        </div>
                                    </div>

                                </div>

                            </div>
                        </div>
                    </div>

                    <!--///////////////////// 2 Container - Modelo do Documento / /////////////////////////////////////////////////////////////////////////////////////////////-->
                    <div class="row" style="height: 30px"></div>
                    <div class="row">
                        <div class="col-xl-4" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px; padding-left: 10px">

                            <div class="row" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

                                

                                <div class="col-md-6" style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-left: 15px; padding-top: 10px">
                                    <div class="row">
                                        <div class="col" style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                            Modelo do Documento
                                        </div>
                                    </div>
                                    <div class="row" style="padding: 0px; margin: 0px">
                                        <div class="col" style="padding: 0px; margin: 0px">
                                            <asp:TextBox ID="cs_numero_modelo_fiscal_dados_principais" runat="server" CssClass="layouttexto"
                                                Style="width: 150px;" onBlur="SetTextIn(this,0);SetDiv('div_modelo_referencia',0)" onFocus="SetTextIn(this,1);SetDiv('div_modelo_referencia',1)">
                                            </asp:TextBox>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6" style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-left: 15px; padding-top: 10px">
                                    <div class="row">
                                        <div class="col" style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                            Série 
                                        </div>
                                    </div>
                                    <div class="row" style="padding: 0px; margin: 0px">
                                        <div class="col" style="padding: 0px; margin: 0px">
                                            <asp:TextBox ID="cs_serie_documento_fiscal_dados_principais" runat="server" CssClass="layouttexto"
                                                Style="width: 50px;" onBlur="SetTextIn(this,0);SetDiv('div_modelo_referencia',0)" onFocus="SetTextIn(this,1);SetDiv('div_modelo_referencia',1)">
                                            </asp:TextBox>
                                        </div>
                                    </div>
                                </div>

                            </div>
                        </div>
                        <!--/////////////////////////////////////////////////// 2 Container - 2 LINHA - LADO DIREITO - Serie Do Documento Fiscal - Número do Documento Fiscal /////////////////////////////////////////////////////////////////////////////////////////////-->
                        <div class="col-xl-8" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px; padding-left: 10px">

                            <div class="row" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

                                

                                <div class="col-auto" style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-left: 15px; padding-top: 10px">
                                    <div class="row">
                                        <div class="col" style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                            Número do Documento

                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col">
                                            <asp:TextBox ID="cs_numero_documento_fiscal_dados_principais" runat="server" CssClass="layouttexto" Style="width: 120px;" onBlur="SetTextIn(this,0);SetDiv('div_modelo_referencia',0)" onFocus="SetTextIn(this,1);SetDiv('div_modelo_referencia',1)"></asp:TextBox>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        </div>
                        
                    
                </div>
                 </div>
           </div>
                  <!--/////////////////////////////////////////////////// 3 Container dados Principais - CNPJ do Emitente - CPF do Emitente - /////////////////////////////////////////////////////////////////////////////////////////////-->
 <div class="container-fluid" style="padding: 0px; margin: 0px; width: 100%; height: 100%">
    <div class="row" style="width: 100%; height: 50px"></div>

   
    <div class="row" style="width: 100%; height: 100%; padding: 0px; margin: 0px; background-color: transparent">

        

            <div class="row" style="width:100%;height:100%;color: #177CC0; padding-left: 20px; padding-top: 0px; font-family: Arial; font-size: 20px; font-weight: bold;margin-left:0px">
     
                <div id="i_produtor_rural_on" name="i_produtor_rural_on" class="col" align="left" style="display:none;visibility:hidden; font-size:20px;color:red;margin-right:20px;border-bottom:none;cursor:pointer" onclick="mostra_div_informacao('div_produtor_rural','i_produtor_rural_on','i_produtor_rural_off',0)"><span style="color: #177CC0;font-family: Arial; font-size: 20px; font-weight: bold;">NF de produtor rural referenciada</span>&nbsp;&nbsp;<i class="fa fa-toggle-on"></i></div>
                <div id="i_produtor_rural_off" name="i_produtor_rural_off" class="col" align="left" style="display:block;visibility:visible; font-size:20px;color:red;margin-right:20px;border-bottom:solid;border-color:#767676;border-width:1px;cursor:pointer" onclick="mostra_div_informacao('div_produtor_rural','i_produtor_rural_on','i_produtor_rural_off',1)"><span style="color: #177CC0;font-family: Arial; font-size: 20px; font-weight: bold;">NF de produtor rural referenciada</span>&nbsp;&nbsp;<i class="fa fa-toggle-off"></i></div>
     
     
        </div>

 <div class="row" style="width:100%;height:20px"></div>

        <div id="div_produtor_rural" name="div_produtor_rural" style="display:none;visibility: hidden;width:100%;height:100%;background-color:transparent;margin-left:20px;margin-right:20px;border:solid;border-color:#177CC0;border-width:1px;border-radius:10px;padding: 0px 20px 20px 20px;">

             <div class="row" style="width:100%;padding:0px;margin:0px;background-color:transparent;height:100%;padding:0px;margin:0px">
                <!--/////////////////////////////////////////////////// 3 Container - 1 LINHA  - LINHA LADO ESQUERDO - CHAVE DE ACESSO/ UF do emitente/ ANO E MES DA NF-e  /////////////////////////////////////////////////////////////////////////////////////////////-->
                <div class="col-xl-6" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

                    <div class="row" style="width: 100%; padding: 0px; margin: 0px; background-color: transparent; height: 100%; padding: 0px; margin: 0px">
                        <div class="col-md-6" style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">

                            <div class="row">
                                <div class="col" style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                    CNPJ do Emitente
                                </div>
                            </div>

                            <div class="row" style="padding: 0px; margin: 0px">
                                <div class="col" style="padding: 0px; margin: 0px">
                                    <asp:TextBox ID="TextBox5" runat="server" CssClass="layouttexto"
                                        Style="width:300px; padding: 0px; margin: 0px"
                                        onBlur="SetTextIn(this,0);SetDiv('div_produtor_rural',0)" onFocus="SetTextIn(this,1);SetDiv('div_produtor_rural',1)">
                                    </asp:TextBox>

                                </div>
                            </div>
                        </div>

                        <div class="col-md-6"
                            style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">


                            <div class="row">
                                <div class="col"
                                    style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                    CPF do Emitente
                                </div>
                            </div>

                            <div class="row" style="padding: 0px; margin: 0px">
                                <div class="col" style="padding: 0px; margin: 0px">
                                    <asp:TextBox ID="TextBox6" runat="server" CssClass="layouttexto"
                                        Style="width: 200px; padding: 0px; margin: 0px"
                                        onBlur="SetTextIn(this,0);SetDiv('div_produtor_rural',0)" onFocus="SetTextIn(this,1);SetDiv('div_produtor_rural',1)">

                                    </asp:TextBox>
                                </div>
                            </div>

                        </div>

                    </div>
                </div>
<!--///////////////////////////////////////////////////3 Container - 1 LINHA - LINHA LADO DIREITO - Código da UF/ Ano e Mês da Emissão  /////////////////////////////////////////////////////////////////////////////////////////////-->
                <div class="col-xl-6" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

                    <div class="row" style="width: 100%; padding: 0px; margin: 0px; background-color: transparent; height: 100%; padding: 0px; margin: 0px">
                        <div class="col-md-6" style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">

                            <div class="row">
                                <div class="col" style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                    Código da UF
                                </div>
                            </div>

                            <div class="row" style="padding: 0px; margin: 0px">
                                <div class="col" style="padding: 0px; margin: 0px">
                                    <asp:TextBox ID="TextBox7" runat="server" CssClass="layouttexto"
                                        Style="width: 100px; padding: 0px; margin: 0px"
                                        onBlur="SetTextIn(this,0);SetDiv('div_produtor_rural',0)" onFocus="SetTextIn(this,1);SetDiv('div_produtor_rural',1)">
                                    </asp:TextBox>

                                </div>
                            </div>
                        </div>

                        <div class="col-md-6"
                            style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">


                            <div class="row">
                                <div class="col"
                                    style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                    Ano e Mês da Emissão
                                </div>
                            </div>

                            <div class="row" style="padding: 0px; margin: 0px">
                                <div class="col" style="padding: 0px; margin: 0px">
                                    <asp:TextBox ID="TextBox8" runat="server" CssClass="layouttexto"
                                        Style="width: 30%; padding: 0px; margin: 0px"
                                        onBlur="SetTextIn(this,0);SetDiv('div_produtor_rural',0)" onFocus="SetTextIn(this,1);SetDiv('div_produtor_rural',1)">

                                    </asp:TextBox>
                                </div>
                            </div>

                        </div>

                    </div>
                </div>
            </div>

            <!--///////////////////// 3 Container -   2 linha LADO ESQUERDO - Modelo do Documento / CNPJ do emitente  /////////////////////////////////////////////////////////////////////////////////////////////-->
            <div class="row" style="height: 30px"></div>
            <div class="row">
                <div class="col-xl-6" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px; padding-left: 10px">

                    <div class="row" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

                        <div class="col-md-6" style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-left: 15px; padding-top: 10px">
                            <div class="row">
                                <div class="col" style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                    Número do Documento 
                                </div>
                            </div>
                            <div class="row" style="padding: 0px; margin: 0px;">
                                <div class="col" style="padding: 0px; margin: 0px; background-color: transparent">
                                    <asp:TextBox ID="TextBox9" runat="server" CssClass="layouttexto"
                                        Style="width: 80%;" onBlur="SetTextIn(this,0);SetDiv('div_produtor_rural',0)" onFocus="SetTextIn(this,1);SetDiv('div_produtor_rural',1)">
                                    </asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <div class="col-md-6" style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-left: 15px; padding-top: 10px">
                            <div class="row">
                                <div class="col" style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                    Série
                                </div>
                            </div>
                            <div class="row" style="padding: 0px; margin: 0px">
                                <div class="col" style="padding: 0px; margin: 0px">
                                    <asp:TextBox ID="TextBox10" runat="server" CssClass="layouttexto"
                                        Style="width: 100px;" onBlur="SetTextIn(this,0);SetDiv('div_produtor_rural',0)" onFocus="SetTextIn(this,1);SetDiv('div_produtor_rural',1)">
                                    </asp:TextBox>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!--/////////////////////////////////////////////////// 3 Container - 2 LINHA - LADO DIREITO - Serie Do Documento Fiscal - Número do Documento Fiscal /////////////////////////////////////////////////////////////////////////////////////////////-->
                <div class="col-xl-6" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px; padding-left: 10px">

                    <div class="row" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

                        <div class="col-md-6" style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-left: 15px; padding-top: 10px">
                            <div class="row">
                                <div class="col" style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                    IE do Emitente
                                </div>
                            </div>
                            <div class="row" style="padding: 0px; margin: 0px">
                                <div class="col" style="padding: 0px; margin: 0px">
                                    <asp:TextBox ID="TextBox11" runat="server" CssClass="layouttexto"
                                        Style="width: 60%;" onBlur="SetTextIn(this,0);SetDiv('div_produtor_rural',0)" onFocus="SetTextIn(this,1);SetDiv('div_produtor_rural',1)">
                                    </asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <div class="col-md-6" style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-left: 15px; padding-top: 10px">
                            <div class="row">
                                <div class="col" style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                    Modelo do Documento

                                </div>
                            </div>
                            <div class="row">
                                <div class="col">
                                    <asp:DropDownList ID="DropDownList1" onBlur="SetTextIn(this,0);SetDiv('div_produtor_rural',0)" onFocus="SetTextIn(this,1);SetDiv('div_produtor_rural',1)" CssClass="layouttexto" runat="server">
                                        <asp:ListItem style="width: 100%;" Text="NF de Produtor" Value="1" />
                                        <asp:ListItem style="width: 100%;" Text="NF" Value="2" />
                                    </asp:DropDownList>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                    <!--/////////////////////////////////////////////////// 3 Container - 3 LINHA - CHAVE DE ACESSO /////////////////////////////////////////////////////////////////////////////////////////////-->
                <div class="row" style="height: 30px"></div>
                <div class="row">
                    <div class="col-auto" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px; padding-left: 10px">

                        <div class="row" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

                            <div class="col" style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-left: 30px; padding-top: 10px">
                                <div class="row">
                                    <div class="col" style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                        Chave de Acesso do CT-e
                                    </div>
                                </div>
                                <div class="row" style="padding: 0px; margin: 0px;">
                                    <div class="col" style="padding: 0px; margin: 0px; background-color: transparent">
                                        <asp:TextBox ID="TextBox1" runat="server" CssClass="layouttexto"
                                            Style="width: 600px;" onBlur="SetTextIn(this,0);SetDiv('div_produtor_rural',0)" onFocus="SetTextIn(this,1);SetDiv('div_produtor_rural',1)">
                                        </asp:TextBox>
                                    </div>
                                </div>
                            </div>


                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
                <!--/////////////////////////////////////////////////// 4 Container -  /////////////////////////////////////////////////////////////////////////////////////////////-->


                <div class="container-fluid" style="padding: 0px; margin: 0px; width: 100%; height: 100%">
                    <div class="row" style="width: 100%; height: 50px"></div>
                    
                    <div class="row" style="width: 100%; height: 100%; padding: 0px; margin: 0px; background-color: transparent">

                        <div class="row" style="width:100%;height:100%;color: #177CC0; padding-left: 20px; padding-top: 0px; font-family: Arial; font-size: 20px; font-weight: bold;margin-left:0px">
    
                             <div id="i_cupom_fiscal_on" name="i_cupom_fiscal_on" class="col" align="left" style="display:none;visibility:hidden; font-size:20px;color:red;margin-right:20px;border-bottom:none;cursor:pointer" onclick="mostra_div_informacao('div_cupom_fiscal','i_cupom_fiscal_on','i_cupom_fiscal_off',0)"><span style="color: #177CC0;font-family: Arial; font-size: 20px; font-weight: bold;">Cupom Fiscal referenciado</span>&nbsp;&nbsp;<i class="fa fa-toggle-on"></i> </div> 
                             <div id="i_cupom_fiscal_off" name="i_cupom_fiscal_off" class="col" align="left" style="display:block;visibility:visible; font-size:20px;color:red;margin-right:20px;border-bottom:solid;border-color:#767676;border-width:1px;cursor:pointer" onclick="mostra_div_informacao('div_cupom_fiscal','i_cupom_fiscal_on','i_cupom_fiscal_off',1)"><span style="color: #177CC0;font-family: Arial; font-size: 20px; font-weight: bold;">Cupom Fiscal referenciado</span>&nbsp;&nbsp;<i class="fa fa-toggle-off"></i>   </div> 
                              
    
                        </div>

                <div class="row" style="width:100%;height:20px"></div>

                        <div id="div_cupom_fiscal" name="div_cupom_fiscal" style="display:none;visibility: hidden;width:100%;height:100%;background-color:transparent;margin-left:20px;margin-right:20px;border:solid;border-color:#177CC0;border-width:1px;border-radius:10px;padding: 0px 20px 20px 20px;">

                <div class="row" style="width:100%;padding:0px;margin:0px;background-color:transparent;height:100%;padding:0px;margin:0px">
                                <!--/////////////////////////////////////////////////// 4 Container - LINHA LADO ESQUERDO modelo Documento - Numero de Orderm Sequencial /////////////////////////////////////////////////////////////////////////////////////////////-->
                                <div class="col-xl-5"
                                    style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

                                    <div class="row"
                                        style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

                                        <div class="col-auto"
                                            style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">


                                            <div class="row">
                                                <div class="col"
                                                    style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                                    Modelo de Documento  
                                                </div>
                                            </div>

                                            <div class="row">
                                                <div class="col">
                                                    <asp:DropDownList ID="DropDownList2" onBlur="SetTextIn(this,0);SetDiv('div_cupom_fiscal',0)" onFocus="SetTextIn(this,1);SetDiv('div_cupom_fiscal',1)" CssClass="layouttexto" runat="server">
                                                        <asp:ListItem style="width: 100%;" Text="Cupom Fiscal emitido por máquina registradora" Value="1" />
                                                        <asp:ListItem style="width: 100%;" Text="Cupom Fiscal PDV" Value="2" />
                                                        <asp:ListItem style="width: 100%;" Text="Cupom FIscal(emitido por ECF)" Value="3" />
                                                    </asp:DropDownList>
                                                </div>
                                            </div>

                                        </div>


                                        

                                    </div>

                                </div>

                                <!--/////////////////////////////////////////////////// 4 Container - LINHA LADO DIREITO Número do Contador de Ordem de Operação /////////////////////////////////////////////////////////////////////////////////////////////-->
                                <div class="col-xl-7"
                                    style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

                                    <div class="row"
                                        style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

                                        <div class="col-md-6"
                                            style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">


                                            <div class="row">
                                                <div class="col"
                                                    style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                                   Número Contador de Ordem de Operação &nbsp &nbsp<img alt="" src="../Imagens/ihelp.png"  style="width: 20px; height: 20px;  cursor:pointer" onclick="anima_informacao(1,'coo')" />
                                                </div>
                                            </div>

                                            <div class="row" style="padding: 0px; margin: 0px">
                                                <div class="col" style="padding: 0px; margin: 0px">
                                                    <asp:TextBox ID="cs_teste" runat="server" CssClass="layouttexto"
                                                        Style="width: 150px; padding: 0px; margin: 0px"
                                                         onBlur="SetTextIn(this,0);SetDiv('div_cupom_fiscal',0)" onFocus="SetTextIn(this,1);SetDiv('div_cupom_fiscal',1)">

                                                    </asp:TextBox>
                                                </div>
                                            </div>

                                        </div>


                                        <div class=" col-md-6"
                                            style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">

                                            <div class="row">
                                                <div class="col"
                                                    style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                                    Número de Ordem Sequencial do ECF&nbsp &nbsp<img alt="" src="../Imagens/ihelp.png"  style="width: 20px; height: 20px;  cursor:pointer" onclick="anima_informacao(1,'numeroecf')" />
                                                </div>
                                            </div>
                                            <div class="row" style="padding: 0px; margin: 0px">
                                                <div class="col" style="padding: 0px; margin: 0px">
                                                    <asp:TextBox ID="cs_test" runat="server" CssClass="layouttexto"
                                                        Style="width: 150px;" onBlur="SetTextIn(this,0);SetDiv('div_cupom_fiscal',0)" onFocus="SetTextIn(this,1);SetDiv('div_cupom_fiscal',1)">
                                                    </asp:TextBox>
                                                </div>
                                            </div>
                                        </div>


                                    </div>

                                </div>
                            </div>

                        </div>

                    </div>

                </div>
            </div>
        
        </div>
  </div>
</asp:Panel>

    <!--/////////////////////////////////////////////////// Div com os  DADOS DESTINATARIO / Principais da Nota /////////////////////////////////////////////////////////////////////////////////////////////-->
    
    <asp:Panel  ID="Panel3"  runat="server" BackColor="Transparent" Height="100%" Visible="true"  >
	<div class="container-fluid" id="div_dados_destinatario" name="div_dados_destinatario" style="padding:0px;margin:0px;  width:100%;height:100%; display:none;">


    <div class="row" style="width:100%;height:20px"></div>


        <div class="row" style="width: 100%; height: 100%;  padding-left:20px; padding-top: 0px; margin-left: 0px; visibility:visible">

            <div id="i_dados_destinatario2_on" name="i_dados_destinatario2_on" class="col" align="left" style="display: block; visibility: visible; font-size: 20px; color: red; margin-right: 20px; border-bottom: none; cursor: pointer" onclick="mostra_div_informacao('div_dados_destinatario2','i_dados_destinatario2_on','i_dados_destinatario2_off',0)"><span style="color: #177CC0; font-family: Arial; font-size: 20px; font-weight: bold;">Dados do Destinatário</span>&nbsp;&nbsp;<i class="fa fa-toggle-on"></i></div>
            <div id="i_dados_destinatario2_off" name="i_dados_destinatario2_off" class="col" align="left" style="display: none; visibility: hidden; font-size: 20px; color: red; margin-right: 20px; border-bottom: solid; border-width: 1px; border-color: #767676; cursor: pointer" onclick="mostra_div_informacao('div_dados_destinatario2','i_dados_destinatario2_on','i_dados_destinatario2_off',1)"><span style="color: #177CC0; font-family: Arial; font-size: 20px; font-weight: bold;">Dados do Destinatário</span>&nbsp;&nbsp;<i class="fa fa-toggle-off"></i></div>

        </div>

        <div class="row"  style="width: 100%; height: 2px"></div>





        <div id="div_dados_destinatario2" name="div_dados_destinatario2" style="visibility:visible;width:98%;height:100%;background-color:transparent;margin-left:20px;margin-right:20px;border:solid;border-color:#177CC0;border-width:1px;border-radius:10px;padding: 0px 20px 20px 20px;"    >
           

       

           
            

                <div class="row"
                        style="width:100%;padding:0px;margin:0px;background-color:transparent;height:100%;padding:0px;margin:0px">

                      
                       <!--/////////////////////////////////////////////////// LINHA LADO ESQUERDO CPF/CNPJ/RAZAO SOCIAL /////////////////////////////////////////////////////////////////////////////////////////////-->
                        <div class="col-xl-7"
                            style="width:100%;height:100%;background-color:transparent;padding:0px;margin:0px">

                            <div class="row"
                                style="width:100%;height:100%;background-color:transparent;padding:0px;margin:0px">

                                <div class="col-md-4"
                                    style="width:100%;height:100%;background-color:transparent;padding:10px;">


                                    <div class="row">
                                        <div class="col"
                                            style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                            CNPJ ou CPF
                                        </div>
                                    </div>

                                    <div class="row" style="padding:0px;margin:0px">
                                        <div class="col" style="padding:0px;margin:0px">
                                            <asp:TextBox ID="cs_cnpj_cpf_manual" runat="server" CssClass="layouttexto"
                                                style="width: 150px;padding:0px;margin:0px"
                                                placeholder="00.000.000/0000-00" onBlur="SetTextIn(this,0);SetDiv('div_dados_destinatario2',0)" onFocus="SetTextIn(this,1);SetDiv('div_dados_destinatario2',1)" >

                                            </asp:TextBox>
                                        </div>
                                    </div>

                                </div>


                                <div class=" col-md-8"
                                    style="width:100%;height:100%;background-color:transparent; padding:10px;">

                                    <div class="row">
                                        <div class="col"
                                            style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                            Razão Social ou Nome do Destinatário
                                        </div>
                                    </div>
                                    <div class="row" style="padding:0px;margin:0px">
                                        <div class="col" style="padding:0px;margin:0px">
                                            <asp:TextBox ID="cs_razaosocial_manual" runat="server" CssClass="layouttexto"
                                                style="width: 93%;" onBlur="SetTextIn(this,0);SetDiv('div_dados_destinatario2',0)" onFocus="SetTextIn(this,1);SetDiv('div_dados_destinatario2',1)" >
                                            </asp:TextBox>
                                        </div>
                                    </div>
                                </div>


                            </div>
                        
                        </div>

                    <!--/////////////////////////////////////////////////// LINHA LADO DIREITO IDENTIFICAÇÃO DO DESTINATRIO /////////////////////////////////////////////////////////////////////////////////////////////-->
                    <div class="col-xl-5" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px; padding-left: 10px; padding-top: 10px">
                        <div class="row">
                            <div class="col"
                                style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                Identificação do destinatário &nbsp &nbsp <img alt="" src="../Imagens/ihelp.png"  style="width: 20px; height: 21px; cursor:pointer" onclick="anima_informacao(1,'identificacaodestinatario')" />
                            </div>
                        </div>
                        <div class="row" style="padding: 0px; margin: 0px">
                            <div class="col" style="padding: 0px; margin: 0px; background-color: transparent">
                                <asp:TextBox ID="cs_identificacao_destinatrio" runat="server" CssClass="layouttexto"
                                    Style="width: 100%;" onBlur="SetTextIn(this,0);SetDiv('div_dados_destinatario2',0)" onFocus="SetTextIn(this,1);SetDiv('div_dados_destinatario2',1)" >
                                </asp:TextBox>
                            </div>
                        </div>
                    </div>
                </div>
                </div>
            

       
        
    
    

    
     <!--/////////////////////////////////////////////////// Container2 - Endereço do Destinatário da NF-e  /////////////////////////////////////////////////////////////////////////////////////////////-->

            
     <div class="container-fluid" style="padding:0px;margin:0px;width:97%;height:100%">
           

     <div class="row" style="width:100%;height:50px"></div>
          
     <div class="row" style="width: 100%; height: 100%; display:block; padding-left:20px; padding-top: 0px; margin-left: 0px;">

         <div id="i_dados_endereco_do_destinatario_on" name="i_dados_endereco_do_destinatario_on" class="col" align="left" style="display: none; visibility: hidden; font-size: 20px; color: red; margin-right: 20px; border-bottom: none; cursor: pointer" onclick="mostra_div_informacao('div_dados_endereco_do_destinatario','i_dados_endereco_do_destinatario_on','i_dados_endereco_do_destinatario_off',0)"><span style="color: #177CC0; font-family: Arial; font-size: 20px; font-weight: bold;">Endereço do Destinatário da NF-e</span>&nbsp;&nbsp;<i class="fa fa-toggle-on"></i></div>
         <div id="i_dados_endereco_do_destinatario_off" name="i_dados_endereco_do_destinatario_off" class="col" align="left" style="display: block; visibility: visible; font-size: 20px; color: red; margin-right: 20px; border-bottom: solid; border-color: #767676; border-width: 1px; cursor: pointer" onclick="mostra_div_informacao('div_dados_endereco_do_destinatario','i_dados_endereco_do_destinatario_on','i_dados_endereco_do_destinatario_off',1)"><span style="color: #177CC0; font-family: Arial; font-size: 20px; font-weight: bold;">Endereço do Destinatário da NF-e</span>&nbsp;&nbsp;<i class="fa fa-toggle-off"></i></div>


     </div>

         <div class="row" style="width: 100%; height: 20px"></div>

         <!--/////////////////////////////////////////////////// Div com os dados Iniciais / Principais da Nota /////////////////////////////////////////////////////////////////////////////////////////////-->
         <div id="div_dados_endereco_do_destinatario" name="div_dados_endereco_do_destinatario"
            style="display:none;visibility: hidden;width:100%;height:100%;background-color:transparent;margin-left:20px;margin-right:20px;border:solid;border-color:#177CC0;border-width:1px;border-radius:10px;padding: 0px 20px 20px 20px;">


            
             <div class="row"
                 style="width:100%;padding:0px;margin:0px;background-color:transparent;height:100%;padding:0px;margin:0px">

                 <!--/////////////////////////////////////////////////// LINHA LADO DIREITO - CEP/ENDEREÇO/ NÚMERO /////////////////////////////////////////////////////////////////////////////////////////////-->
                 <div class="col-xl-7"
                     style="width:100%;height:100%;background-color:transparent;padding:0px;margin:0px">

                     <div class="row"
                         style="width:100%;height:100%;background-color:transparent;padding:0px;margin:0px">

                         <div class="col-md-4"
                             style="width:100%;height:100%;background-color:transparent;padding:10px;">


                              <div class="row">
                                        <div class="col"
                                            style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                            CEP </div>

                                    </div>

                                    <div class="input-group">
                                        <asp:TextBox ID="cs_cep_destinatario" runat="server" CssClass="layouttexto"
                                            style="width: 150px" placeholder="00000-000" onBlur="SetTextIn(this,0);SetDiv('div_dados_endereco_do_destinatario',0)" onFocus="SetTextIn(this,1);SetDiv('div_dados_endereco_do_destinatario',1)" >
                                        </asp:TextBox>
                                        <div class="input-group-append">
                                            <button class="material-symbols-outlined"><i
                                                    class="fa-solid fa-magnifying-glass"></i></button>
                                        </div>
                                    </div>

                         </div>


                         <div class=" col-md-6"
                             style="width:100%;height:100%;background-color:transparent; padding:10px;">
                             <div class="row">
                                 <div class="col"
                                     style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                     Endereço
                                 </div>
                             </div>
                             <div class="row" style="padding:0px;margin:0px">
                                 <div class="col" style="padding:0px;margin:0px">
                                     <asp:TextBox ID="cs_endereco_destinatario" runat="server" CssClass="layouttexto"
                                         style="width: 93%;" onBlur="SetTextIn(this,0);SetDiv('div_dados_endereco_do_destinatario',0)" onFocus="SetTextIn(this,1);SetDiv('div_dados_endereco_do_destinatario',1)" >
                                     </asp:TextBox>
                                 </div>
                             </div>
                         </div> 

                                <div class=" col-md-2"
                                    style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">
                                    <div class="row">
                                        <div class="col"
                                            style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                            Número
                                        </div>
                                    </div>
                                    <div class="row" style="padding: 0px; margin: 0px">
                                        <div class="col" style="padding: 0px; margin: 0px">
                                            <asp:TextBox ID="cs_numero_destinatario" runat="server" CssClass="layouttexto"
                                                Style="width: 80px;" onBlur="SetTextIn(this,0);SetDiv('div_dados_endereco_do_destinatario',0)" onFocus="SetTextIn(this,1);SetDiv('div_dados_endereco_do_destinatario',1)" >
                                            </asp:TextBox>
                                        </div>
                                    </div>
                                </div>

                     </div>

                 </div>

                 <!--/////////////////////////////////////////////////// LINHA LADO DIREITO COMPLEMENTO /////////////////////////////////////////////////////////////////////////////////////////////-->
                 <div class="col-xl-5" style="width:100%;height:100%;background-color:transparent;padding:0px;margin:0px; padding-left:10px; padding-top:10px">
                     <div class="row">
                 <div class="col"
                    style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                     Complemento
                         </div>
                     </div>
                     <div class="row" style="padding:0px;margin:0px">
                         <div class="col" style="padding:0px;margin:0px; background-color:transparent">
                             <asp:TextBox ID="cs_complemento_destinatario" runat="server" CssClass="layouttexto"
                                 style="width: 100%;" onBlur="SetTextIn(this,0);SetDiv('div_dados_endereco_do_destinatario',0)" onFocus="SetTextIn(this,1);SetDiv('div_dados_endereco_do_destinatario',1)" >
                             </asp:TextBox>
                         </div>
                     </div>
                  </div>   
                 </div>
                 
                 <!--/////////////////////////////////////////////////// Div com os dados Iniciais / BAIRRO/ CODIGO DO MUNICIPIO/ NOME DO MUNICIPIO  /////////////////////////////////////////////////////////////////////////////////////////////-->
             <div class="row" style="height: 30px"></div>
             <div class="row">
                 <div class="col-xl-3"
                     style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px; padding-left: 10px">

                     <div class="row"
                         style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

                         <div class="col" style="width: 100%; height: 100%; background-color: transparent; padding: 10px; padding-top:20px">
                             <div class="row">
                                 <div class="col"
                                     style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                     Bairro
                                 </div>
                             </div>
                             <div class="row" style="padding: 0px; margin: 0px">
                                 <div class="col" style="padding: 0px; margin: 0px; background-color: transparent">
                                     <asp:TextBox ID="cs_bairro_destinatario" runat="server" CssClass="layouttexto"
                                         Style="width: 260px;" onBlur="SetTextIn(this,0);SetDiv('div_dados_endereco_do_destinatario',0)" onFocus="SetTextIn(this,1);SetDiv('div_dados_endereco_do_destinatario',1)" >
                                     </asp:TextBox> 
                                 </div>
                             </div>
                         </div>
                         
                     </div>
                 </div>
                  <!--/////////////////////////////////////////////////// LINHA LADO DIREITO NOME PAIS /////////////////////////////////////////////////////////////////////////////////////////////-->
                 <div class="col-xl-9" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px; padding-left: 10px; padding-top: 10px; padding-left: 20px">
                     <div class="row">
                         <div class="col-md-4" style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-top: 10px; padding-left:20px;">
                             <div class="row">
                                 <div class="col"
                                     style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                     Código do Município &nbsp &nbsp <img alt="" src="../Imagens/ihelp.png"  style="width: 20px; height: 21px; cursor:pointer" onclick="anima_informacao(1,'codigomunicipio')" />
                                 </div>
                             </div>
                             <div class="row">
                                 <div class="col">
                                     <asp:TextBox ID="cs_codMunicipio" runat="server" CssClass="layouttexto"
                                         Style="width: 170px;" onBlur="SetTextIn(this,0);SetDiv('div_dados_endereco_do_destinatario',0)" onFocus="SetTextIn(this,1);SetDiv('div_dados_endereco_do_destinatario',1)" ></asp:TextBox>
                                     <button class="material-symbols-outlined">
                                         <i
                                             class="fa-solid fa-magnifying-glass"></i>
                                     </button>
                                 </div>
                             </div>
                         </div>

                         <div class="col-md-6" style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">
                             <div class="row">
                                 <div class="col"
                                     style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                     Nome do Município
                                 </div>
                             </div>
                             <div class="row" style="padding: 0px; margin: 0px">
                                 <div class="col" style="padding: 0px; margin: 0px; background-color: transparent">
                                     <asp:TextBox ID="cs_nomemunicipio" runat="server" CssClass="layouttexto"
                                         Style="width: 80%;" onBlur="SetTextIn(this,0);SetDiv('div_dados_endereco_do_destinatario',0)" onFocus="SetTextIn(this,1);SetDiv('div_dados_endereco_do_destinatario',1)" >
                                     </asp:TextBox>
                                 </div>
                             </div>
                         </div>

                         <div class="col-md-2" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px; padding-left: 10px; padding-top: 10px; padding-left:20px">
                     <div class="row">
                         <div class="col"
                             style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                             UF 
                         </div>
                     </div>
                     <div class="row">
                                <div class="col">
                                    <asp:DropDownList ID="cs_uf" onBlur="SetTextIn(this,0);SetDiv('div_dados_endereco_do_destinatario',0)" onFocus="SetTextIn(this,1);SetDiv('div_dados_endereco_do_destinatario',1)"  CssClass="layouttexto" runat="server">
                        <asp:ListItem style="width: 100%;" Text="SP" Value="1" />
                        <asp:ListItem style="width: 100%;" Text="AC" Value="2" />
                        <asp:ListItem style="width: 100%;" Text="AL" Value="3" />
                        <asp:ListItem style="width: 100%;" Text="AP" Value="4" />
                        <asp:ListItem style="width: 100%;" Text="AM" Value="5" />
                        <asp:ListItem style="width: 100%;" Text="BA" Value="6" />
                        <asp:ListItem style="width: 100%;" Text="CE" Value="7" />
                        <asp:ListItem style="width: 100%;" Text="DF" Value="8" />
                        <asp:ListItem style="width: 100%;" Text="ES" Value="9" />
                        <asp:ListItem style="width: 100%;" Text="GO" Value="10" />
                        <asp:ListItem style="width: 100%;" Text="MA" Value="11" />
                        <asp:ListItem style="width: 100%;" Text="MT" Value="12" />
                        <asp:ListItem style="width: 100%;" Text="MS" Value="13" />
                        <asp:ListItem style="width: 100%;" Text="MG" Value="14" />
                        <asp:ListItem style="width: 100%;" Text="PA" Value="15" />
                        <asp:ListItem style="width: 100%;" Text="PB" Value="16" />
                        <asp:ListItem style="width: 100%;" Text="PR" Value="17" />
                        <asp:ListItem style="width: 100%;" Text="PE" Value="18" />
                        <asp:ListItem style="width: 100%;" Text="PI" Value="19" />
                        <asp:ListItem style="width: 100%;" Text="RJ" Value="20" />
                        <asp:ListItem style="width: 100%;" Text="RN" Value="21" />
                        <asp:ListItem style="width: 100%;" Text="RS" Value="22" />
                        <asp:ListItem style="width: 100%;" Text="RO" Value="23" />
                        <asp:ListItem style="width: 100%;" Text="RR" Value="24" />
                        <asp:ListItem style="width: 100%;" Text="SC" Value="25" />
                        <asp:ListItem style="width: 100%;" Text="SE" Value="26" />
                        <asp:ListItem style="width: 100%;" Text="TO" Value="27" />
                        </asp:DropDownList>
                                </div>
                            </div>
                </div>
                     </div>

                 </div>
             </div>

              <!--/////////////////////////////////////////////////// Penúltima linha  /////////////////////////////////////////////////////////////////////////////////////////////-->
             <div class="row" style="height: 30px"></div>
             <div class="row">
                 <div class="col-xl-4"
                     style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px; padding-left: 10px">

                     <div class="row"
                         style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

                         <div class="col-md-6" style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">
                             <div class="row">
                                 <div class="col"
                                     style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                     Código do País 
                                 </div>
                             </div>
                             <div class="row">
                                 <div class="col">
                                     <asp:TextBox ID="codigo_pais_destinatario" runat="server" CssClass="layouttexto" Style="width: 100px;" onBlur="SetTextIn(this,0);SetDiv('div_dados_endereco_do_destinatario',0)" onFocus="SetTextIn(this,1);SetDiv('div_dados_endereco_do_destinatario',1)" ></asp:TextBox>
                                 </div>
                             </div>
                         </div>
                         <div class="col-md-6" style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-left: 10px; padding-top: 10px">
                             <div class="row">
                                 <div class="col"
                                     style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                     Nome do País
                                 </div>
                             </div>
                             <div class="row" style="padding: 0px; margin: 0px">
                                 <div class="col" style="padding: 0px; margin: 0px; background-color: transparent">
                                     <asp:TextBox ID="cs_nome_Pais_destinatario" runat="server" CssClass="layouttexto"
                                         Style="width: 100px;" onBlur="SetTextIn(this,0);SetDiv('div_dados_endereco_do_destinatario',0)" onFocus="SetTextIn(this,1);SetDiv('div_dados_endereco_do_destinatario',1)" >
                                     </asp:TextBox>
                                 </div>
                             </div>
                         </div>
                         </div>
                     </div>
                 <!--/////////////////////////////////////////////////// Penúltima linha -LADO DIREITO /////////////////////////////////////////////////////////////////////////////////////////////-->

                         <div class="col-xl-8"
                             style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

                             <div class="row"
                                 style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

                                 <div class="col-md-3"
                                     style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">


                                     <div class="row">
                                         <div class="col"
                                             style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                             Telefone
                                         </div>

                                     </div>

                                     <div class="input-group">
                                         <asp:TextBox ID="telefone_destinatario" runat="server" CssClass="layouttexto"
                                             Style="width: 166px" placeholder="00000-000" onBlur="SetTextIn(this,0);SetDiv('div_dados_endereco_do_destinatario',0)" onFocus="SetTextIn(this,1);SetDiv('div_dados_endereco_do_destinatario',1)" >
                                         </asp:TextBox>
                                         <div class="input-group-append">
                                             
                                         </div>
                                     </div>

                                 </div>


                                 <div class=" col-md-9"
                                     style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">
                                     <div class="row">
                                         <div class="col"
                                             style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                             Indicador da IE do Destinatário &nbsp &nbsp <img alt="" src="../Imagens/ihelp.png"  style="width: 20px; height: 21px; cursor:pointer" onclick="anima_informacao(1,'iedestinatario')" />

                                         </div>
                                     </div>
                                     <div class="row" style="padding: 0px; margin: 0px">
                                         <div class="col" style="padding: 0px; margin: 0px">
                                             <asp:DropDownList ID="cs_regimeTributario" onBlur="SetTextIn(this,0);SetDiv('div_dados_endereco_do_destinatario',0)" onFocus="SetTextIn(this,1);SetDiv('div_dados_endereco_do_destinatario',1)"  CssClass="layouttexto" runat="server">
                                                 <asp:ListItem style="width: 200px;" Text="Contribuente ICMS" Value="1" />
                                                 <asp:ListItem style="width: 200px;" Text="Contribuente isento de Inscrição" Value="2" />
                                                 <asp:ListItem style="width: 200px;" Text="Não Contribuinte" Value="3" />
                                             </asp:DropDownList>

                                         </div>
                                     </div>
                                 </div>
                                 </div>
                             </div>
                            </div>
                                  <!--/////////////////////////////////////////////////// PENUTILMA linha -LADO ESQUERDO /////////////////////////////////////////////////////////////////////////////////////////////-->
                                 <div class="row" style="height: 30px"></div>
                                 <div class="row">
                                     <div class="col-xl-6" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px; padding-left: 10px">

                                         <div class="row" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

                                             <div class="col-md-6" style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-left: 10px; padding-top: 10px">
                                                 <div class="row">
                                                     <div class="col" style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                                         Inscrição Estadual do Destinatário
                                                     </div>
                                                 </div>
                                                 <div class="row">
                                                     <div class="col">
                                                         <asp:TextBox ID="inscricao_estadual_destinatario" runat="server" CssClass="layouttexto" Style="width: 80%;" onBlur="SetTextIn(this,0);SetDiv('div_dados_endereco_do_destinatario',0)" onFocus="SetTextIn(this,1);SetDiv('div_dados_endereco_do_destinatario',1)" ></asp:TextBox>
                                                     </div>
                                                 </div>
                                             </div>

                                                <div class="col-md-6" style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-left: 10px; padding-top: 10px">
                                                    <div class="row">
                                                        <div class="col" style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                                            Inscrição na SUFRAMA&nbsp &nbsp <img alt="" src="../Imagens/ihelp.png"  style="width: 20px; height: 21px; cursor:pointer" onclick="anima_informacao(1,'suframa')" />
                                                        </div>
                                                    </div>
                                                    <div class="row">
                                                     <div class="col">
                                                         <asp:TextBox ID="inscricao_suframa_destinatario" runat="server" CssClass="layouttexto" Style="width: 80%;" onBlur="SetTextIn(this,0);SetDiv('div_dados_endereco_do_destinatario',0)" onFocus="SetTextIn(this,1);SetDiv('div_dados_endereco_do_destinatario',1)" ></asp:TextBox>
                                                     </div>
                                                 </div>
                                                </div>
                                         </div>

                                     </div>
                                             <!--/////////////////////////////////////////////////// PENUTILMA linha -LADO DIREITO /////////////////////////////////////////////////////////////////////////////////////////////-->
                                      <div class="col-xl-6" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px; padding-left: 10px">

                                         <div class="row" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

                                             <div class="col" style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-left: 10px; padding-top: 10px">
                                                 <div class="row">
                                                     <div class="col" style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                                         Inscrição Municipal do Tomador do Serviço &nbsp &nbsp <img alt="" src="../Imagens/ihelp.png"  style="width: 20px; height: 21px; cursor:pointer" onclick="anima_informacao(1,'tomadordoservico')" />
                                                     </div>
                                                 </div>
                                                 <div class="row">
                                                     <div class="col">
                                                         <asp:TextBox runat="server" CssClass="layouttexto" Style="width: 90%;" onBlur="SetTextIn(this,0);SetDiv('div_dados_endereco_do_destinatario',0)" onFocus="SetTextIn(this,1);SetDiv('div_dados_endereco_do_destinatario',1)" ></asp:TextBox>
                                                     </div>
                                                 </div>
                                             </div>
                                             </div>
                                          </div>
                                     </div>

                                             <!--/////////////////////////////////////////////////// ÚLTIMA linha - /////////////////////////////////////////////////////////////////////////////////////////////-->
             <div class="row" style="height: 30px"></div>
             <div class="row">
                 <div class="col-xl" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px; padding-left: 10px">
                     <div class="row" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">
                         <div class="col"
                             style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                             Email
                         </div>
                     </div>
                     <div class="row">
                         <div class="col">
                             <asp:TextBox runat="server" CssClass="layouttexto" Style="width: 400px;" onBlur="SetTextIn(this,0);SetDiv('div_dados_endereco_do_destinatario',0)" onFocus="SetTextIn(this,1);SetDiv('div_dados_endereco_do_destinatario',1)"></asp:TextBox>
                         </div>
                     </div>
                 </div>
             </div>
         </div>
     </div>
     

    <!--/////////////////////////////////////////////////// Container3 - Identificação Local de Retirada /////////////////////////////////////////////////////////////////////////////////////////////-->

            
     <div class="container-fluid" style="padding:0px;margin:0px;width:98%;height:100%">
           

     <div class="row" style="width:100%;height:50px"></div>
         
     <div class="row" style="width:100%;height:100%;padding:0px;margin:0px;background-color:transparent">

         <div class="row" style="width: 100%; height: 100%; color: #177CC0; padding-left: 20px; padding-top: 0px; font-family: Arial; font-size: 20px; font-weight: bold; margin-left: 0px;">

             <div id="i_dados_iniciais_local_de_retirada_on" name="i_dados_iniciais_local_de_retirada_on" class="col" align="left" style="display: none; visibility: hidden; font-size: 20px; color: red; margin-right: 20px; border-bottom: none; cursor: pointer" onclick="mostra_div_informacao('div_dados_iniciais_local_de_retirada','i_dados_iniciais_local_de_retirada_on','i_dados_iniciais_local_de_retirada_off',0)"><span style="color: #177CC0; font-family: Arial; font-size: 20px; font-weight: bold;"> Identificação Local de Retirada  </span>&nbsp;&nbsp;<i class="fa fa-toggle-on"></i></div>
             <div id="i_dados_iniciais_local_de_retirada_off" name="i_dados_iniciais_local_de_retirada_off" class="col" align="left" style="display: block; visibility: visible; font-size: 20px; color: red; margin-right: 20px; border-bottom: solid; border-color: #767676; border-width: 1px; cursor: pointer" onclick="mostra_div_informacao('div_dados_iniciais_local_de_retirada','i_dados_iniciais_local_de_retirada_on','i_dados_iniciais_local_de_retirada_off',1)"><span style="color: #177CC0; font-family: Arial; font-size: 20px; font-weight: bold;">Identificação Local de Retirada</span>&nbsp;&nbsp;<i class="fa fa-toggle-off"></i></div>


         </div>

         <div class="row" style="width: 100%; height: 20px"></div>

         
         <div id="div_dados_iniciais_local_de_retirada" name="div_dados_iniciais_local_de_retirada"
             style="display:none;visibility:visible;width:100%;height:100%;background-color:transparent;margin-left:20px;margin-right:20px;border:solid;border-color:#177CC0;border-width:1px;border-radius:10px;padding: 0 20px 20px 20px;">


            
             <div class="row"
                 style="width:100%;padding:0px;margin:0px;background-color:transparent;height:100%;padding:0px;margin:0px">

                 <!--/////////////////////////////////////////////////// LINHA LADO DIREITO - CEP/ENDEREÇO/ NÚMERO /////////////////////////////////////////////////////////////////////////////////////////////-->
                 <div class="col-xl-7"
                     style="width:100%;height:100%;background-color:transparent;padding:0px;margin:0px">

                     <div class="row"
                         style="width:100%;height:100%;background-color:transparent;padding:0px;margin:0px">

                         <div class="col-md-4"
                                    style="width:100%;height:100%;background-color:transparent;padding:10px;">


                                    <div class="row">
                                        <div class="col"
                                            style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                            CNPJ ou CPF
                                        </div>
                                    </div>

                                    <div class="row" style="padding:0px;margin:0px">
                                        <div class="col" style="padding:0px;margin:0px">
                                            <asp:TextBox ID="cnpj_cpf__local_de_retirada" runat="server" CssClass="layouttexto"
                                                style="width: 150px;padding:0px;margin:0px"
                                                placeholder="00.000.000/0000-00" onBlur="SetTextIn(this,0);SetDiv('div_dados_iniciais_local_de_retirada',0)" onFocus="SetTextIn(this,1);SetDiv('div_dados_iniciais_local_de_retirada',1)"  >

                                            </asp:TextBox>
                                        </div>
                                    </div>

                                </div>


                         <div class=" col-md-6"
                             style="width:100%;height:100%;background-color:transparent; padding:10px;">
                             <div class="row">
                                 <div class="col"
                                     style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                     Endereço
                                 </div>
                             </div>
                             <div class="row" style="padding:0px;margin:0px">
                                 <div class="col" style="padding:0px;margin:0px">
                                     <asp:TextBox ID="endereco_local_de_retirada" runat="server" CssClass="layouttexto"
                                         style="width: 93%;" onBlur="SetTextIn(this,0);SetDiv('div_dados_iniciais_local_de_retirada',0)" onFocus="SetTextIn(this,1);SetDiv('div_dados_iniciais_local_de_retirada',1)" >
                                     </asp:TextBox>
                                 </div>
                             </div>
                         </div> 

                                <div class=" col-md-2"
                                    style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">
                                    <div class="row">
                                        <div class="col"
                                            style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                            Número
                                        </div>
                                    </div>
                                    <div class="row" style="padding: 0px; margin: 0px">
                                        <div class="col" style="padding: 0px; margin: 0px">
                                            <asp:TextBox ID="numero_local_de_retirada" runat="server" CssClass="layouttexto"
                                                Style="width: 80px;" onBlur="SetTextIn(this,0);SetDiv('div_dados_iniciais_local_de_retirada',0)" onFocus="SetTextIn(this,1);SetDiv('div_dados_iniciais_local_de_retirada',1)">
                                            </asp:TextBox>
                                        </div>
                                    </div>
                                </div>

                     </div>

                 </div>

                 <!--/////////////////////////////////////////////////// LINHA LADO DIREITO COMPLEMENTO /////////////////////////////////////////////////////////////////////////////////////////////-->
                 <div class="col-xl-5" style="width:100%;height:100%;background-color:transparent;padding:0px;margin:0px; padding-left:10px; padding-top:10px">
                     <div class="row">
                 <div class="col"
                    style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                     Complemento
                         </div>
                     </div>
                     <div class="row" style="padding:0px;margin:0px">
                         <div class="col" style="padding:0px;margin:0px; background-color:transparent">
                             <asp:TextBox ID="complemento_local_de_retirada" runat="server" CssClass="layouttexto"
                                 style="width: 100%;" onBlur="SetTextIn(this,0);SetDiv('div_dados_iniciais_local_de_retirada',0)" onFocus="SetTextIn(this,1);SetDiv('div_dados_iniciais_local_de_retirada',1)">
                             </asp:TextBox>
                         </div>
                     </div>
                  </div>   
                 </div>
                 
                 <!--/////////////////////////////////////////////////// Div com os dados Iniciais / BAIRRO/ CODIGO DO MUNICIPIO/ NOME DO MUNICIPIO  /////////////////////////////////////////////////////////////////////////////////////////////-->
             <div class="row" style="height: 30px"></div>
             <div class="row">
                 <div class="col-xl-3"
                     style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px; padding-left: 10px">

                     <div class="row"
                         style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

                         <div class="col" style="width: 100%; height: 100%; background-color: transparent; padding: 10px; padding-top: 20px">
                             <div class="row">
                                 <div class="col"
                                     style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                     Bairro
                                 </div>
                             </div>
                             <div class="row" style="padding: 0px; margin: 0px">
                                 <div class="col" style="padding: 0px; margin: 0px; background-color: transparent">
                                     <asp:TextBox ID="bairro_local_de_retirada" runat="server" CssClass="layouttexto"
                                         Style="width: 260px;" onBlur="SetTextIn(this,0);SetDiv('div_dados_iniciais_local_de_retirada',0)" onFocus="SetTextIn(this,1);SetDiv('div_dados_iniciais_local_de_retirada',1)">
                                     </asp:TextBox>
                                 </div>
                             </div>
                         </div>

                     </div>
                 </div>
                 <!--/////////////////////////////////////////////////// ÚLTIMA LINHA - Identificação Local de Retirada/////////////////////////////////////////////////////////////////////////////////////////////-->
                 <div class="col-xl-9" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px; padding-left: 10px; padding-top: 10px; padding-left: 20px">
                     <div class="row">
                         <div class="col-md-4" style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-top: 10px; padding-left: 20px;">
                             <div class="row">
                                 <div class="col"
                                     style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                     Código do Município &nbsp &nbsp <img alt="" src="../Imagens/ihelp.png"  style="width: 20px; height: 21px; cursor:pointer" onclick="anima_informacao(1,'codigomunicipio')" />
                                 </div>
                             </div>
                             <div class="row">
                                 <div class="col">
                                     <asp:TextBox ID="codigo_municipio_local_de_retirada" runat="server" CssClass="layouttexto"
                                         Style="width: 170px;" onBlur="SetTextIn(this,0);SetDiv('div_dados_iniciais_local_de_retirada',0)" onFocus="SetTextIn(this,1);SetDiv('div_dados_iniciais_local_de_retirada',1)"></asp:TextBox>
                                     <button class="material-symbols-outlined">
                                         <i
                                             class="fa-solid fa-magnifying-glass"></i>
                                     </button>
                                 </div>
                             </div>
                         </div>

                         <div class="col-md-6" style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">
                             <div class="row">
                                 <div class="col"
                                     style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                     Nome do Município
                                 </div>
                             </div>
                             <div class="row" style="padding: 0px; margin: 0px">
                                 <div class="col" style="padding: 0px; margin: 0px; background-color: transparent">
                                     <asp:TextBox ID="nome_do_municipio_local_de_retirada" runat="server" CssClass="layouttexto"
                                         Style="width: 80%;" onBlur="SetTextIn(this,0);SetDiv('div_dados_iniciais_local_de_retirada',0)" onFocus="SetTextIn(this,1);SetDiv('div_dados_iniciais_local_de_retirada',1)">
                                     </asp:TextBox>
                                 </div>
                             </div>
                         </div>

                         <div class="col-md-2" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px; padding-left: 10px; padding-top: 10px; padding-left: 20px">
                             <div class="row">
                                 <div class="col"
                                     style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                     UF 
                                 </div>
                             </div>
                             <div class="row">
                                 <div class="col">
                                     <asp:DropDownList ID="uf_local_de_retirada" onBlur="SetTextIn(this,0);SetDiv('div_dados_iniciais_local_de_retirada',0)" onFocus="SetTextIn(this,1);SetDiv('div_dados_iniciais_local_de_retirada',1)" CssClass="layouttexto" runat="server">
                                         <asp:ListItem style="width: 100%;" Text="SP" Value="1" />
                                         <asp:ListItem style="width: 100%;" Text="AC" Value="2" />
                                         <asp:ListItem style="width: 100%;" Text="AL" Value="3" />
                                         <asp:ListItem style="width: 100%;" Text="AP" Value="4" />
                                         <asp:ListItem style="width: 100%;" Text="AM" Value="5" />
                                         <asp:ListItem style="width: 100%;" Text="BA" Value="6" />
                                         <asp:ListItem style="width: 100%;" Text="CE" Value="7" />
                                         <asp:ListItem style="width: 100%;" Text="DF" Value="8" />
                                         <asp:ListItem style="width: 100%;" Text="ES" Value="9" />
                                         <asp:ListItem style="width: 100%;" Text="GO" Value="10" />
                                         <asp:ListItem style="width: 100%;" Text="MA" Value="11" />
                                         <asp:ListItem style="width: 100%;" Text="MT" Value="12" />
                                         <asp:ListItem style="width: 100%;" Text="MS" Value="13" />
                                         <asp:ListItem style="width: 100%;" Text="MG" Value="14" />
                                         <asp:ListItem style="width: 100%;" Text="PA" Value="15" />
                                         <asp:ListItem style="width: 100%;" Text="PB" Value="16" />
                                         <asp:ListItem style="width: 100%;" Text="PR" Value="17" />
                                         <asp:ListItem style="width: 100%;" Text="PE" Value="18" />
                                         <asp:ListItem style="width: 100%;" Text="PI" Value="19" />
                                         <asp:ListItem style="width: 100%;" Text="RJ" Value="20" />
                                         <asp:ListItem style="width: 100%;" Text="RN" Value="21" />
                                         <asp:ListItem style="width: 100%;" Text="RS" Value="22" />
                                         <asp:ListItem style="width: 100%;" Text="RO" Value="23" />
                                         <asp:ListItem style="width: 100%;" Text="RR" Value="24" />
                                         <asp:ListItem style="width: 100%;" Text="SC" Value="25" />
                                         <asp:ListItem style="width: 100%;" Text="SE" Value="26" />
                                         <asp:ListItem style="width: 100%;" Text="TO" Value="27" />
                                     </asp:DropDownList>
                                 </div>
                             </div>
                         </div>
                     </div>

                 </div>
             </div>


         </div>


     </div>
     </div>




     <!--/////////////////////////////////////////////////// container4 - Identificação do Local de Entrega /////////////////////////////////////////////////////////////////////////////////////////////-->

    <div class="container-fluid" style="padding:0px;margin:0px;width:97%;height:100%;">
           

     <div class="row" style="width:100%;height:50px"></div>
          
        <div class="row" style="width: 100%; height: 100%; color: #177CC0; padding-left: 20px; padding-top: 0px; font-family: Arial; font-size: 20px; font-weight: bold; margin-left: 0px;">

            <div id="i_dados_iniciais_local_de_entrega_on" name="i_dados_iniciais_local_de_entrega_on" class="col" align="left" style="display: none; visibility: hidden; font-size: 20px; color: red; margin-right: 20px; border-bottom: none; cursor: pointer" onclick="mostra_div_informacao('div_dados_iniciais_local_de_entrega','i_dados_iniciais_local_de_entrega_on','i_dados_iniciais_local_de_entrega_off',0)"><span style="color: #177CC0; font-family: Arial; font-size: 20px; font-weight: bold;">Identificação Local de Entrega</span>&nbsp;&nbsp;<i class="fa fa-toggle-on"></i></div>
            <div id="i_dados_iniciais_local_de_entrega_off" name="i_dados_iniciais_local_de_entrega_off" class="col" align="left" style="display: block; visibility: visible; font-size: 20px; color: red; margin-right: 20px; border-bottom: solid; border-color: #767676; border-width: 1px; cursor: pointer" onclick="mostra_div_informacao('div_dados_iniciais_local_de_entrega','i_dados_iniciais_local_de_entrega_on','i_dados_iniciais_local_de_entrega_off',1)"><span style="color: #177CC0; font-family: Arial; font-size: 20px; font-weight: bold;">Identificação Local de Entrega</span>&nbsp;&nbsp;<i class="fa fa-toggle-off"></i></div>


        </div>

        <div class="row" style="width: 100%; height: 20px"></div>

         <!--/////////////////////////////////////////////////// Div com os dados Iniciais / Principais da Nota /////////////////////////////////////////////////////////////////////////////////////////////-->
         <div id="div_dados_iniciais_local_de_entrega" name="div_dados_iniciais_local_de_entrega"
             style="display:none;visibility:hidden;width:100%;height:100%;background-color:transparent;margin-left:20px;margin-right:20px;border:solid;border-color:#177CC0;border-width:1px;border-radius:10px;padding: 0 20px 20px 20px;">


            
             <div class="row"
                 style="width:100%;padding:0px;margin:0px;background-color:transparent;height:100%;padding:0px;margin:0px">

                 <!--/////////////////////////////////////////////////// LINHA LADO DIREITO - CEP/ENDEREÇO/ NÚMERO /////////////////////////////////////////////////////////////////////////////////////////////-->
                 <div class="col-xl-7"
                     style="width:100%;height:100%;background-color:transparent;padding:0px;margin:0px">

                     <div class="row"
                         style="width:100%;height:100%;background-color:transparent;padding:0px;margin:0px">

                         <div class="col-md-4"
                                    style="width:100%;height:100%;background-color:transparent;padding:10px;">


                                    <div class="row">
                                        <div class="col"
                                            style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                            CNPJ ou CPF
                                        </div>
                                    </div>

                                    <div class="row" style="padding:0px;margin:0px">
                                        <div class="col" style="padding:0px;margin:0px">
                                            <asp:TextBox ID="cnpj_cpf_local_de_entrega" runat="server" CssClass="layouttexto"
                                                style="width: 150px;padding:0px;margin:0px"
                                                placeholder="00.000.000/0000-00" onBlur="SetTextIn(this,0);SetDiv('div_dados_iniciais_local_de_entrega',0)" onFocus="SetTextIn(this,1);SetDiv('div_dados_iniciais_local_de_entrega',1)" >

                                            </asp:TextBox>
                                        </div>
                                    </div>

                                </div>


                         <div class=" col-md-6"
                             style="width:100%;height:100%;background-color:transparent; padding:10px;">
                             <div class="row">
                                 <div class="col"
                                     style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                     Endereço
                                 </div>
                             </div>
                             <div class="row" style="padding:0px;margin:0px">
                                 <div class="col" style="padding:0px;margin:0px">
                                     <asp:TextBox ID="endereco_local_de_entrega" runat="server" CssClass="layouttexto"
                                         style="width: 93%;" onBlur="SetTextIn(this,0);SetDiv('div_dados_iniciais_local_de_entrega',0)" onFocus="SetTextIn(this,1);SetDiv('div_dados_iniciais_local_de_entrega',1)">
                                     </asp:TextBox>
                                 </div>
                             </div>
                         </div> 

                                <div class=" col-md-2"
                                    style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">
                                    <div class="row">
                                        <div class="col"
                                            style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                            Número
                                        </div>
                                    </div>
                                    <div class="row" style="padding: 0px; margin: 0px">
                                        <div class="col" style="padding: 0px; margin: 0px">
                                            <asp:TextBox ID="numero_local_de_entrega" runat="server" CssClass="layouttexto"
                                                Style="width: 80px;" onBlur="SetTextIn(this,0);SetDiv('div_dados_iniciais_local_de_entrega',0)" onFocus="SetTextIn(this,1);SetDiv('div_dados_iniciais_local_de_entrega',1)">
                                            </asp:TextBox>
                                        </div>
                                    </div>
                                </div>

                     </div>

                 </div>

                 <!--/////////////////////////////////////////////////// LINHA LADO DIREITO COMPLEMENTO /////////////////////////////////////////////////////////////////////////////////////////////-->
                 <div class="col-xl-5" style="width:100%;height:100%;background-color:transparent;padding:0px;margin:0px; padding-left:10px; padding-top:10px">
                     <div class="row">
                 <div class="col"
                    style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                     Complemento
                         </div>
                     </div>
                     <div class="row" style="padding:0px;margin:0px">
                         <div class="col" style="padding:0px;margin:0px; background-color:transparent">
                             <asp:TextBox ID="complemento_local_de_entrega" runat="server" CssClass="layouttexto"
                                 style="width: 100%;" onBlur="SetTextIn(this,0);SetDiv('div_dados_iniciais_local_de_entrega',0)" onFocus="SetTextIn(this,1);SetDiv('div_dados_iniciais_local_de_entrega',1)">
                             </asp:TextBox>
                         </div>
                     </div>
                  </div>   
                 </div>
                 
                 <!--/////////////////////////////////////////////////// Div com os dados Iniciais / BAIRRO/ CODIGO DO MUNICIPIO/ NOME DO MUNICIPIO  /////////////////////////////////////////////////////////////////////////////////////////////-->
             <div class="row" style="height: 30px"></div>
             <div class="row">
                 <div class="col-xl-3"
                     style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px; padding-left: 10px">

                     <div class="row"
                         style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

                         <div class="col" style="width: 100%; height: 100%; background-color: transparent; padding: 10px; padding-top: 20px">
                             <div class="row">
                                 <div class="col"
                                     style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                     Bairro
                                 </div>
                             </div>
                             <div class="row" style="padding: 0px; margin: 0px">
                                 <div class="col" style="padding: 0px; margin: 0px; background-color: transparent">
                                     <asp:TextBox ID="bairro_local_de_entrega" runat="server" CssClass="layouttexto"
                                         Style="width: 260px;" onBlur="SetTextIn(this,0);SetDiv('div_dados_iniciais_local_de_entrega',0)" onFocus="SetTextIn(this,1);SetDiv('div_dados_iniciais_local_de_entrega',1)">
                                     </asp:TextBox>
                                 </div>
                             </div>
                         </div>

                     </div>
                 </div>
                 <!--/////////////////////////////////////////////////// ÚLTIMA LINHA - Identificação Local de Retirada/////////////////////////////////////////////////////////////////////////////////////////////-->
                 <div class="col-xl-9" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px; padding-left: 10px; padding-top: 10px; padding-left: 20px">
                     <div class="row">
                         <div class="col-md-4" style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-top: 10px; padding-left: 20px;">
                             <div class="row">
                                 <div class="col"
                                     style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                     Código do Município &nbsp &nbsp <img alt="" src="../Imagens/ihelp.png"  style="width: 20px; height: 21px; cursor:pointer" onclick="anima_informacao(1,'codigomunicipio')" />
                                 </div>
                             </div>
                             <div class="row">
                                 <div class="col">
                                     <asp:TextBox ID="codigo_municipio_local_de_entrega" runat="server" CssClass="layouttexto"
                                         Style="width: 170px;" onBlur="SetTextIn(this,0);SetDiv('div_dados_iniciais_local_de_entrega',0)" onFocus="SetTextIn(this,1);SetDiv('div_dados_iniciais_local_de_entrega',1)"></asp:TextBox>
                                     <button class="material-symbols-outlined">
                                         <i
                                             class="fa-solid fa-magnifying-glass"></i>
                                     </button>
                                 </div>
                             </div>
                         </div>

                         <div class="col-md-6" style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">
                             <div class="row">
                                 <div class="col"
                                     style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                     Nome do Município
                                 </div>
                             </div>
                             <div class="row" style="padding: 0px; margin: 0px">
                                 <div class="col" style="padding: 0px; margin: 0px; background-color: transparent">
                                     <asp:TextBox ID="nome_do_municipio_local_de_entrega" runat="server" CssClass="layouttexto"
                                         Style="width: 80%;" onBlur="SetTextIn(this,0);SetDiv('div_dados_iniciais_local_de_entrega',0)" onFocus="SetTextIn(this,1);SetDiv('div_dados_iniciais_local_de_entrega',1)">
                                     </asp:TextBox>
                                 </div>
                             </div>
                         </div>

                         <div class="col-md-2" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px; padding-left: 10px; padding-top: 10px; padding-left: 20px">
                             <div class="row">
                                 <div class="col"
                                     style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                     UF 
                                 </div>
                             </div>
                             <div class="row">
                                 <div class="col">
                                     <asp:DropDownList ID="uf_local_de_entrega" onBlur="SetTextIn(this,0);SetDiv('div_dados_iniciais_local_de_entrega',0)" onFocus="SetTextIn(this,1);SetDiv('div_dados_iniciais_local_de_entrega',1)" CssClass="layouttexto"   runat="server">
                                         <asp:ListItem style="width: 100%;" Text="SP" Value="1" />
                                         <asp:ListItem style="width: 100%;" Text="AC" Value="2" />
                                         <asp:ListItem style="width: 100%;" Text="AL" Value="3" />
                                         <asp:ListItem style="width: 100%;" Text="AP" Value="4" />
                                         <asp:ListItem style="width: 100%;" Text="AM" Value="5" />
                                         <asp:ListItem style="width: 100%;" Text="BA" Value="6" />
                                         <asp:ListItem style="width: 100%;" Text="CE" Value="7" />
                                         <asp:ListItem style="width: 100%;" Text="DF" Value="8" />
                                         <asp:ListItem style="width: 100%;" Text="ES" Value="9" />
                                         <asp:ListItem style="width: 100%;" Text="GO" Value="10" />
                                         <asp:ListItem style="width: 100%;" Text="MA" Value="11" />
                                         <asp:ListItem style="width: 100%;" Text="MT" Value="12" />
                                         <asp:ListItem style="width: 100%;" Text="MS" Value="13" />
                                         <asp:ListItem style="width: 100%;" Text="MG" Value="14" />
                                         <asp:ListItem style="width: 100%;" Text="PA" Value="15" />
                                         <asp:ListItem style="width: 100%;" Text="PB" Value="16" />
                                         <asp:ListItem style="width: 100%;" Text="PR" Value="17" />
                                         <asp:ListItem style="width: 100%;" Text="PE" Value="18" />
                                         <asp:ListItem style="width: 100%;" Text="PI" Value="19" />
                                         <asp:ListItem style="width: 100%;" Text="RJ" Value="20" />
                                         <asp:ListItem style="width: 100%;" Text="RN" Value="21" />
                                         <asp:ListItem style="width: 100%;" Text="RS" Value="22" />
                                         <asp:ListItem style="width: 100%;" Text="RO" Value="23" />
                                         <asp:ListItem style="width: 100%;" Text="RR" Value="24" />
                                         <asp:ListItem style="width: 100%;" Text="SC" Value="25" />
                                         <asp:ListItem style="width: 100%;" Text="SE" Value="26" />
                                         <asp:ListItem style="width: 100%;" Text="TO" Value="27" />
                                     </asp:DropDownList>
                                 </div>
                             </div>
                         </div>
                     </div>

                 </div>
             </div>


         </div>

         
     </div>
     </div>
        
        
    </asp:Panel>
           
    
    
   <!--/////////////////////////////////////////////////// Div com os dados itens nota /////////////////////////////////////////////////////////////////////////////////////////////////////////////////-->

    <asp:Panel ID="Painel4" runat="server" BackColor="Transparent" Height="100%" Width="100%" Visible="true">
<div class="container-fluid" id="div_itens_nota"  name="div_itens_nota" style="padding:0px; margin:0px; width:100%; height:100% ;display:none">

    <div class="row" style="width:100%;height:15px"></div>

     <div class="row"  style="width:100%;height:100%;padding:0px;margin:0px;background-color:transparent; ">  




<div class="row" style="width:100%;height:100%;padding-left: 20px;  padding-top: 0px;margin-left:0px;" Visible="true">
   <div id="i_itens_nota2_on" name="i_itens_nota2_on" class="col" align="left" style="display:block;visibility:visible; font-size:20px;color:red;margin-right:20px;border-bottom:none;cursor:pointer" onclick="mostra_div_informacao('div_itens_nota2','i_itens_nota2_on','i_itens_nota2_off',0)"><span style="color: #177CC0;font-family: Arial; font-size: 20px; font-weight: bold;">Itens da nota</span>&nbsp;&nbsp;<i class="fa fa-toggle-on"></i></div>
   <div id="i_itens_nota2_off" name="i_itens_nota2_off" class="col" align="left" style="display:none;visibility:hidden; font-size:20px;color:red;margin-right:20px;border-bottom:solid;border-width:1px;border-color:#767676;cursor:pointer" onclick="mostra_div_informacao('div_itens_nota2','i_itens_nota2_on','i_itens_nota2_off',1)"><span style="color: #177CC0;font-family: Arial; font-size: 20px; font-weight: bold;">Itens da Nota</span>&nbsp;&nbsp;<i class="fa fa-toggle-off"></i></div>
</div>

          <div class="row" style="width:100%;height:20px"></div>

   <div id="div_itens_nota2"  name="div_itens_nota2"  style="  visibility:visible; width:100%;height:100%;background-color:transparent;margin-left:20px;margin-right:20px;border:solid;border-color:#177CC0;border-width:1px;border-radius:10px;padding: 0px 20px 20px 20px;">
       

          
               
                   <div class="row"
                       style="width: 100%; padding: 0px; margin: 0px; background-color: transparent; height: 100%; padding: 0px; margin: 0px">
                        <!--/////////////////////////////////////////////////// Div com os Itens nota/ Codigo Produto    /////////////////////////////////////////////////////////////////////////////////////////////-->
                    <div class="col-xl-7"
                        style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

                        <div class="row"
                            style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

                            <div class="col-md-8"
                                style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">


                                <div class="row">
                                    <div class="col"
                                        style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                        Código do Produto ou Serviço &nbsp &nbsp <img alt="" src="../Imagens/ihelp.png"  style="width: 20px; height: 21px; cursor:pointer" onclick="anima_informacao(1,'CodigoProdutoeServico')" />
                                    </div>
                                </div>

                                <div class="row" style="padding: 0px; margin: 0px">
                                    <div class="col" style="padding: 0px; margin: 0px">
                                        <asp:TextBox ID="cs_cprod" runat="server" CssClass="layouttexto"
                                            Style="width: 70%; padding: 0px; margin: 0px"
                                             onBlur="SetTextIn(this,0);SetDiv('div_itens_nota2',0)" onFocus="SetTextIn(this,1);SetDiv('div_itens_nota2',1)" >

                                        </asp:TextBox>
                                    </div>
                                </div>

                            </div>


                            <div class=" col-md-4"
                                style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">

                                <div class="row">
                                    <div class="col"
                                        style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                        GTIN &nbsp &nbsp <img alt="" src="../Imagens/ihelp.png"  style="width: 20px; height: 21px; cursor:pointer" onclick="anima_informacao(1,'Gtin')" />
                                    </div>
                                </div>
                                <div class="row" style="padding: 0px; margin: 0px">
                                    <div class="col" style="padding: 0px; margin: 0px">
                                        <asp:TextBox ID="cs_cean" runat="server" CssClass="layouttexto"
                                            Style="width: 70%;" onBlur="SetTextIn(this,0);SetDiv('div_itens_nota2',0)" onFocus="SetTextIn(this,1);SetDiv('div_itens_nota2',1)">
                                        </asp:TextBox>
                                    </div>
                                </div>
                            </div>
                             </div>
                        </div>
                            <!--/////////////////////////////////////////////////// 1 Container - LINHA LADO DIREITO  Descrição do Produto /////////////////////////////////////////////////////////////////////////////////////////////-->
                           <div class="col-xl-5" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px; padding-left: 10px;">
                               <div class="col-md-12" style="width: 100%; height: 100%; background-color: transparent; padding: 10px; padding-left: 10px;">
                                   <div class="row">
                                       <div class="col" style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold;">
                                           Descrição do Produto
                                       </div>
                                   </div>
                                   <div class="row" style="padding: 0px; margin: 0px;">
                                       <div class="col" style="padding: 0px; margin: 0px; background-color: transparent;">
                                           <asp:TextBox ID="cs_xprod" runat="server" CssClass="layouttexto" Style="width: 100%;" onBlur="SetTextIn(this,0);SetDiv('div_itens_nota2',0)" onFocus="SetTextIn(this,1);SetDiv('div_itens_nota2',1)">
                                           </asp:TextBox>
                                       </div>
                                   </div>
                               </div>
                           </div>

                    </div>
                    <!--/////////////////////////////////////////////////// 1 Container - 2 Linha - lado Esquerdo ´- NCM - NVE - EX_TIPI /////////////////////////////////////////////////////////////////////////////////////////////-->
                         <div class="row" style="height: 30px"></div>
                <div class="row"  style="width: 100%; padding: 0px; margin: 0px; background-color: transparent; height: 100%; padding: 0px; margin: 0px">
                    <div class="col-xl-5" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

                        <div class="row" style="width: 100%; padding: 0px; margin: 0px; background-color: transparent; height: 100%; padding: 0px; margin: 0px">
                            <div class="col-md-4" style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">

                                <div class="row">
                                    <div class="col" style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                        Código NCM  &nbsp &nbsp <img alt="" src="../Imagens/ihelp.png"  style="width: 20px; height: 21px; cursor:pointer" onclick="anima_informacao(1,'CodigoNCM')" />
                                    </div>
                                </div>

                                <div class="row" style="padding: 0px; margin: 0px">
                                    <div class="col" style="padding: 0px; margin: 0px">
                                        <asp:TextBox ID="cs_ncm" runat="server" CssClass="layouttexto"
                                            Style="width: 40%; padding: 0px; margin: 0px"
                                            onBlur="SetTextIn(this,0);SetDiv('div_itens_nota2',0)" onFocus="SetTextIn(this,1);SetDiv('div_itens_nota2',1)">
                                        </asp:TextBox>

                                    </div>
                                </div>
                            </div>

                            <div class="col-md-5"
                                style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">


                                <div class="row">
                                    <div class="col"
                                        style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                        Codificação NVE &nbsp &nbsp <img alt="" src="../Imagens/ihelp.png"  style="width: 20px; height: 21px; cursor:pointer" onclick="anima_informacao(1,'CodificacaoNVE')" />
                                    </div>
                                </div>

                                <div class="row" style="padding: 0px; margin: 0px">
                                    <div class="col" style="padding: 0px; margin: 0px">
                                        <asp:TextBox ID="cs_nve" runat="server" CssClass="layouttexto"
                                            Style="width: 150px; padding: 0px; margin: 0px"
                                            onBlur="SetTextIn(this,0);SetDiv('div_itens_nota2',0)" onFocus="SetTextIn(this,1);SetDiv('div_itens_nota2',1)">

                                        </asp:TextBox>
                                    </div>
                                </div>

                            </div>

                        
                        
                            <div class="col-md-3" style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">

                                <div class="row">
                                    <div class="col" style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                        EX_TIPI &nbsp &nbsp <img alt="" src="../Imagens/ihelp.png"  style="width: 20px; height: 21px; cursor:pointer" onclick="anima_informacao(1,'extipi')" />
                                    </div>
                                </div>

                                <div class="row" style="padding: 0px; margin: 0px">
                                    <div class="col" style="padding: 0px; margin: 0px">
                                        <asp:TextBox ID="cs_ex_tipi" runat="server" CssClass="layouttexto"
                                            Style="width: 30%; padding: 0px; margin: 0px"
                                            onBlur="SetTextIn(this,0);SetDiv('div_itens_nota2',0)" onFocus="SetTextIn(this,1);SetDiv('div_itens_nota2',1)">
                                        </asp:TextBox>

                                    </div>
                                </div>
                            </div>
                        
                       </div>


                    </div>
                    
                     <!--/////////////////////////////////////////////////// 1 Container - 2 Linha - lado Direito - Código Fiscal de Operação e Prestações /////////////////////////////////////////////////////////////////////////////////////////////-->

                    <div class="col-xl-7"
                        style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

                        <div class="row"
                            style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

                            <div class="col-md-7"
                                style="width: 100%; height: 100%; background-color: transparent; padding: 10px; ">


                                <div class="row">
                                    <div class="col"
                                        style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                        CFOP &nbsp &nbsp <img alt="" src="../Imagens/ihelp.png"  style="width: 20px; height: 21px; cursor:pointer" onclick="anima_informacao(1,'cfop')" />
                                    </div>
                                </div>

                                <div class="row" style="padding: 0px; margin: 0px;">
                                    <div class="col" style="padding: 0px; margin: 0px">
                                        <asp:TextBox ID="cs_cfop" runat="server" CssClass="layouttexto"
                                            Style="width: 150px; padding: 0px; margin: 0px"
                                             onBlur="SetTextIn(this,0);SetDiv('div_itens_nota2',0)" onFocus="SetTextIn(this,1);SetDiv('div_itens_nota2',1)">

                                        </asp:TextBox>
                                    </div>
                                </div>

                            </div>


                            <div class=" col-md-5"
                                style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">
                                <div class="row">
                                    <div class="col"
                                        style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold; padding-right:50px">
                                        
                                        Unidade Comercial
                                    </div>
                                </div>
                                <div class="row" style="padding: 0px; margin: 0px">
                                    <div class="col" style="padding: 0px; margin: 0px">
                                        <asp:TextBox ID="cs_ucom" runat="server" CssClass="layouttexto"
                                            Style="width: 40%;" onBlur="SetTextIn(this,0);SetDiv('div_itens_nota2',0)" onFocus="SetTextIn(this,1);SetDiv('div_itens_nota2',1)">
                                        </asp:TextBox>
                                    </div>
                                </div>
                            </div>


                        </div>

                    </div>
                    </div>
                    <!--/////////////////////////////////////////////////// 1 Container - 3 Linha - lado ESQUERDO - Quantidade Comercial - Valor Unitário de Comercialização  /////////////////////////////////////////////////////////////////////////////////////////////-->
                    <div class="row" style="height: 30px"></div>
                    <div class="row" style="width: 100%; padding: 0px; margin: 0px; background-color: transparent; height: 100%; padding: 0px; margin: 0px">
                        <div class="col-xl-6" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

                            <div class="row" style="width: 100%; padding: 0px; margin: 0px; background-color: transparent; height: 100%; padding: 0px; margin: 0px">
                                <div class="col-md-5" style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">

                                    <div class="row">
                                        <div class="col" style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                            Quantidade Comercial
                                        </div>
                                    </div>

                                    <div class="row" style="padding: 0px; margin: 0px">
                                        <div class="col" style="padding: 0px; margin: 0px">
                                            <asp:TextBox ID="cs_qcom" runat="server" CssClass="layouttexto"
                                                Style="width: 80%; padding: 0px; margin: 0px"
                                                onBlur="SetTextIn(this,0);SetDiv('div_itens_nota2',0)" onFocus="SetTextIn(this,1);SetDiv('div_itens_nota2',1)">
                                            </asp:TextBox>

                                        </div>
                                    </div>
                                </div>

                                <div class="col-md-7"
                                    style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">


                                    <div class="row">
                                        <div class="col"
                                            style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                            Valor Unitário de Comercialização
                                        </div>
                                    </div>

                                    <div class="row" style="padding: 0px; margin: 0px">
                                        <div class="col" style="padding: 0px; margin: 0px">
                                            <asp:TextBox ID="cs_vuncom" runat="server" CssClass="layouttexto"
                                                Style="width: 150px; padding: 0px; margin: 0px"
                                                onBlur="SetTextIn(this,0);SetDiv('div_itens_nota2',0)" onFocus="SetTextIn(this,1);SetDiv('div_itens_nota2',1)">

                                            </asp:TextBox>
                                        </div>
                                    </div>

                                </div>
                                </div>
                            </div>
                                 <!--/////////////////////////////////////////////////// 1 Container - 3 Linha - lado DIREITO - Valor Total Bruto -  Unidade Comercial /////////////////////////////////////////////////////////////////////////////////////////////-->
                                <div class="col-xl-6"
                                    style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

                                    <div class="row"
                                        style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

                                        <div class="col-md-5"
                                            style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">


                                            <div class="row">
                                                <div class="col"
                                                    style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold;">
                                                    Valor Total Bruto 
                                                </div>
                                            </div>

                                            <div class="row" style="padding: 0px; margin: 0px">
                                                <div class="col" style="padding: 0px; margin: 0px">
                                                    <asp:TextBox ID="cs_vprod" runat="server" CssClass="layouttexto"
                                                        Style="width: 150px; padding: 0px; margin: 0px"
                                                        onBlur="SetTextIn(this,0);SetDiv('div_itens_nota2',0)" onFocus="SetTextIn(this,1);SetDiv('div_itens_nota2',1)">

                                                    </asp:TextBox>
                                                </div>
                                            </div>

                                        </div>


                                        <div class=" col-md-7"
                                            style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">
                                            <div class="row">
                                                <div class="col"
                                                    style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold; padding-right: 50px">
                                                    GTIN do Produto &nbsp &nbsp<img alt="" src="../Imagens/ihelp.png"  style="width: 20px; height: 20px; cursor:pointer" onclick="anima_informacao(1,'gtinproduto')" />
                                                </div>
                                            </div>
                                            <div class="row" style="padding: 0px; margin: 0px">
                                                <div class="col" style="padding: 0px; margin: 0px">
                                                    <asp:TextBox ID="cs_ceantrib" runat="server" CssClass="layouttexto"
                                                        Style="width: 70%;" onBlur="SetTextIn(this,0);SetDiv('div_itens_nota2',0)" onFocus="SetTextIn(this,1);SetDiv('div_itens_nota2',1)">
                                                    </asp:TextBox>
                                                </div>
                                            </div>
                                        </div>


                                    </div>

                                </div>
                    </div>
                
                <!--/////////////////////////////////////////////////// 1 Container - 4 Linha - lado DIREITO - Unidade Tributável - Quantidade Tributável  /////////////////////////////////////////////////////////////////////////////////////////////-->
                <div class="row" style="height: 30px"></div>
                <div class="row">
                    <div class="col-xl-6" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px; padding-left: 10px">

                        <div class="row" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">



                            <div class="col-md-5" style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-left: 15px; padding-top: 10px">
                                <div class="row">
                                    <div class="col" style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                        Unidade Tributável
                                    </div>
                                </div>
                                <div class="row" style="padding: 0px; margin: 0px">
                                    <div class="col" style="padding: 0px; margin: 0px">
                                        <asp:TextBox ID="cs_utrib" runat="server" CssClass="layouttexto"
                                            Style="width: 150px;" onBlur="SetTextIn(this,0);SetDiv('div_itens_nota2',0)" onFocus="SetTextIn(this,1);SetDiv('div_itens_nota2',1)">
                                        </asp:TextBox>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-7" style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-left: 15px; padding-top: 10px">
                                <div class="row">
                                    <div class="col" style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                        Quantidade Tributável 
                                    </div>
                                </div>
                                <div class="row" style="padding: 0px; margin: 0px">
                                    <div class="col" style="padding: 0px; margin: 0px">
                                        <asp:TextBox ID="cs_qtrib" runat="server" CssClass="layouttexto"
                                            Style="width: 200px;" onBlur="SetTextIn(this,0);SetDiv('div_itens_nota2',0)" onFocus="SetTextIn(this,1);SetDiv('div_itens_nota2',1)">
                                        </asp:TextBox>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>
                    
    <!--/////////////////////////////////////////////////// 1 Container - 4 LINHA - LADO DIREITO - Serie Do Documento Fiscal - Número do Documento Fiscal - Valor TOTAL DO FRETE /////////////////////////////////////////////////////////////////////////////////////////////-->
                    <div class="col-xl-6" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px; padding-left: 10px">

                        <div class="row" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">



                            <div class="col-md-5" style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-left: 15px; padding-top: 10px">
                                <div class="row">
                                    <div class="col" style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                        Valor Unitário de tributação

                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col">
                                        <asp:TextBox ID="cs_vuntrib" runat="server" CssClass="layouttexto" Style="width: 120px;" onBlur="SetTextIn(this,0);SetDiv('div_itens_nota2',0)" onFocus="SetTextIn(this,1);SetDiv('div_itens_nota2',1)"></asp:TextBox>
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-7" style="width: 100%; height: 100%; background-color: transparent; padding: 10px; padding-left:10px">

                                <div class="row">
                                    <div class="col" style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                        Valor Total do Frete
                                    </div>
                                </div>

                                <div class="row" style="padding: 0px; margin: 0px">
                                    <div class="col" style="padding: 0px; margin: 0px">
                                        <asp:TextBox ID="TextBox2" runat="server" CssClass="layouttexto"
                                            Style="width: 30%; padding: 0px; margin: 0px"
                                            onBlur="SetTextIn(this,0);SetDiv('div_itens_nota2',0)" onFocus="SetTextIn(this,1);SetDiv('div_itens_nota2',1)">
                                        </asp:TextBox>

                                    </div>
                                </div>
                            </div>

                        </div>
                        </div>
                </div>
                <!--/////////////////////////////////////////////////// 1 Container - 5 Linha - lado Esquerdo Valor Total do Seguro - Valor do Desconto -  Outras despesas acessórias /////////////////////////////////////////////////////////////////////////////////////////////-->
                <div class="row" style="height: 30px"></div>
                <div class="row" style="width: 100%; padding: 0px; margin: 0px; background-color: transparent; height: 100%; padding: 0px; margin: 0px">
                    <div class="col-xl-7" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

                        <div class="row" style="width: 100%; padding: 0px; margin: 0px; background-color: transparent; height: 100%; padding: 0px; margin: 0px">
                            <div class="col-md-4" style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">

                                <div class="row">
                                    <div class="col" style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                        Valor Total do Seguro
                                    </div>
                                </div>

                                <div class="row" style="padding: 0px; margin: 0px">
                                    <div class="col" style="padding: 0px; margin: 0px">
                                        <asp:TextBox ID="cs_vseg" runat="server" CssClass="layouttexto"
                                            Style="width: 150px; padding: 0px; margin: 0px"
                                           onBlur="SetTextIn(this,0);SetDiv('div_itens_nota2',0)" onFocus="SetTextIn(this,1);SetDiv('div_itens_nota2',1)">
				   
                                        </asp:TextBox>
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-3" style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">

                                <div class="row">
                                    <div class="col" style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                        Valor do Desconto
                                    </div>
                                </div>

                                <div class="row" style="padding: 0px; margin: 0px">
                                    <div class="col" style="padding: 0px; margin: 0px">
                                        <asp:TextBox ID="cs_vdesc" runat="server" CssClass="layouttexto"
                                            Style="width: 30%; padding: 0px; margin: 0px"
                                            onBlur="SetTextIn(this,0);SetDiv('div_itens_nota2',0)" onFocus="SetTextIn(this,1);SetDiv('div_itens_nota2',1)">
                                        </asp:TextBox>

                                    </div>
                                </div>
                            </div>



                            <div class="col-md-5"
                                style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">


                                <div class="row">
                                    <div class="col"
                                        style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                        Outras despesas acessórias
                                    </div>
                                </div>

                                <div class="row" style="padding: 0px; margin: 0px;">
                                    <div class="col" style="padding: 0px; margin: 0px">
                                        <asp:TextBox ID="cs_voutro" runat="server" CssClass="layouttexto"
                                            Style="width: 70%; padding: 0px; margin: 0px"
                                            onBlur="SetTextIn(this,0);SetDiv('div_itens_nota2',0)" onFocus="SetTextIn(this,1);SetDiv('div_itens_nota2',1)">

                                        </asp:TextBox>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                     <!--/////////////////////////////////////////////////// 1 Container - 5 Linha - lado direito Valor Total do Seguro - Valor do Desconto -  Outras despesas acessórias /////////////////////////////////////////////////////////////////////////////////////////////-->
                    <div class="col-xl-5" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px; padding-left: 10px">

                        <div class="row" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">



                            <div class="col-auto" style="width: 100%; height: 100%; background-color: transparent; padding: 4px;  padding-top: 10px">
                                <div class="row">
                                    <div class="col" style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                        Inidica se o valor do item entra no valor Total

                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col">
                                        <asp:DropDownList ID="cs_indtot" onBlur="SetTextIn(this,0);SetDiv('div_itens_nota2',0)" onFocus="SetTextIn(this,1);SetDiv('div_itens_nota2',1)" CssClass="layouttexto" runat="server">
                                            <asp:ListItem style="width: 100%;" Text="Valor do Item não compõe o valor total da NF-e" Value="1" />
                                            <asp:ListItem style="width: 100%;" Text="Valor do Item compões o valor total da NF-e" Value="2" />
                                        </asp:DropDownList>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                 <!--///////////////////////////////////////////////////  Container - 6 Linha - Origem da mercadoria /////////////////////////////////////////////////////////////////////////////////////////////-->
       <div class="row"
           style="width: 100%; padding: 0px; margin: 0px; background-color: transparent; height: 100%; padding: 0px; margin: 0px">



           <div class="col-xl-12"
               style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

               <div class="row" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

                   <div class="col-md-4" style="width: 100%; height: 100%; background-color: transparent; padding: 20px;">


                       <div class="row">
                           <div class="col"
                               style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                               Origem da mercadoria &nbsp &nbsp<img alt="" src="../Imagens/ihelp.png"  style="width: 20px; height: 20px; cursor:pointer" onclick="anima_informacao(1,'origemmercadoria')" />
                           </div>
                       </div>

                       <div class="row" style="padding: 0px; margin: 0px">
                           <div class="col" style="padding: 0px; margin: 0px">
                               <asp:DropDownList ID="DropDownList5" onBlur="SetTextIn(this,0);SetDiv('div_itens_nota2',0)" onFocus="SetTextIn(this,1);SetDiv('div_itens_nota2',1)" CssClass="layouttexto" runat="server">
                                   <asp:ListItem style="width: 100%;" Text="1" Value="1" />
                                   <asp:ListItem style="width: 100%;" Text="2" Value="2" />
                                   <asp:ListItem style="width: 100%;" Text="3" Value="3" />
                                   <asp:ListItem style="width: 100%;" Text="4" Value="4" />
                                   <asp:ListItem style="width: 100%;" Text="5" Value="5" />
                                   <asp:ListItem style="width: 100%;" Text="6" Value="6" />
                                   <asp:ListItem style="width: 100%;" Text="7" Value="7" />
                                   <asp:ListItem style="width: 100%;" Text=" 8" Value="8" />
                                   <asp:ListItem style="width: 100%;" Text="9" Value="9" />

                               </asp:DropDownList>
                           </div>
                       </div>
                   </div>

                   <div class="col-md-8" style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-left: 5px; padding-top: 20px">
                       <div class="row">
                           <div class="col" style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                               Tributação do ICMS &nbsp &nbsp<img alt="" src="../Imagens/ihelp.png"  style="width: 20px; height: 20px; cursor:pointer" onclick="anima_informacao(1,'tributacaoicms')" />
                           </div>
                       </div>
                       <div class="row" style="padding: 0px; margin: 0px">
                           <div class="col" style="padding: 0px; margin: 0px">
                               <asp:DropDownList ID="DropDownList4" onBlur="SetTextIn(this,0);SetDiv('div_itens_nota2',0)" onFocus="SetTextIn(this,1);SetDiv('div_itens_nota2',1)" CssClass="layouttexto" runat="server">
                                   <asp:ListItem style="width: 100%;" Text="00" Value="1" />
                                   <asp:ListItem style="width: 100%;" Text="10" Value="2" />
                                   <asp:ListItem style="width: 100%;" Text="20" Value="3" />
                                   <asp:ListItem style="width: 100%;" Text="30" Value="4" />
                                   <asp:ListItem style="width: 100%;" Text="40" Value="5" />
                                   <asp:ListItem style="width: 100%;" Text="41" Value="6" />
                                   <asp:ListItem style="width: 100%;" Text="50" Value="7" />
                                   <asp:ListItem style="width: 100%;" Text="51" Value="8" />
                                   <asp:ListItem style="width: 100%;" Text="70" Value="9" />
                                   <asp:ListItem style="width: 100%;" Text="90" Value="9" />
                                   <asp:ListItem style="width: 100%;" Text="60" Value="9" />
                               </asp:DropDownList>
                           </div>
                       </div>
                   </div>

               </div>
           </div>
       </div>
   </div>
     </div>

    <!--///////////////////////////////////////////////////  Container - ICMS normal e ST/////////////////////////////////////////////////////////////////////////////////////////////-->

    <div class="container-fluid" style="padding: 0px; margin: 0px; width: 100%; height: 100%;">


        <div class="row" style="width: 100%; height: 50px"></div>

        <div class="row" style="width: 100%; height: 100%; padding: 0px; margin: 0px; background-color: transparent">

            <div class="row" style="width: 100%; height: 100%; color: #177CC0; padding-left: 20px; padding-top: 0px; font-family: Arial; font-size: 20px; font-weight: bold; margin-left: 0px">

                <div id="i_icms_normal_st_on" name="i_icms_normal_st_on" class="col" align="left" style="display: none; visibility: hidden; font-size: 20px; color: red; margin-right: 20px; border-bottom: none; cursor: pointer" onclick="mostra_div_informacao('div_icms_normal_st','i_icms_normal_st_on','i_icms_normal_st_off',0)"><span style="color: #177CC0; font-family: Arial; font-size: 20px; font-weight: bold;">ICMS Normal e ST</span>&nbsp;&nbsp;<i class="fa fa-toggle-on"></i></div>
                <div id="i_icms_normal_st_off" name="i_icms_normal_st_off" class="col" align="left" style="display: block; visibility: visible; font-size: 20px; color: red; margin-right: 20px; border-bottom: solid; border-color: #767676; border-width: 1px; cursor: pointer" onclick="mostra_div_informacao('div_icms_normal_st','i_icms_normal_st_on','i_icms_normal_st_off',1)"><span style="color: #177CC0; font-family: Arial; font-size: 20px; font-weight: bold;">ICMS Normal e ST</span>&nbsp;&nbsp;<i class="fa fa-toggle-off"></i></div>


            </div>

            <div class="row" style="width: 100%; height: 20px"></div>


            <div id="div_icms_normal_st" name="div_icms_normal_st"
                style="display: none; visibility: visible; width: 100%; height: 100%; background-color: transparent; margin-left: 20px; margin-right: 20px; border: solid; border-color: #177CC0; border-width: 1px; border-radius: 10px; padding: 0 20px 20px 20px;">

                
                


                <!--/////////////////////////////////////////////////// Container -  LINHA LADO ESQUERDO - Valor do BC do ICMS - Aliquota de Imposto/////////////////////////////////////////////////////////////////////////////////////////////-->

                <div class="row"
                    style="width: 100%; padding: 0px; margin: 0px; background-color: transparent; height: 100%; padding: 0px; margin: 0px">


                    
                    <div class="col-xl-5"
                        style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

                        <div class="row" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

                            <div class="col-md-6" style="width: 100%; height: 100%; background-color: transparent; padding: 20px;">


                                <div class="row">
                                    <div class="col"
                                        style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                        Valor do BC do ICMS&nbsp &nbsp <img alt="" src="../Imagens/ihelp.png"  style="width: 20px; height: 21px; cursor:pointer" onclick="anima_informacao(1,'ValorBCdoICMS')" />
                                    </div>
                                </div>

                                <div class="row" style="padding: 0px; margin: 0px">
                                <div class="col" style="padding: 0px; margin: 0px">
                                    <asp:TextBox ID="TextBox23" runat="server" CssClass="layouttexto"
                                        Style="width: 40%;" onBlur="SetTextIn(this,0);SetDiv('div_icms_normal_st',0)" onFocus="SetTextIn(this,1);SetDiv('div_icms_normal_st',1)">
                                    </asp:TextBox>
                                </div>
                                </div>
                            </div>





                            <div class="col-md-6" style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-left: 15px; padding-top: 20px">
                                <div class="row">
                                    <div class="col" style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                        Aliquota de Imposto
                                    </div>
                                </div>
                                <div class="row" style="padding: 0px; margin: 0px">
                                    <div class="col" style="padding: 0px; margin: 0px">
                                        <asp:TextBox ID="TextBox25" runat="server" CssClass="layouttexto"
                                            Style="width: 40%;" onBlur="SetTextIn(this,0);SetDiv('div_icms_normal_st',0)" onFocus="SetTextIn(this,1);SetDiv('div_icms_normal_st',1)">
                                        </asp:TextBox>
                                    </div>
                                </div>
                            </div>
                        </div>


                    </div>



                    <!--/////////////////////////////////////////////////// 2 LINHA - LADO DIREITO - Valor do ICMS -  Tributação do ICMS = 0 /////////////////////////////////////////////////////////////////////////////////////////////-->
                    <div class="col-xl-7" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px; padding-left: 20px">

                        <div class="row" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

                            <div class="col-md-5" style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-left: 5px; padding-top: 20px">
                                <div class="row">
                                    <div class="col" style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                        Valor do ICMS
                                    </div>
                                </div>
                                <div class="row" style="padding: 0px; margin: 0px">
                                    <div class="col" style="padding: 0px; margin: 0px">
                                        <asp:TextBox ID="TextBox26" runat="server" CssClass="layouttexto"
                                            Style="width: 50%;" onBlur="SetTextIn(this,0);SetDiv('div_icms_normal_st',0)" onFocus="SetTextIn(this,1);SetDiv('div_icms_normal_st',1)">
                                        </asp:TextBox>
                                    </div>
                                </div>
                            </div>


                            <div class="col-md-7" style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-left: 5px; padding-top: 20px">
                                <div class="row">
                                    <div class="col" style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                        Modalidade de determinação da BC do ICMS
                                    </div>
                                </div>
                                <div class="row" style="padding: 0px; margin: 0px">
                                    <div class="col" style="padding: 0px; margin: 0px">
                                        <asp:DropDownList ID="DropDownList50" onBlur="SetTextIn(this,0);SetDiv('div_icms_normal_st',0)" onFocus="SetTextIn(this,1);SetDiv('div_icms_normal_st',1)" CssClass="layouttexto" runat="server">
                                            <asp:ListItem style="width: 100%;" Text="Margem Valor Agregado" Value="1" />
                                            <asp:ListItem style="width: 100%;" Text="Pauta (Valor)" Value="2" />
                                            <asp:ListItem style="width: 100%;" Text="Preço Tabelado Máx. (valor)" Value="3" />
                                            <asp:ListItem style="width: 100%;" Text="Valor da Operação" Value="4" />
                                        </asp:DropDownList>
                                    </div>
                                </div>
</div>

                            
                        </div>
                    </div>
                </div>

                
                
            </div>

        </div>
    </div>

    <!--///////////////////////////////////////////////////  Container - ICMS normal e ST = 10/////////////////////////////////////////////////////////////////////////////////////////////-->

    <div class="container-fluid" style="padding: 0px; margin: 0px; width: 100%; height: 100%;">


        <div class="row" style="width: 100%; height: 50px"></div>

        <div class="row" style="width: 100%; height: 100%; padding: 0px; margin: 0px; background-color: transparent">

            <div class="row" style="width: 100%; height: 100%; color: #177CC0; padding-left: 20px; padding-top: 0px; font-family: Arial; font-size: 20px; font-weight: bold; margin-left: 0px">

                <div id="i_icms_normal_st_10_on" name="i_icms_normal_st_10_on" class="col" align="left" style="display: none; visibility: hidden; font-size: 20px; color: red; margin-right: 20px; border-bottom: none; cursor: pointer" onclick="mostra_div_informacao('div_icms_normal_st_10','i_icms_normal_st_10_on','i_icms_normal_st_10_off',0)"><span style="color: #177CC0; font-family: Arial; font-size: 20px; font-weight: bold;">Grupo de Tributação do ICMS=10</span>&nbsp;&nbsp;<i class="fa fa-toggle-on"></i></div>
                <div id="i_icms_normal_st_10_off" name="i_icms_normal_st_10_off" class="col" align="left" style="display: block; visibility: visible; font-size: 20px; color: red; margin-right: 20px; border-bottom: solid; border-color: #767676; border-width: 1px; cursor: pointer" onclick="mostra_div_informacao('div_icms_normal_st_10','i_icms_normal_st_10_on','i_icms_normal_st_10_off',1)"><span style="color: #177CC0; font-family: Arial; font-size: 20px; font-weight: bold;">Grupo de Tributação do ICMS=10</span>&nbsp;&nbsp;<i class="fa fa-toggle-off"></i></div>


            </div>

            <div class="row" style="width: 100%; height: 20px"></div>


            <div id="div_icms_normal_st_10" name="div_icms_normal_st_10"
                style="display: none; visibility: visible; width: 100%; height: 100%; background-color: transparent; margin-left: 20px; margin-right: 20px; border: solid; border-color: #177CC0; border-width: 1px; border-radius: 10px; padding: 0 20px 20px 20px;">

                

                <div class="row"
                    style="width: 100%; padding: 0px; margin: 0px; background-color: transparent; height: 100%; padding: 0px; margin: 0px">


                    <!--/////////////////////////////////////////////////// Container -  LINHA LADO ESQUERDO - Tributação do ICMS = 10 - Valor do BC do ICMS/////////////////////////////////////////////////////////////////////////////////////////////-->
                    <div class="col-xl-7"
                        style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

                        <div class="row" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

                            <div class="col-md-6" style="width: 100%; height: 100%; background-color: transparent; padding: 20px;">


                                <div class="row">
                                    <div class="col"
                                        style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                        % Redução de BC do ICMS ST &nbsp &nbsp<img alt="" src="../Imagens/ihelp.png"  style="width: 20px; height: 20px; cursor:pointer" onclick="anima_informacao(1,'percentualbcicms')" />
                                    </div>
                                </div>

                                <div class="row" style="padding: 0px; margin: 0px">
                                <div class="col" style="padding: 0px; margin: 0px">
                                    <asp:TextBox ID="TextBox52" runat="server" CssClass="layouttexto"
                                        Style="width: 40%;" onBlur="SetTextIn(this,0);SetDiv('div_icms_normal_st_10',0)" onFocus="SetTextIn(this,1);SetDiv('div_icms_normal_st_10',1)">
                                    </asp:TextBox>
                                </div>
                            </div>  
                            </div>





                            <div class="col-md-6" style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-left: 15px; padding-top: 20px">
                                <div class="row">
                                    <div class="col" style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                        Valor do BC do ICMS &nbsp &nbsp <img alt="" src="../Imagens/ihelp.png"  style="width: 20px; height: 21px; cursor:pointer" onclick="anima_informacao(1,'ValorBCdoICMS')" />
                                    </div>
                                </div>
                                <div class="row" style="padding: 0px; margin: 0px">
                                    <div class="col" style="padding: 0px; margin: 0px">
                                        <asp:TextBox ID="TextBox27" runat="server" CssClass="layouttexto"
                                            Style="width: 40%;" onBlur="SetTextIn(this,0);SetDiv('div_icms_normal_st_10',0)" onFocus="SetTextIn(this,1);SetDiv('div_icms_normal_st_10',1)">
                                        </asp:TextBox>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>



                    <!--/////////////////////////////////////////////////// - LADO DIREITO - Valor do ICMS -  Aliquota de Imposto /////////////////////////////////////////////////////////////////////////////////////////////-->
                    <div class="col-xl-5" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px; padding-left: 20px">

                        <div class="row" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

                            <div class="col-md-4" style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-left: 5px; padding-top: 20px">
                                <div class="row">
                                    <div class="col" style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                        Valor do ICMS
                                    </div>
                                </div>
                                <div class="row" style="padding: 0px; margin: 0px">
                                    <div class="col" style="padding: 0px; margin: 0px">
                                        <asp:TextBox ID="TextBox29" runat="server" CssClass="layouttexto"
                                            Style="width: 50%;" onBlur="SetTextIn(this,0);SetDiv('div_icms_normal_st_10',0)" onFocus="SetTextIn(this,1);SetDiv('div_icms_normal_st_10',1)">
                                        </asp:TextBox>
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-8" style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-left: 5px; padding-top: 20px">
                                <div class="row">
                                    <div class="col" style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                        Aliquota de Imposto
                                    </div>
                                </div>
                                <div class="row" style="padding: 0px; margin: 0px">
                                    <div class="col" style="padding: 0px; margin: 0px">
                                        <asp:TextBox ID="TextBox28" runat="server" CssClass="layouttexto"
                                            Style="width: 40%;" onBlur="SetTextIn(this,0);SetDiv('div_icms_normal_st_10',0)" onFocus="SetTextIn(this,1);SetDiv('div_icms_normal_st_10',1)">
                                        </asp:TextBox>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                
                <!--///////////////////////////////////////////////////  - LADO esquerdo - Modalidade de determinação da BC do ICMS - Valor da BC do ICMS ST/////////////////////////////////////////////////////////////////////////////////////////////-->
                <div class="row"
                    style="width: 100%; padding: 0px; margin: 0px; background-color: transparent; height: 100%; padding: 0px; margin: 0px">

                    <div class="col-xl-7" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px; padding-left: 20px">

                        <div class="row" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

                            <div class="col-md-6" style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-left: 5px; padding-top: 20px">
                                <div class="row">
                                    <div class="col" style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                        Modalidade de BC do ICMS
                                    </div>
                                </div>
                                <div class="row" style="padding: 0px; margin: 0px">
                                    <div class="col" style="padding: 0px; margin: 0px">
                                        <asp:DropDownList ID="DropDownList9" onBlur="SetTextIn(this,0);SetDiv('div_icms_normal_st_10',0)" onFocus="SetTextIn(this,1);SetDiv('div_icms_normal_st_10',1)" CssClass="layouttexto" runat="server">
                                            <asp:ListItem style="width: 100%;" Text="Margem Valor Agregado" Value="1" />
                                            <asp:ListItem style="width: 100%;" Text="Pauta (Valor)" Value="2" />
                                            <asp:ListItem style="width: 100%;" Text="Preço Tabelado Máx. (valor)" Value="3" />
                                            <asp:ListItem style="width: 100%;" Text="Valor da Operação" Value="4" />
                                        </asp:DropDownList>
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-6" style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-left: 5px; padding-top: 20px">
                                <div class="row">
                                    <div class="col" style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                        Valor da BC do ICMS ST &nbsp &nbsp <img alt="" src="../Imagens/ihelp.png"  style="width: 20px; height: 21px; cursor:pointer" onclick="anima_informacao(1,'ValorBCdoICMSST')" />
                                    </div>
                                </div>
                                <div class="row" style="padding: 0px; margin: 0px">
                                    <div class="col" style="padding: 0px; margin: 0px">
                                        <asp:TextBox ID="TextBox30" runat="server" CssClass="layouttexto"
                                            Style="width: 45%;" onBlur="SetTextIn(this,0);SetDiv('div_icms_normal_st_10',0)" onFocus="SetTextIn(this,1);SetDiv('div_icms_normal_st_10',1)">
                                        </asp:TextBox>
                                    </div>
                                </div>
                            </div>


                        </div>
                    </div>

                    <!--/////////////////////////////////////////////////// 2 LINHA - LADO DIREITO - Valor do ICMS ST -  Aliquota do imposto do ICMS ST /////////////////////////////////////////////////////////////////////////////////////////////-->
                    <div class="col-xl-5" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px; padding-left: 20px">

                        <div class="row" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

                            <div class="col-md-6" style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-left: 5px; padding-top: 20px">
                                <div class="row">
                                    <div class="col" style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                        Alíquota do ICMS ST
                                    </div>
                                </div>
                                <div class="row" style="padding: 0px; margin: 0px">
                                    <div class="col" style="padding: 0px; margin: 0px">
                                        <asp:TextBox ID="TextBox31" runat="server" CssClass="layouttexto"
                                            Style="width: 15%;" onBlur="SetTextIn(this,0);SetDiv('div_icms_normal_st_10',0)" onFocus="SetTextIn(this,1);SetDiv('div_icms_normal_st_10',1)">
                                        </asp:TextBox>
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-6" style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-left: 5px; padding-top: 20px">
                                <div class="row">
                                    <div class="col" style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                        Valor do ICMS ST
                                    </div>
                                </div>
                                <div class="row" style="padding: 0px; margin: 0px">
                                    <div class="col" style="padding: 0px; margin: 0px">
                                        <asp:TextBox ID="TextBox34" runat="server" CssClass="layouttexto"
                                            Style="width: 45%;" onBlur="SetTextIn(this,0);SetDiv('div_icms_normal_st_10',0)" onFocus="SetTextIn(this,1);SetDiv('div_icms_normal_st_10',1)">
                                        </asp:TextBox>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!--/////////////////////////////////////////////////// Container -  LINHA LADO ESQUERDO -  Percentual da margem de valor Adiacionado do ICMS ST/////////////////////////////////////////////////////////////////////////////////////////////-->
                <div class="row" style="width: 100%; height: 30px"></div>
                <div class="row"
                    style="width: 100%; padding: 0px; margin: 0px; background-color: transparent; height: 100%; padding: 0px; margin: 0px">



                    <div class="col-xl-12"
                        style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

                        <div class="row" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

                            <div class="col-md-12" style="width: 100%; height: 100%; background-color: transparent; padding: 20px;">


                                <div class="row">
                                    <div class="col"
                                        style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                        Percentual da Margem do ICMS ST &nbsp &nbsp <img alt="" src="../Imagens/ihelp.png"  style="width: 20px; height: 21px; cursor:pointer" onclick="anima_informacao(1,'PercentualdaMV doICMSST')" />
                                    </div>
                                </div>
                                <div class="row" style="padding: 0px; margin: 0px">
                                <div class="col" style="padding: 0px; margin: 0px">
                                    <asp:TextBox ID="TextBox32" runat="server" CssClass="layouttexto"
                                        Style="width: 15%;" onBlur="SetTextIn(this,0);SetDiv('div_icms_normal_st_10',0)" onFocus="SetTextIn(this,1);SetDiv('div_icms_normal_st_10',1)">
                                    </asp:TextBox>
                                </div>
                            </div>
                            </div>

                            
                        </div>
                    </div>
                </div>

            </div>

        </div>
    </div>
    <!--///////////////////////////////////////////////////  Container - ICMS =20/////////////////////////////////////////////////////////////////////////////////////////////-->

    <div class="container-fluid" style="padding: 0px; margin: 0px; width: 100%; height: 100%;">


        <div class="row" style="width: 100%; height: 50px"></div>

        <div class="row" style="width: 100%; height: 100%; padding: 0px; margin: 0px; background-color: transparent">

            <div class="row" style="width: 100%; height: 100%; color: #177CC0; padding-left: 20px; padding-top: 0px; font-family: Arial; font-size: 20px; font-weight: bold; margin-left: 0px">

                <div id="i_icms_normal_st_20_on" name="i_icms_normal_st_20_on" class="col" align="left" style="display: none; visibility: hidden; font-size: 20px; color: red; margin-right: 20px; border-bottom: none; cursor: pointer" onclick="mostra_div_informacao('div_icms_normal_st_20','i_icms_normal_st_20_on','i_icms_normal_st_20_off',0)"><span style="color: #177CC0; font-family: Arial; font-size: 20px; font-weight: bold;">Grupo de Tributação do ICMS=20</span>&nbsp;&nbsp;<i class="fa fa-toggle-on"></i></div>
                <div id="i_icms_normal_st_20_off" name="i_icms_normal_st_20_off" class="col" align="left" style="display: block; visibility: visible; font-size: 20px; color: red; margin-right: 20px; border-bottom: solid; border-color: #767676; border-width: 1px; cursor: pointer" onclick="mostra_div_informacao('div_icms_normal_st_20','i_icms_normal_st_20_on','i_icms_normal_st_20_off',1)"><span style="color: #177CC0; font-family: Arial; font-size: 20px; font-weight: bold;">Grupo de Tributação do ICMS=20</span>&nbsp;&nbsp;<i class="fa fa-toggle-off"></i></div>


            </div>

            <div class="row" style="width: 100%; height: 20px"></div>


            <div id="div_icms_normal_st_20" name="div_icms_normal_st_20"
                style="display: none; visibility: visible; width: 100%; height: 100%; background-color: transparent; margin-left: 20px; margin-right: 20px; border: solid; border-color: #177CC0; border-width: 1px; border-radius: 10px; padding: 0 20px 20px 20px;">



                


                    <!--/////////////////////////////////////////////////// Container -  LINHA LADO ESQUERDO - Valor do BC do ICMS - Aliquota de Imposto/////////////////////////////////////////////////////////////////////////////////////////////-->
                    

                <div class="row"
                    style="width: 100%; padding: 0px; margin: 0px; background-color: transparent; height: 100%; padding: 0px; margin: 0px">
                    <div class="col-xl-5"
                        style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

                        <div class="row" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

                            <div class="col-md-6" style="width: 100%; height: 100%; background-color: transparent; padding: 20px;">


                                <div class="row">
                                    <div class="col"
                                        style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                        Valor do BC do ICMS &nbsp &nbsp <img alt="" src="../Imagens/ihelp.png"  style="width: 20px; height: 21px; cursor:pointer" onclick="anima_informacao(1,'ValorBCdoICMS')" />
                                    </div>
                                </div>

                                <div class="row" style="padding: 0px; margin: 0px">
                                <div class="col" style="padding: 0px; margin: 0px">
                                    <asp:TextBox ID="TextBox35" runat="server" CssClass="layouttexto"
                                        Style="width: 40%;" onBlur="SetTextIn(this,0);SetDiv('div_icms_normal_st_20',0)" onFocus="SetTextIn(this,1);SetDiv('div_icms_normal_st_20',1)">
                                    </asp:TextBox>
                                </div>
                            </div>
                            </div>





                            <div class="col-md-6" style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-left: 15px; padding-top: 20px">
                                <div class="row">
                                    <div class="col" style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                        Aliquota de Imposto
                                    </div>
                                </div>
                                <div class="row" style="padding: 0px; margin: 0px">
                                    <div class="col" style="padding: 0px; margin: 0px">
                                        <asp:TextBox ID="TextBox36" runat="server" CssClass="layouttexto"
                                            Style="width: 40%;" onBlur="SetTextIn(this,0);SetDiv('div_icms_normal_st_20',0)" onFocus="SetTextIn(this,1);SetDiv('div_icms_normal_st_20',1)">
                                        </asp:TextBox>
                                    </div>
                                </div>
                            </div>
                        </div>


                    </div>



                    <!--/////////////////////////////////////////////////// - LADO DIREITO - Percentual de Redução de BC -  Tributação do ICMS = 20  /////////////////////////////////////////////////////////////////////////////////////////////-->
                    <div class="col-xl-7" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px; padding-left: 20px">

                        <div class="row" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

                            <div class="col-md-5" style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-left: 5px; padding-top: 20px">
                                <div class="row">
                                    <div class="col" style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                        Percentual de Redução de BC  &nbsp &nbsp <img alt="" src="../Imagens/ihelp.png"  style="width: 20px; height: 21px; cursor:pointer" onclick="anima_informacao(1,'reducaobc')" />
                                    </div>
                                </div>
                                <div class="row" style="padding: 0px; margin: 0px">
                                    <div class="col" style="padding: 0px; margin: 0px">
                                        <asp:TextBox ID="TextBox37" runat="server" CssClass="layouttexto"
                                            Style="width: 40%;" onBlur="SetTextIn(this,0);SetDiv('div_icms_normal_st_20',0)" onFocus="SetTextIn(this,1);SetDiv('div_icms_normal_st_20',1)">
                                        </asp:TextBox>
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-7" style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-left: 5px; padding-top: 20px">
                                <div class="row">
                                    <div class="col" style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                        Valor do ICMS desonerado&nbsp &nbsp <img alt="" src="../Imagens/ihelp.png"  style="width: 20px; height: 21px; cursor:pointer" onclick="anima_informacao(1,'ICMSdesonerado')" />
                                    </div>
                                </div>
                                <div class="row" style="padding: 0px; margin: 0px">
                                    <div class="col" style="padding: 0px; margin: 0px">
                                        <asp:TextBox ID="TextBox38" runat="server" CssClass="layouttexto"
                                            Style="width: 40%;" onBlur="SetTextIn(this,0);SetDiv('div_icms_normal_st_20',0)" onFocus="SetTextIn(this,1);SetDiv('div_icms_normal_st_20',1)">
                                        </asp:TextBox>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

               
                <!--///////////////////////////////////////////////////  - LADO esquerdo - Modalidade de determinação da BC do ICMS /////////////////////////////////////////////////////////////////////////////////////////////-->
                <div class="row" style="width: 100%; height: 20px"></div>

                <div class="row"
                    style="width: 100%; padding: 0px; margin: 0px; background-color: transparent; height: 100%; padding: 0px; margin: 0px">

                    <div class="col-xl-6" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px; padding-left: 20px">

                        <div class="row" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

                            <div class="col-md-4" style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-left: 5px; padding-top: 20px">
                                <div class="row">
                                    <div class="col" style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                        Valor do ICMS   
                                    </div>
                                </div>
                                <div class="row" style="padding: 0px; margin: 0px">
                                    <div class="col" style="padding: 0px; margin: 0px">
                                        <asp:TextBox ID="TextBox40" runat="server" CssClass="layouttexto"
                                            Style="width: 50%;" onBlur="SetTextIn(this,0);SetDiv('div_icms_normal_st_20',0)" onFocus="SetTextIn(this,1);SetDiv('div_icms_normal_st_20',1)">
                                        </asp:TextBox>
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-8" style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-left: 5px; padding-top: 20px">
                                <div class="row">
                                    <div class="col" style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                        Modalidade de determinação da BC do ICMS
                                    </div>
                                </div>
                                <div class="row" style="padding: 0px; margin: 0px">
                                    <div class="col" style="padding: 0px; margin: 0px">
                                        <asp:DropDownList ID="DropDownList56" onBlur="SetTextIn(this,0);SetDiv('div_icms_normal_st_20',0)" onFocus="SetTextIn(this,1);SetDiv('div_icms_normal_st_20',1)" CssClass="layouttexto" runat="server">
                                            <asp:ListItem style="width: 100%;" Text="Margem Valor Agregado" Value="1" />
                                            <asp:ListItem style="width: 100%;" Text="Pauta (Valor)" Value="2" />
                                            <asp:ListItem style="width: 100%;" Text="Preço Tabelado Máx. (valor)" Value="3" />
                                            <asp:ListItem style="width: 100%;" Text="Valor da Operação" Value="4" />
                                        </asp:DropDownList>
                                    </div>
                                </div>
                            </div>


                        </div>
                    </div>

                    <!--/////////////////////////////////////////////////// 2 LINHA - LADO DIREITO - Valor do ICMS -   Valor do ICMS desonerado /////////////////////////////////////////////////////////////////////////////////////////////-->
                    <div class="col-xl-6" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px; padding-left: 20px">

                        <div class="row" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

                            <div class="col-md-auto" style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-left: 5px; padding-top: 20px">
                                <div class="row">
                                    <div class="col" style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                        Motivo da ICMS desonaração &nbsp &nbsp<img alt="" src="../Imagens/ihelp.png"  style="width: 20px; height: 20px; cursor:pointer" onclick="anima_informacao(1,'motivoicms')" />
                                    </div>
                                </div>
                                <div class="row" style="padding: 0px; margin: 0px">
                                    <div class="col" style="padding: 0px; margin: 0px">
                                        <asp:DropDownList ID="DropDownList7" onBlur="SetTextIn(this,0);SetDiv('div_icms_normal_st_20',0)" onFocus="SetTextIn(this,1);SetDiv('div_icms_normal_st_20',1)" CssClass="layouttexto" runat="server">
                                            <asp:ListItem style="width: 100%;" Text="3" Value="1" />
                                            <asp:ListItem style="width: 100%;" Text="9" Value="2" />
                                            <asp:ListItem style="width: 100%;" Text="12" Value="3" />
                                        </asp:DropDownList>
                                    </div>
                                </div>
                            </div>


                            
                        </div>
                    </div>
                </div>

                
            </div>
        </div>
    <!--///////////////////////////////////////////////////  Container - ICMS =30/////////////////////////////////////////////////////////////////////////////////////////////-->

    <div class="container-fluid" style="padding: 0px; margin: 0px; width: 100%; height: 100%;">


        <div class="row" style="width: 100%; height: 50px"></div>

        <div class="row" style="width: 100%; height: 100%; padding: 0px; margin: 0px; background-color: transparent">

            <div class="row" style="width: 100%; height: 100%; color: #177CC0; padding-left: 20px; padding-top: 0px; font-family: Arial; font-size: 20px; font-weight: bold; margin-left: 0px">

                <div id="i_icms_normal_st_30_on" name="i_icms_normal_st_30_on" class="col" align="left" style="display: none; visibility: hidden; font-size: 20px; color: red; margin-right: 20px; border-bottom: none; cursor: pointer" onclick="mostra_div_informacao('div_icms_normal_st_30','i_icms_normal_st_30_on','i_icms_normal_st_30_off',0)"><span style="color: #177CC0; font-family: Arial; font-size: 20px; font-weight: bold;">Grupo de Tributação do ICMS=30</span>&nbsp;&nbsp;<i class="fa fa-toggle-on"></i></div>
                <div id="i_icms_normal_st_30_off" name="i_icms_normal_st_30_off" class="col" align="left" style="display: block; visibility: visible; font-size: 20px; color: red; margin-right: 20px; border-bottom: solid; border-color: #767676; border-width: 1px; cursor: pointer" onclick="mostra_div_informacao('div_icms_normal_st_30','i_icms_normal_st_30_on','i_icms_normal_st_30_off',1)"><span style="color: #177CC0; font-family: Arial; font-size: 20px; font-weight: bold;">Grupo de Tributação do ICMS=30</span>&nbsp;&nbsp;<i class="fa fa-toggle-off"></i></div>


            </div>

            <div class="row" style="width: 100%; height: 20px"></div>


            <div id="div_icms_normal_st_30" name="div_icms_normal_st_30"
                style="display: none; visibility: visible; width: 100%; height: 100%; background-color: transparent; margin-left: 20px; margin-right: 20px; border: solid; border-color: #177CC0; border-width: 1px; border-radius: 10px; padding: 0 20px 20px 20px;">

                

                <!--/////////////////////////////////////////////////// Container -  LINHA LADO ESQUERDO - Valor do BC do ICMS - Aliquota de Imposto/////////////////////////////////////////////////////////////////////////////////////////////-->
                <div class="row"
                    style="width: 100%; padding: 0px; margin: 0px; background-color: transparent; height: 100%; padding: 0px; margin: 0px">



                    <div class="col-xl-7"
                        style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

                        <div class="row" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

                            <div class="col-md-6" style="width: 100%; height: 100%; background-color: transparent; padding: 20px;">


                                <div class="row">
                                    <div class="col"
                                        style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                        Valor do BC do ICMS ST &nbsp &nbsp <img alt="" src="../Imagens/ihelp.png"  style="width: 20px; height: 21px; cursor:pointer" onclick="anima_informacao(1,'ValorBCdoICMSST')" />
                                    </div>
                                </div>

                                <div class="row" style="padding: 0px; margin: 0px">
                                <div class="col" style="padding: 0px; margin: 0px">
                                    <asp:TextBox ID="TextBox39" runat="server" CssClass="layouttexto"
                                        Style="width: 40%;" onBlur="SetTextIn(this,0);SetDiv('div_icms_normal_st_30',0)" onFocus="SetTextIn(this,1);SetDiv('div_icms_normal_st_30',1)">
                                    </asp:TextBox>
                                </div>
                            </div>
                            </div>





                            <div class="col-md-6" style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-left: 15px; padding-top: 20px">
                                <div class="row">
                                    <div class="col" style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                        Aliquota de Imposto do ICMS ST &nbsp &nbsp <img alt="" src="../Imagens/ihelp.png"  style="width: 20px; height: 21px; cursor:pointer" onclick="anima_informacao(1,'calculoicmsst')" />
                                    </div>
                                </div>
                                <div class="row" style="padding: 0px; margin: 0px">
                                    <div class="col" style="padding: 0px; margin: 0px">
                                        <asp:TextBox ID="TextBox41" runat="server" CssClass="layouttexto"
                                            Style="width: 40%;" onBlur="SetTextIn(this,0);SetDiv('div_icms_normal_st_30',0)" onFocus="SetTextIn(this,1);SetDiv('div_icms_normal_st_30',1)">
                                        </asp:TextBox>
                                    </div>
                                </div>
                            </div>
                        </div>


                    </div>



                    <!--/////////////////////////////////////////////////// - LADO DIREITO -  Tributação do ICMS = 30   /////////////////////////////////////////////////////////////////////////////////////////////-->
                    <div class="col-xl-5" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px; padding-left: 20px">

                        <div class="row" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

                            <div class="col-md-6" style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-left: 5px; padding-top: 20px">
                                <div class="row">
                                    <div class="col" style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                        Valor do ICMS ST 
                                    </div>
                                </div>
                                <div class="row" style="padding: 0px; margin: 0px">
                                    <div class="col" style="padding: 0px; margin: 0px">
                                        <asp:TextBox ID="TextBox43" runat="server" CssClass="layouttexto"
                                            Style="width: 40%;" onBlur="SetTextIn(this,0);SetDiv('div_icms_normal_st_30',0)" onFocus="SetTextIn(this,1);SetDiv('div_icms_normal_st_30',1)">
                                        </asp:TextBox>
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-6" style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-left: 5px; padding-top: 20px">
                                <div class="row">
                                    <div class="col" style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                       Valor do ICMS desonerado&nbsp &nbsp <img alt="" src="../Imagens/ihelp.png"  style="width: 20px; height: 21px; cursor:pointer" onclick="anima_informacao(1,'ICMSdesonerado')" />
                                    </div>
                                </div>
                                <div class="row" style="padding: 0px; margin: 0px">
                                    <div class="col" style="padding: 0px; margin: 0px">
                                        <asp:TextBox ID="TextBox44" runat="server" CssClass="layouttexto"
                                            Style="width: 40%;" onBlur="SetTextIn(this,0);SetDiv('div_icms_normal_st_30',0)" onFocus="SetTextIn(this,1);SetDiv('div_icms_normal_st_30',1)">
                                        </asp:TextBox>
                                    </div>
                                </div>
                            </div>
                            
                        </div>
                    </div>
                </div>


                <!--///////////////////////////////////////////////////  - LADO esquerdo - Modalidade de determinação da BC do ICMS - Percentual de Redução de BC ST/////////////////////////////////////////////////////////////////////////////////////////////-->
                <div class="row"
                    style="width: 100%; padding: 0px; margin: 0px; background-color: transparent; height: 100%; padding: 0px; margin: 0px">

                    <div class="col-xl-7" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px; padding-left: 20px">

                        <div class="row" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

                            <div class="col-md-6" style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-left: 5px; padding-top: 20px">
                                <div class="row">
                                    <div class="col" style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                        Modalidade de BC do ICMS ST
                                    </div>
                                </div>
                                <div class="row" style="padding: 0px; margin: 0px">
                                    <div class="col" style="padding: 0px; margin: 0px">
                                        <asp:DropDownList ID="DropDownList16" onBlur="SetTextIn(this,0);SetDiv('div_icms_normal_st_30',0)" onFocus="SetTextIn(this,1);SetDiv('div_icms_normal_st_30',1)" CssClass="layouttexto" runat="server">
                                            <asp:ListItem style="width: 100%;" Text="Margem Valor Agregado" Value="1" />
                                            <asp:ListItem style="width: 100%;" Text="Pauta (Valor)" Value="2" />
                                            <asp:ListItem style="width: 100%;" Text="Preço Tabelado Máx. (valor)" Value="3" />
                                            <asp:ListItem style="width: 100%;" Text="Valor da Operação" Value="4" />
                                        </asp:DropDownList>
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-6" style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-left: 5px; padding-top: 20px">
                                <div class="row">
                                    <div class="col" style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                        Percentual de Redução de BC ST &nbsp &nbsp <img alt="" src="../Imagens/ihelp.png"  style="width: 20px; height: 21px; cursor:pointer" onclick="anima_informacao(1,'reducaobcst')" />
                                    </div>
                                </div>
                                <div class="row" style="padding: 0px; margin: 0px">
                                    <div class="col" style="padding: 0px; margin: 0px">
                                        <asp:TextBox ID="TextBox42" runat="server" CssClass="layouttexto"
                                            Style="width: 40%;" onBlur="SetTextIn(this,0);SetDiv('div_icms_normal_st_30',0)" onFocus="SetTextIn(this,1);SetDiv('div_icms_normal_st_30',1)">
                                        </asp:TextBox>
                                    </div>
                                </div>
                            </div>


                        </div>
                    </div>

                    <!--/////////////////////////////////////////////////// 2 LINHA - LADO DIREITO - Valor do ICMS -   Valor do ICMS desonerado /////////////////////////////////////////////////////////////////////////////////////////////-->
                    <div class="col-xl-5" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px; padding-left: 20px">

                        
                            <div class="row" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

                                <div class="col-md-auto" style="width: 100%; height: 100%; background-color: transparent; padding: 20px;">


                                    <div class="row">
                                        <div class="col"
                                            style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                            Motivo da ICMS desonaração&nbsp &nbsp<img alt="" src="../Imagens/ihelp.png"  style="width: 20px; height: 20px; cursor:pointer" onclick="anima_informacao(1,'motivoicms30')" /> 
                                        </div>
                                    </div>
                                    <div class="row" style="padding: 0px; margin: 0px">
                                        <div class="col" style="padding: 0px; margin: 0px">
                                            <asp:DropDownList ID="DropDownList10" onBlur="SetTextIn(this,0);SetDiv('div_icms_normal_st_30',0)" onFocus="SetTextIn(this,1);SetDiv('div_icms_normal_st_30',1)" CssClass="layouttexto" runat="server">
                                                <asp:ListItem style="width: 100%;" Text="6" Value="1" />
                                                <asp:ListItem style="width: 100%;" Text="7" Value="1" />
                                                <asp:ListItem style="width: 100%;" Text="9" Value="1" />
                                            </asp:DropDownList>
                                        </div>
                                    </div>
                                </div>

                                

                            </div>
                       
                    </div>
                </div>


               

            </div>

        </div>
    </div>

     <!--///////////////////////////////////////////////////  Container - ICMS =40,41 e 50/////////////////////////////////////////////////////////////////////////////////////////////-->

 <div class="container-fluid" style="padding: 0px; margin: 0px; width: 100%; height: 100%;">


    <div class="row" style="width: 100%; height: 50px"></div>

    <div class="row" style="width: 100%; height: 100%; padding: 0px; margin: 0px; background-color: transparent">

        <div class="row" style="width: 100%; height: 100%; color: #177CC0; padding-left: 20px; padding-top: 0px; font-family: Arial; font-size: 20px; font-weight: bold; margin-left: 0px">

            <div id="i_icms_40_41_50_on" name="i_icms_40_41_50_on" class="col" align="left" style="display: none; visibility: hidden; font-size: 20px; color: red; margin-right: 20px; border-bottom: none; cursor: pointer" onclick="mostra_div_informacao('div_icms_40_41_50','i_icms_40_41_50_on','i_icms_40_41_50_off',0)"><span style="color: #177CC0; font-family: Arial; font-size: 20px; font-weight: bold;">Grupo de Tributação do ICMS=40,41 e 50</span>&nbsp;&nbsp;<i class="fa fa-toggle-on"></i></div>
            <div id="i_icms_40_41_50_off" name="i_icms_40_41_50_off" class="col" align="left" style="display: block; visibility: visible; font-size: 20px; color: red; margin-right: 20px; border-bottom: solid; border-color: #767676; border-width: 1px; cursor: pointer" onclick="mostra_div_informacao('div_icms_40_41_50','i_icms_40_41_50_on','i_icms_40_41_50_off',1)"><span style="color: #177CC0; font-family: Arial; font-size: 20px; font-weight: bold;">Grupo de Tributação do ICMS=40,41 e 50</span>&nbsp;&nbsp;<i class="fa fa-toggle-off"></i></div>


        </div>

        <div class="row" style="width: 100%; height: 20px"></div>


        <div id="div_icms_40_41_50" name="div_icms_40_41_50"
            style="display: none; visibility: visible; width: 100%; height: 100%; background-color: transparent; margin-left: 20px; margin-right: 20px; border: solid; border-color: #177CC0; border-width: 1px; border-radius: 10px; padding: 0 20px 20px 20px;">



<!--/////////////////////////////////////////////////// Container -  LINHA LADO ESQUERDO - Tributação do ICMS = 40, 41 ou 50 e Valor do ICMS/////////////////////////////////////////////////////////////////////////////////////////////-->
            <div class="row"
                style="width: 100%; padding: 0px; margin: 0px; background-color: transparent; height: 100%; padding: 0px; margin: 0px">



                <div class="col-xl-6"
                    style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

                    <div class="row" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

                        <div class="col-xl-6" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px; padding-left: 20px">

                            <div class="row" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

                                <div class="col-md-6" style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-left: 5px; padding-top: 20px">
                                    <div class="row">
                                        <div class="col" style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                            Valor do ICMS 
                                        </div>
                                    </div>
                                    <div class="row" style="padding: 0px; margin: 0px">
                                        <div class="col" style="padding: 0px; margin: 0px">
                                            <asp:TextBox ID="TextBox117" runat="server" CssClass="layouttexto"
                                                Style="width: 40%;" onBlur="SetTextIn(this,0);SetDiv('div_icms_40_41_50',0)" onFocus="SetTextIn(this,1);SetDiv('div_icms_40_41_50',1)">
                                            </asp:TextBox>

                                        </div>
                                    </div>
                                </div>



                            </div>

                        </div>





                        <div class="col-md-6" style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-left: 15px; padding-top: 20px">
                            <div class="row">
                                <div class="col" style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                    Motivo da ICMS desonaração &nbsp &nbsp<img alt="" src="../Imagens/ihelp.png" style="width: 20px; height: 20px; cursor: pointer" onclick="anima_informacao(1,'motivoicms40')" />
                                </div>
                            </div>
                            <div class="row" style="padding: 0px; margin: 0px">
                                <div class="col" style="padding: 0px; margin: 0px">
                                    <asp:DropDownList ID="DropDownList8" onBlur="SetTextIn(this,0);SetDiv('div_icms_40_41_50',0)" onFocus="SetTextIn(this,1);SetDiv('div_icms_40_41_50',1)" CssClass="layouttexto" runat="server">
                                        <asp:ListItem style="width: 100%;" Text="1" Value="1" />
                                        <asp:ListItem style="width: 100%;" Text="3" Value="12" />
                                        <asp:ListItem style="width: 100%;" Text="4" Value="3" />
                                        <asp:ListItem style="width: 100%;" Text="5" Value="4" />
                                        <asp:ListItem style="width: 100%;" Text="6" Value="5" />
                                        <asp:ListItem style="width: 100%;" Text="7" Value="6" />
                                        <asp:ListItem style="width: 100%;" Text="8" Value="7" />
                                        <asp:ListItem style="width: 100%;" Text="9" Value="8" />
                                        <asp:ListItem style="width: 100%;" Text="10" Value="9" />
                                        <asp:ListItem style="width: 100%;" Text="11" Value="10" />
                                    </asp:DropDownList>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>


            </div>
        </div>
    </div>
     <!--///////////////////////////////////////////////////  Container - ICMS =51/////////////////////////////////////////////////////////////////////////////////////////////-->

 <div class="container-fluid" style="padding: 0px; margin: 0px; width: 100%; height: 100%;">


    <div class="row" style="width: 100%; height: 50px"></div>

    <div class="row" style="width: 100%; height: 100%; padding: 0px; margin: 0px; background-color: transparent">

        <div class="row" style="width: 100%; height: 100%; color: #177CC0; padding-left: 20px; padding-top: 0px; font-family: Arial; font-size: 20px; font-weight: bold; margin-left: 0px">

            <div id="i_icms_51_on" name="i_icms_51_on" class="col" align="left" style="display: none; visibility: hidden; font-size: 20px; color: red; margin-right: 20px; border-bottom: none; cursor: pointer" onclick="mostra_div_informacao('div_icms_51','i_icms_51_on','i_icms_51_off',0)"><span style="color: #177CC0; font-family: Arial; font-size: 20px; font-weight: bold;">Grupo de Tributação do ICMS=51</span>&nbsp;&nbsp;<i class="fa fa-toggle-on"></i></div>
            <div id="i_icms_51_off" name="i_icms_51_off" class="col" align="left" style="display: block; visibility: visible; font-size: 20px; color: red; margin-right: 20px; border-bottom: solid; border-color: #767676; border-width: 1px; cursor: pointer" onclick="mostra_div_informacao('div_icms_51','i_icms_51_on','i_icms_51_off',1)"><span style="color: #177CC0; font-family: Arial; font-size: 20px; font-weight: bold;">Grupo de Tributação do ICMS=51</span>&nbsp;&nbsp;<i class="fa fa-toggle-off"></i></div>


        </div>

        <div class="row" style="width: 100%; height: 20px"></div>


        <div id="div_icms_51" name="div_icms_51"
            style="display: none; visibility: visible; width: 100%; height: 100%; background-color: transparent; margin-left: 20px; margin-right: 20px; border: solid; border-color: #177CC0; border-width: 1px; border-radius: 10px; padding: 0 20px 20px 20px;">

            

            <!--/////////////////////////////////////////////////// Container -  LINHA LADO ESQUERDO - Valor do BC do ICMS - Aliquota de Imposto/////////////////////////////////////////////////////////////////////////////////////////////-->
            <div class="row"
                style="width: 100%; padding: 0px; margin: 0px; background-color: transparent; height: 100%; padding: 0px; margin: 0px">



                <div class="col-xl-7"
                    style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

                    <div class="row" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

                        <div class="col-md-6" style="width: 100%; height: 100%; background-color: transparent; padding: 20px;">


                            <div class="row">
                                <div class="col"
                                    style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                    Valor do BC do ICMS &nbsp &nbsp <img alt="" src="../Imagens/ihelp.png"  style="width: 20px; height: 21px; cursor:pointer" onclick="anima_informacao(1,'ValorBCdoICMS')" />
                                </div>
                            </div>

                            <div class="row" style="padding: 0px; margin: 0px">
                            <div class="col" style="padding: 0px; margin: 0px">
                                <asp:TextBox ID="TextBox46" runat="server" CssClass="layouttexto"
                                    Style="width: 40%;" onBlur="SetTextIn(this,0);SetDiv('div_icms_51',0)" onFocus="SetTextIn(this,1);SetDiv('div_icms_51',1)">
                                </asp:TextBox>
                            </div>

                        </div>
                        </div>




                        <div class="col-md-6" style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-left: 15px; padding-top: 20px">
                            <div class="row">
                                <div class="col" style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                    Aliquota de Imposto 
                                </div>
                            </div>
                            <div class="row" style="padding: 0px; margin: 0px">
                                <div class="col" style="padding: 0px; margin: 0px">
                                    <asp:TextBox ID="TextBox47" runat="server" CssClass="layouttexto"
                                        Style="width: 40%;" onBlur="SetTextIn(this,0);SetDiv('div_icms_51',0)" onFocus="SetTextIn(this,1);SetDiv('div_icms_51',1)">
                                    </asp:TextBox>
                                </div>
                            </div>
                        </div>
                    </div>


                </div>



                <!--/////////////////////////////////////////////////// - LADO DIREITO - Percentual de Redução de BC -  Tributação do ICMS = 51   /////////////////////////////////////////////////////////////////////////////////////////////-->
                <div class="col-xl-5" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px; padding-left: 20px">

                    <div class="row" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

                        <div class="col-md-6" style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-left: 5px; padding-top: 20px">
                            <div class="row">
                                <div class="col" style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                    Valor do ICMS
                                </div>
                            </div>
                            <div class="row" style="padding: 0px; margin: 0px">
                                <div class="col" style="padding: 0px; margin: 0px">
                                    <asp:TextBox ID="TextBox45" runat="server" CssClass="layouttexto"
                                        Style="width: 40%;" onBlur="SetTextIn(this,0);SetDiv('div_icms_51',0)" onFocus="SetTextIn(this,1);SetDiv('div_icms_51',1)">
                                    </asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <div class="col-md-6"  style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-left: 5px; padding-top: 20px">
                            <div class="row">
                                <div class="col" style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                    Valor do ICMS diferido&nbsp &nbsp<img alt="" src="../Imagens/ihelp.png"  style="width: 20px; height: 21px; cursor:pointer" onclick="anima_informacao(1,'ICMSdiferido')" />
                                </div>
                            </div>
                            <div class="row" style="padding: 0px; margin: 0px">
                                <div class="col" style="padding: 0px; margin: 0px">
                                    <asp:TextBox ID="TextBox33" runat="server" CssClass="layouttexto"
                                        Style="width: 200px;" onBlur="SetTextIn(this,0);SetDiv('div_icms_51',0)" onFocus="SetTextIn(this,1);SetDiv('div_icms_51',1)">
                                    </asp:TextBox>
                                </div>
                            </div>
                        </div>

                        
                    </div>
                </div>
            </div>


            <!--///////////////////////////////////////////////////  - LADO esquerdo - Modalidade de determinação da BC do ICMS - Percentual de Redução de BC  /////////////////////////////////////////////////////////////////////////////////////////////-->
            <div class="row"
                style="width: 100%; padding: 0px; margin: 0px; background-color: transparent; height: 100%; padding: 0px; margin: 0px">

                <div class="col-xl-7" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px; padding-left: 20px">

                    <div class="row" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

                        <div class="col-md-6" style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-left: 5px; padding-top: 20px">
                            <div class="row">
                                <div class="col" style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                    Modalidade de BC do ICMS 
                                </div>
                            </div>
                            <div class="row" style="padding: 0px; margin: 0px">
                                <div class="col" style="padding: 0px; margin: 0px">
                                    <asp:DropDownList ID="DropDownList23" onBlur="SetTextIn(this,0);SetDiv('div_icms_51',0)" onFocus="SetTextIn(this,1);SetDiv('div_icms_51',1)" CssClass="layouttexto" runat="server">
                                        <asp:ListItem style="width: 100%;" Text="Margem Valor Agregado" Value="1" />
                                        <asp:ListItem style="width: 100%;" Text="Pauta (Valor)" Value="2" />
                                        <asp:ListItem style="width: 100%;" Text="Preço Tabelado Máx. (valor)" Value="3" />
                                        <asp:ListItem style="width: 100%;" Text="Valor da Operação" Value="4" />
                                    </asp:DropDownList>
                                </div>
                            </div>
                        </div>

                        <div class="col-md-6" style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-left: 5px; padding-top: 20px">
                            <div class="row">
                                <div class="col" style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                    Percentual de Redução de BC &nbsp &nbsp <img alt="" src="../Imagens/ihelp.png"  style="width: 20px; height: 21px; cursor:pointer" onclick="anima_informacao(1,'reducaobc')" />
                                </div>
                            </div>
                            <div class="row" style="padding: 0px; margin: 0px">
                                <div class="col" style="padding: 0px; margin: 0px">
                                    <asp:TextBox ID="TextBox48" runat="server" CssClass="layouttexto"
                                        Style="width: 40%;" onBlur="SetTextIn(this,0);SetDiv('div_icms_51',0)" onFocus="SetTextIn(this,1);SetDiv('div_icms_51',1)">
                                    </asp:TextBox>
                                </div>
                            </div>
                        </div>


                    </div>
                </div>

                <!--/////////////////////////////////////////////////// 2 LINHA - LADO DIREITO - Valor do ICMS -   Valor do ICMS da Operação /////////////////////////////////////////////////////////////////////////////////////////////-->
                <div class="col-xl-5" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px; padding-left: 20px">

                    <div class="row" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

                        <div class="col-md-6" style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-left: 5px; padding-top: 20px">
                            <div class="row">
                                <div class="col" style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                    Percentual do Diferimento  &nbsp &nbsp <img alt="" src="../Imagens/ihelp.png"  style="width: 20px; height: 21px; cursor:pointer" onclick="anima_informacao(1,'percentualdodiferimento')" />
                                </div>
                            </div>
                            <div class="row" style="padding: 0px; margin: 0px">
                                <div class="col" style="padding: 0px; margin: 0px">
                                    <asp:TextBox ID="TextBox49" runat="server" CssClass="layouttexto"
                                        Style="width: 50%;" onBlur="SetTextIn(this,0);SetDiv('div_icms_51',0)" onFocus="SetTextIn(this,1);SetDiv('div_icms_51',1)">
                                    </asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <div class="col-md-6" style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-left: 5px; padding-top: 20px">
                            <div class="row">
                                <div class="col" style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                    Valor do ICMS da Operação
                                </div>
                            </div>
                            <div class="row" style="padding: 0px; margin: 0px">
                                <div class="col" style="padding: 0px; margin: 0px">
                                    <asp:TextBox ID="TextBox50" runat="server" CssClass="layouttexto"
                                        Style="width: 50%;" onBlur="SetTextIn(this,0);SetDiv('div_icms_51',0)" onFocus="SetTextIn(this,1);SetDiv('div_icms_51',1)">
                                    </asp:TextBox>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

             

    </div>
</div>

     <!--///////////////////////////////////////////////////  Container - ICMS =60/////////////////////////////////////////////////////////////////////////////////////////////-->

 <div class="container-fluid" style="padding: 0px; margin: 0px; width: 100%; height: 100%;">


    <div class="row" style="width: 100%; height: 50px"></div>

    <div class="row" style="width: 100%; height: 100%; padding: 0px; margin: 0px; background-color: transparent">

        <div class="row" style="width: 100%; height: 100%; color: #177CC0; padding-left: 20px; padding-top: 0px; font-family: Arial; font-size: 20px; font-weight: bold; margin-left: 0px">

            <div id="i_icms_60_on" name="i_icms_60_on" class="col" align="left" style="display: none; visibility: hidden; font-size: 20px; color: red; margin-right: 20px; border-bottom: none; cursor: pointer" onclick="mostra_div_informacao('div_icms_60','i_icms_60_on','i_icms_60_off',0)"><span style="color: #177CC0; font-family: Arial; font-size: 20px; font-weight: bold;">Grupo de Tributação do ICMS=60</span>&nbsp;&nbsp;<i class="fa fa-toggle-on"></i></div>
            <div id="i_icms_60_off" name="i_icms_60_off" class="col" align="left" style="display: block; visibility: visible; font-size: 20px; color: red; margin-right: 20px; border-bottom: solid; border-color: #767676; border-width: 1px; cursor: pointer" onclick="mostra_div_informacao('div_icms_60','i_icms_60_on','i_icms_60_off',1)"><span style="color: #177CC0; font-family: Arial; font-size: 20px; font-weight: bold;">Grupo de Tributação do ICMS=60</span>&nbsp;&nbsp;<i class="fa fa-toggle-off"></i></div>


        </div>

        <div class="row" style="width: 100%; height: 20px"></div>


        <div id="div_icms_60" name="div_icms_60"
            style="display: none; visibility: visible; width: 100%; height: 100%; background-color: transparent; margin-left: 20px; margin-right: 20px; border: solid; border-color: #177CC0; border-width: 1px; border-radius: 10px; padding: 0 20px 20px 20px;">

                   
            <div class="row"
                style="width: 100%; padding: 0px; margin: 0px; background-color: transparent; height: 100%; padding: 0px; margin: 0px">

                <!--/////////////////////////////////////////////////// - LADO DIREITO - Valor do ICMS ST retido  /////////////////////////////////////////////////////////////////////////////////////////////-->
                <div class="col-xl-7" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px; padding-left: 20px">

                    <div class="row" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

                        <div class="col-md-5" style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-left: 5px; padding-top: 20px">
                            <div class="row">
                                <div class="col" style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                    Valor do ICMS ST retido &nbsp &nbsp <img alt="" src="../Imagens/ihelp.png"  style="width: 20px; height: 21px; cursor:pointer" onclick="anima_informacao(1,'icmsretido')" />
                                </div>
                            </div>
                            <div class="row" style="padding: 0px; margin: 0px">
                                <div class="col" style="padding: 0px; margin: 0px">
                                    <asp:TextBox ID="TextBox54" runat="server" CssClass="layouttexto"
                                        Style="width: 40%;" onBlur="SetTextIn(this,0);SetDiv('div_icms_60',0)" onFocus="SetTextIn(this,1);SetDiv('div_icms_60',1)" >
                                    </asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <div class="col-md-7" style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-left: 15px; padding-top: 20px">
                            <div class="row">
                                <div class="col" style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                    Valor da BC do ICMS ST retido &nbsp &nbsp <img alt="" src="../Imagens/ihelp.png"  style="width: 20px; height: 21px; cursor:pointer" onclick="anima_informacao(1,'icmsstretido')" />
                                </div>
                            </div>
                            <div class="row" style="padding: 0px; margin: 0px">
                                <div class="col" style="padding: 0px; margin: 0px">
                                    <asp:TextBox ID="TextBox53" runat="server" CssClass="layouttexto"
                                        Style="width: 40%;" onBlur="SetTextIn(this,0);SetDiv('div_icms_60',0)" onFocus="SetTextIn(this,1);SetDiv('div_icms_60',1)">
                                    </asp:TextBox>
                                </div>
                            </div>
                        </div>
                        
                    </div>
                </div>


                


            </div>

        </div>

    </div>
 </div>


         <!--///////////////////////////////////////////////////  Container - ICMS =70/////////////////////////////////////////////////////////////////////////////////////////////-->

     <div class="container-fluid" style="padding: 0px; margin: 0px; width: 100%; height: 100%;">


        <div class="row" style="width: 100%; height: 50px"></div>
    
        <div class="row" style="width: 100%; height: 100%; padding: 0px; margin: 0px; background-color: transparent">
    
            <div class="row" style="width: 100%; height: 100%; color: #177CC0; padding-left: 20px; padding-top: 0px; font-family: Arial; font-size: 20px; font-weight: bold; margin-left: 0px">
    
                <div id="i_icms_70_on" name="i_icms_70_on" class="col" align="left" style="display: none; visibility: hidden; font-size: 20px; color: red; margin-right: 20px; border-bottom: none; cursor: pointer" onclick="mostra_div_informacao('div_icms_70','i_icms_70_on','i_icms_70_off',0)"><span style="color: #177CC0; font-family: Arial; font-size: 20px; font-weight: bold;">Grupo de Tributação do ICMS=70</span>&nbsp;&nbsp;<i class="fa fa-toggle-on"></i></div>
                <div id="i_icms_70_off" name="i_icms_70_off" class="col" align="left" style="display: block; visibility: visible; font-size: 20px; color: red; margin-right: 20px; border-bottom: solid; border-color: #767676; border-width: 1px; cursor: pointer" onclick="mostra_div_informacao('div_icms_70','i_icms_70_on','i_icms_70_off',1)"><span style="color: #177CC0; font-family: Arial; font-size: 20px; font-weight: bold;">Grupo de Tributação do ICMS=70</span>&nbsp;&nbsp;<i class="fa fa-toggle-off"></i></div>
    
    
            </div>
    
            <div class="row" style="width: 100%; height: 20px"></div>
    
    
            <div id="div_icms_70" name="div_icms_70"
                style="display: none; visibility: visible; width: 100%; height: 100%; background-color: transparent; margin-left: 20px; margin-right: 20px; border: solid; border-color: #177CC0; border-width: 1px; border-radius: 10px; padding: 0 20px 20px 20px;">
    
                
    
                <!--/////////////////////////////////////////////////// Container -  LINHA LADO ESQUERDO - Valor do BC do ICMS - Aliquota de Imposto/////////////////////////////////////////////////////////////////////////////////////////////-->
                <div class="row"
                    style="width: 100%; padding: 0px; margin: 0px; background-color: transparent; height: 100%; padding: 0px; margin: 0px">
    
    
    
                    <div class="col-xl-7"
                        style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">
    
                        <div class="row" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">
    
                            <div class="col-md-6" style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-left: 15px; padding-top: 20px">
    
    
                                <div class="row">
                                    <div class="col"
                                        style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                        Valor do BC do ICMS &nbsp &nbsp <img alt="" src="../Imagens/ihelp.png"  style="width: 20px; height: 21px; cursor:pointer" onclick="anima_informacao(1,'ValorBCdoICMS')" />
                                    </div>
                                </div>
    
                                <div class="row" style="padding: 0px; margin: 0px">
                                <div class="col" style="padding: 0px; margin: 0px">
                                    <asp:TextBox ID="TextBox55" runat="server" CssClass="layouttexto"
                                        Style="width: 40%;" onBlur="SetTextIn(this,0);SetDiv('div_icms_70',0)" onFocus="SetTextIn(this,1);SetDiv('div_icms_70',1)" >
                                    </asp:TextBox>
                                </div>
                             </div>   
                            </div>
    
    
    
    
    
                            <div class="col-md-6" style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-left: 15px; padding-top: 20px">
                                <div class="row">
                                    <div class="col" style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                        Aliquota de Imposto 
                                    </div>
                                </div>
                                <div class="row" style="padding: 0px; margin: 0px">
                                    <div class="col" style="padding: 0px; margin: 0px">
                                        <asp:TextBox ID="TextBox56" runat="server" CssClass="layouttexto"
                                            Style="width: 40%;" onBlur="SetTextIn(this,0);SetDiv('div_icms_70',0)" onFocus="SetTextIn(this,1);SetDiv('div_icms_70',1)" >
                                        </asp:TextBox>
                                    </div>
                                </div>
                            </div>
                        </div>
    
    
                    </div>
    
    
    
                    <!--/////////////////////////////////////////////////// - LADO DIREITO - Tributação do ICMS = 70    /////////////////////////////////////////////////////////////////////////////////////////////-->
                    <div class="col-xl-5" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px; ">
    
                        <div class="row" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">
    
                            <div class="col-md-5" style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-left: 15px; padding-top: 20px">
                                <div class="row">
                                    <div class="col" style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                        Valor do ICMS ST
                                    </div>
                                </div>
                                <div class="row" style="padding: 0px; margin: 0px">
                                    <div class="col" style="padding: 0px; margin: 0px">
                                        <asp:TextBox ID="TextBox51" runat="server" CssClass="layouttexto"
                                            Style="width: 40%;" onBlur="SetTextIn(this,0);SetDiv('div_icms_70',0)" onFocus="SetTextIn(this,1);SetDiv('div_icms_70',1)" >
                                        </asp:TextBox>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-7" style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-left: 15px; padding-top: 20px">
                                <div class="row">
                                    <div class="col" style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                        
                                       Valor do ICMS desonerado &nbsp &nbsp <img alt="" src="../Imagens/ihelp.png"  style="width: 20px; height: 21px; cursor:pointer" onclick="anima_informacao(1,'ICMSdesonerado')" />
                                    </div>
                                </div>
                                <div class="row" style="padding: 0px; margin: 0px">
                                    <div class="col" style="padding: 0px; margin: 0px">
                                        <asp:TextBox ID="TextBox63" runat="server" CssClass="layouttexto"
                                            Style="width: 40%;" onBlur="SetTextIn(this,0);SetDiv('div_icms_70',0)" onFocus="SetTextIn(this,1);SetDiv('div_icms_70',1)" >
                                        </asp:TextBox>
                                    </div>
                                </div>
                            </div>
                            
                        </div>
                    </div>
                </div>
    
    
                <!--///////////////////////////////////////////////////  - LADO esquerdo -  Modalidade de BC do ICMS - Percentual de Redução de BC   /////////////////////////////////////////////////////////////////////////////////////////////-->
                <div class="row"
                    style="width: 100%; padding: 0px; margin: 0px; background-color: transparent; height: 100%; padding: 0px; margin: 0px">
    
                    <div class="col-xl-7" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px; ">
    
                        <div class="row" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">
    
                            <div class="col-md-6" style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-left: 15px; padding-top: 20px">
                                <div class="row">
                                    <div class="col" style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                        Modalidade de BC do ICMS 
                                    </div>
                                </div>
                                <div class="row" style="padding: 0px; margin: 0px">
                                    <div class="col" style="padding: 0px; margin: 0px">
                                        <asp:DropDownList ID="DropDownList28" onBlur="SetTextIn(this,0);SetDiv('div_icms_70',0)" onFocus="SetTextIn(this,1);SetDiv('div_icms_70',1)"  CssClass="layouttexto" runat="server">
                                            <asp:ListItem style="width: 100%;" Text="Margem Valor Agregado" Value="1" />
                                            <asp:ListItem style="width: 100%;" Text="Pauta (Valor)" Value="2" />
                                            <asp:ListItem style="width: 100%;" Text="Preço Tabelado Máx. (valor)" Value="3" />
                                            <asp:ListItem style="width: 100%;" Text="Valor da Operação" Value="4" />
                                        </asp:DropDownList>
                                    </div>
                                </div>
                            </div>
    
                            <div class="col-md-6" style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-left: 15px; padding-top: 20px">
                                <div class="row">
                                    <div class="col" style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                        Percentual de Redução de BC &nbsp &nbsp <img alt="" src="../Imagens/ihelp.png"  style="width: 20px; height: 21px; cursor:pointer" onclick="anima_informacao(1,'reducaobc')" />
                                    </div>
                                </div>
                                <div class="row" style="padding: 0px; margin: 0px">
                                    <div class="col" style="padding: 0px; margin: 0px">
                                        <asp:TextBox ID="TextBox57" runat="server" CssClass="layouttexto"
                                            Style="width: 40%;" onBlur="SetTextIn(this,0);SetDiv('div_icms_70',0)" onFocus="SetTextIn(this,1);SetDiv('div_icms_70',1)" >
                                        </asp:TextBox>
                                    </div>
                                </div>
                            </div>
    
    
                        </div>
                    </div>
    
                    <!--/////////////////////////////////////////////////// 2 LINHA - LADO DIREITO - Valor do ICMS -   Modalidade de BC do ICMS ST /////////////////////////////////////////////////////////////////////////////////////////////-->
                    <div class="col-xl-5" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px; ">
    
                        <div class="row" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">
    
                            <div class="col-md-5" style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-left: 15px; padding-top: 20px">
                                <div class="row">
                                    <div class="col" style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                        Valor do ICMS
                                    </div>
                                </div>
                                <div class="row" style="padding: 0px; margin: 0px">
                                    <div class="col" style="padding: 0px; margin: 0px">
                                        <asp:TextBox ID="TextBox58" runat="server" CssClass="layouttexto"
                                            Style="width: 50%;" onBlur="SetTextIn(this,0);SetDiv('div_icms_70',0)" onFocus="SetTextIn(this,1);SetDiv('div_icms_70',1)" >
                                        </asp:TextBox>
                                    </div>
                                </div>
                            </div>
    
                            <div class="col-md-7" style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-left: 15px; padding-top: 20px">
                                <div class="row">
                                    <div class="col" style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                        Modalidade de BC do ICMS ST &nbsp &nbsp <img alt="" src="../Imagens/ihelp.png"  style="width: 20px; height: 21px; cursor:pointer" onclick="anima_informacao(1,'modalidadebcdocimsst')" />
                                    </div>
                                </div>
                                <div class="row" style="padding: 0px; margin: 0px">
                                    <div class="col" style="padding: 0px; margin: 0px">
                                        <asp:DropDownList ID="DropDownList29" onBlur="SetTextIn(this,0);SetDiv('div_icms_70',0)" onFocus="SetTextIn(this,1);SetDiv('div_icms_70',1)"  CssClass="layouttexto" runat="server">
                                            <asp:ListItem style="width: 100%;" Text="0" Value="1" />
                                            <asp:ListItem style="width: 100%;" Text="1" Value="2" />
                                            <asp:ListItem style="width: 100%;" Text="2" Value="3" />
                                            <asp:ListItem style="width: 100%;" Text="3" Value="4" />
                                            <asp:ListItem style="width: 100%;" Text="4" Value="5" />
                                            <asp:ListItem style="width: 100%;" Text="5" Value="6" />
                                        </asp:DropDownList>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!--/////////////////////////////////////////////////// Container -  LINHA LADO ESQUERDO -  Percentual da Margem de Valor Adicionado do ICMS ST - Percentual da Redução de BC do ICMS ST  /////////////////////////////////////////////////////////////////////////////////////////////-->
                <div class="row" style="height: 30px"></div>
    
                <div class="row"
                    style="width: 100%; padding: 0px; margin: 0px; background-color: transparent; height: 100%; padding: 0px; margin: 0px">
    
    
    
                    <div class="col-xl-7"
                        style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">
    
                        <div class="row" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">
    
                            <div class="col-md-6" style="width: 100%; height: 100%; background-color: transparent;padding: 4px; padding-left: 15px; padding-top: 20px">
    
    
                                <div class="row">
                                    <div class="col"
                                        style="font-family: Arial; font-size: 16px; padding-right:10px;  color: #000000; font-weight: bold">
                                        Motivo da desoneração do ICMS &nbsp &nbsp <img alt="" src="../Imagens/ihelp.png"  style="width: 20px; height: 21px; cursor:pointer" onclick="anima_informacao(1,'motivodesoneracaoicms')" />
                                    </div>
                                </div>
    
                                <div class="row" style="padding: 0px; margin: 0px">
                                <div class="col" style="padding: 0px; margin: 0px">
                                    <asp:DropDownList ID="DropDownList11" onBlur="SetTextIn(this,0);SetDiv('div_icms_70',0)" onFocus="SetTextIn(this,1);SetDiv('div_icms_70',1)"  CssClass="layouttexto" runat="server">
                                        <asp:ListItem style="width: 100%;" Text="3" Value="1" />
                                        <asp:ListItem style="width: 100%;" Text="9" Value="2" />
                                        <asp:ListItem style="width: 100%;" Text="12" Value="3" />
                                    </asp:DropDownList>
                                </div>
                             </div>
                            </div>
    
                            <div class="col-md-6" style="width: 100%; height: 100%; background-color: transparent;  padding: 4px; padding-left: 15px; padding-top: 20px">
    
    
                                <div class="row">
                                    <div class="col"
                                        style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                        % Redução da BC do ICMS ST &nbsp &nbsp<img alt="" src="../Imagens/ihelp.png"  style="width: 20px; height: 20px; cursor:pointer" onclick="anima_informacao(1,'percentualbcicms')" />
                                    </div>
                                </div>
    
                                 <div class="row" style="padding: 0px; margin: 0px">
                                <div class="col" style="padding: 0px; margin: 0px">
                                    <asp:TextBox ID="TextBox60" runat="server" CssClass="layouttexto"
                                        Style="width: 200px;" onBlur="SetTextIn(this,0);SetDiv('div_icms_70',0)" onFocus="SetTextIn(this,1);SetDiv('div_icms_70',1)"  >
                                    </asp:TextBox>
                                </div>
                            </div>
                            </div>
    
                        </div>
                    </div>
<!--/////////////////////////////////////////////////// Container -  LINHA LADO DIREITO - Valor da BC do ICMS ST - Aliquota do imposto do ICMS ST  /////////////////////////////////////////////////////////////////////////////////////////////-->
                    <div class="col-xl-5"
                    style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

                    <div class="row" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

                        <div class="col-md-5" style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-left: 15px; padding-top: 20px">


                            <div class="row">
                                <div class="col"
                                    style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                    BC ICMS ST
                                </div>
                            </div>

                            <div class="row" style="padding: 0px; margin: 0px">
                            <div class="col" style="padding: 0px; margin: 0px">
                                <asp:TextBox ID="TextBox61" runat="server" CssClass="layouttexto"
                                    Style="width: 200px;" onBlur="SetTextIn(this,0);SetDiv('div_icms_70',0)" onFocus="SetTextIn(this,1);SetDiv('div_icms_70',1)" >
                                </asp:TextBox>
                            </div>
                         </div>    
                        </div>

                        <div class="col-md-7" style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-left: 15px; padding-top: 20px">


                            <div class="row">
                                <div class="col"
                                    style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                    Aliquota do imposto do ICMS ST
                                </div>
                            </div>

                            <div class="row" style="padding: 0px; margin: 0px">
                            <div class="col" style="padding: 0px; margin: 0px">
                                <asp:TextBox ID="TextBox62" runat="server" CssClass="layouttexto"
                                    Style="width: 200px;" onBlur="SetTextIn(this,0);SetDiv('div_icms_70',0)" onFocus="SetTextIn(this,1);SetDiv('div_icms_70',1)" >
                                </asp:TextBox>
                            </div>
                        </div>
                        </div>

                    </div>
                </div>   


                </div>

                 <!--/////////////////////////////////////////////////// Container -  LINHA ESQUERDO -  % Margem do Valor Adicionado do ICMS ST  /////////////////////////////////////////////////////////////////////////////////////////////-->
                 <div class="row" style="height: 30px"></div>
    
                 <div class="row"
                     style="width: 100%; padding: 0px; margin: 0px; background-color: transparent; height: 100%; padding: 0px; margin: 0px">
     
                     <div class="col-xl-12"
                     style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">
 
                     <div class="row" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">
 
                         <div class="col-md-auto" style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-left: 15px; padding-top: 20px">
 
 
                             <div class="row">
                                 <div class="col"
                                     style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                    % Margem do Valor Adicionado do ICMS ST &nbsp &nbsp<img alt="" src="../Imagens/ihelp.png"  style="width: 20px; height: 20px; cursor:pointer" onclick="anima_informacao(1,'margemvaloradicionadoicmsst')" />
                                 </div>
                             </div>
 
                             <div class="row">
                             <div class="col">
                                 <asp:TextBox ID="TextBox59" runat="server" CssClass="layouttexto"
                                     Style="width: 200px;" onBlur="SetTextIn(this,0);SetDiv('div_icms_70',0)" onFocus="SetTextIn(this,1);SetDiv('div_icms_70',1)" >
                                 </asp:TextBox>
                             </div>
                            </div>
                         </div>
                     </div>
                 </div>   
                </div>


            </div>
        </div>
    </div>

             <!--///////////////////////////////////////////////////  Container - ICMS =90/////////////////////////////////////////////////////////////////////////////////////////////-->

         <div class="container-fluid" style="padding: 0px; margin: 0px; width: 100%; height: 100%;">


            <div class="row" style="width: 100%; height: 50px"></div>
        
            <div class="row" style="width: 100%; height: 100%; padding: 0px; margin: 0px; background-color: transparent">
        
                <div class="row" style="width: 100%; height: 100%; color: #177CC0; padding-left: 20px; padding-top: 0px; font-family: Arial; font-size: 20px; font-weight: bold; margin-left: 0px">
        
                    <div id="i_icms_90_on" name="i_icms_90_on" class="col" align="left" style="display: none; visibility: hidden; font-size: 20px; color: red; margin-right: 20px; border-bottom: none; cursor: pointer" onclick="mostra_div_informacao('div_icms_90','i_icms_90_on','i_icms_90_off',0)"><span style="color: #177CC0; font-family: Arial; font-size: 20px; font-weight: bold;">Grupo de Tributação do ICMS=90</span>&nbsp;&nbsp;<i class="fa fa-toggle-on"></i></div>
                    <div id="i_icms_90_off" name="i_icms_90_off" class="col" align="left" style="display: block; visibility: visible; font-size: 20px; color: red; margin-right: 20px; border-bottom: solid; border-color: #767676; border-width: 1px; cursor: pointer" onclick="mostra_div_informacao('div_icms_90','i_icms_90_on','i_icms_90_off',1)"><span style="color: #177CC0; font-family: Arial; font-size: 20px; font-weight: bold;">Grupo de Tributação do ICMS=90</span>&nbsp;&nbsp;<i class="fa fa-toggle-off"></i></div>
        
        
                </div>
        
                <div class="row" style="width: 100%; height: 20px"></div>
        
        
                <div id="div_icms_90" name="div_icms_90"
                    style="display: none; visibility: visible; width: 100%; height: 100%; background-color: transparent; margin-left: 20px; margin-right: 20px; border: solid; border-color: #177CC0; border-width: 1px; border-radius: 10px; padding: 0 20px 20px 20px;">
        
                   
        
                    <!--/////////////////////////////////////////////////// Container -  LINHA LADO ESQUERDO - Tributação do ICMS = 90 -  Valor da BC ICMS ST/////////////////////////////////////////////////////////////////////////////////////////////-->
                    
                    <div class="row"
                        style="width: 100%; padding: 0px; margin: 0px; background-color: transparent; height: 100%; padding: 0px; margin: 0px">
        
        
        
                        <div class="col-xl-7"
                            style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">
        
                            <div class="row" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">
        
                                <div class="col-md-6" style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-left: 15px; padding-top: 20px">
        
        
                                    <div class="row">
                                        <div class="col"
                                            style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                            Motivo da desoneração do ICMS &nbsp &nbsp <img alt="" src="../Imagens/ihelp.png"  style="width: 20px; height: 21px; cursor:pointer" onclick="anima_informacao(1,'motivodesoneracaoicms')" />
                                        </div>
                                    </div>
        
                                    <div class="row" style="padding: 0px; margin: 0px">
                                    <div class="col" style="padding: 0px; margin: 0px">
                                        <asp:DropDownList ID="DropDownList34"  onBlur="SetTextIn(this,0);SetDiv('div_icms_90',0)" onFocus="SetTextIn(this,1);SetDiv('div_icms_90',1)"  CssClass="layouttexto"  runat="server">
                                            <asp:ListItem style="width: 100%;" Text="3" Value="1" />
                                            <asp:ListItem style="width: 100%;" Text="9" Value="2" />
                                            <asp:ListItem style="width: 100%;" Text="12" Value="3" />
                                        </asp:DropDownList>
                                    </div>
                                 </div>   
                                </div>
        
        
        
        
        
                                <div class="col-md-6" style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-left: 15px; padding-top: 20px">
                                    <div class="row">
                                        <div class="col" style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                            Valor da BC ICMS ST
                                        </div>
                                    </div>
                                    <div class="row" style="padding: 0px; margin: 0px">
                                        <div class="col" style="padding: 0px; margin: 0px">
                                            <asp:TextBox ID="TextBox65" runat="server" CssClass="layouttexto"
                                                Style="width: 40%;" onBlur="SetTextIn(this,0);SetDiv('div_icms_90',0)" onFocus="SetTextIn(this,1);SetDiv('div_icms_90',1)"  >
                                            </asp:TextBox>
                                        </div>
                                    </div>
                                </div>
                            </div>
        
        
                        </div>
        
        
        
                        <!--/////////////////////////////////////////////////// - LADO DIREITO - Percentual de Redução de BC -  Aliquota do Imposto   /////////////////////////////////////////////////////////////////////////////////////////////-->
                        <div class="col-xl-5" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px; ">
        
                            <div class="row" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">
        
                                <div class="col-md-5" style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-left: 15px; padding-top: 20px">
                                    <div class="row">
                                        <div class="col" style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                            Aliquota do Imposto

                                        </div>
                                    </div>
                                    <div class="row" style="padding: 0px; margin: 0px">
                                        <div class="col" style="padding: 0px; margin: 0px">
                                            <asp:TextBox ID="TextBox66" runat="server" CssClass="layouttexto"
                                                Style="width: 40%;" onBlur="SetTextIn(this,0);SetDiv('div_icms_90',0)" onFocus="SetTextIn(this,1);SetDiv('div_icms_90',1)">
                                            </asp:TextBox>
                                    </div>
                                </div>
                                    </div>
        
                                <div class="col-md-7" style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-left: 15px; padding-top: 20px">
                                    <div class="row">
                                        <div class="col" style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                            Percentual de Redução de BC &nbsp &nbsp <img alt="" src="../Imagens/ihelp.png"  style="width: 20px; height: 21px; cursor:pointer" onclick="anima_informacao(1,'reducaobc')" />
                                        </div>
                                    </div>
                                    <div class="row" style="padding: 0px; margin: 0px">
                                        <div class="col" style="padding: 0px; margin: 0px">
                                            <asp:TextBox ID="TextBox67" runat="server" CssClass="layouttexto"
                                                Style="width: 40%;" onBlur="SetTextIn(this,0);SetDiv('div_icms_90',0)" onFocus="SetTextIn(this,1);SetDiv('div_icms_90',1)">
                                            </asp:TextBox>
                                        </div>
                                    </div>
                                </div>
                                
                            
                        </div>
                    </div>
        
        
                    <!--///////////////////////////////////////////////////  - LADO esquerdo -  Valor do ICMS -  Modalidade de BC do ICMS ST  /////////////////////////////////////////////////////////////////////////////////////////////-->
                        <div class="row" style="height: 40px"></div>

                    <div class="row" 
                        style="width: 100%; padding: 0px; margin: 0px; background-color: transparent; height: 100%; padding: 0px; margin: 0px">
        
                        <div class="col-xl-7" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px; ">
        
                            <div class="row" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">
        
                                <div class="col-md-6" style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-left: 15px; padding-top: 20px">
                                    <div class="row">
                                        <div class="col" style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                            % Redução da BC do ICMS ST &nbsp &nbsp<img alt="" src="../Imagens/ihelp.png"  style="width: 20px; height: 20px; cursor:pointer" onclick="anima_informacao(1,'percentualbcicms')" />
                                        </div>
                                    </div>
                                    <div class="row" style="padding: 0px; margin: 0px">
                                        <div class="col" style="padding: 0px; margin: 0px">
                                            <asp:TextBox ID="TextBox68" runat="server" CssClass="layouttexto"
                                                Style="width: 40%;" onBlur="SetTextIn(this,0);SetDiv('div_icms_90',0)" onFocus="SetTextIn(this,1);SetDiv('div_icms_90',1)">
                                            </asp:TextBox>
                                        </div>
                                    </div>
                                </div>
        
                                <div class="col-md-6" style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-left: 15px; padding-top: 20px">
                                    <div class="row">
                                        <div class="col" style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                            Modalidade de BC do ICMS ST &nbsp &nbsp <img alt="" src="../Imagens/ihelp.png"  style="width: 20px; height: 21px; cursor:pointer" onclick="anima_informacao(1,'modalidadebcdocimsst')" />
                                        </div>
                                    </div>
                                    <div class="row" style="padding: 0px; margin: 0px">
                                        <div class="col" style="padding: 0px; margin: 0px">
                                            <asp:DropDownList ID="DropDownList33" onBlur="SetTextIn(this,0);SetDiv('div_icms_90',0)" onFocus="SetTextIn(this,1);SetDiv('div_icms_90',1)" CssClass="layouttexto" runat="server">
                                                <asp:ListItem style="width: 100%;" Text="0" Value="1" />
                                                <asp:ListItem style="width: 100%;" Text="1" Value="2" />
                                                <asp:ListItem style="width: 100%;" Text="2" Value="3" />
                                                <asp:ListItem style="width: 100%;" Text="3" Value="4" />
                                                <asp:ListItem style="width: 100%;" Text="4" Value="5" />
                                                <asp:ListItem style="width: 100%;" Text="5" Value="6" />
                                            </asp:DropDownList>
                                        </div>
                                    </div>
                                </div>
        
        
                            </div>
                        </div>
        
                        <!--/////////////////////////////////////////////////// 2 LINHA - LADO DIREITO - Percentual da margem de valor Adicionado do ICMS ST -   Redução Percentual da BC do ICMS ST /////////////////////////////////////////////////////////////////////////////////////////////-->
                        <div class="col-xl-5" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px; ">
        
                            <div class="row" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">
        
                                <div class="col-md-5" style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-left: 15px; padding-top: 20px">
                                    <div class="row">
                                        <div class="col" style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                            Valor do ICMS
                                        </div>
                                    </div>
                                    <div class="row" style="padding: 0px; margin: 0px">
                                        <div class="col" style="padding: 0px; margin: 0px">
                                            <asp:TextBox ID="TextBox69" runat="server" CssClass="layouttexto"
                                                Style="width: 50%;" onBlur="SetTextIn(this,0);SetDiv('div_icms_90',0)" onFocus="SetTextIn(this,1);SetDiv('div_icms_90',1)">
                                            </asp:TextBox>
                                        </div>
                                    </div>
                                </div>
        
                                <div class="col-md-7" style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-left: 15px; padding-top: 20px">
                                    <div class="row">
                                        <div class="col" style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                           % Margem de Valor do ICMS ST  &nbsp<img alt="" src="../Imagens/ihelp.png"  style="width: 20px; height: 20px; cursor:pointer" onclick="anima_informacao(1,'margemvaloradicionadoicmsst')" />

                                        </div>
                                    </div>
                                    <div class="row" style="padding: 0px; margin: 0px">
                                        <div class="col" style="padding: 0px; margin: 0px">
                                            <asp:TextBox ID="TextBox70" runat="server" CssClass="layouttexto"
                                            Style="width: 50%;" onBlur="SetTextIn(this,0);SetDiv('div_icms_90',0)" onFocus="SetTextIn(this,1);SetDiv('div_icms_90',1)">
                                        </asp:TextBox>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!--/////////////////////////////////////////////////// Container -  LINHA LADO ESQUERDO -  Valor da BC do ICMS ST - Alíquota do imposto do ICMS ST  /////////////////////////////////////////////////////////////////////////////////////////////-->
                    <div class="row" style="height: 40px"></div>
        
                    <div class="row"
                        style="width: 100%; padding: 0px; margin: 0px; background-color: transparent; height: 100%; padding: 0px; margin: 0px">
        
        
        
                        <div class="col-xl-7"
                            style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">
        
                            <div class="row" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">
        
                                <div class="col-md-6" style="width: 100%; height: 100%; background-color: transparent;padding: 4px; padding-left: 15px; padding-top: 20px">
        
        
                                    <div class="row">
                                        <div class="col"
                                            style="font-family: Arial; font-size: 16px; padding-right:10px;  color: #000000; font-weight: bold">
                                            Valor da BC do ICMS ST
                                        </div>
                                    </div>
        
                                    <div class="row" style="padding: 0px; margin: 0px">
                                    <div class="col" style="padding: 0px; margin: 0px">
                                        <asp:TextBox ID="TextBox71" runat="server" CssClass="layouttexto"
                                            Style="width: 200px;" onBlur="SetTextIn(this,0);SetDiv('div_icms_90',0)" onFocus="SetTextIn(this,1);SetDiv('div_icms_90',1)">
                                        </asp:TextBox>
                                    </div>
                                 </div>
                                </div>
        
                                <div class="col-md-6" style="width: 100%; height: 100%; background-color: transparent;  padding: 4px; padding-left: 15px; padding-top: 20px">
        
        
                                    <div class="row">
                                        <div class="col"
                                            style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                            Alíquota do imposto do ICMS ST
                                        </div>
                                    </div>
        
                                     <div class="row" style="padding: 0px; margin: 0px">
                                    <div class="col" style="padding: 0px; margin: 0px">
                                        <asp:TextBox ID="TextBox72" runat="server" CssClass="layouttexto"
                                            Style="width: 200px;" onBlur="SetTextIn(this,0);SetDiv('div_icms_90',0)" onFocus="SetTextIn(this,1);SetDiv('div_icms_90',1)">
                                        </asp:TextBox>
                                    </div>
                                </div>
                                </div>
        
                            </div>
                        </div>
    <!--/////////////////////////////////////////////////// Container -  LINHA LADO DIREITO - Valor do ICMS ST - Valor do ICMS desonerado  /////////////////////////////////////////////////////////////////////////////////////////////-->
                        <div class="col-xl-5"
                        style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">
    
                        <div class="row" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">
    
                            <div class="col-md-5" style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-left: 15px; padding-top: 20px">
    
    
                                <div class="row">
                                    <div class="col"
                                        style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                        Valor do ICMS ST
                                    </div>
                                </div>
    
                                <div class="row" style="padding: 0px; margin: 0px">
                                <div class="col" style="padding: 0px; margin: 0px">
                                    <asp:TextBox ID="TextBox73" runat="server" CssClass="layouttexto"
                                        Style="width: 200px;" onBlur="SetTextIn(this,0);SetDiv('div_icms_90',0)" onFocus="SetTextIn(this,1);SetDiv('div_icms_90',1)">
                                    </asp:TextBox>
                                </div>
                             </div>    
                            </div>
    
                            <div class="col-md-7" style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-left: 15px; padding-top: 20px">
    
    
                                <div class="row">
                                    <div class="col"
                                        style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                        Valor do ICMS desonerado &nbsp &nbsp <img alt="" src="../Imagens/ihelp.png"  style="width: 20px; height: 21px; cursor:pointer" onclick="anima_informacao(1,'ICMSdesonerado')" />
                                    </div>
                                </div>
    
                                <div class="row" style="padding: 0px; margin: 0px">
                                <div class="col" style="padding: 0px; margin: 0px">
                                    <asp:TextBox ID="TextBox74" runat="server" CssClass="layouttexto"
                                        Style="width: 200px;" onBlur="SetTextIn(this,0);SetDiv('div_icms_90',0)" onFocus="SetTextIn(this,1);SetDiv('div_icms_90',1)">
                                    </asp:TextBox>
                                </div>
                            </div>
                            </div>
    
                        </div>
                    </div>   

                    </div>

                       

    </div>
                
            </div>
        </div>
        </div>

            <!--///////////////////////////////////////////////////  Container - ICMS Partilha ICMS/////////////////////////////////////////////////////////////////////////////////////////////-->

<div class="container-fluid" style="padding: 0px; margin: 0px; width: 100%; height: 100%;">


    <div class="row" style="width: 100%; height: 50px"></div>

    <div class="row" style="width: 100%; height: 100%; padding: 0px; margin: 0px; background-color: transparent">

        <div class="row"
            style="width: 100%; height: 100%; color: #177CC0; padding-left: 20px; padding-top: 0px; font-family: Arial; font-size: 20px; font-weight: bold; margin-left: 0px">

            <div id="i_partilha_icms_on" name="i_partilha_icms_on" class="col" align="left"
                style="display: none; visibility: hidden; font-size: 20px; color: red; margin-right: 20px; border-bottom: none; cursor: pointer"
                onclick="mostra_div_informacao('div_partilha_icms','i_partilha_icms_on','i_partilha_icms_off',0)"><span
                    style="color: #177CC0; font-family: Arial; font-size: 20px; font-weight: bold;">Grupo de Partilha do
                    ICMS</span>&nbsp;&nbsp;<i class="fa fa-toggle-on"></i></div>
            <div id="i_partilha_icms_off" name="i_partilha_icms_off" class="col" align="left"
                style="display: block; visibility: visible; font-size: 20px; color: red; margin-right: 20px; border-bottom: solid; border-color: #767676; border-width: 1px; cursor: pointer"
                onclick="mostra_div_informacao('div_partilha_icms','i_partilha_icms_on','i_partilha_icms_off',1)"><span
                    style="color: #177CC0; font-family: Arial; font-size: 20px; font-weight: bold;">Grupo de Partilha do
                    ICMS</span>&nbsp;&nbsp;<i class="fa fa-toggle-off"></i></div>


        </div>

        <div class="row" style="width: 100%; height: 20px"></div>


        <div id="div_partilha_icms" name="div_partilha_icms"
            style="display: none; visibility: visible; width: 100%; height: 100%; background-color: transparent; margin-left: 20px; margin-right: 20px; border: solid; border-color: #177CC0; border-width: 1px; border-radius: 10px; padding: 0 20px 20px 20px;">

           

            <!--/////////////////////////////////////////////////// Container -  LINHA LADO ESQUERDO - Tributação do ICMS   /////////////////////////////////////////////////////////////////////////////////////////////-->
           

            <div class="row"
                style="width: 100%; padding: 0px; margin: 0px; background-color: transparent; height: 100%; padding: 0px; margin: 0px">



                <div class="col-xl-7"
                    style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

                    <div class="row"
                        style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

                        <div class="col-md-6"
                            style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-left: 15px; padding-top: 20px">


                            <div class="row">
                                <div class="col"
                                    style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                    Alíquota do imposto do ICMS ST
                                </div>
                            </div>

                            <div class="row" style="padding: 0px; margin: 0px">
                                <div class="col" style="padding: 0px; margin: 0px">
                                    <asp:TextBox ID="TextBox64" runat="server" CssClass="layouttexto"
                                        Style="width: 40%;" onBlur="SetTextIn(this,0);SetDiv('div_partilha_icms',0)" onFocus="SetTextIn(this,1);SetDiv('div_partilha_icms',1)">
                                    </asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <div class="col-md-6"
                            style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-left: 15px; padding-top: 20px">


                            <div class="row">
                                <div class="col"
                                    style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                    Percentual da BC operação própria &nbsp &nbsp <img alt="" src="../Imagens/ihelp.png"  style="width: 20px; height: 21px; cursor:pointer" onclick="anima_informacao(1,'bcoperacaopropria')" />
                                </div>
                            </div>

                            <div class="row" style="padding: 0px; margin: 0px">
                                <div class="col" style="padding: 0px; margin: 0px">
                                    <asp:TextBox ID="TextBox84" runat="server" CssClass="layouttexto"
                                        Style="width: 40%;" onBlur="SetTextIn(this,0);SetDiv('div_partilha_icms',0)" onFocus="SetTextIn(this,1);SetDiv('div_partilha_icms',1)">
                                    </asp:TextBox>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>


                <!--/////////////////////////////////////////////////// - LADO DIREITO - Valor da BC do ICMS -   Modalidade da BC do ICMS   /////////////////////////////////////////////////////////////////////////////////////////////-->
                <div class="col-xl-5"
                    style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px; ">

                    <div class="row"
                        style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

                        <div class="col-md-7"
                            style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-left: 15px; padding-top: 20px">
                            <div class="row">
                                <div class="col"
                                    style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                     Modalidade da BC do ICMS 
                                </div>
                            </div>
                            <div class="row" style="padding: 0px; margin: 0px">
                                <div class="col" style="padding: 0px; margin: 0px">
                                    <asp:DropDownList ID="DropDownList39" onBlur="SetTextIn(this,0);SetDiv('div_partilha_icms',0)" onFocus="SetTextIn(this,1);SetDiv('div_partilha_icms',1)" CssClass="layouttexto" runat="server">
                                        <asp:ListItem style="width: 100%;" Text="0=Margem Valor Agregado" Value="1" />
                                        <asp:ListItem style="width: 100%;" Text="1=Pauta(valor)" Value="2" />
                                        <asp:ListItem style="width: 100%;" Text="2=Preço Tabelado Máx.(valor)"
                                            Value="3" />
                                        <asp:ListItem style="width: 100%;" Text="3=Valor da operação" Value="4" />

                                    </asp:DropDownList>
                                </div>
                            </div>
                        </div>

                        <div class="col-md-5"
                            style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-left: 15px; padding-top: 20px">
                            <div class="row">
                                <div class="col"
                                    style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                    Valor da BC do ICMS
                                </div>
                            </div>
                            <div class="row" style="padding: 0px; margin: 0px">
                                <div class="col" style="padding: 0px; margin: 0px">
                                    <asp:TextBox ID="TextBox76" runat="server" CssClass="layouttexto"
                                        Style="width: 100px;" onBlur="SetTextIn(this,0);SetDiv('div_partilha_icms',0)" onFocus="SetTextIn(this,1);SetDiv('div_partilha_icms',1)">
                                    </asp:TextBox>
                                </div>
                            </div>
                        </div>


                    </div>
                </div>

            </div>

            <!--///////////////////////////////////////////////////  - LADO esquerdo -  Aliquota do imposto -   Percentual da Redução de BC /////////////////////////////////////////////////////////////////////////////////////////////-->
            <div class="row" style="height: 30px"></div>

            <div class="row"
                style="width: 100%; padding: 0px; margin: 0px; background-color: transparent; height: 100%; padding: 0px; margin: 0px">

                <div class="col-xl-7"
                    style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px; ">

                    <div class="row"
                        style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

                        <div class="col-md-6"
                            style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-left: 15px; padding-top: 20px">
                            <div class="row">
                                <div class="col"
                                    style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                    Percentual da Redução de BC &nbsp &nbsp <img alt="" src="../Imagens/ihelp.png"  style="width: 20px; height: 21px; cursor:pointer" onclick="anima_informacao(1,'reducaobc')" />
                                </div>
                            </div>
                            <div class="row" style="padding: 0px; margin: 0px">
                                <div class="col" style="padding: 0px; margin: 0px">
                                    <asp:TextBox ID="TextBox77" runat="server" CssClass="layouttexto"
                                        Style="width: 100px;" onBlur="SetTextIn(this,0);SetDiv('div_partilha_icms',0)" onFocus="SetTextIn(this,1);SetDiv('div_partilha_icms',1)">
                                    </asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <div class="col-md-6"
                            style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-left: 15px; padding-top: 20px">
                            <div class="row">
                                <div class="col"
                                    style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                    Alíquota do imposto
                                </div>
                            </div>
                            <div class="row" style="padding: 0px; margin: 0px">
                                <div class="col" style="padding: 0px; margin: 0px">
                                    <asp:TextBox ID="TextBox78" runat="server" CssClass="layouttexto"
                                        Style="width: 100px;" onBlur="SetTextIn(this,0);SetDiv('div_partilha_icms',0)" onFocus="SetTextIn(this,1);SetDiv('div_partilha_icms',1)">
                                    </asp:TextBox>
                                </div>
                            </div>
                        </div>


                    </div>
                </div>

                <!--/////////////////////////////////////////////////// 2 LINHA - LADO DIREITO -  Modalidade da BC do ICMS ST -   Valor do ICMS /////////////////////////////////////////////////////////////////////////////////////////////-->
                <div class="col-xl-5"
                    style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px; ">

                    <div class="row"
                        style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

                        <div class="col-md-7"
                            style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-left: 15px; padding-top: 20px">
                            <div class="row">
                                <div class="col"
                                    style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                    Modalidade da BC do ICMS ST &nbsp &nbsp <img alt="" src="../Imagens/ihelp.png"  style="width: 20px; height: 21px; cursor:pointer" onclick="anima_informacao(1,'modalidadebcdocimsst')" />
                                </div>
                            </div>
                            <div class="row" style="padding: 0px; margin: 0px">
                                <div class="col" style="padding: 0px; margin: 0px">
                                    <asp:DropDownList ID="DropDownList38" onBlur="SetTextIn(this,0);SetDiv('div_partilha_icms',0)" onFocus="SetTextIn(this,1);SetDiv('div_partilha_icms',1)" CssClass="layouttexto" runat="server">
                                        <asp:ListItem style="width: 100%;" Text="0=Tabelado ou máximo sugerido"
                                            Value="1" />
                                        <asp:ListItem style="width: 100%;" Text="1=lista Negativada (valor)"
                                            Value="2" />
                                        <asp:ListItem style="width: 100%;" Text="2=Lista Positiva (valor)" Value="3" />
                                        <asp:ListItem style="width: 100%;" Text="3=Lista Neutra(valor)" Value="4" />
                                        <asp:ListItem style="width: 100%;" Text="4=Margem Valor Agregado(%)"
                                            Value="5" />
                                        <asp:ListItem style="width: 100%;" Text="5=Pauta(valor)" Value="6" />
                                    </asp:DropDownList>
                                </div>
                            </div>
                        </div>

                        <div class="col-md-5"
                            style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-left: 15px; padding-top: 20px">
                            <div class="row">
                                <div class="col"
                                    style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                     Valor do ICMS

                                </div>
                            </div>
                            <div class="row" style="padding: 0px; margin: 0px">
                                <div class="col" style="padding: 0px; margin: 0px">
                                    <asp:TextBox ID="TextBox80" runat="server" CssClass="layouttexto"
                                        Style="width: 40%;" onBlur="SetTextIn(this,0)" onFocus="SetTextIn(this,1)">
                                    </asp:TextBox>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!--/////////////////////////////////////////////////// Container -  LINHA LADO ESQUERDO -  % Margem de Valor Adicionado do ICMS ST -  Redução Percentual da BC do ICMS ST   /////////////////////////////////////////////////////////////////////////////////////////////-->
            <div class="row" style="height: 30px"></div>

            <div class="row"
                style="width: 100%; padding: 0px; margin: 0px; background-color: transparent; height: 100%; padding: 0px; margin: 0px">



                <div class="col-xl-7"
                    style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

                    <div class="row"
                        style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

                        <div class="col-md-6"
                            style="width: 100%; height: 100%; background-color: transparent;padding: 4px; padding-left: 15px; padding-top: 20px">


                            <div class="row">
                                <div class="col"
                                    style="font-family: Arial; font-size: 16px; padding-right:10px;  color: #000000; font-weight: bold">
                                   Percentual da MVA do ICMS ST&nbsp &nbsp <img alt="" src="../Imagens/ihelp.png"  style="width: 20px; height: 21px; cursor:pointer" onclick="anima_informacao(1,'PercentualdaMV doICMSST')" />
                                </div>
                            </div>

                            <div class="row" style="padding: 0px; margin: 0px">
                                <div class="col" style="padding: 0px; margin: 0px">
                                    <asp:TextBox ID="TextBox81" runat="server" CssClass="layouttexto"
                                        Style="width: 100px;" onBlur="SetTextIn(this,0);SetDiv('div_partilha_icms',0)" onFocus="SetTextIn(this,1);SetDiv('div_partilha_icms',1)">
                                    </asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <div class="col-md-6"
                            style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-left: 15px; padding-top: 20px">
                            <div class="row">
                                <div class="col"
                                    style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                    Redução Percentual da BC do ICMS ST &nbsp &nbsp<img alt="" src="../Imagens/ihelp.png"  style="width: 20px; height: 20px; cursor:pointer" onclick="anima_informacao(1,'percentualbcicms')" />

                                </div>
                            </div>
                            <div class="row" style="padding: 0px; margin: 0px">
                                <div class="col" style="padding: 0px; margin: 0px">
                                    <asp:TextBox ID="TextBox79" runat="server" CssClass="layouttexto"
                                        Style="width: 100px;" onBlur="SetTextIn(this,0);SetDiv('div_partilha_icms',0)" onFocus="SetTextIn(this,1);SetDiv('div_partilha_icms',1)">
                                    </asp:TextBox>
                                </div>
                            </div>
                        </div>


                    </div>
                </div>
            

            <!--/////////////////////////////////////////////////// Container -  LINHA LADO DIRETO -  Valor da BC do ICMS ST - Valor do ICMS ST  /////////////////////////////////////////////////////////////////////////////////////////////-->
            



                <div class="col-xl-5"
                    style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

                    <div class="row"
                        style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

                        <div class="col-md-7"
                            style="width: 100%; height: 100%; background-color: transparent;padding: 4px; padding-left: 15px; padding-top: 20px">


                            <div class="row">
                                <div class="col"
                                    style="font-family: Arial; font-size: 16px; padding-right:10px;  color: #000000; font-weight: bold">
                                    Valor da BC do ICMS ST
                                </div>
                            </div>

                            <div class="row" style="padding: 0px; margin: 0px">
                                <div class="col" style="padding: 0px; margin: 0px">
                                    <asp:TextBox ID="TextBox82" runat="server" CssClass="layouttexto"
                                        Style="width: 100px;" onBlur="SetTextIn(this,0);SetDiv('div_partilha_icms',0)" onFocus="SetTextIn(this,1);SetDiv('div_partilha_icms',1)">
                                    </asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <div class="col-md-5"
                            style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-left: 15px; padding-top: 20px">
                            <div class="row">
                                <div class="col"
                                    style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                    Valor do ICMS ST 
                                </div>
                            </div>
                            <div class="row" style="padding: 0px; margin: 0px">
                                <div class="col" style="padding: 0px; margin: 0px">
                                    <asp:TextBox ID="TextBox83" runat="server" CssClass="layouttexto"
                                        Style="width: 40%;" onBlur="SetTextIn(this,0);SetDiv('div_partilha_icms',0)" onFocus="SetTextIn(this,1);SetDiv('div_partilha_icms',1)">
                                    </asp:TextBox>
                                </div>
                            </div>
                        </div>


                    </div>
                </div>
            </div>

            <!--///////////////////////////////////////////////////  - LADO ESQUERDO - UF para qual é devido o ICMS ST /////////////////////////////////////////////////////////////////////////////////////////////-->
            <div class="row" style="height: 30px"></div>

            <div class="row"
                style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">



                <div class="col-xl-12"
                    style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px;">

                    <div class="row"
                        style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

                        <div class="col-md-12"
                            style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-left: 15px; padding-top: 20px">
                            <div class="row">
                                <div class="col"
                                    style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                    UF para qual é devido o ICMS ST &nbsp &nbsp <img alt="" src="../Imagens/ihelp.png"  style="width: 20px; height: 21px; cursor:pointer" onclick="anima_informacao(1,'uficmsst')" />
                                </div>
                            </div>
                            <div class="row" style="padding: 0px; margin: 0px">
                                <div class="col" style="padding: 0px; margin: 0px">
                                    <asp:TextBox ID="TextBox75" runat="server" CssClass="layouttexto"
                                        Style="width: 100px;" onBlur="SetTextIn(this,0);SetDiv('div_partilha_icms',0)" onFocus="SetTextIn(this,1);SetDiv('div_partilha_icms',1)">
                                    </asp:TextBox>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    </div>



                <!--///////////////////////////////////////////////////  Container - Grupo de Repasse ICMS ST/////////////////////////////////////////////////////////////////////////////////////////////-->

            <div class="container-fluid" style="padding: 0px; margin: 0px; width: 100%; height: 100%;">


                <div class="row" style="width: 100%; height:30px"></div>
            
                <div class="row" style="width: 100%; height: 100%; padding: 0px; margin: 0px; background-color: transparent">
            
                    <div class="row"
                        style="width: 100%; height: 100%; color: #177CC0; padding-left: 20px; padding-top: 0px; font-family: Arial; font-size: 20px; font-weight: bold; margin-left: 0px">
            
                        <div id="i_grupo_repasse_icms_st_on" name="i_grupo_repasse_icms_st_on" class="col" align="left"
                            style="display: none; visibility: hidden; font-size: 20px; color: red; margin-right: 20px; border-bottom: none; cursor: pointer"
                            onclick="mostra_div_informacao('div_grupo_repasse_icms_st','i_grupo_repasse_icms_st_on','i_grupo_repasse_icms_st_off',0)"><span
                                style="color: #177CC0; font-family: Arial; font-size: 20px; font-weight: bold;">Grupo de Repasse ICMS ST
                                </span>&nbsp;&nbsp;<i class="fa fa-toggle-on"></i></div>
                        <div id="i_grupo_repasse_icms_st_off" name="i_grupo_repasse_icms_st_off" class="col" align="left"
                            style="display: block; visibility: visible; font-size: 20px; color: red; margin-right: 20px; border-bottom: solid; border-color: #767676; border-width: 1px; cursor: pointer"
                            onclick="mostra_div_informacao('div_grupo_repasse_icms_st','i_grupo_repasse_icms_st_on','i_grupo_repasse_icms_st_off',1)"><span
                                style="color: #177CC0; font-family: Arial; font-size: 20px; font-weight: bold;">Grupo de Repasse ICMS ST
                                </span>&nbsp;&nbsp;<i class="fa fa-toggle-off"></i></div>
            
            
                    </div>
            
                    <div class="row" style="width: 100%; height: 20px"></div>
            
            
                    <div id="div_grupo_repasse_icms_st" name="div_grupo_repasse_icms_st"
                        style="display: none; visibility: visible; width: 100%; height: 100%; background-color: transparent; margin-left: 20px; margin-right: 20px; border: solid; border-color: #177CC0; border-width: 1px; border-radius: 10px; padding: 0 20px 20px 20px;">
            
             
            
                        <!--/////////////////////////////////////////////////// Container -  LINHA LADO ESQUERDO - Tributação do ICMS - Valor do ICMS ST retido na UF remetente  /////////////////////////////////////////////////////////////////////////////////////////////-->
                        
            
                        <div class="row"
                            style="width: 100%; padding: 0px; margin: 0px; background-color: transparent; height: 100%; padding: 0px; margin: 0px">
            
            
            
                            <div class="col-xl-12"
                                style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">
            
                                <div class="row"
                                    style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">
            
                                    <div class="col-md-6"
                                        style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-left: 15px; padding-top: 20px">
                                        <div class="row">
                                            <div class="col"
                                                style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                                Valor do BC do ICMS ST retido na UF remetente 
                                            </div>
                                        </div>
                                        <div class="row" style="padding: 0px; margin: 0px">
                                            <div class="col" style="padding: 0px; margin: 0px">
                                                <asp:TextBox ID="TextBox94" runat="server" CssClass="layouttexto"
                                                    Style="width: 100px;" onBlur="SetTextIn(this,0);SetDiv('div_grupo_repasse_icms_st',0)" onFocus="SetTextIn(this,1);SetDiv('div_grupo_repasse_icms_st',1)">
                                                </asp:TextBox>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="col-md-6"
                                        style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-left: 15px; padding-top: 20px">
                                        <div class="row">
                                            <div class="col"
                                                style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                                Valor do ICMS ST retido na UF remetente
                                            </div>
                                        </div>
                                        <div class="row" style="padding: 0px; margin: 0px">
                                            <div class="col" style="padding: 0px; margin: 0px">
                                                <asp:TextBox ID="TextBox85" runat="server" CssClass="layouttexto"
                                                    Style="width: 100px;" onBlur="SetTextIn(this,0);SetDiv('div_grupo_repasse_icms_st',0)" onFocus="SetTextIn(this,1);SetDiv('div_grupo_repasse_icms_st',1)">
                                                </asp:TextBox>
                                            </div>
                                        </div>
                                    </div>
            
                                </div>
                            </div>
            
            
                 
                        </div>
            
                        <!--///////////////////////////////////////////////////  - LADO esquerdo -  Valor do ICMS ST retido na UF remetente -   /////////////////////////////////////////////////////////////////////////////////////////////-->
                        <div class="row" style="height: 30px"></div>
            
                        <div class="row"
                            style="width: 100%; padding: 0px; margin: 0px; background-color: transparent; height: 100%; padding: 0px; margin: 0px">
            
                            <div class="col-xl-12"
                                style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px; ">
            
                                <div class="row"
                                    style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">
            
                                    <div class="col-md-6"
                                        style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-left: 15px; padding-top: 20px">
                                        <div class="row">
                                            <div class="col"
                                                style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                                Valor da BC do ICMS ST da UF destino &nbsp  <img alt="" src="../Imagens/ihelp.png"  style="width: 20px; height: 21px; cursor:pointer" onclick="anima_informacao(1,'bcufdestino')" />
                                            </div>
                                        </div>
                                        <div class="row" style="padding: 0px; margin: 0px">
                                            <div class="col" style="padding: 0px; margin: 0px">
                                                <asp:TextBox ID="TextBox98" runat="server" CssClass="layouttexto"
                                                    Style="width: 100px;" onBlur="SetTextIn(this,0);SetDiv('div_grupo_repasse_icms_st',0)" onFocus="SetTextIn(this,1);SetDiv('div_grupo_repasse_icms_st',1)">
                                                </asp:TextBox>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="col-md-6"
                                        style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-left: 15px; padding-top: 20px">
                                        <div class="row">
                                            <div class="col"
                                                style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                                Valor do ICMS ST da UF destino 

                                            </div>
                                        </div>
                                        <div class="row" style="padding: 0px; margin: 0px">
                                            <div class="col" style="padding: 0px; margin: 0px">
                                                <asp:TextBox ID="TextBox95" runat="server" CssClass="layouttexto"
                                                    Style="width: 100px;" onBlur="SetTextIn(this,0);SetDiv('div_grupo_repasse_icms_st',0)" onFocus="SetTextIn(this,1);SetDiv('div_grupo_repasse_icms_st',1)">
                                                </asp:TextBox>
                                            </div>
                                        </div>
                                    </div>
            
                                    
                </div>
               </div>
               </div>
            </div>
        </div>
    </div>








        <!--///////////////////////////////////////////////////  Container - Grupo CTR=1 Grupo CTR=1 Simples Nacional e CSOSN=101/////////////////////////////////////////////////////////////////////////////////////////////-->

<div class="container-fluid" style="padding: 0px; margin: 0px; width: 100%; height: 100%;">


    <div class="row" style="width: 100%; height: 50px"></div>

    <div class="row" style="width: 100%; height: 100%; padding: 0px; margin: 0px; background-color: transparent">

        <div class="row"
            style="width: 100%; height: 100%; color: #177CC0; padding-left: 20px; padding-top: 0px; font-family: Arial; font-size: 20px; font-weight: bold; margin-left: 0px">

            <div id="i_grupo_ctr_1_on" name="i_grupo_ctr_1_on" class="col" align="left"
                style="display: none; visibility: hidden; font-size: 20px; color: red; margin-right: 20px; border-bottom: none; cursor: pointer"
                onclick="mostra_div_informacao('div_grupo_ctr_1','i_grupo_ctr_1_on','i_grupo_ctr_1_off',0)"><span
                    style="color: #177CC0; font-family: Arial; font-size: 20px; font-weight: bold;">Grupo CTR=1 Simples Nacional e CSOSN=101
                    </span>&nbsp;&nbsp;<i class="fa fa-toggle-on"></i></div>
            <div id="i_grupo_ctr_1_off" name="i_grupo_ctr_1_off" class="col" align="left"
                style="display: block; visibility: visible; font-size: 20px; color: red; margin-right: 20px; border-bottom: solid; border-color: #767676; border-width: 1px; cursor: pointer"
                onclick="mostra_div_informacao('div_grupo_ctr_1','i_grupo_ctr_1_on','i_grupo_ctr_1_off',1)"><span
                    style="color: #177CC0; font-family: Arial; font-size: 20px; font-weight: bold;">Grupo CTR=1 Simples Nacional e CSOSN=101
                    </span>&nbsp;&nbsp;<i class="fa fa-toggle-off"></i></div>


        </div>

        <div class="row" style="width: 100%; height: 20px"></div>


        <div id="div_grupo_ctr_1" name="div_grupo_ctr_1"
            style="display: none; visibility: visible; width: 100%; height: 100%; background-color: transparent; margin-left: 20px; margin-right: 20px; border: solid; border-color: #177CC0; border-width: 1px; border-radius: 10px; padding: 0 20px 20px 20px;">


            <!--/////////////////////////////////////////////////// Container -  LINHA LADO ESQUERDO - Código de Situação da Operação   /////////////////////////////////////////////////////////////////////////////////////////////-->
           

            <div class="row"
                style="width: 100%; padding: 0px; margin: 0px; background-color: transparent; height: 100%; padding: 0px; margin: 0px">


                <div class="col-xl-6"
                    style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px;">

                    <div class="row"
                        style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

                        <div class="col-md-6"
                            style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-left: 15px; padding-top: 20px">
                            <div class="row">
                                <div class="col"
                                    style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                     Código de Situação da Operação  &nbsp  <img alt="" src="../Imagens/ihelp.png"  style="width: 20px; height: 21px; cursor:pointer" onclick="anima_informacao(1,'codigo101')" />
                                </div>
                            </div>
                            <div class="row" style="padding: 0px; margin: 0px">
                                <div class="col" style="padding: 0px; margin: 0px">
                                    <asp:DropDownList ID="DropDownList40" onBlur="SetTextIn(this,0);SetDiv('div_grupo_ctr_1',0)" onFocus="SetTextIn(this,1);SetDiv('div_grupo_ctr_1',1)" CssClass="layouttexto" runat="server">
                                        <asp:ListItem style="width: 100%;"
                                            Text="101" Value="1" />
                                        <asp:ListItem style="width: 100%;" Text="90=Outros" Value="1" />
                                    </asp:DropDownList>
                                </div>
                            </div>
                        </div>

                        <div class="col-md-6"
                            style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-left: 15px; padding-top: 20px">


                            <div class="row">
                                <div class="col"
                                    style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                    Alíquota de crédito 
                                </div>
                            </div>

                            <div class="row" style="padding: 0px; margin: 0px">
                                <div class="col" style="padding: 0px; margin: 0px">
                                    <asp:TextBox ID="TextBox102" runat="server" CssClass="layouttexto"
                                        Style="width: 80px;" onBlur="SetTextIn(this,0);SetDiv('div_grupo_ctr_1',0)" onFocus="SetTextIn(this,1);SetDiv('div_grupo_ctr_1',1)">
                                    </asp:TextBox>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>


                <!--/////////////////////////////////////////////////// Container -  LINHA LADO DIRETO - Alíquota de crédito  -  Crédito IMCS aproveitável segundo o art. 23 /////////////////////////////////////////////////////////////////////////////////////////////-->
                <div class="col-xl-6"
                    style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

                    <div class="row"
                        style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">
                        <div class="col-md-12"
                            style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-left: 15px; padding-top: 20px">
                            <div class="row">
                                <div class="col"
                                    style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                    Crédito IMCS aproveitável segundo o art. 23 &nbsp  <img alt="" src="../Imagens/ihelp.png"  style="width: 20px; height: 21px; cursor:pointer" onclick="anima_informacao(1,'creditoicmsart23')" />
                                </div>
                            </div>
                            <div class="row" style="padding: 0px; margin: 0px">
                                <div class="col" style="padding: 0px; margin: 0px">
                                    <asp:TextBox ID="TextBox86" runat="server" CssClass="layouttexto"
                                        Style="width: 100px;" onBlur="SetTextIn(this,0);SetDiv('div_grupo_ctr_1',0)" onFocus="SetTextIn(this,1);SetDiv('div_grupo_ctr_1',1)">
                                    </asp:TextBox>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
         </div>
        </div>


            <!--///////////////////////////////////////////////////  Container -Grupo CTR=1 Simples Nacional e CSOSN=102,103, 300 ou 400/////////////////////////////////////////////////////////////////////////////////////////////-->

        <div class="container-fluid" style="padding: 0px; margin: 0px; width: 100%; height: 100%;">


            <div class="row" style="width: 100%; height: 50px"></div>
        
            <div class="row" style="width: 100%; height: 100%; padding: 0px; margin: 0px; background-color: transparent">
        
                <div class="row"
                    style="width: 100%; height: 100%; color: #177CC0; padding-left: 20px; padding-top: 0px; font-family: Arial; font-size: 20px; font-weight: bold; margin-left: 0px">
        
                    <div id="i_grupo_ctr_1_102_103_300_400_on" name="i_grupo_ctr_1_102_103_300_400_on" class="col" align="left"
                        style="display: none; visibility: hidden; font-size: 20px; color: red; margin-right: 20px; border-bottom: none; cursor: pointer"
                        onclick="mostra_div_informacao('div_grupo_ctr_1_102_103_300_400','i_grupo_ctr_1_102_103_300_400_on','i_grupo_ctr_1_102_103_300_400_off',0)"><span
                            style="color: #177CC0; font-family: Arial; font-size: 20px; font-weight: bold;">Grupo CTR=1 Simples Nacional e CSOSN=102,103, 300 ou 400
                            </span>&nbsp;&nbsp;<i class="fa fa-toggle-on"></i></div>
                    <div id="i_grupo_ctr_1_102_103_300_400_off" name="i_grupo_ctr_1_102_103_300_400_off" class="col" align="left"
                        style="display: block; visibility: visible; font-size: 20px; color: red; margin-right: 20px; border-bottom: solid; border-color: #767676; border-width: 1px; cursor: pointer"
                        onclick="mostra_div_informacao('div_grupo_ctr_1_102_103_300_400','i_grupo_ctr_1_102_103_300_400_on','i_grupo_ctr_1_102_103_300_400_off',1)"><span
                            style="color: #177CC0; font-family: Arial; font-size: 20px; font-weight: bold;">Grupo CTR=1 Simples Nacional e CSOSN=102,103, 300 ou 400
                            </span>&nbsp;&nbsp;<i class="fa fa-toggle-off"></i></div>
        
        
                </div>
        
                <div class="row" style="width: 100%; height: 20px"></div>
        
        
                <div id="div_grupo_ctr_1_102_103_300_400" name="div_grupo_ctr_1_102_103_300_400"
                    style="display: none; visibility: visible; width: 100%; height: 100%; background-color: transparent; margin-left: 20px; margin-right: 20px; border: solid; border-color: #177CC0; border-width: 1px; border-radius: 10px; padding: 0 20px 20px 20px;">
        
                    
        
                    <!--/////////////////////////////////////////////////// Container -  Código de Situação da Operação /////////////////////////////////////////////////////////////////////////////////////////////-->
                   
        
                    <div class="row"
                        style="width: 100%; padding: 0px; margin: 0px; background-color: transparent; height: 100%; padding: 0px; margin: 0px">
        
        
                        <div class="col-xl-5"
                            style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px;">
        
                            <div class="row"
                                style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">
        
                                <div class="col-md-12"
                                    style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-left: 15px; padding-top: 20px">
                                    <div class="row">
                                        <div class="col"
                                            style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                             Código de Situação da Operação &nbsp  <img alt="" src="../Imagens/ihelp.png"  style="width: 20px; height: 21px; cursor:pointer" onclick="anima_informacao(1,'codigo102')" />  
                                        </div>
                                    </div>
                                    <div class="row" style="padding: 0px; margin: 0px">
                                        <div class="col" style="padding: 0px; margin: 0px">
                                            <asp:DropDownList ID="DropDownList47" onBlur="SetTextIn(this,0);SetDiv('div_grupo_ctr_1_102_103_300_400',0)" onFocus="SetTextIn(this,1);SetDiv('div_grupo_ctr_1_102_103_300_400',1)" CssClass="layouttexto" runat="server">
                                                <asp:ListItem style="width: 100%;" Text="102" Value="1" />
                                                <asp:ListItem style="width: 100%;" Text="103" Value="2" />
                                                <asp:ListItem style="width: 100%;" Text="300" Value="3" />
                                                <asp:ListItem style="width: 100%;" Text="400" Value="4" />
                                            </asp:DropDownList>                  
                                          </div>
                                    </div>
                                </div>
        
        
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    

                <!--///////////////////////////////////////////////////  Container - Grupo CTR=1 Simples Nacional CSOSN=201 OU /////////////////////////////////////////////////////////////////////////////////////////////-->

            <div class="container-fluid" style="padding: 0px; margin: 0px; width: 100%; height: 100%;">


                <div class="row" style="width: 100%; height: 50px"></div>
            
                <div class="row" style="width: 100%; height: 100%; padding: 0px; margin: 0px; background-color: transparent">
            
                    <div class="row"
                        style="width: 100%; height: 100%; color: #177CC0; padding-left: 20px; padding-top: 0px; font-family: Arial; font-size: 20px; font-weight: bold; margin-left: 0px">
            
                        <div id="i_grupo_ctr_1_201_on" name="i_grupo_ctr_1_201_on" class="col" align="left"
                            style="display: none; visibility: hidden; font-size: 20px; color: red; margin-right: 20px; border-bottom: none; cursor: pointer"
                            onclick="mostra_div_informacao('div_grupo_ctr_1_201','i_grupo_ctr_1_201_on','i_grupo_ctr_1_201_off',0)"><span
                                style="color: #177CC0; font-family: Arial; font-size: 20px; font-weight: bold;">Grupo CTR=1 Simples Nacional CSOSN=201
                                </span>&nbsp;&nbsp;<i class="fa fa-toggle-on"></i></div>
                        <div id="i_grupo_ctr_1_201_off" name="i_grupo_ctr_1_201_off" class="col" align="left"
                            style="display: block; visibility: visible; font-size: 20px; color: red; margin-right: 20px; border-bottom: solid; border-color: #767676; border-width: 1px; cursor: pointer"
                            onclick="mostra_div_informacao('div_grupo_ctr_1_201','i_grupo_ctr_1_201_on','i_grupo_ctr_1_201_off',1)"><span
                                style="color: #177CC0; font-family: Arial; font-size: 20px; font-weight: bold;">Grupo CTR=1 Simples Nacional CSOSN=201
                                </span>&nbsp;&nbsp;<i class="fa fa-toggle-off"></i></div>
            
            
                    </div>
            
                    <div class="row" style="width: 100%; height: 20px"></div>
            
            
                    <div id="div_grupo_ctr_1_201" name="div_grupo_ctr_1_201"
                        style="display: none; visibility: visible; width: 100%; height: 100%; background-color: transparent; margin-left: 20px; margin-right: 20px; border: solid; border-color: #177CC0; border-width: 1px; border-radius: 10px; padding: 0 20px 20px 20px;">
            
                        
            
                        <!--/////////////////////////////////////////////////// Container -  LINHA LADO ESQUERDO - Alíquota do imposto do ICMS ST - Modalidade da BC do ICMS ST /////////////////////////////////////////////////////////////////////////////////////////////-->
                        
            
                        <div class="row"
                            style="width: 100%; padding: 0px; margin: 0px; background-color: transparent; height: 100%; padding: 0px; margin: 0px">
            
            
            
                            <div class="col-xl-6"
                                style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">
            
                                <div class="row"
                                    style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">
            
                                    <div class="col-md-6"
                                        style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-left: 15px; padding-top: 20px">
            
            
                                        <div class="row">
                                            <div class="col"
                                                style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                                Alíquota do imposto do ICMS ST &nbsp &nbsp <img alt="" src="../Imagens/ihelp.png"  style="width: 20px; height: 21px; cursor:pointer" onclick="anima_informacao(1,'calculoicmsst')" />  
                                            </div>
                                        </div>
            
                                        <div class="row" style="padding: 0px; margin: 0px">
                                            <div class="col" style="padding: 0px; margin: 0px">
                                                <asp:TextBox ID="TextBox93" runat="server" CssClass="layouttexto"
                                                    Style="width: 100px;" onBlur="SetTextIn(this,0);SetDiv('div_grupo_ctr_1_201',0)" onFocus="SetTextIn(this,1);SetDiv('div_grupo_ctr_1_201',1)">
                                                </asp:TextBox>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="col-md-6"
                                        style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-left: 15px; padding-top: 20px">
                                        <div class="row">
                                            <div class="col"
                                                style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                                Modalidade da BC do ICMS ST
                                            </div>
                                        </div>
                                        <div class="row" style="padding: 0px; margin: 0px">
                                            <div class="col" style="padding: 0px; margin: 0px">
                                                <asp:DropDownList ID="DropDownList44" onBlur="SetTextIn(this,0);SetDiv('div_grupo_ctr_1_201',0)" onFocus="SetTextIn(this,1);SetDiv('div_grupo_ctr_1_201',1)" CssClass="layouttexto" runat="server">
                                                    <asp:ListItem style="width: 100%;" Text="0=Tabelado ou máximo sugerido"
                                                        Value="1" />
                                                    <asp:ListItem style="width: 100%;" Text="1=lista Negativada (valor)"
                                                        Value="2" />
                                                    <asp:ListItem style="width: 100%;" Text="2=Lista Positiva (valor)" Value="3" />
                                                    <asp:ListItem style="width: 100%;" Text="3=Lista Neutra(valor)" Value="4" />
                                                    <asp:ListItem style="width: 100%;" Text="4=Margem Valor Agregado(%)"
                                                        Value="5" />
                                                    <asp:ListItem style="width: 100%;" Text="5=Pauta(valor)" Value="6" />
                                                </asp:DropDownList>
                                            </div>
                                        </div>
                                    </div>
            
                                </div>
                            </div>
            
            
                            <!--/////////////////////////////////////////////////// - LADO DIREITO - Percentual da Redução de BC ST -   Valor da BC do ICMS ST   /////////////////////////////////////////////////////////////////////////////////////////////-->
                            <div class="col-xl-6"
                                style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px; ">
            
                                <div class="row"
                                    style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">
            
                                    <div class="col-md-6"
                                        style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-left: 15px; padding-top: 20px">
                                        <div class="row">
                                            <div class="col"
                                                style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                                 % da Redução de BC ST &nbsp &nbsp<img alt="" src="../Imagens/ihelp.png"  style="width: 20px; height: 20px; cursor:pointer" onclick="anima_informacao(1,'percentualbcicms')" />
                                            </div>
                                        </div>
                                        <div class="row" style="padding: 0px; margin: 0px">
                                            <div class="col" style="padding: 0px; margin: 0px">
                                                <asp:TextBox ID="TextBox96" runat="server" CssClass="layouttexto"
                                                    Style="width: 100px;" onBlur="SetTextIn(this,0);SetDiv('div_grupo_ctr_1_201',0)" onFocus="SetTextIn(this,1);SetDiv('div_grupo_ctr_1_201',1)">
                                                </asp:TextBox>
                                            </div>
                                        </div>
                                    </div>
            
                                    <div class="col-md-6"
                                        style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-left: 15px; padding-top: 20px">
                                        <div class="row">
                                            <div class="col"
                                                style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                                Valor da BC do ICMS ST
                                            </div>
                                        </div>
                                        <div class="row" style="padding: 0px; margin: 0px">
                                            <div class="col" style="padding: 0px; margin: 0px">
                                                <asp:TextBox ID="TextBox88" runat="server" CssClass="layouttexto"
                                                    Style="width: 100px;" onBlur="SetTextIn(this,0);SetDiv('div_grupo_ctr_1_201',0)" onFocus="SetTextIn(this,1);SetDiv('div_grupo_ctr_1_201',1)">
                                                </asp:TextBox>
                                            </div>
                                        </div>
                                    </div>
            
            
                                </div>
                            </div>
            
                        </div>
            
                        <!--///////////////////////////////////////////////////  - LADO esquerdo -   % da margem do ICMS ST -  Valor do ICMS ST /////////////////////////////////////////////////////////////////////////////////////////////-->
                        <div class="row" style="height: 30px"></div>
            
                        <div class="row"
                            style="width: 100%; padding: 0px; margin: 0px; background-color: transparent; height: 100%; padding: 0px; margin: 0px">
            
                            <div class="col-xl-6"
                                style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px; ">
            
                                <div class="row"
                                    style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">
            
                                    <div class="col-md-6"
                                        style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-left: 15px; padding-top: 20px">
                                        <div class="row">
                                            <div class="col"
                                                style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                                % da margem do ICMS ST &nbsp &nbsp <img alt="" src="../Imagens/ihelp.png"  style="width: 20px; height: 21px; cursor:pointer" onclick="anima_informacao(1,'PercentualdaMV doICMSST')" />
                                            </div>
                                        </div>
                                        <div class="row" style="padding: 0px; margin: 0px">
                                            <div class="col" style="padding: 0px; margin: 0px">
                                                <asp:TextBox ID="TextBox89" runat="server" CssClass="layouttexto"
                                                    Style="width: 100px;" onBlur="SetTextIn(this,0);SetDiv('div_grupo_ctr_1_201',0)" onFocus="SetTextIn(this,1);SetDiv('div_grupo_ctr_1_201',1)">
                                                </asp:TextBox>
                                            </div>
                                        </div>
                                    </div>
            
                                    <div class="col-md-6"
                                        style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-left: 15px; padding-top: 20px">
                                        <div class="row">
                                            <div class="col"
                                                style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                                Valor do ICMS ST
                                            </div>
                                        </div>
                                        <div class="row" style="padding: 0px; margin: 0px">
                                            <div class="col" style="padding: 0px; margin: 0px">
                                                <asp:TextBox ID="TextBox90" runat="server" CssClass="layouttexto"
                                                    Style="width: 100px;" onBlur="SetTextIn(this,0);SetDiv('div_grupo_ctr_1_201',0)" onFocus="SetTextIn(this,1);SetDiv('div_grupo_ctr_1_201',1)">
                                                </asp:TextBox>
                                            </div>
                                        </div>
                                    </div>
            
            
                                </div>
                            </div>
            
                            <!--/////////////////////////////////////////////////// 2 LINHA - LADO DIREITO -  Alíquota de crédito -    Crédito IMCS aproveitável segundo o art. 23 /////////////////////////////////////////////////////////////////////////////////////////////-->
                            <div class="col-xl-6"
                                style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px; ">
            
                                <div class="row"
                                    style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">
            
                                    <div class="col-md-5"
                                        style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-left: 15px; padding-top: 20px">
                                        <div class="row">
                                            <div class="col"
                                                style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                                Alíquota de crédito &nbsp &nbsp <img alt="" src="../Imagens/ihelp.png"  style="width: 20px; height: 21px; cursor:pointer" onclick="anima_informacao(1,'aliquotadecalculo')" />

                                            </div>
                                        </div>
                                        <div class="row" style="padding: 0px; margin: 0px">
                                            <div class="col" style="padding: 0px; margin: 0px">
                                                    <asp:TextBox ID="TextBox91" runat="server" CssClass="layouttexto"
                                                    Style="width: 100px;" onBlur="SetTextIn(this,0);SetDiv('div_grupo_ctr_1_201',0)" onFocus="SetTextIn(this,1);SetDiv('div_grupo_ctr_1_201',1)">
                                                </asp:TextBox>
                                            </div>
                                        </div>
                                    </div>
            
                                    <div class="col-md-7"
                                        style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-left: 15px; padding-top: 20px">
                                        <div class="row">
                                            <div class="col"
                                                style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                                 Crédito IMCS conforme o artigo 23 &nbsp  <img alt="" src="../Imagens/ihelp.png"  style="width: 20px; height: 21px; cursor:pointer" onclick="anima_informacao(1,'creditoicmsart23')" />

            
                                            </div>
                                        </div>
                                        <div class="row" style="padding: 0px; margin: 0px">
                                            <div class="col" style="padding: 0px; margin: 0px">
                                                <asp:TextBox ID="TextBox92" runat="server" CssClass="layouttexto"
                                                    Style="width: 150px;" onBlur="SetTextIn(this,0);SetDiv('div_grupo_ctr_1_201',0)" onFocus="SetTextIn(this,1);SetDiv('div_grupo_ctr_1_201',1)">
                                                </asp:TextBox>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!--/////////////////////////////////////////////////// Container -  LINHA LADO ESQUERDO -  Código de Situação de Operação -     /////////////////////////////////////////////////////////////////////////////////////////////-->
                        <div class="row" style="height: 30px"></div>
            
                        <div class="row"
                            style="width: 100%; padding: 0px; margin: 0px; background-color: transparent; height: 100%; padding: 0px; margin: 0px">
            
            
            
                            <div class="col-xl-12"
                                style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">
            
                                <div class="row"
                                    style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">
            
                                    <div class="col-md-12"
                                        style="width: 100%; height: 100%; background-color: transparent;padding: 4px; padding-left: 15px; padding-top: 20px">
            
            
                                        <div class="row">
                                            <div class="col"
                                                style="font-family: Arial; font-size: 16px; padding-right:10px;  color: #000000; font-weight: bold">
                                                Código de Situação de Operação &nbsp  <img alt="" src="../Imagens/ihelp.png"  style="width: 20px; height: 21px; cursor:pointer" onclick="anima_informacao(1,'codigo201')" />

                                            </div>
                                        </div>
            
                                        <div class="row" style="padding: 0px; margin: 0px">
                                            <div class="col" style="padding: 0px; margin: 0px">
                                                <asp:DropDownList ID="DropDownList43" onBlur="SetTextIn(this,0);SetDiv('div_grupo_ctr_1_201',0)" onFocus="SetTextIn(this,1);SetDiv('div_grupo_ctr_1_201',1)" CssClass="layouttexto" runat="server">
                                                    <asp:ListItem style="width: 100%;" Text="201"
                                                        Value="1" />
                                                    
                                                </asp:DropDownList>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        
                 </div>
                </div>
               </div>
               </div>

                           <!--///////////////////////////////////////////////////  Container - Grupo CTR=1 Simples Nacional 202 ou 203/////////////////////////////////////////////////////////////////////////////////////////////-->

            <div class="container-fluid" style="padding: 0px; margin: 0px; width: 100%; height: 100%;">


                <div class="row" style="width: 100%; height: 50px"></div>
            
                <div class="row" style="width: 100%; height: 100%; padding: 0px; margin: 0px; background-color: transparent">
            
                    <div class="row"
                        style="width: 100%; height: 100%; color: #177CC0; padding-left: 20px; padding-top: 0px; font-family: Arial; font-size: 20px; font-weight: bold; margin-left: 0px">
            
                        <div id="i_ctr_1_202_203_on" name="i_ctr_1_202_203_on" class="col" align="left"
                            style="display: none; visibility: hidden; font-size: 20px; color: red; margin-right: 20px; border-bottom: none; cursor: pointer"
                            onclick="mostra_div_informacao('div_ctr_1_202_203','i_ctr_1_202_203_on','i_ctr_1_202_203_off',0)"><span
                                style="color: #177CC0; font-family: Arial; font-size: 20px; font-weight: bold;">Grupo CTR=1 Simples Nacional 202 ou 203
                                </span>&nbsp;&nbsp;<i class="fa fa-toggle-on"></i></div>
                        <div id="i_ctr_1_202_203_off" name="i_ctr_1_202_203_off" class="col" align="left"
                            style="display: block; visibility: visible; font-size: 20px; color: red; margin-right: 20px; border-bottom: solid; border-color: #767676; border-width: 1px; cursor: pointer"
                            onclick="mostra_div_informacao('div_ctr_1_202_203','i_ctr_1_202_203_on','i_ctr_1_202_203_off',1)"><span
                                style="color: #177CC0; font-family: Arial; font-size: 20px; font-weight: bold;">Grupo CTR=1 Simples Nacional 202 ou 203
                                </span>&nbsp;&nbsp;<i class="fa fa-toggle-off"></i></div>
            
            
                    </div>
            
                    <div class="row" style="width: 100%; height: 20px"></div>
            
            
                    <div id="div_ctr_1_202_203" name="div_ctr_1_202_203"
                        style="display: none; visibility: visible; width: 100%; height: 100%; background-color: transparent; margin-left: 20px; margin-right: 20px; border: solid; border-color: #177CC0; border-width: 1px; border-radius: 10px; padding: 0 20px 20px 20px;">
            
                       
            
                        <!--/////////////////////////////////////////////////// Container -  LINHA LADO ESQUERDO - Código de Situação da Operação   /////////////////////////////////////////////////////////////////////////////////////////////-->
                        
            
                        <div class="row"
                            style="width: 100%; padding: 0px; margin: 0px; background-color: transparent; height: 100%; padding: 0px; margin: 0px">
            
            
            
                            <div class="col-xl-7"
                                style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">
            
                                <div class="row"
                                    style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">
            
                                    <div class="col-md-6"
                                        style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-left: 15px; padding-top: 20px">
            
            
                                        <div class="row">
                                            <div class="col"
                                                style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                            Código de Situação da Operação &nbsp  <img alt="" src="../Imagens/ihelp.png"  style="width: 20px; height: 21px; cursor:pointer" onclick="anima_informacao(1,'codigo202')" />  
                                            </div>
                                        </div>
            
                                        <div class="row" style="padding: 0px; margin: 0px">
                                            <div class="col" style="padding: 0px; margin: 0px">
                                                <asp:DropDownList ID="DropDownList49" onBlur="SetTextIn(this,0);SetDiv('div_ctr_1_202_203',0)" onFocus="SetTextIn(this,1);SetDiv('div_ctr_1_202_203',1)" CssClass="layouttexto" runat="server">
                                                    <asp:ListItem style="width: 100%;"
                                                        Text="202" Value="1" />
                                                    <asp:ListItem style="width: 100%;" Text="203" Value="1" />
                                                </asp:DropDownList>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6"
                                        style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-left: 15px; padding-top: 20px">
                                        <div class="row">
                                            <div class="col"
                                                style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                                Percentual da MVA do ICMS ST&nbsp &nbsp
                                                <img alt="" src="../Imagens/ihelp.png" style="width: 20px; height: 21px; cursor: pointer" onclick="anima_informacao(1,'PercentualdaMV doICMSST')" />
                                            </div>
                                        </div>
                                        <div class="row" style="padding: 0px; margin: 0px">
                                            <div class="col" style="padding: 0px; margin: 0px">
                                                <asp:TextBox ID="TextBox118" runat="server" CssClass="layouttexto"
                                                    Style="width: 150px;" onBlur="SetTextIn(this,0);SetDiv('div_ctr_1_202_203',0)" onFocus="SetTextIn(this,1);SetDiv('div_ctr_1_202_203',1)">
                                                </asp:TextBox>
                                            </div>
                                        </div>
                                    </div>

            
                                </div>
                            </div>
            
            
                            <!--/////////////////////////////////////////////////// - LADO DIREITO -  % Margem de Valor Adicionado do ICMS ST   /////////////////////////////////////////////////////////////////////////////////////////////-->
                            <div class="col-xl-5"
                                style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px; ">
            
                                <div class="row"
                                    style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">
            
                                    <div class="col-md-5"
                                        style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-left: 15px; padding-top: 20px">
                                        <div class="row">
                                            <div class="col"
                                                style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                                Valor do ICMS ST
                                            </div>
                                        </div>
                                        <div class="row" style="padding: 0px; margin: 0px">
                                            <div class="col" style="padding: 0px; margin: 0px">
                                                <asp:TextBox ID="TextBox103" runat="server" CssClass="layouttexto"
                                                    Style="width: 150px;" onBlur="SetTextIn(this,0);SetDiv('div_ctr_1_202_203',0)" onFocus="SetTextIn(this,1);SetDiv('div_ctr_1_202_203',1)">
                                                </asp:TextBox>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-7"
                                        style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-left: 15px; padding-top: 20px">
                                        <div class="row">
                                            <div class="col"
                                                style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                                Valor da BC do ICMS ST &nbsp &nbsp <img alt="" src="../Imagens/ihelp.png"  style="width: 20px; height: 21px; cursor:pointer" onclick="anima_informacao(1,'ValorBCdoICMSST')" />  
                                            </div>
                                        </div>
                                        <div class="row" style="padding: 0px; margin: 0px">
                                            <div class="col" style="padding: 0px; margin: 0px">
                                                <asp:TextBox ID="TextBox119" runat="server" CssClass="layouttexto"
                                                    Style="width: 150px;" onBlur="SetTextIn(this,0);SetDiv('div_ctr_1_202_203',0)" onFocus="SetTextIn(this,1);SetDiv('div_ctr_1_202_203',1)">
                                                </asp:TextBox>
                                            </div>
                                        </div>
                                    </div>

            
                              </div>
                            </div>
            
                        </div>
            
                        <!--///////////////////////////////////////////////////  - LADO esquerdo -  Percentual da Redução de BC do ICMS ST -   Alíquota do imposto ICMS ST /////////////////////////////////////////////////////////////////////////////////////////////-->
                        <div class="row" style="height: 30px"></div>
            
                        <div class="row"
                            style="width: 100%; padding: 0px; margin: 0px; background-color: transparent; height: 100%; padding: 0px; margin: 0px">
            
                            <div class="col-xl-7"
                                style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px; ">
            
                                <div class="row"
                                    style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">
            
                                    <div class="col-md-6"
                                        style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-left: 15px; padding-top: 20px">
                                        <div class="row">
                                            <div class="col"
                                                style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                                Alíquota do imposto do ICMS ST &nbsp &nbsp <img alt="" src="../Imagens/ihelp.png"  style="width: 20px; height: 21px; cursor:pointer" onclick="anima_informacao(1,'calculoicmsst')" />  
                                            </div>
                                        </div>
                                        <div class="row" style="padding: 0px; margin: 0px">
                                            <div class="col" style="padding: 0px; margin: 0px">
                                                <asp:TextBox ID="TextBox100" runat="server" CssClass="layouttexto"
                                                    Style="width: 150px;" onBlur="SetTextIn(this,0);SetDiv('div_ctr_1_202_203',0)" onFocus="SetTextIn(this,1);SetDiv('div_ctr_1_202_203',1)">
                                                </asp:TextBox>
                                            </div>
                                        </div>
                                    </div>
            
                                    <div class="col-md-6"
                                        style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-left: 15px; padding-top: 20px">
                                        <div class="row">
                                            <div class="col"
                                                style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                                Modalidade da BC do ICMS ST
                                            </div>
                                        </div>
                                        <div class="row" style="padding: 0px; margin: 0px">
                                            <div class="col" style="padding: 0px; margin: 0px">
                                                <asp:DropDownList ID="DropDownList13" onBlur="SetTextIn(this,0);SetDiv('div_ctr_1_202_203',0)" onFocus="SetTextIn(this,1);SetDiv('div_ctr_1_202_203',1)" CssClass="layouttexto" runat="server">
                                                    <asp:ListItem style="width: 100%;" Text="0=Tabelado ou máximo sugerido"
                                                        Value="1" />
                                                    <asp:ListItem style="width: 100%;" Text="1=lista Negativada (valor)"
                                                        Value="2" />
                                                    <asp:ListItem style="width: 100%;" Text="2=Lista Positiva (valor)" Value="3" />
                                                    <asp:ListItem style="width: 100%;" Text="3=Lista Neutra(valor)" Value="4" />
                                                    <asp:ListItem style="width: 100%;" Text="4=Margem Valor Agregado(%)"
                                                        Value="5" />
                                                    <asp:ListItem style="width: 100%;" Text="5=Pauta(valor)" Value="6" />
                                                </asp:DropDownList>
                                            </div>
                                        </div>
                                    </div>
            
            
                                </div>
                            </div>
            
                            <!--/////////////////////////////////////////////////// 2 LINHA - LADO DIREITO -  Alíquota do imposto ICMS ST -   Valor da BC do ICMS ST /////////////////////////////////////////////////////////////////////////////////////////////-->
                            <div class="col-xl-5"
                                style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px; ">
            
                                <div class="row"
                                    style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">
            
                                    <div class="col-md-12"
                                        style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-left: 15px; padding-top: 20px">
                                        <div class="row">
                                            <div class="col"
                                                style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
   
                                                    % da Redução de BC do ICMS ST  &nbsp &nbsp<img alt="" src="../Imagens/ihelp.png"  style="width: 20px; height: 20px; cursor:pointer" onclick="anima_informacao(1,'percentualbcicms')" />
                                            </div>
                                        </div>
                                        <div class="row" style="padding: 0px; margin: 0px">
                                            <div class="col" style="padding: 0px; margin: 0px">
                                                <asp:TextBox ID="TextBox99" runat="server" CssClass="layouttexto"
                                                    Style="width: 30%;" onBlur="SetTextIn(this,0);SetDiv('div_ctr_1_202_203',0)" onFocus="SetTextIn(this,1);SetDiv('div_ctr_1_202_203',1)">
                                                </asp:TextBox>
                                            </div>
                                        </div>
                                    </div>
          
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>

            <!--///////////////////////////////////////////////////  Container - Grupo CTR=1 Grupo CTR=1 Simples Nacional e CSOSN=500/////////////////////////////////////////////////////////////////////////////////////////////-->

        <div class="container-fluid" style="padding: 0px; margin: 0px; width: 100%; height: 100%;">


            <div class="row" style="width: 100%; height: 50px"></div>
        
            <div class="row" style="width: 100%; height: 100%; padding: 0px; margin: 0px; background-color: transparent">
        
                <div class="row"
                    style="width: 100%; height: 100%; color: #177CC0; padding-left: 20px; padding-top: 0px; font-family: Arial; font-size: 20px; font-weight: bold; margin-left: 0px">
        
                    <div id="i_grupo_ctr_1_500_on" name="i_grupo_ctr_1_500_on" class="col" align="left"
                        style="display: none; visibility: hidden; font-size: 20px; color: red; margin-right: 20px; border-bottom: none; cursor: pointer"
                        onclick="mostra_div_informacao('div_grupo_ctr_1_500','i_grupo_ctr_1_500_on','i_grupo_ctr_1_500_off',0)"><span
                            style="color: #177CC0; font-family: Arial; font-size: 20px; font-weight: bold;">Grupo CTR=1 Simples Nacional e CSOSN=500
                            </span>&nbsp;&nbsp;<i class="fa fa-toggle-on"></i></div>
                    <div id="i_grupo_ctr_1_500_off" name="i_grupo_ctr_1_500_off" class="col" align="left"
                        style="display: block; visibility: visible; font-size: 20px; color: red; margin-right: 20px; border-bottom: solid; border-color: #767676; border-width: 1px; cursor: pointer"
                        onclick="mostra_div_informacao('div_grupo_ctr_1_500','i_grupo_ctr_1_500_on','i_grupo_ctr_1_500_off',1)"><span
                            style="color: #177CC0; font-family: Arial; font-size: 20px; font-weight: bold;">Grupo CTR=1 Simples Nacional e CSOSN=500
                            </span>&nbsp;&nbsp;<i class="fa fa-toggle-off"></i></div>
        
        
                </div>
        
                <div class="row" style="width: 100%; height: 20px"></div>
        
        
                <div id="div_grupo_ctr_1_500" name="div_grupo_ctr_1_500"
                    style="display: none; visibility: visible; width: 100%; height: 100%; background-color: transparent; margin-left: 20px; margin-right: 20px; border: solid; border-color: #177CC0; border-width: 1px; border-radius: 10px; padding: 0 20px 20px 20px;">
        
                    
        
                    <!--/////////////////////////////////////////////////// Container -  LINHA LADO ESQUERDO - Código de Situação da Operação   /////////////////////////////////////////////////////////////////////////////////////////////-->
                    
        
                    <div class="row"
                        style="width: 100%; padding: 0px; margin: 0px; background-color: transparent; height: 100%; padding: 0px; margin: 0px">
        
        
                        <div class="col-xl-7"
                            style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px;">
        
                            <div class="row"
                                style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">
        
                                <div class="col-md-6"
                                    style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-left: 15px; padding-top: 20px">
                                    <div class="row">
                                        <div class="col"
                                            style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                             Código de Situação da Operação  &nbsp &nbsp<img alt="" src="../Imagens/ihelp.png"  style="width: 20px; height: 20px; cursor:pointer" onclick="anima_informacao(1,'codigo500')" />  
                                        </div>
                                    </div>
                                    <div class="row" style="padding: 0px; margin: 0px">
                                        <div class="col" style="padding: 0px; margin: 0px">
                                            <asp:DropDownList ID="DropDownList52" onBlur="SetTextIn(this,0);SetDiv('div_grupo_ctr_1_500',0)" onFocus="SetTextIn(this,1);SetDiv('div_grupo_ctr_1_500',1)" CssClass="layouttexto" runat="server">
                                                <asp:ListItem style="width: 100%;"
                                                    Text="500" Value="1" />
                                                <asp:ListItem style="width: 100%;" Text="90" Value="1" />
                                            </asp:DropDownList>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6"
                                    style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-left: 15px; padding-top: 20px">


                                    <div class="row">
                                        <div class="col"
                                            style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                            Valor da BC do ICMS ST retido
                                        </div>
                                    </div>

                                    <div class="row" style="padding: 0px; margin: 0px">
                                        <div class="col" style="padding: 0px; margin: 0px">
                                            <asp:TextBox ID="TextBox101" runat="server"  CssClass="layouttexto"
                                                Style="width: 100px;" onBlur="SetTextIn(this,0);SetDiv('div_grupo_ctr_1_500',0)" onFocus="SetTextIn(this,1);SetDiv('div_grupo_ctr_1_500',1)">
                                            </asp:TextBox>
                                        </div>
                                    </div>
                                </div>

                            </div>
                        </div>
        
        
                        <!--/////////////////////////////////////////////////// Container -  LINHA LADO DIRETO - Valor da BC do ICMS ST  -  Valor do ICMS ST retido/////////////////////////////////////////////////////////////////////////////////////////////-->
                        <div class="col-xl-5"
                            style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">
        
                            <div class="row"
                                style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">
        
                                <div class="col-md-12"
                                    style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-left: 15px; padding-top: 20px">
        
        
                                    <div class="row">
                                        <div class="col"
                                            style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                            Valor do ICMS ST retido &nbsp &nbsp<img alt="" src="../Imagens/ihelp.png"  style="width: 20px; height: 20px; cursor:pointer" onclick="anima_informacao(1,'icmsstretido')" />
                                        </div>
                                    </div>
        
                                    <div class="row" style="padding: 0px; margin: 0px">
                                        <div class="col" style="padding: 0px; margin: 0px">
                                            <asp:TextBox ID="TextBox104" runat="server" CssClass="layouttexto"
                                                Style="width: 100px;" onBlur="SetTextIn(this,0);SetDiv('div_grupo_ctr_1_500',0)" onFocus="SetTextIn(this,1);SetDiv('div_grupo_ctr_1_500',1)">
                                            </asp:TextBox>
                                        </div>
                                    </div>
                                </div>
                        </div>
                    </div>
                </div>
                 </div>
                </div>
                    <!--///////////////////////////////////////////////////  Container - Grupo CRT=1 CSOSN=900/////////////////////////////////////////////////////////////////////////////////////////////-->

            <div class="container-fluid" style="padding: 0px; margin: 0px; width: 100%; height: 100%;">


                <div class="row" style="width: 100%; height: 50px"></div>
            
                <div class="row" style="width: 100%; height: 100%; padding: 0px; margin: 0px; background-color: transparent">
            
                    <div class="row"
                        style="width: 100%; height: 100%; color: #177CC0; padding-left: 20px; padding-top: 0px; font-family: Arial; font-size: 20px; font-weight: bold; margin-left: 0px">
            
                        <div id="i_crt_1_900_on" name="i_crt_1_900_on" class="col" align="left"
                            style="display: none; visibility: hidden; font-size: 20px; color: red; margin-right: 20px; border-bottom: none; cursor: pointer"
                            onclick="mostra_div_informacao('div_crt_1_900','i_crt_1_900_on','i_crt_1_900_off',0)"><span
                                style="color: #177CC0; font-family: Arial; font-size: 20px; font-weight: bold;">Grupo CRT=1 Simples Nacional e CSOSN=900
                                </span>&nbsp;&nbsp;<i class="fa fa-toggle-on"></i></div>
                        <div id="i_crt_1_900_off" name="i_crt_1_900_off" class="col" align="left"
                            style="display: block; visibility: visible; font-size: 20px; color: red; margin-right: 20px; border-bottom: solid; border-color: #767676; border-width: 1px; cursor: pointer"
                            onclick="mostra_div_informacao('div_crt_1_900','i_crt_1_900_on','i_crt_1_900_off',1)"><span
                                style="color: #177CC0; font-family: Arial; font-size: 20px; font-weight: bold;">Grupo CRT=1 Simples Nacional e CSOSN=900
                                </span>&nbsp;&nbsp;<i class="fa fa-toggle-off"></i></div>
            
            
                    </div>
            
                    <div class="row" style="width: 100%; height: 20px"></div>
            
            
                    <div id="div_crt_1_900" name="div_crt_1_900"
                        style="display: none; visibility: visible; width: 100%; height: 100%; background-color: transparent; margin-left: 20px; margin-right: 20px; border: solid; border-color: #177CC0; border-width: 1px; border-radius: 10px; padding: 0 20px 20px 20px;">
            
                        <!--/////////////////////////////////////////////////// Container -  LINHA LADO ESQUERDO - Codigo Situação da Operação  /////////////////////////////////////////////////////////////////////////////////////////////-->
                       
            
                        <div class="row"
                            style="width: 100%; padding: 0px; margin: 0px; background-color: transparent; height: 100%; padding: 0px; margin: 0px">
            
            
            
                            <div class="col-xl-7"
                                style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">
            
                                <div class="row"
                                    style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">
            
                                    <div class="col-md-6"
                                        style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-left: 15px; padding-top: 20px">
            
            
                                        <div class="row">
                                            <div class="col"
                                                style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                                Codigo Situação da Operação &nbsp &nbsp<img alt="" src="../Imagens/ihelp.png"  style="width: 20px; height: 20px; cursor:pointer" onclick="anima_informacao(1,'codigo900')" />
                                            </div>
                                        </div>
            
                                        <div class="row" style="padding: 0px; margin: 0px">
                                            <div class="col" style="padding: 0px; margin: 0px">
                                                <asp:DropDownList ID="DropDownList54" onBlur="SetTextIn(this,0);SetDiv('div_crt_1_900',0)" onFocus="SetTextIn(this,1);SetDiv('div_crt_1_900',1)" CssClass="layouttexto" runat="server">
                                                    <asp:ListItem style="width: 100%;"
                                                        Text="900" Value="1" />
                                                </asp:DropDownList>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="col-md-6"
                                        style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-left: 15px; padding-top: 20px">
                                        <div class="row">
                                            <div class="col"
                                                style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                                Alíquota Aplicavel do crédito &nbsp &nbsp <img alt="" src="../Imagens/ihelp.png"  style="width: 20px; height: 21px; cursor:pointer" onclick="anima_informacao(1,'aliquotadecalculo')" />
                                            </div>
                                        </div>
                                        <div class="row" style="padding: 0px; margin: 0px">
                                            <div class="col" style="padding: 0px; margin: 0px">
                                                <asp:TextBox ID="TextBox115" runat="server" CssClass="layouttexto"
                                                    Style="width: 100px;" onBlur="SetTextIn(this,0);SetDiv('div_crt_1_900',0)" onFocus="SetTextIn(this,1);SetDiv('div_crt_1_900',1)">
                                                </asp:TextBox>
                                            </div>
                                        </div>
</div>
            
                                </div>
                            </div>
            
            
                            <!--/////////////////////////////////////////////////// - LADO DIREITO - Valor da BC do ICMS -   Modalidade da BC do ICMS   /////////////////////////////////////////////////////////////////////////////////////////////-->
                            <div class="col-xl-5"
                                style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px; ">
            
                                <div class="row"
                                    style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">
            
                                    <div class="col-md-7"
                                        style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-left: 15px; padding-top: 20px">
                                        <div class="row">
                                            <div class="col"
                                                style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                                 Modalidade da BC do ICMS
                                            </div>
                                        </div>
                                        <div class="row" style="padding: 0px; margin: 0px">
                                            <div class="col" style="padding: 0px; margin: 0px">
                                                <asp:DropDownList ID="DropDownList55" onBlur="SetTextIn(this,0);SetDiv('div_crt_1_900',0)" onFocus="SetTextIn(this,1);SetDiv('div_crt_1_900',1)" CssClass="layouttexto" runat="server">
                                                    <asp:ListItem style="width: 100%;" Text="0=Margem Valor Agregado" Value="1" />
                                                    <asp:ListItem style="width: 100%;" Text="1=Pauta(valor)" Value="2" />
                                                    <asp:ListItem style="width: 100%;" Text="2=Preço Tabelado Máx.(valor)"
                                                        Value="3" />
                                                    <asp:ListItem style="width: 100%;" Text="3=Valor da operação" Value="4" />
            
                                                </asp:DropDownList>
                                            </div>
                                        </div>
                                    </div>
            
                                    <div class="col-md-5"
                                        style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-left: 15px; padding-top: 20px">
                                        <div class="row">
                                            <div class="col"
                                                style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                                Valor da BC do ICMS
                                            </div>
                                        </div>
                                        <div class="row" style="padding: 0px; margin: 0px">
                                            <div class="col" style="padding: 0px; margin: 0px">
                                                <asp:TextBox ID="TextBox106" runat="server" CssClass="layouttexto"
                                                    Style="width: 100px;" onBlur="SetTextIn(this,0);SetDiv('div_crt_1_900',0)" onFocus="SetTextIn(this,1);SetDiv('div_crt_1_900',1)">
                                                </asp:TextBox>
                                            </div>
                                        </div>
                                    </div>
            
            
                                </div>
                            </div>
            
                        </div>
            
                        <!--///////////////////////////////////////////////////  - LADO esquerdo -  Aliquota do imposto -   Percentual da Redução de BC /////////////////////////////////////////////////////////////////////////////////////////////-->
                        <div class="row" style="height: 30px"></div>
            
                        <div class="row"
                            style="width: 100%; padding: 0px; margin: 0px; background-color: transparent; height: 100%; padding: 0px; margin: 0px">
            
                            <div class="col-xl-7"
                                style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px; ">
            
                                <div class="row"
                                    style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">
            
                                    <div class="col-md-6"
                                        style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-left: 15px; padding-top: 20px">
                                        <div class="row">
                                            <div class="col"
                                                style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                                % da Redução de BC &nbsp &nbsp <img alt="" src="../Imagens/ihelp.png"  style="width: 20px; height: 21px; cursor:pointer" onclick="anima_informacao(1,'reducaobc')" />
                                            </div>
                                        </div>
                                        <div class="row" style="padding: 0px; margin: 0px">
                                            <div class="col" style="padding: 0px; margin: 0px">
                                                <asp:TextBox ID="TextBox107" runat="server" CssClass="layouttexto"
                                                    Style="width: 100px;" onBlur="SetTextIn(this,0);SetDiv('div_crt_1_900',0)" onFocus="SetTextIn(this,1);SetDiv('div_crt_1_900',1)">
                                                </asp:TextBox>
                                            </div>
                                        </div>
                                    </div>
            
                                    <div class="col-md-6"
                                        style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-left: 15px; padding-top: 20px">
                                        <div class="row">
                                            <div class="col"
                                                style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                                Alíquota do imposto
                                            </div>
                                        </div>
                                        <div class="row" style="padding: 0px; margin: 0px">
                                            <div class="col" style="padding: 0px; margin: 0px">
                                                <asp:TextBox ID="TextBox108" runat="server" CssClass="layouttexto"
                                                    Style="width: 100px;" onBlur="SetTextIn(this,0);SetDiv('div_crt_1_900',0)" onFocus="SetTextIn(this,1);SetDiv('div_crt_1_900',1)">
                                                </asp:TextBox>
                                            </div>
                                        </div>
                                    </div>
            
            
                                </div>
                            </div>
            
                            <!--/////////////////////////////////////////////////// 2 LINHA - LADO DIREITO -  Modalidade da BC do ICMS ST -   Valor do ICMS /////////////////////////////////////////////////////////////////////////////////////////////-->
                            <div class="col-xl-5"
                                style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px; ">
            
                                <div class="row"
                                    style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">
            
                                    <div class="col-md-7"
                                        style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-left: 15px; padding-top: 20px">
                                        <div class="row">
                                            <div class="col"
                                                style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                                Modalidade da BC do ICMS ST 
                                            </div>
                                        </div>
                                        <div class="row" style="padding: 0px; margin: 0px">
                                            <div class="col" style="padding: 0px; margin: 0px">
                                                <asp:DropDownList ID="DropDownList57" onBlur="SetTextIn(this,0);SetDiv('div_crt_1_900',0)" onFocus="SetTextIn(this,1);SetDiv('div_crt_1_900',1)" CssClass="layouttexto" runat="server">
                                                    <asp:ListItem style="width: 100%;" Text="0=Tabelado ou máximo sugerido"
                                                        Value="1" />
                                                    <asp:ListItem style="width: 100%;" Text="1=lista Negativada (valor)"
                                                        Value="2" />
                                                    <asp:ListItem style="width: 100%;" Text="2=Lista Positiva (valor)" Value="3" />
                                                    <asp:ListItem style="width: 100%;" Text="3=Lista Neutra(valor)" Value="4" />
                                                    <asp:ListItem style="width: 100%;" Text="4=Margem Valor Agregado(%)"
                                                        Value="5" />
                                                    <asp:ListItem style="width: 100%;" Text="5=Pauta(valor)" Value="6" />
                                                </asp:DropDownList>
                                            </div>
                                        </div>
                                    </div>
            
                                    <div class="col-md-5"
                                        style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-left: 15px; padding-top: 20px">
                                        <div class="row">
                                            <div class="col"
                                                style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                                Valor do ICMS 
                
                                            </div>
                                        </div>
                                        <div class="row" style="padding: 0px; margin: 0px">
                                            <div class="col" style="padding: 0px; margin: 0px">
                                                <asp:TextBox ID="TextBox109" runat="server" CssClass="layouttexto"
                                                    Style="width: 40%;" onBlur="SetTextIn(this,0);SetDiv('div_crt_1_900',0)" onFocus="SetTextIn(this,1);SetDiv('div_crt_1_900',1)">
                                                </asp:TextBox>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!--/////////////////////////////////////////////////// Container -  LINHA LADO ESQUERDO -  % Margem de Valor Adicionado do ICMS ST -  Redução Percentual da BC do ICMS ST   /////////////////////////////////////////////////////////////////////////////////////////////-->
                        <div class="row" style="height: 30px"></div>
            
                        <div class="row"
                            style="width: 100%; padding: 0px; margin: 0px; background-color: transparent; height: 100%; padding: 0px; margin: 0px">
            
            
            
                            <div class="col-xl-7"
                                style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">
            
                                <div class="row"
                                    style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">
            
                                    <div class="col-md-6"
                                        style="width: 100%; height: 100%; background-color: transparent;padding: 4px; padding-left: 15px; padding-top: 20px">
            
            
                                        <div class="row">
                                            <div class="col"
                                                style="font-family: Arial; font-size: 16px; padding-right:10px;  color: #000000; font-weight: bold">
                                               Percentual da MVA do ICMS ST&nbsp &nbsp <img alt="" src="../Imagens/ihelp.png"  style="width: 20px; height: 21px; cursor:pointer" onclick="anima_informacao(1,'PercentualdaMV doICMSST')" />
                                            </div>
                                        </div>
            
                                        <div class="row" style="padding: 0px; margin: 0px">
                                            <div class="col" style="padding: 0px; margin: 0px">
                                                <asp:TextBox ID="TextBox110" runat="server" CssClass="layouttexto"
                                                    Style="width: 100px;" onBlur="SetTextIn(this,0);SetDiv('div_crt_1_900',0)" onFocus="SetTextIn(this,1);SetDiv('div_crt_1_900',1)">
                                                </asp:TextBox>
                                            </div>
                                        </div>
                                    </div>
            
                                    <div class="col-md-6"
                                        style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-left: 15px; padding-top: 20px">
                                        <div class="row">
                                            <div class="col"
                                                style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                                % de Redução da BC do ICMS ST <img alt="" src="../Imagens/ihelp.png"  style="width: 20px; height: 20px; cursor:pointer" onclick="anima_informacao(1,'percentualbcicms')" />
            
                                            </div>
                                        </div>
                                        <div class="row" style="padding: 0px; margin: 0px">
                                            <div class="col" style="padding: 0px; margin: 0px">
                                                <asp:TextBox ID="TextBox111" runat="server" CssClass="layouttexto"
                                                    Style="width: 100px;" onBlur="SetTextIn(this,0);SetDiv('div_crt_1_900',0)" onFocus="SetTextIn(this,1);SetDiv('div_crt_1_900',1)">
                                                </asp:TextBox>
                                            </div>
                                        </div>
                                    </div>
            
            
                                </div>
                            </div>
                        
            
                        <!--/////////////////////////////////////////////////// Container -  LINHA LADO DIRETO -  Valor da BC do ICMS ST - Valor do ICMS ST  /////////////////////////////////////////////////////////////////////////////////////////////-->
                        
            
            
            
                            <div class="col-xl-5"
                                style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">
            
                                <div class="row"
                                    style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">
            
                                    <div class="col-md-7"
                                        style="width: 100%; height: 100%; background-color: transparent;padding: 4px; padding-left: 15px; padding-top: 20px">
            
            
                                        <div class="row">
                                            <div class="col"
                                                style="font-family: Arial; font-size: 16px; padding-right:10px;  color: #000000; font-weight: bold">
                                                Valor da BC do ICMS ST
                                            </div>
                                        </div>
            
                                        <div class="row" style="padding: 0px; margin: 0px">
                                            <div class="col" style="padding: 0px; margin: 0px">
                                                <asp:TextBox ID="TextBox112" runat="server" CssClass="layouttexto"
                                                    Style="width: 150px;" onBlur="SetTextIn(this,0);SetDiv('div_crt_1_900',0)" onFocus="SetTextIn(this,1);SetDiv('div_crt_1_900',1)">
                                                </asp:TextBox>
                                            </div>
                                        </div>
                                    </div>
            
                                    <div class="col-md-5"
                                        style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-left: 15px; padding-top: 20px">
                                        <div class="row">
                                            <div class="col"
                                                style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                                Valor do ICMS ST 
                                            </div>
                                        </div>
                                        <div class="row" style="padding: 0px; margin: 0px">
                                            <div class="col" style="padding: 0px; margin: 0px">
                                                <asp:TextBox ID="TextBox113" runat="server" CssClass="layouttexto"
                                                    Style="width: 40%;" onBlur="SetTextIn(this,0);SetDiv('div_crt_1_900',0)" onFocus="SetTextIn(this,1);SetDiv('div_crt_1_900',1)">
                                                </asp:TextBox>
                                            </div>
                                        </div>
                                    </div>
            
            
                                </div>
                            </div>
                        </div>

                        <!--///////////////////////////////////////////////////  - LADO ESQUERDO - Alíquota do imposto do ICMS ST-   Alíquota Aplicavel do crédito  /////////////////////////////////////////////////////////////////////////////////////////////-->
                        <div class="row" style="height: 30px"></div>

                        <div class="row"
                            style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

                            <div class="col-xl-7"
                                style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

                                <div class="row"
                                    style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

                                    <div class="col-md-6"
                                        style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-left: 15px; padding-top: 20px">


                                        <div class="row">
                                            <div class="col"
                                                style="font-family: Arial; font-size: 16px; padding-right: 10px; color: #000000; font-weight: bold">
                                                Alíquota do imposto do ICMS ST
                                            </div>
                                        </div>

                                        <div class="row" style="padding: 0px; margin: 0px">
                                            <div class="col" style="padding: 0px; margin: 0px">
                                                <asp:TextBox ID="TextBox114" runat="server" CssClass="layouttexto"
                                                    Style="width: 100px;" onBlur="SetTextIn(this,0);SetDiv('div_crt_1_900',0)" onFocus="SetTextIn(this,1);SetDiv('div_crt_1_900',1)">
                                                </asp:TextBox>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="col-md-6"
                                        style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-left: 15px; padding-top: 20px">
                                        <div class="row">
                                            <div class="col"
                                                style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                                Crédito IMCS aproveitável segundo o art. 23  &nbsp  <img alt="" src="../Imagens/ihelp.png"  style="width: 20px; height: 21px; cursor:pointer" onclick="anima_informacao(1,'creditoicmsart23')" />
                                            </div>
                                        </div>
                                        <div class="row" style="padding: 0px; margin: 0px">
                                            <div class="col" style="padding: 0px; margin: 0px">
                                                <asp:TextBox ID="TextBox116" runat="server" CssClass="layouttexto"
                                                    Style="width: 150px;" onBlur="SetTextIn(this,0);SetDiv('div_crt_1_900',0)" onFocus="SetTextIn(this,1);SetDiv('div_crt_1_900',1)">
                                                </asp:TextBox>
                                            </div>
                                        </div>
                                    </div>


                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>


    <!--///////////////////////////////////////////////////  2 Container - Produtos e  Serviços / Declaração de Importação /////////////////////////////////////////////////////////////////////////////////////////////-->


<div class="container-fluid" style="padding:0px;margin:0px;width:100%;height:100%;">
       

    <div class="row" style="width:100%;height:50px"></div>
        
    <div class="row" style="width:100%;height:100%;padding:0px;margin:0px;background-color:transparent">
   
        <div class="row" style="width: 100%; height: 100%; color: #177CC0; padding-left: 20px; padding-top: 0px; font-family: Arial; font-size: 20px; font-weight: bold; margin-left: 0px">
   
            <div id="i_produtos_servicos_importacoes_on" name="i_produtos_servicos_importacoes_on" class="col" align="left" style="display: none; visibility: hidden; font-size: 20px; color: red; margin-right: 20px; border-bottom: none; cursor: pointer" onclick="mostra_div_informacao('div_produtos_servicos_importacoes','i_produtos_servicos_importacoes_on','i_produtos_servicos_importacoes_off',0)"><span style="color: #177CC0; font-family: Arial; font-size: 20px; font-weight: bold;"> Produtos e Serviços / Declaração de Importação  </span>&nbsp;&nbsp;<i class="fa fa-toggle-on"></i></div>
            <div id="i_produtos_servicos_importacoes_off" name="i_produtos_servicos_importacoes_off" class="col" align="left" style="display: block; visibility: visible; font-size: 20px; color: red; margin-right: 20px; border-bottom: solid; border-color: #767676; border-width: 1px; cursor: pointer" onclick="mostra_div_informacao('div_produtos_servicos_importacoes','i_produtos_servicos_importacoes_on','i_produtos_servicos_importacoes_off',1)"><span style="color: #177CC0; font-family: Arial; font-size: 20px; font-weight: bold;">Produtos e Serviços / Declaração de Importação</span>&nbsp;&nbsp;<i class="fa fa-toggle-off"></i></div>
   
   
        </div>
   
        <div class="row" style="width: 100%; height: 20px"></div>
   
        
        <div id="div_produtos_servicos_importacoes" name="div_produtos_servicos_importacoes"
            style="display:none;visibility:visible;width:100%;height:100%;background-color:transparent;margin-left:20px;margin-right:20px;border:solid;border-color:#177CC0;border-width:1px;border-radius:10px;padding: 0 20px 20px 20px;">
   
   
           
            <div class="row"
                style="width:100%;padding:0px;margin:0px;background-color:transparent;height:100%;padding:0px;margin:0px">
   

				<!--/////////////////////////////////////////////////// 2 Container -  LINHA LADO ESQUERDO - NUMERO DO DOCUMENTO DE IMPORTAÇÃO -  Data de Registro do Documento/////////////////////////////////////////////////////////////////////////////////////////////-->
				<div class="col-xl-7"
					style="width:100%;height:100%;background-color:transparent;padding:0px;margin:0px">

					<div class="row" style="width:100%;height:100%;background-color:transparent;padding:0px;margin:0px">

						<div class="col-md-6" style="width:100%;height:100%;background-color:transparent;padding:10px;">


							<div class="row">
								<div class="col"
									style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
									Número do Documento de Importação &nbsp  <img alt="" src="../Imagens/ihelp.png"  style="width: 20px; height: 21px; cursor:pointer" onclick="anima_informacao(1,'numerodocumentoimportacao')" />
								</div>
							</div>

							<div class="row" style="padding:0px;margin:0px">
								<div class="col" style="padding:0px;margin:0px">
									<asp:TextBox ID="cs_ndi" runat="server" CssClass="layouttexto"
										style="width: 230px;padding:0px;margin:0px" 
										onBlur="SetTextIn(this,0);SetDiv('div_produtos_servicos_importacoes',0)" onFocus="SetTextIn(this,1);SetDiv('div_produtos_servicos_importacoes',1)">

									</asp:TextBox>
								</div>
							</div>

						</div>


						<div class=" col-md-6"
							style="width:100%;height:100%;background-color:transparent; padding:10px;">
							<div class="row">
								<div class="col"
									style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
									Data de Registro do Documento
								</div>
							</div>
							<div class="row" style="padding:0px;margin:0px">
								<div class="col" style="padding:0px;margin:0px">
									<asp:TextBox ID="cs_ddi" runat="server" CssClass="layouttexto"
										style="width: 150px;" onBlur="SetTextIn(this,0);SetDiv('div_produtos_servicos_importacoes',0)" onFocus="SetTextIn(this,1);SetDiv('div_produtos_servicos_importacoes',1)">
									</asp:TextBox>
								</div>
							</div>
						</div>


					</div>

				</div>
				<!--/////////////////////////////////////////////////// 2 Container - LINHA LADO DIREITO - NUMERO DO DOCUMENTO DE IMPORTAÇÃO -  Data de Registro do Documento/////////////////////////////////////////////////////////////////////////////////////////////-->
				<div class="col-xl-5"
					style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px; ">

					<div class="row"
						style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

						<div class="col-auto"
							style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-left: 13px; padding-top: 10px; padding-right: 12px ">
							<div class="row">
								<div class="col"
									style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
									Local de Desembargo
								</div>
							</div>
                            <div class="row" style="padding: 0px; margin: 0px">
                                <div class="col" style="padding: 0px; margin: 0px">
                                    <asp:TextBox ID="cs_xlocdesemb" runat="server" CssClass="layouttexto"
                                        Style="width: 100%;" onBlur="SetTextIn(this,0);SetDiv('div_produtos_servicos_importacoes',0)" onFocus="SetTextIn(this,1);SetDiv('div_produtos_servicos_importacoes',1)">
                                    </asp:TextBox>
                                </div>
                            </div>
						</div>

					</div>
				</div>
			</div>
            <!--/////////////////////////////////////////////////// 2 Container - 2 linha - LADO ESQUERDO -   UF onde ocorreu o Desembargo Aduaneiro - Data de Desembargo  ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////-->
            <div class="row" style="height: 30px"></div>
          <div class="row">
            <div class="col-xl-6" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px; padding-left: 10px">

                <div class="row" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">



                    <div class="col-md-8" style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-left: 15px; padding-top: 10px">
                        <div class="row">
                            <div class="col" style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                UF onde ocorreu o Desembargo Aduaneiro

                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <asp:DropDownList ID="cs_ufdesemb" onBlur="SetTextIn(this,0);SetDiv('div_produtos_servicos_importacoes',0)" onFocus="SetTextIn(this,1);SetDiv('div_produtos_servicos_importacoes',1)" CssClass="layouttexto" runat="server">
                                    <asp:ListItem style="width: 100%;" Text="SP" Value="1" />
                                    <asp:ListItem style="width: 100%;" Text="AC" Value="2" />
                                    <asp:ListItem style="width: 100%;" Text="AL" Value="3" />
                                    <asp:ListItem style="width: 100%;" Text="AP" Value="4" />
                                    <asp:ListItem style="width: 100%;" Text="AM" Value="5" />
                                    <asp:ListItem style="width: 100%;" Text="BA" Value="6" />
                                    <asp:ListItem style="width: 100%;" Text="CE" Value="7" />
                                    <asp:ListItem style="width: 100%;" Text="DF" Value="8" />
                                    <asp:ListItem style="width: 100%;" Text="ES" Value="9" />
                                    <asp:ListItem style="width: 100%;" Text="GO" Value="10" />
                                    <asp:ListItem style="width: 100%;" Text="MA" Value="11" />
                                    <asp:ListItem style="width: 100%;" Text="MT" Value="12" />
                                    <asp:ListItem style="width: 100%;" Text="MS" Value="13" />
                                    <asp:ListItem style="width: 100%;" Text="MG" Value="14" />
                                    <asp:ListItem style="width: 100%;" Text="PA" Value="15" />
                                    <asp:ListItem style="width: 100%;" Text="PB" Value="16" />
                                    <asp:ListItem style="width: 100%;" Text="PR" Value="17" />
                                    <asp:ListItem style="width: 100%;" Text="PE" Value="18" />
                                    <asp:ListItem style="width: 100%;" Text="PI" Value="19" />
                                    <asp:ListItem style="width: 100%;" Text="RJ" Value="20" />
                                    <asp:ListItem style="width: 100%;" Text="RN" Value="21" />
                                    <asp:ListItem style="width: 100%;" Text="RS" Value="22" />
                                    <asp:ListItem style="width: 100%;" Text="RO" Value="23" />
                                    <asp:ListItem style="width: 100%;" Text="RR" Value="24" />
                                    <asp:ListItem style="width: 100%;" Text="SC" Value="25" />
                                    <asp:ListItem style="width: 100%;" Text="SE" Value="26" />
                                    <asp:ListItem style="width: 100%;" Text="TO" Value="27" />
                                </asp:DropDownList>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-4" style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-left: 15px; padding-top: 10px"">

                        <div class="row">
                            <div class="col" style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                Data de Desembargo
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <asp:TextBox ID="cs_ddesemb" runat="server" CssClass="layouttexto" Style="width: 120px;" onBlur="SetTextIn(this,0);SetDiv('div_produtos_servicos_importacoes',0)" onFocus="SetTextIn(this,1);SetDiv('div_produtos_servicos_importacoes',1)"></asp:TextBox>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
             <!--/////////////////////////////////////////////////// 2 Container - 2 linha - LADO DIREITO -  Via de Transporte Internacional -  Valor da AFRMM  ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////-->
              <div class="col-xl-6" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px; padding-left: 10px">

                  <div class="row" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">



                      <div class="col-md-6" style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-left: 10px; padding-top: 10px">
                          <div class="row">
                              <div class="col" style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                  Via de Transporte Internacional

                              </div>
                          </div>
                          <div class="row">
                              <div class="col">
                                  <asp:DropDownList ID="cs_tpviatransp" onBlur="SetTextIn(this,0);SetDiv('div_produtos_servicos_importacoes',0)" onFocus="SetTextIn(this,1);SetDiv('div_produtos_servicos_importacoes',1)" CssClass="layouttexto" runat="server">
                                      <asp:ListItem style="width: 100%;" Text="Marítima" Value="1" />
                                      <asp:ListItem style="width: 100%;" Text="Fluvial" Value="2" />
                                      <asp:ListItem style="width: 100%;" Text="Lacustre" Value="3" />
                                      <asp:ListItem style="width: 100%;" Text="Aérea" Value="4" />
                                      <asp:ListItem style="width: 100%;" Text="Postal" Value="5" />
                                      <asp:ListItem style="width: 100%;" Text="Ferroviária" Value="6" />
                                      <asp:ListItem style="width: 100%;" Text="Rodoviária" Value="7" />
                                      <asp:ListItem style="width: 100%;" Text="Conduto / Rede Transmissão" Value="8" />
                                      <asp:ListItem style="width: 100%;" Text="Meios Próprios" Value="9" />
                                      <asp:ListItem style="width: 100%;" Text="Entrada / Saída ficta" Value="10" />
                                      <asp:ListItem style="width: 100%;" Text="Courier" Value="11" />
                                      <asp:ListItem style="width: 100%;" Text="Handcarry" Value="12" />

                                  </asp:DropDownList>
                              </div>
                          </div>
                      </div>

                      <div class="col-md-6" style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">

                          <div class="row">
                              <div class="col" style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                  Valor da AFRMM &nbsp &nbsp <img alt="" src="../Imagens/ihelp.png"  style="width: 20px; height: 21px; cursor:pointer" onclick="anima_informacao(1,'ValordaAFRMM')" />
                              </div>
                          </div>

                          <div class="row">
                              <div class="col">
                                  <asp:TextBox ID="cs_vafrmm" runat="server" CssClass="layouttexto" Style="width: 120px;" onBlur="SetTextIn(this,0);SetDiv('div_produtos_servicos_importacoes',0)" onFocus="SetTextIn(this,1);SetDiv('div_produtos_servicos_importacoes',1)"></asp:TextBox>
                              </div>
                          </div>
                      </div>

                  </div>
              </div>
          </div>
             <!--/////////////////////////////////////////////////// 2 Container - 3 linha - LADO ESQUERDO -  FORMA DE IMPORTACAO ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////-->
            <div class="row" style="height: 30px"></div>
            <div class="row">
                <div class="col-xl-4" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px; padding-left: 10px">

                    <div class="row" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">



                        <div class="col-md-auto" style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-left: 15px; padding-top: 10px">
                            <div class="row">
                                <div class="col" style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                    Forma de importação quanto a intermediação
                                </div>
                            </div>
                            <div class="row">
                                <div class="col">
                                    <asp:DropDownList ID="cs_tpintermedio" onBlur="SetTextIn(this,0);SetDiv('div_produtos_servicos_importacoes',0)" onFocus="SetTextIn(this,1);SetDiv('div_produtos_servicos_importacoes',1)" CssClass="layouttexto" runat="server">
                                        <asp:ListItem style="width: 100%;" Text="Importação por conta própria" Value="1" />
                                        <asp:ListItem style="width: 100%;" Text="Importação por conta e ordem" Value="2" />
                                        <asp:ListItem style="width: 100%;" Text="Importação por ecomenda" Value="3" />
                                    </asp:DropDownList>
                                </div>
                            </div>
                        </div>

                        

                    </div>
                </div>
                 <!--/////////////////////////////////////////////////// 2 Container - 3 linha - LADO DIREITO - CNPJ do adquirente ou do encomendante- CODIGO EXPORTADOR   ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////-->
                <div class="col-xl-8"
				style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px; padding-left: 10px">

				<div class="row"
					style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">


                    <div class="col-md-6" style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-left: 15px; padding-top: 10px"">

                        <div class="row">
                            <div class="col" style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                CNPJ do adquirente ou do encomendante
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <asp:TextBox ID="cs_cnpj" runat="server" CssClass="layouttexto" Style="width: 70%;" onBlur="SetTextIn(this,0);SetDiv('div_produtos_servicos_importacoes',0)" onFocus="SetTextIn(this,1);SetDiv('div_produtos_servicos_importacoes',1)"></asp:TextBox>
                            </div>
                        </div>
                    </div>




					<div class="col-md-6"
						style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-left: 15px; padding-top: 10px">
						<div class="row">
							<div class="col"
								style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
								Código do Exportador
							</div>
						</div>
                        <div class="row" style="padding: 0px; margin: 0px">
                            <div class="col" style="padding: 0px; margin: 0px">
                                <asp:TextBox ID="cs_cexportador" runat="server" CssClass="layouttexto"
                                    Style="width: 90%;" onBlur="SetTextIn(this,0);SetDiv('div_produtos_servicos_importacoes',0)" onFocus="SetTextIn(this,1);SetDiv('div_produtos_servicos_importacoes',1)">
                                </asp:TextBox>
                            </div>
                        </div>
					</div>

				</div>
</div>
      </div>
            <!--/////////////////////////////////////////////////// 2 Container - 4 linha - LADO ESQUERDO -  UF DO ADQUIRENTE  - CNPJ DO ADQUIRENTE   ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////-->
            <div class="row" style="height: 30px"></div>
            <div class="row">
                <div class="col-xl-4" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px; padding-left: 10px">

                    <div class="row" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">



                        <div class="col-md-auto" style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-left: 15px; padding-top: 10px">
                            <div class="row">
                                <div class="col" style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                    UF do adquirente ou do encomendante
                                </div>
                            </div>
                            <div class="row">
                                <div class="col">
                                    <asp:DropDownList ID="cs_ufterceiro" onBlur="SetTextIn(this,0);SetDiv('div_produtos_servicos_importacoes',0)" onFocus="SetTextIn(this,1);SetDiv('div_produtos_servicos_importacoes',1)" CssClass="layouttexto" runat="server">
                                        <asp:ListItem style="width: 100%;" Text="SP" Value="1" />
                                        <asp:ListItem style="width: 100%;" Text="AC" Value="2" />
                                        <asp:ListItem style="width: 100%;" Text="AL" Value="3" />
                                        <asp:ListItem style="width: 100%;" Text="AP" Value="4" />
                                        <asp:ListItem style="width: 100%;" Text="AM" Value="5" />
                                        <asp:ListItem style="width: 100%;" Text="BA" Value="6" />
                                        <asp:ListItem style="width: 100%;" Text="CE" Value="7" />
                                        <asp:ListItem style="width: 100%;" Text="DF" Value="8" />
                                        <asp:ListItem style="width: 100%;" Text="ES" Value="9" />
                                        <asp:ListItem style="width: 100%;" Text="GO" Value="10" />
                                        <asp:ListItem style="width: 100%;" Text="MA" Value="11" />
                                        <asp:ListItem style="width: 100%;" Text="MT" Value="12" />
                                        <asp:ListItem style="width: 100%;" Text="MS" Value="13" />
                                        <asp:ListItem style="width: 100%;" Text="MG" Value="14" />
                                        <asp:ListItem style="width: 100%;" Text="PA" Value="15" />
                                        <asp:ListItem style="width: 100%;" Text="PB" Value="16" />
                                        <asp:ListItem style="width: 100%;" Text="PR" Value="17" />
                                        <asp:ListItem style="width: 100%;" Text="PE" Value="18" />
                                        <asp:ListItem style="width: 100%;" Text="PI" Value="19" />
                                        <asp:ListItem style="width: 100%;" Text="RJ" Value="20" />
                                        <asp:ListItem style="width: 100%;" Text="RN" Value="21" />
                                        <asp:ListItem style="width: 100%;" Text="RS" Value="22" />
                                        <asp:ListItem style="width: 100%;" Text="RO" Value="23" />
                                        <asp:ListItem style="width: 100%;" Text="RR" Value="24" />
                                        <asp:ListItem style="width: 100%;" Text="SC" Value="25" />
                                        <asp:ListItem style="width: 100%;" Text="SE" Value="26" />
                                        <asp:ListItem style="width: 100%;" Text="TO" Value="27" />
                                    </asp:DropDownList>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!--/////////////////////////////////////////////////// 2 Container - 4 linha - LADO DIREITO -  ADIÇÕES  - NUMERO DA ADICAO -  Numero Sequencial do item  ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////-->
                <div class="col-xl-8" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px; padding-left: 10px">

                    <div class="row" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">



                        <div class="col-md-3" style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-left: 15px; padding-top: 10px">
                            <div class="row">
                                <div class="col" style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                    Adições

                                </div>
                            </div>
                             <div class="row">
                                 <div class="col">
                                     <asp:TextBox ID="cs_adi" runat="server" CssClass="layouttexto" Style="width: 120px;" onBlur="SetTextIn(this,0);SetDiv('div_produtos_servicos_importacoes',0)" onFocus="SetTextIn(this,1);SetDiv('div_produtos_servicos_importacoes',1)"></asp:TextBox>
                                 </div>
                             </div>
                        </div>

                        <div class="col-md-4" style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-left: 15px; padding-top: 10px"">

                            <div class="row">
                                <div class="col" style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                    Numero de Adições
                                </div>
                            </div>

                            <div class="row">
                                <div class="col">
                                    <asp:TextBox ID="cs_nadicao" runat="server" CssClass="layouttexto" Style="width: 120px;" onBlur="SetTextIn(this,0);SetDiv('div_produtos_servicos_importacoes',0)" onFocus="SetTextIn(this,1);SetDiv('div_produtos_servicos_importacoes',1)"></asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <div class="col-md-5" style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-left: 15px; padding-top: 10px"">

                            <div class="row">
                                <div class="col" style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                    Numero Sequencial do item
                                </div>
                            </div>

                            <div class="row">
                                <div class="col">
                                    <asp:TextBox ID="cs_nsecadic" runat="server" CssClass="layouttexto" Style="width: 120px;" onBlur="SetTextIn(this,0);SetDiv('div_produtos_servicos_importacoes',0)" onFocus="SetTextIn(this,1);SetDiv('div_produtos_servicos_importacoes',1)"></asp:TextBox>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
              <!--/////////////////////////////////////////////////// 2 Container - 4 linha - CODIGO DO FABRICANTE - VALOR DO DESCONTO DO ITEM DA DI   ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////-->
            <div class="row" style="height: 30px"></div>
            <div class="row" style="width: 100%; padding: 0px; margin: 0px; background-color: transparent; height: 100%; padding: 0px; margin: 0px">
                <div class="col-xl-7" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

                    <div class="row" style="width: 100%; padding: 0px; margin: 0px; background-color: transparent; height: 100%; padding: 0px; margin: 0px">
                        <div class="col-md-6" style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">

                            <div class="row">
                                <div class="col" style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                    Código do Fabricante estrangeiro
                                </div>
                            </div>

                            <div class="row" style="padding: 0px; margin: 0px">
                                <div class="col" style="padding: 0px; margin: 0px">
                                    <asp:TextBox ID="cs_cfabricante" runat="server" CssClass="layouttexto"
                                        Style="width: 90%; padding: 0px; margin: 0px"
                                        onBlur="SetTextIn(this,0);SetDiv('div_produtos_servicos_importacoes',0)" onFocus="SetTextIn(this,1);SetDiv('div_produtos_servicos_importacoes',1)">
   
                                    </asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <div class="col-md-6" style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">

                            <div class="row">
                                <div class="col" style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                    Valor do Desconto do item da DI
                                </div>
                            </div>

                            <div class="row" style="padding: 0px; margin: 0px">
                                <div class="col" style="padding: 0px; margin: 0px">
                                    <asp:TextBox ID="cs_vdescdi" runat="server" CssClass="layouttexto"
                                        Style="width: 30%; padding: 0px; margin: 0px"
                                        onBlur="SetTextIn(this,0);SetDiv('div_produtos_servicos_importacoes',0)" onFocus="SetTextIn(this,1);SetDiv('div_produtos_servicos_importacoes',1)">
                                    </asp:TextBox>

                                </div>
                            </div>
                        </div>

                    </div>
                </div>
                 <!--/////////////////////////////////////////////////// 2 Container - 4 linha - lado direito - Número do ato concessório   ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////-->
                <div class="col-xl-5"
                    style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px; ">

                    <div class="row"
                        style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

                        <div class="col-auto"
                            style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-left: 8px; padding-top: 10px">
                            <div class="row">
                                <div class="col"
                                    style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                    Número do ato concessório de Drawback &nbsp &nbsp <img alt="" src="../Imagens/ihelp.png"  style="width: 20px; height: 21px; cursor:pointer" onclick="anima_informacao(1,'Drawback')" />
                                </div>
                            </div>
                            <div class="row" style="padding: 0px; margin: 0px">
                                <div class="col" style="padding: 0px; margin: 0px">
                                    <asp:TextBox ID="cs_ndeaw" runat="server" CssClass="layouttexto"
                                        Style="width: 70%;" onBlur="SetTextIn(this,0);SetDiv('div_produtos_servicos_importacoes',0)" onFocus="SetTextIn(this,1);SetDiv('div_produtos_servicos_importacoes',1)">
                                    </asp:TextBox>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>
       </div>
    <!--/////////////////////////////////////////////////// 3 Container - 1 linha    ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////-->
    <div class="container-fluid" style="padding:0px;margin:0px;width:100%;height:100%;">
       

    <div class="row" style="width:100%;height:50px"></div>
        
    <div class="row" style="width:100%;height:100%;padding:0px;margin:0px;background-color:transparent">
   
        <div class="row" style="width: 100%; height: 100%; color: #177CC0; padding-left: 20px; padding-top: 0px; font-family: Arial; font-size: 20px; font-weight: bold; margin-left: 0px">
   
            <div id="i_produtos_servicos_exportacoes_on" name="i_produtos_servicos_exportacoes_on" class="col" align="left" style="display: none; visibility: hidden; font-size: 20px; color: red; margin-right: 20px; border-bottom: none; cursor: pointer" onclick="mostra_div_informacao('div_produtos_servicos_exportacoes','i_produtos_servicos_exportacoes_on','i_produtos_servicos_exportacoes_off',0)"><span style="color: #177CC0; font-family: Arial; font-size: 20px; font-weight: bold;"> Produtos e Serviços / Grupo de Exportações  </span>&nbsp;&nbsp;<i class="fa fa-toggle-on"></i></div>
            <div id="i_produtos_servicos_exportacoes_off" name="i_produtos_servicos_exportacoes_off" class="col" align="left" style="display: block; visibility: visible; font-size: 20px; color: red; margin-right: 20px; border-bottom: solid; border-color: #767676; border-width: 1px; cursor: pointer" onclick="mostra_div_informacao('div_produtos_servicos_exportacoes','i_produtos_servicos_exportacoes_on','i_produtos_servicos_exportacoes_off',1)"><span style="color: #177CC0; font-family: Arial; font-size: 20px; font-weight: bold;">Produtos e Serviços / Grupo de Exportações</span>&nbsp;&nbsp;<i class="fa fa-toggle-off"></i></div>
   
   
        </div>
   
        <div class="row" style="width: 100%; height: 20px"></div>
   
        
        <div id="div_produtos_servicos_exportacoes" name="div_produtos_servicos_exportacoes"
            style="display:none;visibility:visible;width:100%;height:100%;background-color:transparent;margin-left:20px;margin-right:20px;border:solid;border-color:#177CC0;border-width:1px;border-radius:10px;padding: 0 20px 20px 20px;">
   
   
           
            <div class="row"
                style="width:100%;padding:0px;margin:0px;background-color:transparent;height:100%;padding:0px;margin:0px">
   

				<!--/////////////////////////////////////////////////// 3 Container -  LINHA LADO ESQUERDO - Chave de Acesso da NF-e recebida para exportação - Quantidade do item  exportado/////////////////////////////////////////////////////////////////////////////////////////////-->
				<div class="col-xl-7"
					style="width:100%;height:100%;background-color:transparent;padding:0px;margin:0px">

					<div class="row" style="width:100%;height:100%;background-color:transparent;padding:0px;margin:0px">

						<div class="col-md-7" style="width:100%;height:100%;background-color:transparent;padding:10px;">


							<div class="row">
								<div class="col"
									style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
									Número do Registro de Exportação &nbsp &nbsp <img alt="" src="../Imagens/ihelp.png"  style="width: 20px; height: 21px; cursor:pointer" onclick="anima_informacao(1,'numeroregistroexportacao')" />
								</div>
							</div>

							<div class="row" style="padding:0px;margin:0px">
								<div class="col" style="padding:0px;margin:0px">
									<asp:TextBox ID="cs_nre" runat="server" CssClass="layouttexto"
										style="width:80%;padding:0px;margin:0px" 
										onBlur="SetTextIn(this,0);SetDiv('div_produtos_servicos_exportacoes',0)" onFocus="SetTextIn(this,1);SetDiv('div_produtos_servicos_exportacoes',1)">

									</asp:TextBox>
								</div>
							</div>

						</div>


						<div class=" col-md-5"
							style="width:100%;height:100%;background-color:transparent; padding:10px;">
							<div class="row">
								<div class="col"
									style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
									Quantidade do item exportado
								</div>
							</div>
							<div class="row" style="padding:0px;margin:0px">
								<div class="col" style="padding:0px;margin:0px">
									<asp:TextBox ID="cs_qexport" runat="server" CssClass="layouttexto"
										style="width: 40%;" onBlur="SetTextIn(this,0);SetDiv('div_produtos_servicos_exportacoes',0)" onFocus="SetTextIn(this,1);SetDiv('div_produtos_servicos_exportacoes',1)">
									</asp:TextBox>
								</div>
							</div>
						</div>
					</div>
				</div>
                <!--/////////////////////////////////////////////////// 3 Container - Número do Registro de Exportação /////////////////////////////////////////////////////////////////////////////////////////////-->
                <div class="col-xl-5"
					style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px; ">

					<div class="row"
						style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

						<div class="col-auto"
							style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-left: 15px; padding-top: 10px; padding-right: 12px ">
							<div class="row">
								<div class="col"
									style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
									Número do ato concessório de Drawback &nbsp &nbsp <img alt="" src="../Imagens/ihelp.png"  style="width: 20px; height: 21px; cursor:pointer" onclick="anima_informacao(1,'Drawback')" />
								</div>
							</div>
                            <div class="row" style="padding: 0px; margin: 0px">
                                <div class="col" style="padding: 0px; margin: 0px">
                                    <asp:TextBox ID="cs_ndraw" runat="server" CssClass="layouttexto"
                                        Style="width: 60%;" onBlur="SetTextIn(this,0);SetDiv('div_produtos_servicos_exportacoes',0)" onFocus="SetTextIn(this,1);SetDiv('div_produtos_servicos_exportacoes',1)">
                                    </asp:TextBox>
                                </div>
                            </div>
						</div>

					</div>
				</div>
                <!--///////////////////////////////////////////////////3 Container - Número do ato concessorio de Drawback /////////////////////////////////////////////////////////////////////////////////////////////-->
                <div class="col-xl-12"
                    style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px;">

                    <div class="row"
                        style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

                        <div class="col-auto"
                            style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-left: 8px; padding-top: 10px">
                            <div class="row">
                                <div class="col"
                                    style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                    Chave de Acesso da NF-e recebida para exportação &nbsp &nbsp <img alt="" src="../Imagens/ihelp.png"  style="width: 20px; height: 21px; cursor:pointer" onclick="anima_informacao(1,'chavenfeexportacao')" />
                                </div>
                            </div>
                            <div class="row" style="padding: 0px; margin: 0px">
                                <div class="col" style="padding: 0px; margin: 0px">
                                    <asp:TextBox ID="cs_chnfe" runat="server" CssClass="layouttexto"
                                        Style="width: 30%;" onBlur="SetTextIn(this,0);SetDiv('div_produtos_servicos_exportacoes',0)" onFocus="SetTextIn(this,1);SetDiv('div_produtos_servicos_exportacoes',1)">
                                    </asp:TextBox>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>

            </div>
          </div>
        </div>
        </div>

    <!--///////////////////////////////////////////////////4 Container - Produtos e serviços/ Pedido de Compra /////////////////////////////////////////////////////////////////////////////////////////////-->
                <div class="container-fluid" style="padding:0px;margin:0px;width:100%;height:100%;">
       

    <div class="row" style="width:100%;height:50px"></div>
        
    <div class="row" style="width:100%;height:100%;padding:0px;margin:0px;background-color:transparent">
   
        <div class="row" style="width: 100%; height: 100%; color: #177CC0; padding-left: 20px; padding-top: 0px; font-family: Arial; font-size: 20px; font-weight: bold; margin-left: 0px">
   
            <div id="i_produtos_servicos_pedido_compra_on" name="i_produtos_servicos_importacoes_pedido_compra_on" class="col" align="left" style="display: none; visibility: hidden; font-size: 20px; color: red; margin-right: 20px; border-bottom: none; cursor: pointer" onclick="mostra_div_informacao('div_produtos_servicos_pedido_compra','i_produtos_servicos_pedido_compra_on','i_produtos_servicos_pedido_compra_off',0)"><span style="color: #177CC0; font-family: Arial; font-size: 20px; font-weight: bold;"> Produtos e Serviços / Peidos de Compra  </span>&nbsp;&nbsp;<i class="fa fa-toggle-on"></i></div>
            <div id="i_produtos_servicos_pedido_compra_off" name="i_produtos_servicos_importacoes_pedido_compra_off" class="col" align="left" style="display: block; visibility: visible; font-size: 20px; color: red; margin-right: 20px; border-bottom: solid; border-color: #767676; border-width: 1px; cursor: pointer" onclick="mostra_div_informacao('div_produtos_servicos_pedido_compra','i_produtos_servicos_pedido_compra_on','i_produtos_servicos_pedido_compra_off',1)"><span style="color: #177CC0; font-family: Arial; font-size: 20px; font-weight: bold;">Produtos e Serviços / Pedidos de Compra</span>&nbsp;&nbsp;<i class="fa fa-toggle-off"></i></div>
   
   
        </div>
   
        <div class="row" style="width: 100%; height: 20px"></div>
   
        
        <div id="div_produtos_servicos_pedido_compra" name="div_produtos_servicos_pedido_compra"
            style="display:none;visibility:visible;width:100%;height:100%;background-color:transparent;margin-left:20px;margin-right:20px;border:solid;border-color:#177CC0;border-width:1px;border-radius:10px;padding: 0 20px 20px 20px;">
   
   
           
            <div class="row"
                style="width:100%;padding:0px;margin:0px;background-color:transparent;height:100%;padding:0px;margin:0px">
   

				<!--/////////////////////////////////////////////////// 2 Container -  LINHA LADO ESQUERDO - NUMERO DO DOCUMENTO DE IMPORTAÇÃO -  Data de Registro do Documento/////////////////////////////////////////////////////////////////////////////////////////////-->
                <div class="col-xl-12"
                    style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

                    <div class="row" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

                        <div class="col-md-6" style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">


                            <div class="row">
                                <div class="col"
                                    style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                    Número do Pedido de Compra
                                </div>
                            </div>

                            <div class="row" style="padding: 0px; margin: 0px">
                                <div class="col" style="padding: 0px; margin: 0px">
                                    <asp:TextBox ID="TextBox12" runat="server" CssClass="layouttexto"
                                        Style="width: 230px; padding: 0px; margin: 0px"
                                        onBlur="SetTextIn(this,0);SetDiv('div_produtos_servicos_pedido_compra',0)" onFocus="SetTextIn(this,1);SetDiv('div_produtos_servicos_pedido_compra',1)">

                                    </asp:TextBox>
                                </div>
                            </div>

                        </div>


                        <div class=" col-md-6"
                            style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">
                            <div class="row">
                                <div class="col"
                                    style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                    Item do Pedido de Compra
                                </div>
                            </div>
                            <div class="row" style="padding: 0px; margin: 0px">
                                <div class="col" style="padding: 0px; margin: 0px">
                                    <asp:TextBox ID="TextBox13" runat="server" CssClass="layouttexto"
                                        Style="width: 150px;" onBlur="SetTextIn(this,0);SetDiv('div_produtos_servicos_pedido_compra',0)" onFocus="SetTextIn(this,1);SetDiv('div_produtos_servicos_pedido_compra',1)">
                                    </asp:TextBox>
                                </div>
                            </div>
                        </div>
                    </div>
                   </div>
                  </div>
                </div>
               </div>
             </div>
     <!--/////////////////////////////////////////////////// 5 Container - Produtos Serviços / Grupos Diversos ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////-->
    <div class="container-fluid" style="padding:0px;margin:0px;width:100%;height:100%;">
       

    <div class="row" style="width:100%;height:50px"></div>
        
    <div class="row" style="width:100%;height:100%;padding:0px;margin:0px;background-color:transparent">
   
        <div class="row" style="width: 100%; height: 100%; color: #177CC0; padding-left: 20px; padding-top: 0px; font-family: Arial; font-size: 20px; font-weight: bold; margin-left: 0px">
   
            <div id="i_produtos_servicos_grupos_diversos_on" name="i_produtos_servicos__grupos_diversos_on" class="col" align="left" style="display: none; visibility: hidden; font-size: 20px; color: red; margin-right: 20px; border-bottom: none; cursor: pointer" onclick="mostra_div_informacao('div_produtos_servicos_grupos_diversos','i_produtos_servicos_grupos_diversos_on','i_produtos_servicos_grupos_diversos_off',0)"><span style="color: #177CC0; font-family: Arial; font-size: 20px; font-weight: bold;"> Produtos e Serviços / Pedidos de Compra  </span>&nbsp;&nbsp;<i class="fa fa-toggle-on"></i></div>
            <div id="i_produtos_servicos_grupos_diversos_off" name="i_produtos_servicos__grupos_diversos_off" class="col" align="left" style="display: block; visibility: visible; font-size: 20px; color: red; margin-right: 20px; border-bottom: solid; border-color: #767676; border-width: 1px; cursor: pointer" onclick="mostra_div_informacao('div_produtos_servicos_grupos_diversos','i_produtos_servicos_grupos_diversos_on','i_produtos_servicos_grupos_diversos_off',1)"><span style="color: #177CC0; font-family: Arial; font-size: 20px; font-weight: bold;">Produtos e Serviços / Pedidos de Compra</span>&nbsp;&nbsp;<i class="fa fa-toggle-off"></i></div>
   
   
        </div>
   
        <div class="row" style="width: 100%; height: 20px"></div>
   
        
        <div id="div_produtos_servicos_grupos_diversos" name="div_produtos_servicos_grupos_diversos"
            style="display:none;visibility:visible;width:100%;height:100%;background-color:transparent;margin-left:20px;margin-right:20px;border:solid;border-color:#177CC0;border-width:1px;border-radius:10px;padding: 0 20px 20px 20px;">
   
   
           
            <div class="row"
                style="width:100%;padding:0px;margin:0px;background-color:transparent;height:100%;padding:0px;margin:0px">
   

				<!--/////////////////////////////////////////////////// 5 Container -  LINHA LADO ESQUERDO - Número do Controle da FCI /////////////////////////////////////////////////////////////////////////////////////////////-->
                <div class="col-xl-12"
                    style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

                    <div class="row" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

                        <div class="col-md-6" style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">


                            <div class="row">
                                <div class="col"
                                    style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                    Número do Controle da FCI &nbsp &nbsp <img alt="" src="../Imagens/ihelp.png"  style="width: 20px; height: 21px; cursor:pointer" onclick="anima_informacao(1,'NumeroFCI')" />
                                </div>
                            </div>

                            <div class="row" style="padding: 0px; margin: 0px">
                                <div class="col" style="padding: 0px; margin: 0px">
                                    <asp:TextBox ID="TextBox14" runat="server" CssClass="layouttexto"
                                        Style="width: 550px; padding: 0px; margin: 0px"
                                        onBlur="SetTextIn(this,0);SetDiv('div_produtos_servicos_grupos_diversos',0)" onFocus="SetTextIn(this,1);SetDiv('div_produtos_servicos_grupos_diversos',1)">

                                    </asp:TextBox>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    </div>


    
    <!--/////////////////////////////////////////////////// 6 - Detalhamento Especifico de Veiculos novos /////////////////////////////////////////////////////////////////////////////////////////////-->
    <div class="container-fluid" style="padding:0px;margin:0px;width:100%;height:100%;">
       

    <div class="row" style="width:100%;height:50px"></div>
        
    <div class="row" style="width:100%;height:100%;padding:0px;margin:0px;background-color:transparent">
   
        <div class="row" style="width: 100%; height: 100%; color: #177CC0; padding-left: 20px; padding-top: 0px; font-family: Arial; font-size: 20px; font-weight: bold; margin-left: 0px">
   
            <div id="i_detalhamento_de_veiculos_novos_on" name="i_detalhamento_de_veiculos_novos_on" class="col" align="left" style="display: none; visibility: hidden; font-size: 20px; color: red; margin-right: 20px; border-bottom: none; cursor: pointer" onclick="mostra_div_informacao('div_detalhamento_de_veiculos_novos','i_detalhamento_de_veiculos_novos_on','i_detalhamento_de_veiculos_novos_off',0)"><span style="color: #177CC0; font-family: Arial; font-size: 20px; font-weight: bold;">Detalhamento De Veículos Novos</span>&nbsp;&nbsp;<i class="fa fa-toggle-on"></i></div>
            <div id="i_detalhamento_de_veiculos_novos_off" name="i_detalhamento_de_veiculos_novos_off" class="col" align="left" style="display: block; visibility: visible; font-size: 20px; color: red; margin-right: 20px; border-bottom: solid; border-color: #767676; border-width: 1px; cursor: pointer" onclick="mostra_div_informacao('div_detalhamento_de_veiculos_novos','i_detalhamento_de_veiculos_novos_on','i_detalhamento_de_veiculos_novos_off',1)"><span style="color: #177CC0; font-family: Arial; font-size: 20px; font-weight: bold;">Detalhamento De Veículos Novos</span>&nbsp;&nbsp;<i class="fa fa-toggle-off"></i></div>
   
   
        </div>
   
        <div class="row" style="width: 100%; height: 20px"></div>
   
        
        <div id="div_detalhamento_de_veiculos_novos" name="div_detalhamento_de_veiculos_novos"
            style="display:none;visibility:visible;width:100%;height:100%;background-color:transparent;margin-left:20px;margin-right:20px;border:solid;border-color:#177CC0;border-width:1px;border-radius:10px;padding: 0 20px 20px 20px;">
   
   
           
            <div class="row"
                style="width:100%;padding:0px;margin:0px;background-color:transparent;height:100%;padding:0px;margin:0px">
   

				<!--/////////////////////////////////////////////////// 2 Container -  LINHA LADO ESQUERDO - NUMERO DO DOCUMENTO DE IMPORTAÇÃO -  Data de Registro do Documento/////////////////////////////////////////////////////////////////////////////////////////////-->
				<div class="col-xl-7"
					style="width:100%;height:100%;background-color:transparent;padding:0px;margin:0px">

					<div class="row" style="width:100%;height:100%;background-color:transparent;padding:0px;margin:0px">

						<div class="col-md-6" style="width:100%;height:100%;background-color:transparent;padding:20px;">


							<div class="row">
								<div class="col"
									style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
									Chassi de veículo &nbsp &nbsp <img alt="" src="../Imagens/ihelp.png"  style="width: 20px; height: 21px; cursor:pointer" onclick="anima_informacao(1,'ChassiVeiculo')" />
								</div>
							</div>

							<div class="col" style="padding: 0px; margin: 0px">
                                <asp:TextBox ID="cs_chassi" runat="server" CssClass="layouttexto"
                                    Style="width: 100%;" onBlur="SetTextIn(this,0);SetDiv('div_detalhamento_de_veiculos_novos',0)" onFocus="SetTextIn(this,1);SetDiv('div_detalhamento_de_veiculos_novos',1)">
                                </asp:TextBox>
                            </div>

						</div>

					

				

                <div class="col-md-6" style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-left: 15px; padding-top: 20px">
                    <div class="row">
                        <div class="col" style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                            Tipo de Operação
                        </div>
                    </div>
                    <div class="row" style="padding: 0px; margin: 0px">
                        <div class="col" style="padding: 0px; margin: 0px">
                            <asp:DropDownList ID="cs_tpop" onBlur="SetTextIn(this,0);SetDiv('div_detalhamento_de_veiculos_novos',0)" onFocus="SetTextIn(this,1);SetDiv('div_detalhamento_de_veiculos_novos',1)" CssClass="layouttexto" runat="server">
                                <asp:ListItem style="width: 100%;" Text="Venda Concessionária" Value="1" />
                                <asp:ListItem style="width: 100%;" Text="Faturamento para consumidor final" Value="2" />
                                <asp:ListItem style="width: 100%;" Text="Venda direta para grandes consumidores" Value="3" />
                            </asp:DropDownList>
                        </div>
                    </div>
                </div>
                </div>

                
            </div>
        
    

        <!--/////////////////////////////////////////////////// 2 LINHA - LADO DIREITO /////////////////////////////////////////////////////////////////////////////////////////////-->
        <div class="col-xl-5" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px; padding-left: 20px">

            <div class="row" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

                <div class="col-md-4" style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-left: 5px; padding-top: 20px">
                    <div class="row">
                        <div class="col" style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                            Cor
                        </div>
                    </div>
                    <div class="row" style="padding: 0px; margin: 0px">
                        <div class="col" style="padding: 0px; margin: 0px">
                            <asp:TextBox ID="cs_cor" runat="server" CssClass="layouttexto"
                                Style="width: 50%;" onBlur="SetTextIn(this,0);SetDiv('div_detalhamento_de_veiculos_novos',0)" onFocus="SetTextIn(this,1);SetDiv('div_detalhamento_de_veiculos_novos',1)">
                            </asp:TextBox>
                        </div>
                    </div>
                </div>

                <div class="col-md-8" style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-left: 5px; padding-top: 20px">
                    <div class="row">
                        <div class="col" style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                            Descrição das Cores
                        </div>
                    </div>
                    <div class="row" style="padding: 0px; margin: 0px">
                        <div class="col" style="padding: 0px; margin: 0px">
                            <asp:TextBox ID="cs_xcor" runat="server" CssClass="layouttexto"
                                Style="width: 100%;" onBlur="SetTextIn(this,0);SetDiv('div_detalhamento_de_veiculos_novos',0)" onFocus="SetTextIn(this,1);SetDiv('div_detalhamento_de_veiculos_novos',1)">
                            </asp:TextBox>
                        </div>
                    </div>
                </div>
            </div>
        </div>
       </div>
            <!--/////////////////////////////////////////////////// 6 container 2 - linha - Potência do Motor (CV) - Cilindradas  ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////-->
            <div class="row" style="width:100%;height: 30px"></div>

            <div class="row"
                style="width:100%;padding:0px;margin:0px;background-color:transparent;height:100%;padding:0px;margin:0px">
            <div class="col-xl-7"
                style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

                <div class="row" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

                    <div class="col-md-6" style="width: 100%; height: 100%; background-color: transparent; padding: 20px;">


                        <div class="row">
                            <div class="col"
                                style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                Potência do Motor (CV)
                            </div>
                        </div>

                        <div class="col" style="padding: 0px; margin: 0px">
                            <asp:TextBox ID="cs_pot" runat="server" CssClass="layouttexto"
                                Style="width: 200px;" onBlur="SetTextIn(this,0);SetDiv('div_detalhamento_de_veiculos_novos',0)" onFocus="SetTextIn(this,1);SetDiv('div_detalhamento_de_veiculos_novos',1)">
                            </asp:TextBox>
                        </div>

                    </div>





                    <div class="col-md-6" style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-left: 20px; padding-top: 20px">
                        <div class="row">
                            <div class="col" style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                Cilindradas
                            </div>
                        </div>
                        <div class="row" style="padding: 0px; margin: 0px">
                            <div class="col" style="padding: 0px; margin: 0px">
                                <asp:TextBox ID="cs_cilin" runat="server" CssClass="layouttexto"
                                    Style="width: 150px;" onBlur="SetTextIn(this,0);SetDiv('div_detalhamento_de_veiculos_novos',0)" onFocus="SetTextIn(this,1);SetDiv('div_detalhamento_de_veiculos_novos',1)">
                                </asp:TextBox>
                            </div>
                        </div>
                    </div>
              
                     </div>

            </div>



<!--/////////////////////////////////////////////////// 2 LINHA - LADO DIREITO - Peso Líquido - Peso Bruto /////////////////////////////////////////////////////////////////////////////////////////////-->

            <div class="col-xl-5" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px; padding-left: 20px">

                <div class="row" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

                    <div class="col-md-4" style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-left: 10px; padding-top: 20px">
                        <div class="row">
                            <div class="col" style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                Peso Líquido
                            </div>
                        </div>
                        <div class="row" style="padding: 0px; margin: 0px">
                            <div class="col" style="padding: 0px; margin: 0px">
                                <asp:TextBox ID="cs_pesol" runat="server" CssClass="layouttexto"
                                    Style="width: 70%;" onBlur="SetTextIn(this,0);SetDiv('div_detalhamento_de_veiculos_novos',0)" onFocus="SetTextIn(this,1);SetDiv('div_detalhamento_de_veiculos_novos',1)">
                                </asp:TextBox>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-8" style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-left: 5px; padding-top: 20px">
                        <div class="row">
                            <div class="col" style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                Peso Bruto
                            </div>
                        </div>
                        <div class="row" style="padding: 0px; margin: 0px">
                            <div class="col" style="padding: 0px; margin: 0px">
                                <asp:TextBox ID="cs_pesob" runat="server" CssClass="layouttexto"
                                    Style="width: 200px;" onBlur="SetTextIn(this,0);SetDiv('div_detalhamento_de_veiculos_novos',0)" onFocus="SetTextIn(this,1);SetDiv('div_detalhamento_de_veiculos_novos',1)">
                                </asp:TextBox>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
            <!--/////////////////////////////////////////////////// 6 container 3 - linha - Serial (série) -  Número de Motor ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////-->
            <div class="row" style="width:100%;height: 30px"></div>

            <div class="row"
                style="width: 100%; padding: 0px; margin: 0px; background-color: transparent; height: 100%; padding: 0px; margin: 0px">
                <div class="col-xl-7"
                    style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

                    <div class="row" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

                        <div class="col-md-6" style="width: 100%; height: 100%; background-color: transparent; padding: 20px;">


                            <div class="row">
                                <div class="col"
                                    style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                    Número de Motor
                                </div>
                            </div>

                            <div class="row" style="padding: 0px; margin: 0px">
                                <div class="col" style="padding: 0px; margin: 0px">
                                    <asp:TextBox ID="cs_nmotor" runat="server" CssClass="layouttexto"
                                        Style="width: 95%;" onBlur="SetTextIn(this,0);SetDiv('div_detalhamento_de_veiculos_novos',0)" onFocus="SetTextIn(this,1);SetDiv('div_detalhamento_de_veiculos_novos',1)">
                                    </asp:TextBox>
                                </div>
                            </div>
                        </div>





                        <div class="col-md-6" style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-left: 20px; padding-top: 20px">
                    <div class="row">
                        <div class="col" style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                            Capacidade Máxima de Tração
                        </div>
                    </div>
                    <div class="row" style="padding: 0px; margin: 0px">
                        <div class="col" style="padding: 0px; margin: 0px">
                            <asp:TextBox ID="cs_cmt" runat="server" CssClass="layouttexto"
                                Style="width: 150px;" onBlur="SetTextIn(this,0);SetDiv('div_detalhamento_de_veiculos_novos',0)" onFocus="SetTextIn(this,1);SetDiv('div_detalhamento_de_veiculos_novos',1)">
                            </asp:TextBox>
                        </div>
                    </div>
                </div>
          
                 </div>

        </div>



<!--/////////////////////////////////////////////////// 2 LINHA - LADO DIREITO - Tipo de combustível - Capacidade Máxima de Tração /////////////////////////////////////////////////////////////////////////////////////////////-->



        <div class="col-xl-5" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px; padding-left: 20px">

            <div class="row" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

                <div class="col-md-4" style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-left: 5px; padding-top: 20px">
                    <div class="row">
                        <div class="col" style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                            Serial (série)
                        </div>
                    </div>
                    <div class="row" style="padding: 0px; margin: 0px">
                        <div class="col" style="padding: 0px; margin: 0px">
                            <asp:TextBox ID="cs_nserie" runat="server" CssClass="layouttexto"
                                Style="width: 60%;" onBlur="SetTextIn(this,0);SetDiv('div_detalhamento_de_veiculos_novos',0)" onFocus="SetTextIn(this,1);SetDiv('div_detalhamento_de_veiculos_novos',1)">
                            </asp:TextBox>
                        </div>
                    </div>
                </div>

                <div class="col-md-8" style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-left: 10px; padding-top: 20px">
                    <div class="row">
                        <div class="col" style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                            Tipo de combustível
                        </div>
                    </div>
                    <div class="row" style="padding: 0px; margin: 0px">
                        <div class="col" style="padding: 0px; margin: 0px">
                            <div class="row" style="padding: 0px; margin: 0px">
                                <div class="col" style="padding: 0px; margin: 0px">
                                    <asp:DropDownList ID="cs_tpcomb" onBlur="SetTextIn(this,0);SetDiv('div_detalhamento_de_veiculos_novos',0)" onFocus="SetTextIn(this,1);SetDiv('div_detalhamento_de_veiculos_novos',1)" CssClass="layouttexto" runat="server">
                                            <asp:ListItem style="width: 100%;" Text="Álcool" Value="1" />
                                            <asp:ListItem style="width: 100%;" Text="Gasolina" Value="2" />
                                            <asp:ListItem style="width: 100%;" Text="Diesel" Value="3" />
                                            <asp:ListItem style="width: 100%;" Text="Gasogênio" Value="4" />
                                            <asp:ListItem style="width: 100%;" Text="Gás Metano" Value="5" />
                                            <asp:ListItem style="width: 100%;" Text="Elétrico/Fonte Interna" Value="6" />
                                            <asp:ListItem style="width: 100%;" Text="Elétrico/Fonte Externa" Value="7" />
                                            <asp:ListItem style="width: 100%;" Text="Gasolina/Gás Natural Combustível" Value="8" />
                                            <asp:ListItem style="width: 100%;" Text="Álcool/Gás Natural Combustível" Value="9" />
                                            <asp:ListItem style="width: 100%;" Text="Diesel/Gás Natural Combustível" Value="10" />
                                            <asp:ListItem style="width: 100%;" Text=" Vide/Campo/Observação" Value="11" />
                                            <asp:ListItem style="width: 100%;" Text="Álcool/Gás Natural Veicular" Value="12" />
                                            <asp:ListItem style="width: 100%;" Text="Gasolina/Gás Natural Veicular" Value="13" />
                                            <asp:ListItem style="width: 100%;" Text="Diesel/Gás Natural Veicular" Value="14" />
                                            <asp:ListItem style="width: 100%;" Text="Gás Natural Veicular" Value="15" />
                                            <asp:ListItem style="width: 100%;" Text="Álcool/Gasolina" Value="16" />
                                            <asp:ListItem style="width: 100%;" Text="Gasolina/Álcool/Gás Natural Veicular" Value="17" />
                                            <asp:ListItem style="width: 100%;" Text="Gasolina/elétrico" Value="18" />
                                        </asp:DropDownList>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

            <!--/////////////////////////////////////////////////// 6 container 4 - Dinstância entre os eixos -  Ano do modelo de fabricação ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////-->
            <div class="row" style="width:100%;height: 30px"></div>

            <div class="row"
                style="width: 100%; padding: 0px; margin: 0px; background-color: transparent; height: 100%; padding: 0px; margin: 0px">
                <div class="col-xl-7"
                    style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

                    <div class="row" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

                        <div class="col-md-6" style="width: 100%; height: 100%; background-color: transparent; padding: 20px;">


                            <div class="row">
                                <div class="col"
                                    style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                    Distância entre os eixos
                                </div>
                            </div>
                            <div class="row" style="padding: 0px; margin: 0px">
                                <div class="col" style="padding: 0px; margin: 0px">
                                    <asp:TextBox ID="cs_dist" runat="server" CssClass="layouttexto"
                                        Style="width: 200px;" onBlur="SetTextIn(this,0);SetDiv('div_detalhamento_de_veiculos_novos',0)" onFocus="SetTextIn(this,1);SetDiv('div_detalhamento_de_veiculos_novos',1)">
                                    </asp:TextBox>
                                </div>
                            </div>
                        </div>





                <div class="col-md-6" style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-left: 10px; padding-top: 20px">
                    <div class="row">
                        <div class="col" style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                            Ano do modelo de fabricação
                        </div>
                    </div>
                    <div class="row" style="padding: 0px; margin: 0px">
                        <div class="col" style="padding: 0px; margin: 0px">
                            <asp:TextBox ID="cs_anomod" runat="server" CssClass="layouttexto"
                                Style="width: 150px;" onBlur="SetTextIn(this,0);SetDiv('div_detalhamento_de_veiculos_novos',0)" onFocus="SetTextIn(this,1);SetDiv('div_detalhamento_de_veiculos_novos',1)">
                            </asp:TextBox>
                        </div>
                    </div>
                </div>
          
                 </div>

        </div>



<!--/////////////////////////////////////////////////// 2 LINHA - LADO DIREITO - Ano de Fabricação  - Tipo de Pintura /////////////////////////////////////////////////////////////////////////////////////////////-->

        <div class="col-xl-5" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px; padding-left: 20px">

            <div class="row" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

                <div class="col-md-4" style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-left: 15px; padding-top: 20px">
                    <div class="row">
                        <div class="col" style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                           Tipo de Pintura
                        </div>
                    </div>
                    <div class="row" style="padding: 0px; margin: 0px">
                        <div class="col" style="padding: 0px; margin: 0px">
                            <asp:TextBox ID="cs_tppint" runat="server" CssClass="layouttexto"
                                Style="width: 85%;" onBlur="SetTextIn(this,0);SetDiv('div_detalhamento_de_veiculos_novos',0)" onFocus="SetTextIn(this,1);SetDiv('div_detalhamento_de_veiculos_novos',1)">
                            </asp:TextBox>
                        </div>
                    </div>
                </div>

                <div class="col-md-8" style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-left: 10px; padding-top: 20px">
                    <div class="row">
                        <div class="col" style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                            Ano de Fabricação
                        </div>
                    </div>
                    
                            <div class="row" style="padding: 0px; margin: 0px">
                                <div class="col" style="padding: 0px; margin: 0px">
                                    <asp:TextBox ID="cs_anofab" runat="server" CssClass="layouttexto"
                                Style="width: 150px;" onBlur="SetTextIn(this,0);SetDiv('div_detalhamento_de_veiculos_novos',0)" onFocus="SetTextIn(this,1);SetDiv('div_detalhamento_de_veiculos_novos',1)">
                            </asp:TextBox>
                                </div>
                            </div>
                        </div>
                   
            </div>
        </div>
    </div>
                        <!--/////////////////////////////////////////////////// 6 container 4 - Tipo de Veículo -  Espécie do Veículo ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////-->
            <div class="row" style="width:100%;height: 30px"></div>

            <div class="row"
                style="width: 100%; padding: 0px; margin: 0px; background-color: transparent; height: 100%; padding: 0px; margin: 0px">
                <div class="col-xl-7"
                    style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

                    <div class="row" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

                        <div class="col-md-6" style="width: 100%; height: 100%; background-color: transparent; padding: 20px;">


                            <div class="row">
                                <div class="col"
                                    style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                    Tipo de Veículo
                                </div>
                            </div>
                            <div class="row" style="padding: 0px; margin: 0px">
                                <div class="col" style="padding: 0px; margin: 0px">
                                    <asp:DropDownList ID="cs_tpveic" onBlur="SetTextIn(this,0);SetDiv('div_detalhamento_de_veiculos_novos',0)" onFocus="SetTextIn(this,1);SetDiv('div_detalhamento_de_veiculos_novos',1)" CssClass="layouttexto" runat="server">
                                        <asp:ListItem style="width: 100%;" Text="CICLOMOTO" Value="1" />
                                        <asp:ListItem style="width: 100%;" Text="MOTONETA" Value="2" />
                                        <asp:ListItem style="width: 100%;" Text="MOTOCICLO" Value="3" />
                                        <asp:ListItem style="width: 100%;" Text="TRICICLO" Value="4" />
                                        <asp:ListItem style="width: 100%;" Text="AUTOMÓVEL" Value="5" />
                                        <asp:ListItem style="width: 100%;" Text="MICRO-ÔNIBUS" Value="6" />
                                        <asp:ListItem style="width: 100%;" Text="ÔNIBUS" Value="7" />
                                        <asp:ListItem style="width: 100%;" Text="REBOQUE" Value="8" />
                                        <asp:ListItem style="width: 100%;" Text="SEMIRREBOQUE" Value="9" />
                                        <asp:ListItem style="width: 100%;" Text="CAMIONETA" Value="10" />
                                        <asp:ListItem style="width: 100%;" Text="CAMINHÃO" Value="11" />
                                        <asp:ListItem style="width: 100%;" Text="CAMINHÃO TRATOR" Value="12" />
                                        <asp:ListItem style="width: 100%;" Text="TRATOR RODAS" Value="13" />
                                        <asp:ListItem style="width: 100%;" Text="TRATOR ESTEIRAS" Value="14" />
                                        <asp:ListItem style="width: 100%;" Text="TRATOR MISTO" Value="15" />
                                        <asp:ListItem style="width: 100%;" Text="QUADRICICLO" Value="16" />
                                        <asp:ListItem style="width: 100%;" Text="ESP / ÔNIBUS" Value="17" />
                                        <asp:ListItem style="width: 100%;" Text="CAMINHONETE" Value="18" />
                                        <asp:ListItem style="width: 100%;" Text="CARGA/CAM" Value="19" />
                                        <asp:ListItem style="width: 100%;" Text="UTILITÁRIO" Value="20" />
                                        <asp:ListItem style="width: 100%;" Text="MOTOR-CASA" Value="21" />
                                    </asp:DropDownList>
                                </div>
                            </div>
                        </div>





                        <div class="col-md-6" style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-left: 10px; padding-top: 20px">
                    <div class="row">
                        <div class="col" style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                            Espécie do Veículo
                        </div>
                    </div>
                    <div class="row" style="padding: 0px; margin: 0px">
                        <div class="col" style="padding: 0px; margin: 0px">
                            <asp:DropDownList ID="cs_espveic" onBlur="SetTextIn(this,0);SetDiv('div_detalhamento_de_veiculos_novos',0)" onFocus="SetTextIn(this,1);SetDiv('div_detalhamento_de_veiculos_novos',1)" CssClass="layouttexto" runat="server">
                                    <asp:ListItem style="width: 100%;" Text="PASSAGEIRO" Value="1" />
                                    <asp:ListItem style="width: 100%;" Text="CARGA" Value="2" />
                                    <asp:ListItem style="width: 100%;" Text="MISTO" Value="3" />
                                    <asp:ListItem style="width: 100%;" Text="CORRIDA" Value="4" />
                                    <asp:ListItem style="width: 100%;" Text="TRAÇÃO" Value="5" />
                                    <asp:ListItem style="width: 100%;" Text="ESPECIAL" Value="6" />
                                </asp:DropDownList>
                        </div>
                    </div>
                </div>
          
                 </div>

        </div>



<!--/////////////////////////////////////////////////// 2 LINHA - LADO DIREITO - Código do VIN  - Condição do Veículo /////////////////////////////////////////////////////////////////////////////////////////////-->

        <div class="col-xl-5" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px; padding-left: 20px">

            <div class="row" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

                <div class="col-md-4" style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-left: 15px; padding-top: 20px">
                    <div class="row">
                        <div class="col" style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                           Condição do VIN
                        </div>
                    </div>
                    <div class="row" style="padding: 0px; margin: 0px">
                        <div class="col" style="padding: 0px; margin: 0px">
                            <asp:DropDownList ID="cs_vin" onBlur="SetTextIn(this,0);SetDiv('div_detalhamento_de_veiculos_novos',0)" onFocus="SetTextIn(this,1);SetDiv('div_detalhamento_de_veiculos_novos',1)" CssClass="layouttexto" runat="server">
                                <asp:ListItem style="width: 100%;" Text="Remarcado" Value="1" />
                                <asp:ListItem style="width: 100%;" Text="Normal" Value="2" />
                            </asp:DropDownList>
                        </div>
                    </div>
                </div>

                <div class="col-md-8" style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-left: 10px; padding-top: 20px">
                    <div class="row">
                        <div class="col" style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                            Condição do Veículo
                        </div>
                    </div>
                    <div class="row" style="padding: 0px; margin: 0px">
                        <div class="col" style="padding: 0px; margin: 0px">
                            <div class="row" style="padding: 0px; margin: 0px">
                                <div class="col" style="padding: 0px; margin: 0px">
                                    <asp:DropDownList ID="cs_condveic" onBlur="SetTextIn(this,0);SetDiv('div_detalhamento_de_veiculos_novos',0)" onFocus="SetTextIn(this,1);SetDiv('div_detalhamento_de_veiculos_novos',1)" CssClass="layouttexto" runat="server">
                                        <asp:ListItem style="width: 100%;" Text="ACABADO" Value="1" />
                                        <asp:ListItem style="width: 100%;" Text="INACABADO" Value="2" />
                                        <asp:ListItem style="width: 100%;" Text="SEMIACABADO" Value="3" />

                                    </asp:DropDownList>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
                        <!--/////////////////////////////////////////////////// 6 container 4 - Código da Cor - Código da Cor///////////////////////////////////////////////////////////////////////////////////////////////////////////////////-->
            <div class="row" style="width:100%;height: 30px"></div>

            <div class="row"
                style="width: 100%; padding: 0px; margin: 0px; background-color: transparent; height: 100%; padding: 0px; margin: 0px">
                <div class="col-xl-7"
                    style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

                    <div class="row" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

                        <div class="col-md-6" style="width: 100%; height: 100%; background-color: transparent; padding: 20px;">


                            <div class="row">
                                <div class="col"
                                    style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                    Código Marca Modelo
                                </div>
                            </div>

                            <div class="row" style="padding: 0px; margin: 0px">
                                <div class="col" style="padding: 0px; margin: 0px">
                                    <asp:TextBox ID="cs_mod" runat="server" CssClass="layouttexto"
                                        Style="width: 150px;" onBlur="SetTextIn(this,0);SetDiv('div_detalhamento_de_veiculos_novos',0)" onFocus="SetTextIn(this,1);SetDiv('div_detalhamento_de_veiculos_novos',1)">
                                    </asp:TextBox>
                                </div>
                            </div>
                        </div>





                        <div class="col-md-6" style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-left: 10px; padding-top: 20px">
                    <div class="row">
                        <div class="col" style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                            Restrição
                        </div>
                    </div>
                    <div class="row" style="padding: 0px; margin: 0px">
                        <div class="col" style="padding: 0px; margin: 0px">
                            <asp:DropDownList ID="DropDownList3" onBlur="SetTextIn(this,0);SetDiv('div_detalhamento_de_veiculos_novos',0)" onFocus="SetTextIn(this,1);SetDiv('div_detalhamento_de_veiculos_novos',1)" CssClass="layouttexto" runat="server">
                                <asp:ListItem style="width: 100%;" Text="Não há," Value="1" />
                                <asp:ListItem style="width: 100%;" Text="Alienação Fidunciária" Value="2" />
                                <asp:ListItem style="width: 100%;" Text="Arrendamento Mercantil" Value="3" />
                                <asp:ListItem style="width: 100%;" Text="Reserva do Domínio" Value="4" />
                                <asp:ListItem style="width: 100%;" Text="Penhor de Veículos" Value="5" />
                                <asp:ListItem style="width: 100%;" Text="Outros" Value="5" />
                            </asp:DropDownList>
                        </div>
                    </div>
                </div>
          
                 </div>

        </div>



<!--/////////////////////////////////////////////////// 2 LINHA - LADO DIREITO -  Restrição  - Capacidade Máxima de lotação  /////////////////////////////////////////////////////////////////////////////////////////////-->

        <div class="col-xl-5" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px;">

            <div class="row" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

                <div class="col-md-4" style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-left: 15px; padding-top: 20px">
                    <div class="row">
                        <div class="col" style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                           Código da Cor
                        </div>
                    </div>
                    <div class="row" style="padding: 0px; margin: 0px">
                        <div class="col" style="padding: 0px; margin: 0px">
                            <asp:DropDownList ID="cs_cordenatran" onBlur="SetTextIn(this,0);SetDiv('div_detalhamento_de_veiculos_novos',0)" onFocus="SetTextIn(this,1);SetDiv('div_detalhamento_de_veiculos_novos',1)" CssClass="layouttexto" runat="server">
                <asp:ListItem style="width: 100%;" Text="AMARELO" Value="1" />
                <asp:ListItem style="width: 100%;" Text="AZUL" Value="2" />
                <asp:ListItem style="width: 100%;" Text="BEGE" Value="3" />
                <asp:ListItem style="width: 100%;" Text="BRANCA" Value="4" />
                <asp:ListItem style="width: 100%;" Text="CINZA" Value="5" />
                <asp:ListItem style="width: 100%;" Text="DOURADA" Value="6" />
                <asp:ListItem style="width: 100%;" Text="GRENÁ" Value="7" />
                <asp:ListItem style="width: 100%;" Text="LARANJA" Value="8" />
                <asp:ListItem style="width: 100%;" Text="MARROM" Value="9" />
                <asp:ListItem style="width: 100%;" Text="PRATA" Value="10" />
                <asp:ListItem style="width: 100%;" Text="PRETA" Value="11" />
                <asp:ListItem style="width: 100%;" Text="ROSA" Value="12" />
                <asp:ListItem style="width: 100%;" Text="ROXA" Value="13" />
                <asp:ListItem style="width: 100%;" Text="VERDE" Value="14" />
                <asp:ListItem style="width: 100%;" Text="VERMELHA" Value="15" />
                <asp:ListItem style="width: 100%;" Text="FANTASIA" Value="16" />
            </asp:DropDownList>
                        </div>
                    </div>
                </div>

                <div class="col-md-8" style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-left: 10px; padding-top: 20px">
                    <div class="row">
                        <div class="col" style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                            Capacidade Máxima de lotação 
                        </div>
                    </div>
                    
                            <div class="row" style="padding: 0px; margin: 0px">
                                <div class="col" style="padding: 0px; margin: 0px">
                                    <asp:TextBox ID="cs_lota" runat="server" CssClass="layouttexto"
                                Style="width: 150px;" onBlur="SetTextIn(this,0);SetDiv('div_detalhamento_de_veiculos_novos',0)" onFocus="SetTextIn(this,1);SetDiv('div_detalhamento_de_veiculos_novos',1)">
                            </asp:TextBox>
                                </div>
                            </div>
                        </div>
                    
            </div>
        </div>
    
     
    </div>
    </div>
    </div>
        </div>

     <!--///////////////////////////////////////////////////  - Detalhamento Especifico de Medicamento e de matérias-primas farmacêuticas /////////////////////////////////////////////////////////////////////////////////////////////-->
 <div class="container-fluid" style="padding:0px;margin:0px;width:100%;height:100%;">
    

    <div class="row" style="width:100%;height:50px"></div>
        
    <div class="row" style="width:100%;height:100%;padding:0px;margin:0px;background-color:transparent">
   
        <div class="row" style="width: 100%; height: 100%; color: #177CC0; padding-left: 20px; padding-top: 0px; font-family: Arial; font-size: 20px; font-weight: bold; margin-left: 0px">
   
            <div id="i_medicamento_materia_prima_farmaceuticas_on" name="i_medicamento_materia_prima_farmaceuticas_on" class="col" align="left" style="display: none; visibility: hidden; font-size: 20px; color: red; margin-right: 20px; border-bottom: none; cursor: pointer" onclick="mostra_div_informacao('div_medicamento_materia_prima_farmaceuticas','i_medicamento_materia_prima_farmaceuticas_on','i_medicamento_materia_prima_farmaceuticas_off',0)"><span style="color: #177CC0; font-family: Arial; font-size: 20px; font-weight: bold;">Detalhamento Especifico de Medicamento e de matérias-primas farmacêuticas</span>&nbsp;&nbsp;<i class="fa fa-toggle-on"></i></div>
            <div id="i_medicamento_materia_prima_farmaceuticas_off" name="i_medicamento_materia_prima_farmaceuticas_off" class="col" align="left" style="display: block; visibility: visible; font-size: 20px; color: red; margin-right: 20px; border-bottom: solid; border-color: #767676; border-width: 1px; cursor: pointer" onclick="mostra_div_informacao('div_medicamento_materia_prima_farmaceuticas','i_medicamento_materia_prima_farmaceuticas_on','i_medicamento_materia_prima_farmaceuticas_off',1)"><span style="color: #177CC0; font-family: Arial; font-size: 20px; font-weight: bold;">Detalhamento Especifico de Medicamento e de matérias-primas farmacêuticas</span>&nbsp;&nbsp;<i class="fa fa-toggle-off"></i></div>
   
   
        </div>
   
        <div class="row" style="width: 100%; height: 20px"></div>
   
        
        <div id="div_medicamento_materia_prima_farmaceuticas" name="div_medicamento_materia_prima_farmaceuticas"
            style="display:none;visibility:visible;width:100%;height:100%;background-color:transparent;margin-left:20px;margin-right:20px;border:solid;border-color:#177CC0;border-width:1px;border-radius:10px;padding: 0 20px 20px 20px;">
   
   
           
            <div class="row"
                style="width:100%;padding:0px;margin:0px;background-color:transparent;height:100%;padding:0px;margin:0px">
   
   
       <!--/////////////////////////////////////////////////// Detalhamento Especifico de Medicamento e de matérias-primas farmacêuticas  -  LINHA LADO ESQUERDO - Número de Lotes de medicamentos/  Data de Validade/////////////////////////////////////////////////////////////////////////////////////////////-->
       <div class="col-xl-7"
           style="width:100%;height:100%;background-color:transparent;padding:0px;margin:0px">
   
           <div class="row" style="width:100%;height:100%;background-color:transparent;padding:0px;margin:0px">
   
               <div class="col-md-8" style="width:100%;height:100%;background-color:transparent;padding: 4px;  padding-top: 20px">
   
   
                   <div class="row" style="padding: 0px; margin: 0px">
                       <div class="col"  style=" font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                     Nº de Lotes de medicamentos/ matérias-primas
                       </div>
                   </div>
   
                   <div class="row" style="padding: 0px; margin: 0px">
                   <div class="col" style="padding: 0px; margin: 0px">
                                <asp:TextBox ID="TextBox19" runat="server" CssClass="layouttexto"
                                    Style="width: 45%; padding-right:5px" onBlur="SetTextIn(this,0);SetDiv('div_medicamento_materia_prima_farmaceuticas',0)" onFocus="SetTextIn(this,1);SetDiv('div_medicamento_materia_prima_farmaceuticas',1)">
                                </asp:TextBox>
                       </div>
                     </div>
               </div>
               <div class="col-md-4" style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-left: 5px; padding-top: 20px">
                   <div class="row">
                       <div class="col" style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                           Data de Validade
                       </div>
                   </div>
                   <div class="row" style="padding: 0px; margin: 0px">
                       <div class="col" style="padding: 0px; margin: 0px">
                           <asp:TextBox ID="TextBox24" runat="server" CssClass="layouttexto"
                               Style="width: 40%;" onBlur="SetTextIn(this,0);SetDiv('div_medicamento_materia_prima_farmaceuticas',0)" onFocus="SetTextIn(this,1);SetDiv('div_medicamento_materia_prima_farmaceuticas',1)">
                           </asp:TextBox>
                       </div>
                   </div>
               </div>

                </div>
            </div>
        
    
   
        <!--///////////////////////////////////////////////////  Detalhamento Especifico de Medicamento e de matérias-primas farmacêuticas -  Data de Fabricação -  Preço máximo consumidor /////////////////////////////////////////////////////////////////////////////////////////////-->
        <div class="col-xl-5" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px; padding-left: 20px">
   
            <div class="row" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">
   
                <div class="col-md-5" style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-left: 5px; padding-top: 20px">
                    <div class="row">
                        <div class="col" style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                            Data de Fabricação
                        </div>
                    </div>
                    <div class="row" style="padding: 0px; margin: 0px">
                        <div class="col" style="padding: 0px; margin: 0px">
                            <asp:TextBox ID="TextBox20" runat="server" CssClass="layouttexto"
                                Style="width: 40%;" onBlur="SetTextIn(this,0)"
                                onFocus="SetTextIn(this,1)">
                            </asp:TextBox>
                        </div>
                    </div>
                </div>
   
                <div class="col-md-7" style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-left: 5px; padding-top: 20px">
                    <div class="row">
                        <div class="col" style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                           Preço máximo consumidor 
                        </div>
                    </div>
                    <div class="row" style="padding: 0px; margin: 0px">
                        <div class="col" style="padding: 0px; margin: 0px">
                            <asp:TextBox ID="TextBox21" runat="server" CssClass="layouttexto"
                                Style="width: 40%;" onBlur="SetTextIn(this,0);SetDiv('div_medicamento_materia_prima_farmaceuticas',0)" onFocus="SetTextIn(this,1);SetDiv('div_medicamento_materia_prima_farmaceuticas',1)">
                            </asp:TextBox>
                        </div>
                    </div>
                </div>
            </div>
        </div>
       </div>
               <!--///////////////////////////////////////////////////  Detalhamento Especifico de Medicamento e de matérias-primas farmacêuticas -  LINHA LADO ESQUERDO -   Quantidade de produtos no lote de medicamentos/ matérias-primas/////////////////////////////////////////////////////////////////////////////////////////////-->
            <div class="row"
                style="width: 100%; padding: 0px; margin: 0px; background-color: transparent; height: 100%; padding: 0px; margin: 0px">



                <div class="col-xl-12"
                    style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

                    <div class="row" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

                        <div class="col-md-auto" style="width: 100%; height: 100%; background-color: transparent; padding: 20px;">


                            <div class="row">
                                <div class="col"
                                    style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                    Quantidade de produtos no lote de medicamentos/ matérias-primas
                                </div>
                            </div>

                            <div class="row" style="padding: 0px; margin: 0px">
                            <div class="col" style="padding: 0px; margin: 0px">
                                <asp:TextBox ID="TextBox22" runat="server" CssClass="layouttexto"
                                    Style="width: 150px;" onBlur="SetTextIn(this,0);SetDiv('div_medicamento_materia_prima_farmaceuticas',0)" onFocus="SetTextIn(this,1);SetDiv('div_medicamento_materia_prima_farmaceuticas',1)">
                                </asp:TextBox>
                            </div>
                        </div>
                        </div>

                    </div>
                </div>

            </div>
        </div>
    </div>
 </div>
   
            

    <!--/////////////////////////////////////////////////// 7 container - Armamentos  ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////-->
    <div class="container-fluid" style="padding: 0px; margin: 0px; width: 100%; height: 100%;">


        <div class="row" style="width: 100%; height: 50px"></div>

        <div class="row" style="width: 100%; height: 100%; padding: 0px; margin: 0px; background-color: transparent">

            <div class="row" style="width: 100%; height: 100%; color: #177CC0; padding-left: 20px; padding-top: 0px; font-family: Arial; font-size: 20px; font-weight: bold; margin-left: 0px">

                <div id="i_detalhamento_de_armamento_on" name="i_detalhamento_de_armamento_on" class="col" align="left" style="display: none; visibility: hidden; font-size: 20px; color: red; margin-right: 20px; border-bottom: none; cursor: pointer" onclick="mostra_div_informacao('div_detalhamento_de_armamento','i_detalhamento_de_armamento_on','i_detalhamento_de_armamento_off',0)"><span style="color: #177CC0; font-family: Arial; font-size: 20px; font-weight: bold;">Detalhamento Específico de Armamento</span>&nbsp;&nbsp;<i class="fa fa-toggle-on"></i></div>
                <div id="i_detalhamento_de_armamento_off" name="i_detalhamento_de_armamento_off" class="col" align="left" style="display: block; visibility: visible; font-size: 20px; color: red; margin-right: 20px; border-bottom: solid; border-color: #767676; border-width: 1px; cursor: pointer" onclick="mostra_div_informacao('div_detalhamento_de_armamento','i_detalhamento_de_armamento_on','i_detalhamento_de_armamento_off',1)"><span style="color: #177CC0; font-family: Arial; font-size: 20px; font-weight: bold;">Detalhamento Específico de Armamento</span>&nbsp;&nbsp;<i class="fa fa-toggle-off"></i></div>


            </div>

            <div class="row" style="width: 100%; height: 20px"></div>


            <div id="div_detalhamento_de_armamento" name="div_detalhamento_de_armamento"
                style="display: none; visibility: visible; width: 100%; height: 100%; background-color: transparent; margin-left: 20px; margin-right: 20px; border: solid; border-color: #177CC0; border-width: 1px; border-radius: 10px; padding: 0 20px 20px 20px;">



                <div class="row"
                    style="width: 100%; padding: 0px; margin: 0px; background-color: transparent; height: 100%; padding: 0px; margin: 0px">
                    <!--/////////////////////////////////////////////////// 7 container - Número de série do arma - Número de série do cano/////////////////////////////////////////////////////////////////////////////////////////////-->
                    <div class="col-xl-7"
                        style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

                        <div class="row" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

                            <div class="col-md-6" style="width: 100%; height: 100%; background-color: transparent; padding: 20px;">


                                <div class="row">
                                    <div class="col"
                                        style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                        Número de série do arma
                                    </div>
                                </div>

                                <div class="row" style="padding: 0px; margin: 0px">
                                <div class="col" style="padding: 0px; margin: 0px">
                                    <asp:TextBox ID="cs_nserie_arma" runat="server" CssClass="layouttexto"
                                        Style="width: 47%;" onBlur="SetTextIn(this,0);SetDiv('div_detalhamento_de_armamento',0)" onFocus="SetTextIn(this,1);SetDiv('div_detalhamento_de_armamento',1)">
                                    </asp:TextBox>
                                </div>
                             </div>   
                            </div>

                            <div class="col-md-6" style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-left: 15px; padding-top: 20px">
                                <div class="row">
                                    <div class="col" style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                        Número de série do cano
                                    </div>
                                </div>

                                <div class="row" style="padding: 0px; margin: 0px">
                                    <div class="col" style="padding: 0px; margin: 0px">
                                    <asp:TextBox ID="cs_ncano" runat="server" CssClass="layouttexto"
                                        Style="width: 47%;" onBlur="SetTextIn(this,0);SetDiv('div_detalhamento_de_armamento',0)" onFocus="SetTextIn(this,1);SetDiv('div_detalhamento_de_armamento',1)">
                                    </asp:TextBox>
                                </div>
                            </div>
                        </div>
                        </div>
                    </div>



                    <!--/////////////////////////////////////////////////// 7 container - Indicador do tipo de arma de fogo  /////////////////////////////////////////////////////////////////////////////////////////////-->
                    <div class="col-xl-5" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px; padding-left: 20px">

                        <div class="row" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

                            <div class="col-md-12" style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-left: 15px; padding-top: 23px">
                                <div class="row">
                                    <div class="col" style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                        Indicador do tipo de arma de fogo
                                    </div>
                                </div>
                                <div class="row" style="padding: 0px; margin: 0px">
                                    <div class="col" style="padding: 0px; margin: 0px">
                                    <asp:DropDownList ID="cs_tparma" onBlur="SetTextIn(this,0);SetDiv('div_detalhamento_de_armamento',0)" onFocus="SetTextIn(this,1);SetDiv('div_detalhamento_de_armamento',1)" CssClass="layouttexto" runat="server">
                                        <asp:ListItem style="width: 100%;" Text="Uso Permitido" Value="1" />
                                        <asp:ListItem style="width: 100%;" Text="Uso Restrito" Value="2" />

                                    </asp:DropDownList>
                                </div>
                            </div>
                            </div>

                        </div>
                    </div>
                </div>

                <div class="row" style="width: 100%; height: 30px"></div>

                <div class="row"
                    style="width: 100%; padding: 0px; margin: 0px; background-color: transparent; height: 100%; padding: 0px; margin: 0px">
                    <div class="col-xl-12"
                        style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

                        <div class="row" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

                            <div class="col-md-auto" style="width: 100%; height: 100%; background-color: transparent; padding: 20px;">


                                <div class="row">
                                    <div class="col"
                                        style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                        Descrição completa da Arma
                                    </div>
                                </div>

                                <div class="row" style="padding: 0px; margin: 0px">
                                <div class="col" style="padding: 0px; margin: 0px">
                                    <asp:TextBox ID="TextBox17" runat="server" CssClass="layouttexto"
                                        Style="width: 100%;" onBlur="SetTextIn(this,0);SetDiv('div_detalhamento_de_armamento',0)" onFocus="SetTextIn(this,1);SetDiv('div_detalhamento_de_armamento',1)">
                                    </asp:TextBox>
                                </div>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
           <!--///////////////////////////////////////////////////   Container - Detalhamento Especifico de Combustíveis /////////////////////////////////////////////////////////////////////////////////////////////-->


    <div class="container-fluid" style="padding: 0px; margin: 0px; width: 100%; height: 100%;">


        <div class="row" style="width: 100%; height: 50px"></div>

        <div class="row" style="width: 100%; height: 100%; padding: 0px; margin: 0px; background-color: transparent">

            <div class="row" style="width: 100%; height: 100%; color: #177CC0; padding-left: 20px; padding-top: 0px; font-family: Arial; font-size: 20px; font-weight: bold; margin-left: 0px">

                <div id="i_produtos_servicos_combustiveis_on" name="i_produtos_servicos_combustiveis_on" class="col" align="left" style="display: none; visibility: hidden; font-size: 20px; color: red; margin-right: 20px; border-bottom: none; cursor: pointer" onclick="mostra_div_informacao('div_produtos_servicos_combustiveis','i_produtos_servicos_combustiveis_on','i_produtos_servicos_combustiveis_off',0)"><span style="color: #177CC0; font-family: Arial; font-size: 20px; font-weight: bold;">Detalhamento Especifico de Combustíveis </span>&nbsp;&nbsp;<i class="fa fa-toggle-on"></i></div>
                <div id="i_produtos_servicos_combustiveis_off" name="i_produtos_servicos_combustiveis_off" class="col" align="left" style="display: block; visibility: visible; font-size: 20px; color: red; margin-right: 20px; border-bottom: solid; border-color: #767676; border-width: 1px; cursor: pointer" onclick="mostra_div_informacao('div_produtos_servicos_combustiveis','i_produtos_servicos_combustiveis_on','i_produtos_servicos_combustiveis_off',1)"><span style="color: #177CC0; font-family: Arial; font-size: 20px; font-weight: bold;">Detalhamento Especifico de Combustíveis</span>&nbsp;&nbsp;<i class="fa fa-toggle-off"></i></div>


            </div>

            <div class="row" style="width: 100%; height: 20px"></div>


            <div id="div_produtos_servicos_combustiveis" name="div_produtos_servicos_combustiveis"
                style="display: none; visibility: visible; width: 100%; height: 100%; background-color: transparent; margin-left: 20px; margin-right: 20px; border: solid; border-color: #177CC0; border-width: 1px; border-radius: 10px; padding: 0 20px 20px 20px;">



                <div class="row"
                    style="width: 100%; padding: 0px; margin: 0px; background-color: transparent; height: 100%; padding: 0px; margin: 0px">


                    <!--///////////////////////////////////////////////////  Container - Detalhamento Especifico de Combustíveis -  LINHA LADO ESQUERDO - Código do Produto Da ANP -  Percentual de Gás Natural/////////////////////////////////////////////////////////////////////////////////////////////-->
                    <div class="col-xl-7"
                        style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

                        <div class="row" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

                            <div class="col-md-6" style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">


                                <div class="row">
                                    <div class="col"
                                        style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                        Código do Produto Da ANP &nbsp &nbsp <img alt="" src="../Imagens/ihelp.png"  style="width: 20px; height: 21px; cursor:pointer" onclick="anima_informacao(1,'CodigodoProdutoDaANP')" />
                                    </div>
                                </div>

                                <div class="row" style="padding: 0px; margin: 0px">
                                    <div class="col" style="padding: 0px; margin: 0px">
                                        <asp:TextBox ID="cs_cs_prodanp" runat="server" CssClass="layouttexto"
                                            Style="width: 230px; padding: 0px; margin: 0px"
                                           onBlur="SetTextIn(this,0);SetDiv('div_produtos_servicos_combustiveis',0)" onFocus="SetTextIn(this,1);SetDiv('div_produtos_servicos_combustiveis',1)">
    
                                        </asp:TextBox>
                                    </div>
                                </div>

                            </div>


                            <div class=" col-md-6"
                                style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">
                                <div class="row">
                                    <div class="col"
                                        style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                        Percentual de Gás Natural
                                    </div>
                                </div>
                                <div class="row" style="padding: 0px; margin: 0px">
                                    <div class="col" style="padding: 0px; margin: 0px">
                                        <asp:TextBox ID="TextBox15" runat="server" CssClass="layouttexto"
                                            Style="width: 100px;" onBlur="SetTextIn(this,0);SetDiv('div_produtos_servicos_combustiveis',0)" onFocus="SetTextIn(this,1);SetDiv('div_produtos_servicos_combustiveis',1)"
                                                                                                                                                                                                                            >
                                        </asp:TextBox>
                                    </div>
                                </div>
                            </div>


                        </div>

                    </div>
                    <!--/////////////////////////////////////////////////// Container - Detalhamento Especifico de Combustíveis  - LINHA LADO DIREITO - Código de autorização / registro de CODIF/////////////////////////////////////////////////////////////////////////////////////////////-->
                    <div class="col-xl-5"
                        style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px;">

                        <div class="row"
                            style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

                            <div class="col-auto"
                                style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-left: 15px; padding-top: 10px; padding-right: 12px">
                                <div class="row">
                                    <div class="col"
                                        style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                        Código de autorização / registro de CODIF &nbsp &nbsp <img alt="" src="../Imagens/ihelp.png"  style="width: 20px; height: 21px; cursor:pointer" onclick="anima_informacao(1,'RegistroCODIF')" />
                                    </div>
                                </div>
                                <div class="row" style="padding: 0px; margin: 0px">
                                    <div class="col" style="padding: 0px; margin: 0px">
                                        <asp:TextBox ID="cs_codif" runat="server" CssClass="layouttexto"
                                            Style="width: 90%;" onBlur="SetTextIn(this,0);SetDiv('div_produtos_servicos_combustiveis',0)" onFocus="SetTextIn(this,1);SetDiv('div_produtos_servicos_combustiveis',1)">
                                        </asp:TextBox>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
               
                			<!--/////////////////////////////////////////////////// Container - Detalhamento Especifico de Combustíveis -  2 LINHA LADO ESQUERDO - Quantidade de combustível faturada -  Sigla UF de consumo /////////////////////////////////////////////////////////////////////////////////////////////-->
                <div class="row" style="width: 100%; height: 30px"></div>

                <div class="row"
                    style="width: 100%; padding: 0px; margin: 0px; background-color: transparent; height: 100%; padding: 0px; margin: 0px">
                    <div class="col-xl-7"
                        style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

                        <div class="row" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

                            <div class="col-md-6" style="width: 100%; height: 100%; background-color: transparent;  padding: 4px; padding-left: 15px; padding-top: 20px"">


                                <div class="row">
                                    <div class="col"
                                        style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                        Quantidade de combustível faturada 
                                    </div>
                                </div>

                                <div class="row" style="padding: 0px; margin: 0px">
                                <div class="col" style="padding: 0px; margin: 0px">
                                    <asp:TextBox ID="cs_qtemp" runat="server" CssClass="layouttexto"
                                        Style="width: 75%;" onBlur="SetTextIn(this,0);SetDiv('div_produtos_servicos_combustiveis',0)" onFocus="SetTextIn(this,1);SetDiv('div_produtos_servicos_combustiveis',1)">
                                    </asp:TextBox>
                                </div>
                                </div>
                            </div>





                            <div class="col-md-6" style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-left: 15px; padding-top: 20px">
                                <div class="row">
                                    <div class="col" style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                        Sigla UF de consumo
                                    </div>
                                </div>
                                <div class="row" style="padding: 0px; margin: 0px">
                                    <div class="col" style="padding: 0px; margin: 0px">
                                        <asp:TextBox ID="cs_ufcons" runat="server" CssClass="layouttexto"
                                            Style="width: 40px;" onBlur="SetTextIn(this,0);SetDiv('div_produtos_servicos_combustiveis',0)" onFocus="SetTextIn(this,1);SetDiv('div_produtos_servicos_combustiveis',1)">
                                        </asp:TextBox>
                                    </div>
                                </div>
                            </div>
                        </div>


                    </div>



                    <!--/////////////////////////////////////////////////// Container - Detalhamento Especifico de Combustíveis - 2 LINHA  LADO DIREITO - BC da CIDE - Valores da alíquota da CIDE /////////////////////////////////////////////////////////////////////////////////////////////-->
                    <div class="col-xl-5" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px; padding-left: 20px">

                        <div class="row" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

                            <div class="col-md-4" style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-left: 5px; padding-top: 20px">
                                <div class="row">
                                    <div class="col" style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                        BC da CIDE &nbsp &nbsp <img alt="" src="../Imagens/ihelp.png"  style="width: 20px; height: 21px; cursor:pointer" onclick="anima_informacao(1,'BCdaCIDE')" />
                                    </div>
                                </div>
                                <div class="row" style="padding: 0px; margin: 0px">
                                    <div class="col" style="padding: 0px; margin: 0px">
                                        <asp:TextBox ID="cs_qbcprod" runat="server" CssClass="layouttexto"
                                            Style="width: 50%;" onBlur="SetTextIn(this,0);SetDiv('div_produtos_servicos_combustiveis',0)" onFocus="SetTextIn(this,1);SetDiv('div_produtos_servicos_combustiveis',1)">
                                        </asp:TextBox>
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-8" style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-left: 5px; padding-top: 20px">
                                <div class="row">
                                    <div class="col" style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                        Valores da alíquota da CIDE
                                    </div>
                                </div>
                                <div class="row" style="padding: 0px; margin: 0px">
                                    <div class="col" style="padding: 0px; margin: 0px">
                                        <asp:TextBox ID="cs_valiqprod" runat="server" CssClass="layouttexto"
                                            Style="width: 80%;" onBlur="SetTextIn(this,0);SetDiv('div_produtos_servicos_combustiveis',0)" onFocus="SetTextIn(this,1);SetDiv('div_produtos_servicos_combustiveis',1)">
                                        </asp:TextBox>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                 <!--/////////////////////////////////////////////////// Container - Detalhamento Especifico de Combustíveis - 3 - Valor da CIDE /////////////////////////////////////////////////////////////////////////////////////////////-->
                <div class="row" style="width: 100%; height: 30px"></div>

                <div class="row"
                    style="width: 100%; padding: 0px; margin: 0px; background-color: transparent; height: 100%; padding: 0px; margin: 0px">
                    <div class="col-xl-12"
                        style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

                        <div class="row" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

                            <div class="col-md-auto" style="width: 100%; height: 100%; background-color: transparent; padding: 20px;">


                                <div class="row">
                                    <div class="col"
                                        style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                        Valor da CIDE 
                                    </div>
                                </div>

                                <div class="row" style="padding: 0px; margin: 0px">
                                <div class="col" style="padding: 0px; margin: 0px">
                                    <asp:TextBox ID="TextBox16" runat="server" CssClass="layouttexto"
                                        Style="width: 170px;" onBlur="SetTextIn(this,0);SetDiv('div_produtos_servicos_combustiveis',0)" onFocus="SetTextIn(this,1);SetDiv('div_produtos_servicos_combustiveis',1)">
                                    </asp:TextBox>
                                </div>
                             </div>   
                            </div>
                        </div>
                    </div>
                    </div>
                </div>
            </div>
    </div>

            <!--///////////////////////////////////////////////////   Container - Detalhamento para operação com Papel Imune /////////////////////////////////////////////////////////////////////////////////////////////-->


<div class="container-fluid" style="padding: 0px; margin: 0px; width: 100%; height: 100%;">


    <div class="row" style="width: 100%; height: 50px"></div>

    <div class="row" style="width: 100%; height: 100%; padding: 0px; margin: 0px; background-color: transparent">

        <div class="row" style="width: 100%; height: 100%; color: #177CC0; padding-left: 20px; padding-top: 0px; font-family: Arial; font-size: 20px; font-weight: bold; margin-left: 0px">

            <div id="i_detalhamento_operacao_papel_imune_on" name="i_detalhamento_operacao_papel_imune_on" class="col" align="left" style="display: none; visibility: hidden; font-size: 20px; color: red; margin-right: 20px; border-bottom: none; cursor: pointer" onclick="mostra_div_informacao('div_detalhamento_operacao_papel_imune','i_detalhamento_operacao_papel_imune_on','i_detalhamento_operacao_papel_imune_off',0)"><span style="color: #177CC0; font-family: Arial; font-size: 20px; font-weight: bold;">Detalhamento Específico para Operação com Papel Imune</span>&nbsp;&nbsp;<i class="fa fa-toggle-on"></i></div>
            <div id="i_detalhamento_operacao_papel_imune_off" name="i_detalhamento_operacao_papel_imune_off" class="col" align="left" style="display: block; visibility: visible; font-size: 20px; color: red; margin-right: 20px; border-bottom: solid; border-color: #767676; border-width: 1px; cursor: pointer" onclick="mostra_div_informacao('div_detalhamento_operacao_papel_imune','i_detalhamento_operacao_papel_imune_on','i_detalhamento_operacao_papel_imune_off',1)"><span style="color: #177CC0; font-family: Arial; font-size: 20px; font-weight: bold;">Detalhamento Específico para Operação com Papel Imune</span>&nbsp;&nbsp;<i class="fa fa-toggle-off"></i></div>


        </div>

        <div class="row" style="width: 100%; height: 20px"></div>


        <div id="div_detalhamento_operacao_papel_imune" name="div_detalhamento_operacao_papel_imune"
            style="display: none; visibility: visible; width: 100%; height: 100%; background-color: transparent; margin-left: 20px; margin-right: 20px; border: solid; border-color: #177CC0; border-width: 1px; border-radius: 10px; padding: 0 20px 20px 20px;">



            <div class="row"
                style="width: 100%; padding: 0px; margin: 0px; background-color: transparent; height: 100%; padding: 0px; margin: 0px">


                <!--///////////////////////////////////////////////////  Container - Detalhamento Especifico de Combustíveis -  LINHA LADO ESQUERDO - Código do Produto Da ANP -  Percentual de Gás Natural/////////////////////////////////////////////////////////////////////////////////////////////-->
                <div class="col-xl-12"
                    style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

                    <div class="row" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

                        <div class="col-md-12" style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">


                            <div class="row">
                                <div class="col"
                                    style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                    Número do RECOPI
                                </div>
                            </div>

                            <div class="row" style="padding: 0px; margin: 0px">
                                <div class="col" style="padding: 0px; margin: 0px">
                                    <asp:TextBox ID="TextBox222" runat="server" CssClass="layouttexto"
                                        Style="width: 30%; padding: 0px; margin: 0px"
                                        onBlur="SetTextIn(this,0);SetDiv('div_detalhamento_operacao_papel_imune',0)"
                                        onFocus="SetTextIn(this,1);SetDiv('div_detalhamento_operacao_papel_imune',1)">

                                    </asp:TextBox>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
    <!--///////////////////////////////////////////////////   Container - Tributos incidentes no Produto ou Serviço /////////////////////////////////////////////////////////////////////////////////////////////-->


    <div class="container-fluid" style="padding: 0px; margin: 0px; width: 100%; height: 100%;">


        <div class="row" style="width: 100%; height: 50px"></div>

        <div class="row" style="width: 100%; height: 100%; padding: 0px; margin: 0px; background-color: transparent">

            <div class="row" style="width: 100%; height: 100%; color: #177CC0; padding-left: 20px; padding-top: 0px; font-family: Arial; font-size: 20px; font-weight: bold; margin-left: 0px">

                <div id="i_tributos_incidentes_no_produto_servico_on" name="i_tributos_incidentes_no_produto_servico_on" class="col" align="left" style="display: none; visibility: hidden; font-size: 20px; color: red; margin-right: 20px; border-bottom: none; cursor: pointer" onclick="mostra_div_informacao('div_tributos_incidentes_no_produto_servico','i_tributos_incidentes_no_produto_servico_on','i_tributos_incidentes_no_produto_servico_off',0)"><span style="color: #177CC0; font-family: Arial; font-size: 20px; font-weight: bold;">Tributos incidentes no Produto ou Serviço </span>&nbsp;&nbsp;<i class="fa fa-toggle-on"></i></div>
                <div id="i_tributos_incidentes_no_produto_servico_off" name="i_tributos_incidentes_no_produto_servico_off" class="col" align="left" style="display: block; visibility: visible; font-size: 20px; color: red; margin-right: 20px; border-bottom: solid; border-color: #767676; border-width: 1px; cursor: pointer" onclick="mostra_div_informacao('div_tributos_incidentes_no_produto_servico','i_tributos_incidentes_no_produto_servico_on','i_tributos_incidentes_no_produto_servico_off',1)"><span style="color: #177CC0; font-family: Arial; font-size: 20px; font-weight: bold;">Tributos incidentes no Produto ou Serviço</span>&nbsp;&nbsp;<i class="fa fa-toggle-off"></i></div>


            </div>

            <div class="row" style="width: 100%; height: 20px"></div>


            <div id="div_tributos_incidentes_no_produto_servico" name="div_tributos_incidentes_no_produto_servico"
                style="display: none; visibility: visible; width: 100%; height: 100%; background-color: transparent; margin-left: 20px; margin-right: 20px; border: solid; border-color: #177CC0; border-width: 1px; border-radius: 10px; padding: 0 20px 20px 20px;">



                <div class="row"
                    style="width: 100%; padding: 0px; margin: 0px; background-color: transparent; height: 100%; padding: 0px; margin: 0px">


                    <!--///////////////////////////////////////////////////  Container - Detalhamento Especifico de Combustíveis -  LINHA LADO ESQUERDO - Código do Produto Da ANP -  Percentual de Gás Natural/////////////////////////////////////////////////////////////////////////////////////////////-->
                    <div class="col-xl-12"
                        style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

                        <div class="row" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

                            <div class="col-md-12" style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">


                                <div class="row">
                                    <div class="col"
                                        style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                        Total Aproximado de Tributos (Federais, Estaduais e Municipais
                                    </div>
                                </div>

                                <div class="row" style="padding: 0px; margin: 0px">
                                    <div class="col" style="padding: 0px; margin: 0px">
                                        <asp:TextBox ID="TextBox18" runat="server" CssClass="layouttexto"
                                            Style="width: 20%; padding: 0px; margin: 0px"
                                            onBlur="SetTextIn(this,0);SetDiv('div_tributos_incidentes_no_produto_servico',0)"
                                            onFocus="SetTextIn(this,1);SetDiv('div_tributos_incidentes_no_produto_servico',1)">
    
                                        </asp:TextBox>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

                   <!--///////////////////////////////////////////////////   Container - Imposto Sobre Produtos Industrializados /////////////////////////////////////////////////////////////////////////////////////////////-->


       <div class="container-fluid" style="padding: 0px; margin: 0px; width: 100%; height: 100%;">


        <div class="row" style="width: 100%; height: 50px"></div>
    
        <div class="row" style="width: 100%; height: 100%; padding: 0px; margin: 0px; background-color: transparent">
    
            <div class="row" style="width: 100%; height: 100%; color: #177CC0; padding-left: 20px; padding-top: 0px; font-family: Arial; font-size: 20px; font-weight: bold; margin-left: 0px">
    
                <div id="i_imposto_produtos_industrializados_on" name="i_imposto_produtos_industrializados_on" class="col" align="left" style="display: none; visibility: hidden; font-size: 20px; color: red; margin-right: 20px; border-bottom: none; cursor: pointer" onclick="mostra_div_informacao('div_imposto_produtos_industrializados','i_imposto_produtos_industrializados_on','i_imposto_produtos_industrializados_off',0)"><span style="color: #177CC0; font-family: Arial; font-size: 20px; font-weight: bold;">Imposto sobre Produtos Industrializados  </span>&nbsp;&nbsp;<i class="fa fa-toggle-on"></i></div>
                <div id="i_imposto_produtos_industrializados_off" name="i_imposto_produtos_industrializados_off" class="col" align="left" style="display: block; visibility: visible; font-size: 20px; color: red; margin-right: 20px; border-bottom: solid; border-color: #767676; border-width: 1px; cursor: pointer" onclick="mostra_div_informacao('div_imposto_produtos_industrializados','i_imposto_produtos_industrializados_on','i_imposto_produtos_industrializados_off',1)"><span style="color: #177CC0; font-family: Arial; font-size: 20px; font-weight: bold;">Imposto sobre Produtos Industrializados </span>&nbsp;&nbsp;<i class="fa fa-toggle-off"></i></div>
    
    
            </div>
    
            <div class="row" style="width: 100%; height: 20px"></div>
    
    
            <div id="div_imposto_produtos_industrializados" name="div_imposto_produtos_industrializados"
                style="display: none; visibility: visible; width: 100%; height: 100%; background-color: transparent; margin-left: 20px; margin-right: 20px; border: solid; border-color: #177CC0; border-width: 1px; border-radius: 10px; padding: 0 20px 20px 20px;">
    
    
    
                <div class="row"
                    style="width: 100%; padding: 0px; margin: 0px; background-color: transparent; height: 100%; padding: 0px; margin: 0px">
    
    
                    <!--///////////////////////////////////////////////////  Container -  LINHA LADO ESQUERDO - Classe de enquadramento do IPI Cigarros e Bebidas -  CNPJ do produtor da mercadoria /////////////////////////////////////////////////////////////////////////////////////////////-->
                    <div class="col-xl-6"
                        style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">
    
                        <div class="row" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">
    
                            <div class="col-md-6" style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">
    
    
                                <div class="row">
                                    <div class="col"
                                        style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                      Código do selo de controle IPI 
                                    </div>
                                </div>
    
                                <div class="row" style="padding: 0px; margin: 0px">
                                    <div class="col" style="padding: 0px; margin: 0px">
                                        <asp:TextBox ID="cselo" runat="server" CssClass="layouttexto"
                                            Style="width: 100%; padding: 0px; margin: 0px"
                                           onBlur="SetTextIn(this,0);SetDiv('div_imposto_produtos_industrializados',0)"
    onFocus="SetTextIn(this,1);SetDiv('div_imposto_produtos_industrializados',1)">
    
                                        </asp:TextBox>
                                    </div>
                                </div>
    
                            </div>
    
    
                            <div class=" col-md-6"
                                style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">
                                <div class="row">
                                    <div class="col"
                                        style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                        IPI para Tabaco e Bebidas
                                    </div>
                                </div>
                                <div class="row" style="padding: 0px; margin: 0px">
                                    <div class="col" style="padding: 0px; margin: 0px">
                                        <asp:TextBox ID="cienq" runat="server" CssClass="layouttexto"
                                            Style="width: 100px;" onBlur="SetTextIn(this,0);SetDiv('div_imposto_produtos_industrializados',0)"
    onFocus="SetTextIn(this,1);SetDiv('div_imposto_produtos_industrializados',1)">
                                        </asp:TextBox>
                                    </div>
                                </div>
                            </div>
    
    
                        </div>
    
                    </div>
                    <!--/////////////////////////////////////////////////// Container LINHA LADO DIREITO - Código do selo de controle IPI / Quantidade de selo de controle/////////////////////////////////////////////////////////////////////////////////////////////-->
                    <div class="col-xl-6"
                        style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px;">
    
                        <div class="row"
                            style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">
    
                            <div class="col-md-6"
                                style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-left: 15px; padding-top: 10px; padding-right: 12px">
                                <div class="row">
                                    <div class="col"
                                        style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                        CNPJ do produtor
                                    </div>
                                </div>
                                <div class="row" style="padding: 0px; margin: 0px">
                                    <div class="col" style="padding: 0px; margin: 0px">
                                        <asp:TextBox ID="cnpjprod" runat="server" CssClass="layouttexto"
                                            Style="width: 75%;" onBlur="SetTextIn(this,0);SetDiv('div_imposto_produtos_industrializados',0)"
    onFocus="SetTextIn(this,1);SetDiv('div_imposto_produtos_industrializados',1)">
                                        </asp:TextBox>
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-6"
                            style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-left: 15px; padding-top: 10px; padding-right: 12px">
                            <div class="row">
                                <div class="col"
                                    style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                    Quantidade de selo de controle
                                </div>
                            </div>
                            <div class="row" style="padding: 0px; margin: 0px">
                                <div class="col" style="padding: 0px; margin: 0px">
                                    <asp:TextBox ID="qselo" runat="server" CssClass="layouttexto"
                                        Style="width: 100%;" onBlur="SetTextIn(this,0);SetDiv('div_imposto_produtos_industrializados',0)"
    onFocus="SetTextIn(this,1);SetDiv('div_imposto_produtos_industrializados',1)">
                                    </asp:TextBox>
                                </div>
                            </div>
                        </div>
    
                        </div>
                    </div>
                </div>
               
                               <!--/////////////////////////////////////////////////// Container - Código da situação tributária do IPI -  Valor da BC do IPI /////////////////////////////////////////////////////////////////////////////////////////////-->
                <div class="row" style="width: 100%; height: 30px"></div>
    
                <div class="row"
                    style="width: 100%; padding: 0px; margin: 0px; background-color: transparent; height: 100%; padding: 0px; margin: 0px">
                    <div class="col-xl-6"
                        style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">
    
                        <div class="row" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">
    
                            <div class="col-md-6" style="width: 100%; height: 100%; background-color: transparent;  padding: 4px; padding-left: 15px; padding-top: 20px"">
    
    
                                <div class="row">
                                    <div class="col"
                                        style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                       Código Legal IPI
                                    </div>
                                </div>
    
                                <div class="row" style="padding: 0px; margin: 0px">
                                <div class="col" style="padding: 0px; margin: 0px">
                                    <asp:TextBox ID="cenq" runat="server" CssClass="layouttexto"
                                        Style="width: 40px;" onBlur="SetTextIn(this,0);SetDiv('div_imposto_produtos_industrializados',0)"
    onFocus="SetTextIn(this,1);SetDiv('div_imposto_produtos_industrializados',1)">
                                    </asp:TextBox>
                                </div>
                                </div>
                            </div>
    
    
    
    
    
                            <div class="col-md-6" style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-left: 15px; padding-top: 20px">
                                <div class="row">
                                    <div class="col" style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                        CST do IPI &nbsp &nbsp <img alt="" src="../Imagens/ihelp.png"  style="width: 20px; height: 21px; cursor:pointer" onclick="anima_informacao(1,'cstipi1')" />  

                                    </div>
                                </div>
                                <div class="row" style="padding: 0px; margin: 0px">
                                    <div class="col" style="padding: 0px; margin: 0px">
                                        <asp:DropDownList ID="cst" onBlur="SetTextIn(this,0);SetDiv('div_imposto_produtos_industrializados',0)"
    onFocus="SetTextIn(this,1);SetDiv('div_imposto_produtos_industrializados',1)" CssClass="layouttexto" runat="server">
                                            <asp:ListItem style="width: 100%;" Text="00" Value="1" />
                                            <asp:ListItem style="width: 100%;" Text="01" Value="2" /> 
                                            <asp:ListItem style="width: 100%;" Text="02" Value="3" />
                                            <asp:ListItem style="width: 100%;" Text="03" Value="4" />
                                            <asp:ListItem style="width: 100%;" Text="04" Value="5" />
                                            <asp:ListItem style="width: 100%;" Text="05" Value="6" />
                                            <asp:ListItem style="width: 100%;" Text="49" Value="7" />
                                            <asp:ListItem style="width: 100%;" Text="50" Value="8" />
                                            <asp:ListItem style="width: 100%;" Text="51" Value="9" />
                                            <asp:ListItem style="width: 100%;" Text="52" Value="10" />
                                            <asp:ListItem style="width: 100%;" Text="53" Value="11" />
                                            <asp:ListItem style="width: 100%;" Text="54" Value="12" />
                                            <asp:ListItem style="width: 100%;" Text="55" Value="10" />
                                            <asp:ListItem style="width: 100%;" Text="99" Value="11" />
                                            
                                        </asp:DropDownList>
                                    </div>
                                </div>
                            </div>
                        </div>
    
    
                    </div>
    
    
    
                    <!--/////////////////////////////////////////////////// Container - Alíquota do IPI - Quantidade Total /////////////////////////////////////////////////////////////////////////////////////////////-->
                    <div class="col-xl-6" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px; padding-left: 20px">
    
                        <div class="row" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">
    
                            <div class="col-md-6" style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-left: 5px; padding-top: 20px">
                                <div class="row">
                                    <div class="col" style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                        Valor da BC do IPI
                                    </div>
                                </div>
                                <div class="row" style="padding: 0px; margin: 0px">
                                    <div class="col" style="padding: 0px; margin: 0px">
                                        <asp:TextBox ID="vbc" runat="server" CssClass="layouttexto"
                                            Style="width: 100px;" onBlur="SetTextIn(this,0);SetDiv('div_imposto_produtos_industrializados',0)"
    onFocus="SetTextIn(this,1);SetDiv('div_imposto_produtos_industrializados',1)">
                                        </asp:TextBox>
                                    </div>
                                </div>
                            </div>
    
                            <div class="col-md-6" style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-left: 5px; padding-top: 20px">
                                <div class="row">
                                    <div class="col" style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                        Alíquota do IPI
                                    </div>
                                </div>
                                <div class="row" style="padding: 0px; margin: 0px">
                                    <div class="col" style="padding: 0px; margin: 0px">
                                        <asp:TextBox ID="pipi" runat="server" CssClass="layouttexto"
                                            Style="width: 60%;" onBlur="SetTextIn(this,0);SetDiv('div_imposto_produtos_industrializados',0)"
    onFocus="SetTextIn(this,1);SetDiv('div_imposto_produtos_industrializados',1)">
                                        </asp:TextBox>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                 <!--/////////////////////////////////////////////////// Container  - Valor por Unidade Tributável e Valor do IPI  /////////////////////////////////////////////////////////////////////////////////////////////-->
                <div class="row" style="width: 100%; height: 30px"></div>
    
                <div class="row"
                    style="width: 100%; padding: 0px; margin: 0px; background-color: transparent; height: 100%; padding: 0px; margin: 0px">
                    <div class="col-xl-6"
                        style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">
    
                        <div class="row" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">
    
                            <div class="col-md-6" style="width: 100%; height: 100%; background-color: transparent; padding: 20px;">
    
    
                                <div class="row">
                                    <div class="col"
                                        style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                        Quantidade Total

                                    </div>
                                </div>
    
                                <div class="row" style="padding: 0px; margin: 0px">
                                <div class="col" style="padding: 0px; margin: 0px">
                                    <asp:TextBox ID="qunid" runat="server" CssClass="layouttexto"
                                        Style="width: 150px;" onBlur="SetTextIn(this,0);SetDiv('div_imposto_produtos_industrializados',0)"
    onFocus="SetTextIn(this,1);SetDiv('div_imposto_produtos_industrializados',1)">
                                    </asp:TextBox>
                                </div>
                             </div>   
                            </div>

                            <div class="col-md-6" style="width: 100%; height: 100%; background-color: transparent; padding: 20px;">
    
    
                                <div class="row">
                                    <div class="col"
                                        style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                        Valor por Unidade Tributável

                                    </div>
                                </div>
    
                                <div class="row" style="padding: 0px; margin: 0px">
                                <div class="col" style="padding: 0px; margin: 0px">
                                    <asp:TextBox ID="vunid" runat="server" CssClass="layouttexto"
                                        Style="width: 170px;" onBlur="SetTextIn(this,0);SetDiv('div_imposto_produtos_industrializados',0)"
    onFocus="SetTextIn(this,1);SetDiv('div_imposto_produtos_industrializados',1)">
                                    </asp:TextBox>
                                </div>
                             </div>   
                            </div>
                        </div>
                    </div>
                    

                    <!--/////////////////////////////////////////////////// Container - Código da situação tributária IPI -  /////////////////////////////////////////////////////////////////////////////////////////////-->
               
                
                    <div class="col-xl-6"
                        style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">
    
                        <div class="row" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">
    
                            <div class="col-md-6" style="width: 100%; height: 100%; background-color: transparent; padding: 20px;">
    
    
                                <div class="row">
                                    <div class="col"
                                        style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                        Valor IPI
                                    </div>
                                </div>
    
                                <div class="row" style="padding: 0px; margin: 0px">
                                <div class="col" style="padding: 0px; margin: 0px">
                                    <asp:TextBox ID="vipi" runat="server" CssClass="layouttexto"
                                        Style="width: 100px;" onBlur="SetTextIn(this,0);SetDiv('div_imposto_produtos_industrializados',0)"
    onFocus="SetTextIn(this,1);SetDiv('div_imposto_produtos_industrializados',1)">
                                    </asp:TextBox>
                                </div>
                             </div>   
                            </div>

                            
                        </div>
                    </div>
                    
                </div>



            </div>
    </div>
    </div>


                      
        

                   <!--///////////////////////////////////////////////////   Container -Imposto de Importação /////////////////////////////////////////////////////////////////////////////////////////////-->


       <div class="container-fluid" style="padding: 0px; margin: 0px; width: 100%; height: 100%;">


        <div class="row" style="width: 100%; height: 50px"></div>
    
        <div class="row" style="width: 100%; height: 100%; padding: 0px; margin: 0px; background-color: transparent">
    
            <div class="row" style="width: 100%; height: 100%; color: #177CC0; padding-left: 20px; padding-top: 0px; font-family: Arial; font-size: 20px; font-weight: bold; margin-left: 0px">
    
                <div id="i_imposto_importacao_on" name="i_imposto_importacao_on" class="col" align="left" style="display: none; visibility: hidden; font-size: 20px; color: red; margin-right: 20px; border-bottom: none; cursor: pointer" onclick="mostra_div_informacao('div_imposto_importacao','i_imposto_importacao_on','i_imposto_importacao_off',0)"><span style="color: #177CC0; font-family: Arial; font-size: 20px; font-weight: bold;">Impostos de Importação  </span>&nbsp;&nbsp;<i class="fa fa-toggle-on"></i></div>
                <div id="i_imposto_importacao_off" name="i_imposto_importacao_off" class="col" align="left" style="display: block; visibility: visible; font-size: 20px; color: red; margin-right: 20px; border-bottom: solid; border-color: #767676; border-width: 1px; cursor: pointer" onclick="mostra_div_informacao('div_imposto_importacao','i_imposto_importacao_on','i_imposto_importacao_off',1)"><span style="color: #177CC0; font-family: Arial; font-size: 20px; font-weight: bold;">Impostos de Importação  </span>&nbsp;&nbsp;<i class="fa fa-toggle-off"></i></div>
    
    
            </div>
    
            <div class="row" style="width: 100%; height: 20px"></div>
    
    
            <div id="div_imposto_importacao" name="div_imposto_importacao"
                style="display: none; visibility: visible; width: 100%; height: 100%; background-color: transparent; margin-left: 20px; margin-right: 20px; border: solid; border-color: #177CC0; border-width: 1px; border-radius: 10px; padding: 0 20px 20px 20px;">
    
    
    
                <div class="row"
                    style="width: 100%; padding: 0px; margin: 0px; background-color: transparent; height: 100%; padding: 0px; margin: 0px">
    
    
                    <!--///////////////////////////////////////////////////  Container -  LINHA LADO ESQUERDO - Valor da BC do Imposto de Importação -  Valor despesas aduaneiras /////////////////////////////////////////////////////////////////////////////////////////////-->
                    <div class="col-xl-6"
                        style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">
    
                        <div class="row" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">
    
                            <div class="col-md-6" style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">
    
    
                                <div class="row">
                                    <div class="col"
                                        style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                       Valor da BC do Imposto de Importação
                                    </div>
                                </div>
    
                                <div class="row" style="padding: 0px; margin: 0px">
                                    <div class="col" style="padding: 0px; margin: 0px">
                                        <asp:TextBox ID="TextBox129" runat="server" CssClass="layouttexto"
                                            Style="width: 50%; padding: 0px; margin: 0px"
                                            onBlur="SetTextIn(this,0);SetDiv('div_imposto_importacao',0)"
                                                onFocus="SetTextIn(this,1);SetDiv('div_imposto_importacao',1)">
    
                                        </asp:TextBox>
                                    </div>
                                </div>
    
                            </div>
    
    
                            <div class=" col-md-6"
                                style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">
                                <div class="row">
                                    <div class="col"
                                        style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                        Valor despesas aduaneiras 
                                    </div>
                                </div>
                                <div class="row" style="padding: 0px; margin: 0px">
                                    <div class="col" style="padding: 0px; margin: 0px">
                                        <asp:TextBox ID="TextBox130" runat="server" CssClass="layouttexto"
                                            Style="width: 50%;" onBlur="SetTextIn(this,0);SetDiv('div_imposto_importacao',0)"
                                            onFocus="SetTextIn(this,1);SetDiv('div_imposto_importacao',1)">
                                        </asp:TextBox>
                                    </div>
                                </div>
                            </div>
    
    
                        </div>
    
                    </div>
                    <!--/////////////////////////////////////////////////// Container LINHA LADO DIREITO - Valor Imposto de Importação / Valor Imposto sobre Operações Financeiras/////////////////////////////////////////////////////////////////////////////////////////////-->
                    <div class="col-xl-6"
                        style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px;">
    
                        <div class="row"
                            style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">
    
                            <div class="col-md-6"
                                style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-left: 15px; padding-top: 10px; padding-right: 12px">
                                <div class="row">
                                    <div class="col"
                                        style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                        Valor Imposto de Importação
                                    </div>
                                </div>
                                <div class="row" style="padding: 0px; margin: 0px">
                                    <div class="col" style="padding: 0px; margin: 0px">
                                        <asp:TextBox ID="TextBox131" runat="server" CssClass="layouttexto"
                                            Style="width: 50%;" onBlur="SetTextIn(this,0);SetDiv('div_imposto_importacao',0)"
                                            onFocus="SetTextIn(this,1);SetDiv('div_imposto_importacao',1)">
                                        </asp:TextBox>
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-6"
                            style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-left: 15px; padding-top: 10px; padding-right: 12px">
                            <div class="row">
                                <div class="col"
                                    style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                    Valor Imposto sobre Operações Financeiras
                                </div>
                            </div>
                            <div class="row" style="padding: 0px; margin: 0px">
                                <div class="col" style="padding: 0px; margin: 0px">
                                    <asp:TextBox ID="TextBox132" runat="server" CssClass="layouttexto"
                                        Style="width: 50%;" onBlur="SetTextIn(this,0);SetDiv('div_imposto_importacao',0)"
                                         onFocus="SetTextIn(this,1);SetDiv('div_imposto_importacao',1)">
                                    </asp:TextBox>
                                </div>
                            </div>
                        </div>
    
                        </div>
                    </div>
                </div>
               
                
                    </div>
                </div>
            </div>
                   <!--///////////////////////////////////////////////////   Container - QPIS/////////////////////////////////////////////////////////////////////////////////////////////-->


       <div class="container-fluid" style="padding: 0px; margin: 0px; width: 100%; height: 100%;">


        <div class="row" style="width: 100%; height: 50px"></div>
    
        <div class="row" style="width: 100%; height: 100%; padding: 0px; margin: 0px; background-color: transparent">
    
            <div class="row" style="width: 100%; height: 100%; color: #177CC0; padding-left: 20px; padding-top: 0px; font-family: Arial; font-size: 20px; font-weight: bold; margin-left: 0px">
    
                <div id="i_qpis_on" name="i_qpis_on" class="col" align="left" style="display: none; visibility: hidden; font-size: 20px; color: red; margin-right: 20px; border-bottom: none; cursor: pointer" onclick="mostra_div_informacao('div_qpis','i_qpis_on','i_qpis_off',0)"><span style="color: #177CC0; font-family: Arial; font-size: 20px; font-weight: bold;">Q.PIS  </span>&nbsp;&nbsp;<i class="fa fa-toggle-on"></i></div>
                <div id="i_qpis_off" name="i_qpis_off" class="col" align="left" style="display: block; visibility: visible; font-size: 20px; color: red; margin-right: 20px; border-bottom: solid; border-color: #767676; border-width: 1px; cursor: pointer" onclick="mostra_div_informacao('div_qpis','i_qpis_on','i_qpis_off',1)"><span style="color: #177CC0; font-family: Arial; font-size: 20px; font-weight: bold;">Q.PIS  </span>&nbsp;&nbsp;<i class="fa fa-toggle-off"></i></div>
    
    
            </div>
    
            <div class="row" style="width: 100%; height: 20px"></div>
    
    
            <div id="div_qpis" name="div_qpis"
                style="display: none; visibility: visible; width: 100%; height: 100%; background-color: transparent; margin-left: 20px; margin-right: 20px; border: solid; border-color: #177CC0; border-width: 1px; border-radius: 10px; padding: 0 20px 20px 20px;">
    
    
    
                <div class="row"
                    style="width: 100%; padding: 0px; margin: 0px; background-color: transparent; height: 100%; padding: 0px; margin: 0px">
    
    
                    <!--///////////////////////////////////////////////////  Container -  LINHA LADO ESQUERDO - Código de Situação Tributária do PIS  -  Valor do PIS /////////////////////////////////////////////////////////////////////////////////////////////-->
                    <div class="col-xl-6"
                        style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">
    
                        <div class="row" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">
    
                            <div class="col-md-6" style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">
    
    
                                <div class="row">
                                    <div class="col"
                                        style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                         CST do PIS  &nbsp &nbsp <img alt="" src="../Imagens/ihelp.png"  style="width: 20px; height: 21px; cursor:pointer" onclick="anima_informacao(1,'qpis')" />
                                    </div>
                                </div>
    
                                <div class="row" style="padding: 0px; margin: 0px">
                                    <div class="col" style="padding: 0px; margin: 0px">
                                        <asp:DropDownList ID="DropDownList14" CssClass="layouttexto" runat="server" onBlur="SetTextIn(this,0);SetDiv('div_qpis',0)"
                                                onFocus="SetTextIn(this,1);SetDiv('div_qpis',1)" >
                                            <asp:ListItem style="width: 100%;" Text="01" Value="1" />
                                            <asp:ListItem style="width: 100%;" Text="02" Value="2" />  
                                        </asp:DropDownList>
                                    </div>
                                </div>
    
                            </div>
    
    
                            <div class=" col-md-6"
                                style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">
                                <div class="row">
                                    <div class="col"
                                        style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                        Valor do PIS  
                                    </div>
                                </div>
                                <div class="row" style="padding: 0px; margin: 0px">
                                    <div class="col" style="padding: 0px; margin: 0px">
                                        <asp:TextBox ID="TextBox134" runat="server" CssClass="layouttexto"
                                            Style="width: 170px;" onBlur="SetTextIn(this,0);SetDiv('div_qpis',0)"
                                                onFocus="SetTextIn(this,1);SetDiv('div_qpis',1)" >
                                        </asp:TextBox>
                                    </div>
                                </div>
                            </div>
    
    
                        </div>
    
                    </div>
                    <!--/////////////////////////////////////////////////// Container LINHA LADO DIREITO -  Valor da Base de Cálculo do PIS  /Alíquota do PIS(%)/////////////////////////////////////////////////////////////////////////////////////////////-->
                    <div class="col-xl-6"
                        style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px;">
    
                        <div class="row"
                            style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">
    
                            <div class="col-md-6"
                                style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-left: 15px; padding-top: 10px; padding-right: 12px">
                                <div class="row">
                                    <div class="col"
                                        style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                         Valor da Base de Cálculo do PIS
                                    </div>
                                </div>
                                <div class="row" style="padding: 0px; margin: 0px">
                                    <asp:TextBox ID="TextBox133" runat="server" CssClass="layouttexto"
                                        Style="width: 130px;" onBlur="SetTextIn(this,0);SetDiv('div_qpis',0)"
                                                onFocus="SetTextIn(this,1);SetDiv('div_qpis',1)" >
                                    </asp:TextBox>
                                </div>
                            </div>

                            <div class="col-md-6"
                            style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-left: 15px; padding-top: 10px; padding-right: 12px">
                            <div class="row">
                                <div class="col"
                                    style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                    Alíquota do PIS(%)
                                </div>
                            </div>
                            <div class="row" style="padding: 0px; margin: 0px">
                                <div class="col" style="padding: 0px; margin: 0px">
                                    <asp:TextBox ID="TextBox136" runat="server" CssClass="layouttexto"
                                        Style="width: 130px;" onBlur="SetTextIn(this,0);SetDiv('div_qpis',0)"
                                                onFocus="SetTextIn(this,1);SetDiv('div_qpis',1)" >
                                    </asp:TextBox>
                                </div>
                            </div>
                        </div>
    
                        </div>
                    </div>
                </div>
            </div>
        </div>
     </div>

                                   <!--///////////////////////////////////////////////////   Container - Grupo PIS tributado por QTde /////////////////////////////////////////////////////////////////////////////////////////////-->


                       <div class="container-fluid" style="padding: 0px; margin: 0px; width: 100%; height: 100%;">


                        <div class="row" style="width: 100%; height: 50px"></div>
                    
                        <div class="row" style="width: 100%; height: 100%; padding: 0px; margin: 0px; background-color: transparent">
                    
                            <div class="row" style="width: 100%; height: 100%; color: #177CC0; padding-left: 20px; padding-top: 0px; font-family: Arial; font-size: 20px; font-weight: bold; margin-left: 0px">
                    
                                <div id="i_pis_qtde_on" name="i_pis_qtde_on" class="col" align="left" style="display: none; visibility: hidden; font-size: 20px; color: red; margin-right: 20px; border-bottom: none; cursor: pointer" onclick="mostra_div_informacao('div_pis_qtde','i_pis_qtde_on','i_pis_qtde_off',0)"><span style="color: #177CC0; font-family: Arial; font-size: 20px; font-weight: bold;">Grupo PIS tributado por QTde</span>&nbsp;&nbsp;<i class="fa fa-toggle-on"></i></div>
                                <div id="i_pis_qtde_off" name="i_pis_qtde_off" class="col" align="left" style="display: block; visibility: visible; font-size: 20px; color: red; margin-right: 20px; border-bottom: solid; border-color: #767676; border-width: 1px; cursor: pointer" onclick="mostra_div_informacao('div_pis_qtde','i_pis_qtde_on','i_pis_qtde_off',1)"><span style="color: #177CC0; font-family: Arial; font-size: 20px; font-weight: bold;"> Grupo PIS tributado por QTde </span>&nbsp;&nbsp;<i class="fa fa-toggle-off"></i></div>
                    
                    
                            </div>
                    
                            <div class="row" style="width: 100%; height: 20px"></div>
                    
                    
                            <div id="div_pis_qtde" name="div_pis_qtde"
                                style="display: none; visibility: visible; width: 100%; height: 100%; background-color: transparent; margin-left: 20px; margin-right: 20px; border: solid; border-color: #177CC0; border-width: 1px; border-radius: 10px; padding: 0 20px 20px 20px;">
                    
                    
                    
                                <div class="row"
                                    style="width: 100%; padding: 0px; margin: 0px; background-color: transparent; height: 100%; padding: 0px; margin: 0px">
                    
                    
                                    <!--///////////////////////////////////////////////////  Container -  LINHA LADO ESQUERDO   CST do PIS  -   Alíquota do PIS(em reais)  /////////////////////////////////////////////////////////////////////////////////////////////-->
                                    <div class="col-xl-6"
                                        style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">
                    
                                        <div class="row" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">
                    
                                            <div class="col-md-6" style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">
                    
                    
                                                <div class="row">
                                                    <div class="col"
                                                        style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                                        CST do PIS&nbsp &nbsp <img alt="" src="../Imagens/ihelp.png"  style="width: 20px; height: 21px; cursor:pointer" onclick="anima_informacao(1,'qpisqtde')" />  
                                                    </div>
                                                </div>
                    
                                                <div class="row" style="padding: 0px; margin: 0px">
                                                    <div class="col" style="padding: 0px; margin: 0px">
                                                        <asp:DropDownList ID="DropDownList17" CssClass="layouttexto" runat="server" onBlur="SetTextIn(this,0);SetDiv('div_pis_qtde',0)"
                                                onFocus="SetTextIn(this,1);SetDiv('div_pis_qtde',1)">
                                                            <asp:ListItem style="width: 100%;" Text="03" Value="1" />
                                                        </asp:DropDownList>
                                                    </div>
                                                </div>
                    
                                            </div>
                    
                    
                                            <div class=" col-md-6"
                                                style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">
                                                <div class="row">
                                                    <div class="col"
                                                        style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                                        Alíquota do PIS(em reais)  
                                                    </div>
                                                </div>
                                                <div class="row" style="padding: 0px; margin: 0px">
                                                    <div class="col" style="padding: 0px; margin: 0px">
                                                        <asp:TextBox ID="TextBox135" runat="server" CssClass="layouttexto"
                                                            Style="width: 100px;" onBlur="SetTextIn(this,0);SetDiv('div_pis_qtde',0)"
                                                onFocus="SetTextIn(this,1);SetDiv('div_pis_qtde',1)">
                                                        </asp:TextBox>
                                                    </div>
                                                </div>
                                            </div>
                    
                    
                                        </div>
                    
                                    </div>
                                    
                 <!--///////////////////////////////////////////////////  Container -  LINHA LADO ESQUERDO  Quantidade Vendida  -   Valor do PIS  /////////////////////////////////////////////////////////////////////////////////////////////-->
                              
                    
                                    <div class="col-xl-6"
                                        style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">
                    
                                        <div class="row" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">
                    
                                            <div class="col-md-6" style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">
                    
                    
                                                <div class="row">
                                                    <div class="col"
                                                        style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                                        Quantidade Vendida
                                                    </div>
                                                </div>
                    
                                                <div class="row" style="padding: 0px; margin: 0px">
                                                    <div class="col" style="padding: 0px; margin: 0px">
                                                        <asp:TextBox ID="TextBox137" runat="server" CssClass="layouttexto"
                                                            Style="width: 45%; padding: 0px; margin: 0px"
                                                            onBlur="SetTextIn(this,0);SetDiv('div_pis_qtde',0)"
                                                onFocus="SetTextIn(this,1);SetDiv('div_pis_qtde',1)">
                    
                                                        </asp:TextBox>
                                                    </div>
                                                </div>
                    
                                            </div>
                    
                    
                                            <div class=" col-md-6"
                                                style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">
                                                <div class="row">
                                                    <div class="col"
                                                        style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                                        Valor do PIS
                                                    </div>
                                                </div>
                                                <div class="row" style="padding: 0px; margin: 0px">
                                                    <div class="col" style="padding: 0px; margin: 0px">
                                                        <asp:TextBox ID="TextBox167" runat="server" CssClass="layouttexto"
                                                            Style="width: 50%;" onBlur="SetTextIn(this,0);SetDiv('div_pis_qtde',0)"
                                                onFocus="SetTextIn(this,1);SetDiv('div_pis_qtde',1)">
                                                        </asp:TextBox>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                        </div>
                    </div>
                </div>

            <!--///////////////////////////////////////////////////   Container - Grupo PIS não tributado /////////////////////////////////////////////////////////////////////////////////////////////-->


            <div class="container-fluid" style="padding: 0px; margin: 0px; width: 100%; height: 100%;">


                <div class="row" style="width: 100%; height: 50px"></div>

                <div class="row" style="width: 100%; height: 100%; padding: 0px; margin: 0px; background-color: transparent">

                    <div class="row"
                        style="width: 100%; height: 100%; color: #177CC0; padding-left: 20px; padding-top: 0px; font-family: Arial; font-size: 20px; font-weight: bold; margin-left: 0px">

                        <div id="i_pis_nao_tributado_on" name="i_pis_nao_tributado_on" class="col" align="left"
                            style="display: none; visibility: hidden; font-size: 20px; color: red; margin-right: 20px; border-bottom: none; cursor: pointer"
                            onclick="mostra_div_informacao('div_pis_nao_tributado','i_pis_nao_tributado_on','i_pis_nao_tributado_off',0)">
                            <span
                                style="color: #177CC0; font-family: Arial; font-size: 20px; font-weight: bold;">Grupo PIS não tributado
                            </span>&nbsp;&nbsp;<i class="fa fa-toggle-on"></i>
                        </div>
                        <div id="i_pis_nao_tributado_off" name="i_pis_nao_tributado_off" class="col" align="left"
                            style="display: block; visibility: visible; font-size: 20px; color: red; margin-right: 20px; border-bottom: solid; border-color: #767676; border-width: 1px; cursor: pointer"
                            onclick="mostra_div_informacao('div_pis_nao_tributado','i_pis_nao_tributado_on','i_pis_nao_tributado_off',1)">
                            <span
                                style="color: #177CC0; font-family: Arial; font-size: 20px; font-weight: bold;">Grupo PIS não tributado
                            </span>&nbsp;&nbsp;<i class="fa fa-toggle-off"></i>
                        </div>


                    </div>

                    <div class="row" style="width: 100%; height: 20px"></div>


                    <div id="div_pis_nao_tributado" name="div_pis_nao_tributado"
                        style="display: none; visibility: visible; width: 100%; height: 100%; background-color: transparent; margin-left: 20px; margin-right: 20px; border: solid; border-color: #177CC0; border-width: 1px; border-radius: 10px; padding: 0 20px 20px 20px;">



                        <div class="row"
                            style="width: 100%; padding: 0px; margin: 0px; background-color: transparent; height: 100%; padding: 0px; margin: 0px">


                            <!--///////////////////////////////////////////////////  Container -  LINHA LADO ESQUERDO   CST do PIS  -   Valor da Base de Cálculo do PIS  /////////////////////////////////////////////////////////////////////////////////////////////-->
                            <div class="col-xl-6"
                                style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

                                <div class="row"
                                    style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

                                    <div class="col-md-7"
                                        style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">


                                        <div class="row">
                                            <div class="col"
                                                style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                                CST do PIS&nbsp &nbsp
                                                <img alt="" src="../Imagens/ihelp.png"
                                                    style="width: 20px; height: 21px; cursor: pointer"
                                                    onclick="anima_informacao(1,'qpisnaotributado')" />
                                            </div>
                                        </div>

                                        <div class="row" style="padding: 0px; margin: 0px">
                                            <div class="col" style="padding: 0px; margin: 0px">
                                                <asp:DropDownList ID="DropDownList21" CssClass="layouttexto" runat="server" onBlur="SetTextIn(this,0);SetDiv('div_pis_nao_tributado',0)"
                                                onFocus="SetTextIn(this,1);SetDiv('div_pis_nao_tributado',1)">
                                                    <asp:ListItem style="width: 100%;" Text="04" Value="4" />
                                                    <asp:ListItem style="width: 100%;" Text="05" Value="5" />
                                                    <asp:ListItem style="width: 100%;" Text="06" Value="6" />
                                                    <asp:ListItem style="width: 100%;" Text="07" Value="7" />
                                                    <asp:ListItem style="width: 100%;" Text="08" Value="8" />
                                                    <asp:ListItem style="width: 100%;" Text="09" Value="9" />
                                                </asp:DropDownList>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>


            <!--///////////////////////////////////////////////////   Container - Grupo PIS Outras Operações /////////////////////////////////////////////////////////////////////////////////////////////-->


            <div class="container-fluid" style="padding: 0px; margin: 0px; width: 100%; height: 100%;">


                <div class="row" style="width: 100%; height: 50px"></div>

                <div class="row" style="width: 100%; height: 100%; padding: 0px; margin: 0px; background-color: transparent">

                    <div class="row"
                        style="width: 100%; height: 100%; color: #177CC0; padding-left: 20px; padding-top: 0px; font-family: Arial; font-size: 20px; font-weight: bold; margin-left: 0px">

                        <div id="i_pis_outras_operacoes_on" name="i_pis_outras_operacoes_on" class="col" align="left"
                            style="display: none; visibility: hidden; font-size: 20px; color: red; margin-right: 20px; border-bottom: none; cursor: pointer"
                            onclick="mostra_div_informacao('div_pis_outras_operacoes','i_pis_outras_operacoes_on','i_pis_outras_operacoes_off',0)">
                            <span
                                style="color: #177CC0; font-family: Arial; font-size: 20px; font-weight: bold;">Grupo PIS Outras Operações
                            </span>&nbsp;&nbsp;<i class="fa fa-toggle-on"></i>
                        </div>
                        <div id="i_pis_outras_operacoes_off" name="i_pis_outras_operacoes_off" class="col" align="left"
                            style="display: block; visibility: visible; font-size: 20px; color: red; margin-right: 20px; border-bottom: solid; border-color: #767676; border-width: 1px; cursor: pointer"
                            onclick="mostra_div_informacao('div_pis_outras_operacoes','i_pis_outras_operacoes_on','i_pis_outras_operacoes_off',1)">
                            <span
                                style="color: #177CC0; font-family: Arial; font-size: 20px; font-weight: bold;">Grupo PIS Outras Operações
                            </span>&nbsp;&nbsp;<i class="fa fa-toggle-off"></i>
                        </div>


                    </div>

                    <div class="row" style="width: 100%; height: 20px"></div>


                    <div id="div_pis_outras_operacoes" name="div_pis_outras_operacoes"
                        style="display: none; visibility: visible; width: 100%; height: 100%; background-color: transparent; margin-left: 20px; margin-right: 20px; border: solid; border-color: #177CC0; border-width: 1px; border-radius: 10px; padding: 0 20px 20px 20px;">



                        <div class="row"
                            style="width: 100%; padding: 0px; margin: 0px; background-color: transparent; height: 100%; padding: 0px; margin: 0px">


                            <!--///////////////////////////////////////////////////  Container -  LINHA LADO ESQUERDO   CST do PIS  -   Valor da Base de Cálculo do PIS  /////////////////////////////////////////////////////////////////////////////////////////////-->
                            <div class="col-xl-6"
                                style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

                                <div class="row"
                                    style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

                                    <div class="col-md-6"
                                        style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">


                                        <div class="row">
                                            <div class="col"
                                                style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                                CST do PIS&nbsp &nbsp
                                                <img alt="" src="../Imagens/ihelp.png"
                                                    style="width: 20px; height: 21px; cursor: pointer"
                                                    onclick="anima_informacao(1,'qpisoutrasoperacoes')" />
                                            </div>
                                        </div>

                                        <div class="row" style="padding: 0px; margin: 0px">
                                            <div class="col" style="padding: 0px; margin: 0px">
                                                <asp:DropDownList ID="DropDownList20" CssClass="layouttexto" runat="server"  onBlur="SetTextIn(this,0);SetDiv('div_pis_outras_operacoes',0)"
                                                onFocus="SetTextIn(this,1);SetDiv('div_pis_outras_operacoes',1)">
                                                    <asp:ListItem style="width: 100%;" Text="49" Value="10" />
                                                    <asp:ListItem style="width: 100%;" Text="50" Value="11" />
                                                    <asp:ListItem style="width: 100%;" Text="51" Value="12" />
                                                    <asp:ListItem style="width: 100%;" Text="52" Value="13" />
                                                    <asp:ListItem style="width: 100%;" Text="53" Value="14" />
                                                    <asp:ListItem style="width: 100%;" Text="54" Value="15" />
                                                    <asp:ListItem style="width: 100%;" Text="55" Value="16" />
                                                    <asp:ListItem style="width: 100%;" Text="56" Value="17" />
                                                    <asp:ListItem style="width: 100%;" Text="57" Value="18" />
                                                    <asp:ListItem style="width: 100%;" Text="58" Value="19" />
                                                    <asp:ListItem style="width: 100%;" Text="59" Value="20" />
                                                    <asp:ListItem style="width: 100%;" Text="60" Value="21" />
                                                    <asp:ListItem style="width: 100%;" Text="61" Value="22" />
                                                    <asp:ListItem style="width: 100%;" Text="62" Value="23" />
                                                    <asp:ListItem style="width: 100%;" Text="63" Value="24" />
                                                    <asp:ListItem style="width: 100%;" Text="64" Value="25" />
                                                    <asp:ListItem style="width: 100%;" Text="65" Value="26" />
                                                    <asp:ListItem style="width: 100%;" Text="66" Value="27" />
                                                    <asp:ListItem style="width: 100%;" Text="67" Value="28" />
                                                    <asp:ListItem style="width: 100%;" Text="70" Value="29" />
                                                    <asp:ListItem style="width: 100%;" Text="71" Value="30" />
                                                    <asp:ListItem style="width: 100%;" Text="72" Value="31" />
                                                    <asp:ListItem style="width: 100%;" Text="73" Value="32" />
                                                    <asp:ListItem style="width: 100%;" Text="74" Value="33" />
                                                    <asp:ListItem style="width: 100%;" Text="75" Value="34" />
                                                    <asp:ListItem style="width: 100%;" Text="98" Value="35" />
                                                    <asp:ListItem style="width: 100%;" Text="99" Value="36" />
                                                </asp:DropDownList>
                                            </div>
                                        </div>

                                    </div>


                                    <div class=" col-md-6"
                                        style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">
                                        <div class="row">
                                            <div class="col"
                                                style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                                Valor da Base de Cálculo do PIS
                                            </div>
                                        </div>
                                        <div class="row" style="padding: 0px; margin: 0px">
                                            <div class="col" style="padding: 0px; margin: 0px">
                                                <asp:TextBox ID="TextBox168" runat="server" CssClass="layouttexto"
                                                    Style="width: 100px;" onBlur="SetTextIn(this,0);SetDiv('div_pis_outras_operacoes',0)"
                                                onFocus="SetTextIn(this,1);SetDiv('div_pis_outras_operacoes',1)">
                                                </asp:TextBox>
                                            </div>
                                        </div>
                                    </div>


                                </div>

                            </div>

                            <!--///////////////////////////////////////////////////  Container -  LINHA LADO DIREITO  Quantidade Vendida  -   Alíquota do PIS(%) /////////////////////////////////////////////////////////////////////////////////////////////-->


                            <div class="col-xl-6"
                                style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

                                <div class="row"
                                    style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

                                    <div class="col-md-6"
                                        style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">


                                        <div class="row">
                                            <div class="col"
                                                style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                                Alíquota do PIS(%)
                                            </div>
                                        </div>

                                        <div class="row" style="padding: 0px; margin: 0px">
                                            <div class="col" style="padding: 0px; margin: 0px">
                                                <asp:TextBox ID="TextBox169" runat="server" CssClass="layouttexto"
                                                    Style="width: 45%; padding: 0px; margin: 0px" onBlur="SetTextIn(this,0);SetDiv('div_pis_outras_operacoes',0)"
                                                onFocus="SetTextIn(this,1);SetDiv('div_pis_outras_operacoes',1)">

                                                </asp:TextBox>
                                            </div>
                                        </div>

                                    </div>


                                    <div class=" col-md-6"
                                        style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">
                                        <div class="row">
                                            <div class="col"
                                                style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                                Quantidade Vendida
                                            </div>
                                        </div>
                                        <div class="row" style="padding: 0px; margin: 0px">
                                            <div class="col" style="padding: 0px; margin: 0px">
                                                <asp:TextBox ID="TextBox170" runat="server" CssClass="layouttexto"
                                                    Style="width: 50%;" onBlur="SetTextIn(this,0);SetDiv('div_pis_outras_operacoes',0)"
                                                onFocus="SetTextIn(this,1);SetDiv('div_pis_outras_operacoes',1)">
                                                </asp:TextBox>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="row"
                            style="width: 100%; padding: 0px; margin: 0px; background-color: transparent; height: 100%; padding: 0px; margin: 0px">


                            <!--///////////////////////////////////////////////////  Container -  LINHA LADO ESQUERDO    -   Alíquota do PIS(em reais)  /////////////////////////////////////////////////////////////////////////////////////////////-->
                            <div class="col-xl-6"
                                style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

                                <div class="row"
                                    style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

                                    <div class="col-md-6"
                                        style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">


                                        <div class="row">
                                            <div class="col"
                                                style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                                Alíquota do PIS(em reais)
                                            </div>
                                        </div>

                                        <div class="row" style="padding: 0px; margin: 0px">
                                            <div class="col" style="padding: 0px; margin: 0px">
                                                <asp:TextBox ID="TextBox171" runat="server" CssClass="layouttexto"
                                                    Style="width: 100px;" onBlur="SetTextIn(this,0);SetDiv('div_pis_outras_operacoes',0)"
                                                onFocus="SetTextIn(this,1);SetDiv('div_pis_outras_operacoes',1)">
                                                </asp:TextBox>
                                            </div>
                                        </div>

                                    </div>


                                    <div class=" col-md-6"
                                        style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">
                                        <div class="row">
                                            <div class="col"
                                                style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                                Valor do PIS
                                            </div>
                                        </div>
                                        <div class="row" style="padding: 0px; margin: 0px">
                                            <div class="col" style="padding: 0px; margin: 0px">
                                                <asp:TextBox ID="TextBox172" runat="server" CssClass="layouttexto"
                                                    Style="width: 100px;" onBlur="SetTextIn(this,0);SetDiv('div_pis_outras_operacoes',0)"
                                                onFocus="SetTextIn(this,1);SetDiv('div_pis_outras_operacoes',1)">
                                                </asp:TextBox>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    </div>
                       <!--///////////////////////////////////////////////////   Container -PIS ST /////////////////////////////////////////////////////////////////////////////////////////////-->


       <div class="container-fluid" style="padding: 0px; margin: 0px; width: 100%; height: 100%;">


        <div class="row" style="width: 100%; height: 50px"></div>
    
        <div class="row" style="width: 100%; height: 100%; padding: 0px; margin: 0px; background-color: transparent">
    
            <div class="row" style="width: 100%; height: 100%; color: #177CC0; padding-left: 20px; padding-top: 0px; font-family: Arial; font-size: 20px; font-weight: bold; margin-left: 0px">
    
                <div id="i_pis_st_on" name="i_pis_st_on" class="col" align="left" style="display: none; visibility: hidden; font-size: 20px; color: red; margin-right: 20px; border-bottom: none; cursor: pointer" onclick="mostra_div_informacao('div_pis_st','i_pis_st_on','i_pis_st_off',0)"><span style="color: #177CC0; font-family: Arial; font-size: 20px; font-weight: bold;">PIS ST</span>&nbsp;&nbsp;<i class="fa fa-toggle-on"></i></div>
                <div id="i_pis_st_off" name="i_pis_st_off" class="col" align="left" style="display: block; visibility: visible; font-size: 20px; color: red; margin-right: 20px; border-bottom: solid; border-color: #767676; border-width: 1px; cursor: pointer" onclick="mostra_div_informacao('div_pis_st','i_pis_st_on','i_pis_st_off',1)"><span style="color: #177CC0; font-family: Arial; font-size: 20px; font-weight: bold;"> PIS ST </span>&nbsp;&nbsp;<i class="fa fa-toggle-off"></i></div>
    
    
            </div>
    
            <div class="row" style="width: 100%; height: 20px"></div>
    
    
            <div id="div_pis_st" name="div_pis_st"
                style="display: none; visibility: visible; width: 100%; height: 100%; background-color: transparent; margin-left: 20px; margin-right: 20px; border: solid; border-color: #177CC0; border-width: 1px; border-radius: 10px; padding: 0 20px 20px 20px;">
    
    
    
                <div class="row"
                    style="width: 100%; padding: 0px; margin: 0px; background-color: transparent; height: 100%; padding: 0px; margin: 0px">
    
    
                    <!--///////////////////////////////////////////////////  Container -  LINHA LADO ESQUERDO  Valor da Base de Cálculo do PIS  -   Alíquota do PIS(em reais)  /////////////////////////////////////////////////////////////////////////////////////////////-->
                    <div class="col-xl-6"
                        style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">
    
                        <div class="row" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">
    
                            <div class="col-md-7" style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">
    
    
                                <div class="row">
                                    <div class="col"
                                        style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                        Valor da Base de Cálculo do PIS(%)  
                                    </div>
                                </div>
    
                                <div class="row" style="padding: 0px; margin: 0px">
                                    <div class="col" style="padding: 0px; margin: 0px">
                                        <asp:TextBox ID="TextBox138" runat="server" CssClass="layouttexto"
                                            Style="width: 40%; padding: 0px; margin: 0px"
                                            onBlur="SetTextIn(this,0);SetDiv('div_pis_st',0)"
                                                onFocus="SetTextIn(this,1);SetDiv('div_pis_st',1)">
    
                                        </asp:TextBox>
                                    </div>
                                </div>
    
                            </div>
    
    
                            <div class=" col-md-5"
                                style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">
                                <div class="row">
                                    <div class="col"
                                        style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                        Alíquota do PIS(%)  
                                    </div>
                                </div>
                                <div class="row" style="padding: 0px; margin: 0px">
                                    <div class="col" style="padding: 0px; margin: 0px">
                                        <asp:TextBox ID="TextBox139" runat="server" CssClass="layouttexto"
                                            Style="width: 100px;" onBlur="SetTextIn(this,0);SetDiv('div_pis_st',0)"
    onFocus="SetTextIn(this,1);SetDiv('div_pis_st',1)">
                                        </asp:TextBox>
                                    </div>
                                </div>
                            </div>
    
    
                        </div>
    
                    </div>
                    
 <!--///////////////////////////////////////////////////  Container -  LINHA LADO ESQUERDO  Valor da Base de Cálculo do PIS  -   Alíquota do PIS(em reais)  /////////////////////////////////////////////////////////////////////////////////////////////-->
              
    
                    <div class="col-xl-6"
                        style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">
    
                        <div class="row" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">
    
                            <div class="col-md-7" style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">
    
    
                                <div class="row">
                                    <div class="col"
                                        style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                        Quantidade Vendida
                                    </div>
                                </div>
    
                                <div class="row" style="padding: 0px; margin: 0px">
                                    <div class="col" style="padding: 0px; margin: 0px">
                                        <asp:TextBox ID="TextBox140" runat="server" CssClass="layouttexto"
                                            Style="width: 45%; padding: 0px; margin: 0px"
                                            onBlur="SetTextIn(this,0);SetDiv('div_pis_st',0)"
    onFocus="SetTextIn(this,1);SetDiv('div_pis_st',1)">
    
                                        </asp:TextBox>
                                    </div>
                                </div>
    
                            </div>
    
    
                            <div class=" col-md-5"
                                style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">
                                <div class="row">
                                    <div class="col"
                                        style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                        Alíquota do PIS(em reias)  
                                    </div>
                                </div>
                                <div class="row" style="padding: 0px; margin: 0px">
                                    <div class="col" style="padding: 0px; margin: 0px">
                                        <asp:TextBox ID="TextBox141" runat="server" CssClass="layouttexto"
                                            Style="width: 50%;" onBlur="SetTextIn(this,0);SetDiv('div_pis_st',0)"
    onFocus="SetTextIn(this,1);SetDiv('div_pis_st',1)">
                                        </asp:TextBox>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    
                </div>
                
 <!--///////////////////////////////////////////////////  Container -  LINHA LADO ESQUERDO  Valor da Base de Cálculo do PIS  -   Alíquota do PIS(em reais)  /////////////////////////////////////////////////////////////////////////////////////////////-->
                <div class="row"
                style="width: 100%; padding: 0px; margin: 0px; background-color: transparent; height: 100%; padding: 0px; margin: 0px">
               
                <div class="col-xl-12"
                    style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

                    <div class="row" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

                        <div class="col-md-12" style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">


                            <div class="row">
                                <div class="col"
                                    style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                   Valor do PIS
                                </div>
                            </div>

                            <div class="row" style="padding: 0px; margin: 0px">
                                <div class="col" style="padding: 0px; margin: 0px">
                                    <asp:TextBox ID="TextBox142" runat="server" CssClass="layouttexto"
                                        Style="width: 200px; padding: 0px; margin: 0px"
                                        onBlur="SetTextIn(this,0);SetDiv('div_pis_st',0)"
    onFocus="SetTextIn(this,1);SetDiv('div_pis_st',1)">

                                    </asp:TextBox>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </div>
</div>

                                      <!--///////////////////////////////////////////////////   Container - COFINS/////////////////////////////////////////////////////////////////////////////////////////////-->


              <div class="container-fluid" style="padding: 0px; margin: 0px; width: 100%; height: 100%;">


                <div class="row" style="width: 100%; height: 50px"></div>
                 
                <div class="row" style="width: 100%; height: 100%; padding: 0px; margin: 0px; background-color: transparent">
                 
                    <div class="row" style="width: 100%; height: 100%; color: #177CC0; padding-left: 20px; padding-top: 0px; font-family: Arial; font-size: 20px; font-weight: bold; margin-left: 0px">
                 
                        <div id="i_cofins_on" name="i_cofins_on" class="col" align="left" style="display: none; visibility: hidden; font-size: 20px; color: red; margin-right: 20px; border-bottom: none; cursor: pointer" onclick="mostra_div_informacao('div_cofins','i_cofins_on','i_cofins_off',0)"><span style="color: #177CC0; font-family: Arial; font-size: 20px; font-weight: bold;">Cofins  </span>&nbsp;&nbsp;<i class="fa fa-toggle-on"></i></div>
                        <div id="i_cofins_off" name="i_cofins_off" class="col" align="left" style="display: block; visibility: visible; font-size: 20px; color: red; margin-right: 20px; border-bottom: solid; border-color: #767676; border-width: 1px; cursor: pointer" onclick="mostra_div_informacao('div_cofins','i_cofins_on','i_cofins_off',1)"><span style="color: #177CC0; font-family: Arial; font-size: 20px; font-weight: bold;">Cofins  </span>&nbsp;&nbsp;<i class="fa fa-toggle-off"></i></div>
                 
                 
                    </div>
                 
                    <div class="row" style="width: 100%; height: 20px"></div>
                 
                 
                    <div id="div_cofins" name="div_cofins"
                        style="display: none; visibility: visible; width: 100%; height: 100%; background-color: transparent; margin-left: 20px; margin-right: 20px; border: solid; border-color: #177CC0; border-width: 1px; border-radius: 10px; padding: 0 20px 20px 20px;">
                 
                 
                 
                        <div class="row"
                            style="width: 100%; padding: 0px; margin: 0px; background-color: transparent; height: 100%; padding: 0px; margin: 0px">
                 
                 
                            <!--///////////////////////////////////////////////////  Container -  LINHA LADO ESQUERDO - Código de Situação Tributária do COFINS  -  Valor do COFINS /////////////////////////////////////////////////////////////////////////////////////////////-->
                            <div class="col-xl-6"
                                style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">
                 
                                <div class="row" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">
                 
                                    <div class="col-md-6" style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">
                 
                 
                                        <div class="row">
                                            <div class="col"
                                                style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                                 CST do COFINS  &nbsp &nbsp <img alt="" src="../Imagens/ihelp.png"  style="width: 20px; height: 21px; cursor:pointer" onclick="anima_informacao(1,'qpis')" />
                                            </div>
                                        </div>
                 
                                        <div class="row" style="padding: 0px; margin: 0px">
                                            <div class="col" style="padding: 0px; margin: 0px">
                                                <asp:DropDownList ID="DropDownList15" CssClass="layouttexto" runat="server" onBlur="SetTextIn(this,0);SetDiv('div_cofins',0)"
                                                onFocus="SetTextIn(this,1);SetDiv('div_cofins',1)">
                                                    <asp:ListItem style="width: 100%;" Text="01" Value="1" />
                                                    <asp:ListItem style="width: 100%;" Text="02" Value="2" />  
                                                </asp:DropDownList>
                                            </div>
                                        </div>
                 
                                    </div>
                 
                 
                                    <div class=" col-md-6"
                                        style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">
                                        <div class="row">
                                            <div class="col"
                                                style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                                Valor do COFINS  
                                            </div>
                                        </div>
                                        <div class="row" style="padding: 0px; margin: 0px">
                                            <div class="col" style="padding: 0px; margin: 0px">
                                                <asp:TextBox ID="TextBox143" runat="server" CssClass="layouttexto"
                                                    Style="width: 170px;" onBlur="SetTextIn(this,0);SetDiv('div_cofins',0)"
                                                onFocus="SetTextIn(this,1);SetDiv('div_cofins',1)">
                                                </asp:TextBox>
                                            </div>
                                        </div>
                                    </div>
                 
                 
                                </div>
                 
                            </div>
                            <!--/////////////////////////////////////////////////// Container LINHA LADO DIREITO -  Valor da Base de Cálculo do COFINS  /Alíquota do COFINS(%)/////////////////////////////////////////////////////////////////////////////////////////////-->
                            <div class="col-xl-6"
                                style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px;">
                 
                                <div class="row"
                                    style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">
                 
                                    <div class="col-md-6"
                                        style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-left: 15px; padding-top: 10px; padding-right: 12px">
                                        <div class="row">
                                            <div class="col"
                                                style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                                 Valor da Base de Cálculo da COFINS
                                            </div>
                                        </div>
                                        <div class="row" style="padding: 0px; margin: 0px">
                                            <asp:TextBox ID="TextBox144" runat="server" CssClass="layouttexto"
                                                Style="width: 130px;" onBlur="SetTextIn(this,0);SetDiv('div_cofins',0)"
                                                onFocus="SetTextIn(this,1);SetDiv('div_cofins',1)">
                                            </asp:TextBox>
                                        </div>
                                    </div>
             
                                    <div class="col-md-6"
                                    style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-left: 15px; padding-top: 10px; padding-right: 12px">
                                    <div class="row">
                                        <div class="col"
                                            style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                            Alíquota do COFINS(%)
                                        </div>
                                    </div>
                                    <div class="row" style="padding: 0px; margin: 0px">
                                        <div class="col" style="padding: 0px; margin: 0px">
                                            <asp:TextBox ID="TextBox145" runat="server" CssClass="layouttexto"
                                                Style="width: 130px;" onBlur="SetTextIn(this,0);SetDiv('div_cofins',0)"
                                                onFocus="SetTextIn(this,1);SetDiv('div_cofins',1)">
                                            </asp:TextBox>
                                        </div>
                                    </div>
                                </div>
                 
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
             </div>
             
                                           <!--///////////////////////////////////////////////////   Container - Grupo COFINS tributado por QTde /////////////////////////////////////////////////////////////////////////////////////////////-->
             
             
                               <div class="container-fluid" style="padding: 0px; margin: 0px; width: 100%; height: 100%;">
             
             
                                <div class="row" style="width: 100%; height: 50px"></div>
                            
                                <div class="row" style="width: 100%; height: 100%; padding: 0px; margin: 0px; background-color: transparent">
                            
                                    <div class="row" style="width: 100%; height: 100%; color: #177CC0; padding-left: 20px; padding-top: 0px; font-family: Arial; font-size: 20px; font-weight: bold; margin-left: 0px">
                            
                                        <div id="i_cofins_qtde_on" name="i_cofins_qtde_on" class="col" align="left" style="display: none; visibility: hidden; font-size: 20px; color: red; margin-right: 20px; border-bottom: none; cursor: pointer" onclick="mostra_div_informacao('div_cofins_qtde','i_cofins_qtde_on','i_cofins_qtde_off',0)"><span style="color: #177CC0; font-family: Arial; font-size: 20px; font-weight: bold;">Grupo COFINS tributado por QTde</span>&nbsp;&nbsp;<i class="fa fa-toggle-on"></i></div>
                                        <div id="i_cofins_qtde_off" name="i_cofins_qtde_off" class="col" align="left" style="display: block; visibility: visible; font-size: 20px; color: red; margin-right: 20px; border-bottom: solid; border-color: #767676; border-width: 1px; cursor: pointer" onclick="mostra_div_informacao('div_cofins_qtde','i_cofins_qtde_on','i_cofins_qtde_off',1)"><span style="color: #177CC0; font-family: Arial; font-size: 20px; font-weight: bold;"> Grupo COFINS tributado por QTde </span>&nbsp;&nbsp;<i class="fa fa-toggle-off"></i></div>
                            
                            
                                    </div>
                            
                                    <div class="row" style="width: 100%; height: 20px"></div>
                            
                            
                                    <div id="div_cofins_qtde" name="div_cofins_qtde"
                                        style="display: none; visibility: visible; width: 100%; height: 100%; background-color: transparent; margin-left: 20px; margin-right: 20px; border: solid; border-color: #177CC0; border-width: 1px; border-radius: 10px; padding: 0 20px 20px 20px;">
                            
                            
                            
                                        <div class="row"
                                            style="width: 100%; padding: 0px; margin: 0px; background-color: transparent; height: 100%; padding: 0px; margin: 0px">
                            
                            
                                            <!--///////////////////////////////////////////////////  Container -  LINHA LADO ESQUERDO   CST do COFINS  -   Alíquota do COFINS(em reais)  /////////////////////////////////////////////////////////////////////////////////////////////-->
                                            <div class="col-xl-6"
                                                style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">
                            
                                                <div class="row" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">
                            
                                                    <div class="col-md-6" style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">
                            
                            
                                                        <div class="row">
                                                            <div class="col"
                                                                style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                                                CST do COFINS&nbsp &nbsp <img alt="" src="../Imagens/ihelp.png"  style="width: 20px; height: 21px; cursor:pointer" onclick="anima_informacao(1,'qpisqtde')" />  
                                                            </div>
                                                        </div>
                            
                                                        <div class="row" style="padding: 0px; margin: 0px">
                                                            <div class="col" style="padding: 0px; margin: 0px">
                                                                <asp:DropDownList ID="DropDownList22" CssClass="layouttexto" runat="server" onBlur="SetTextIn(this,0);SetDiv('div_cofins_qtde',0)"
                                                onFocus="SetTextIn(this,1);SetDiv('div_cofins_qtde',1)">
                                                                    <asp:ListItem style="width: 100%;" Text="03" Value="1" />
                                                                </asp:DropDownList>
                                                            </div>
                                                        </div>
                            
                                                    </div>
                            
                            
                                                    <div class=" col-md-6"
                                                        style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">
                                                        <div class="row">
                                                            <div class="col"
                                                                style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                                                Alíquota do COFINS(em reais)  
                                                            </div>
                                                        </div>
                                                        <div class="row" style="padding: 0px; margin: 0px">
                                                            <div class="col" style="padding: 0px; margin: 0px">
                                                                <asp:TextBox ID="TextBox146" runat="server" CssClass="layouttexto"
                                                                    Style="width: 100px;" onBlur="SetTextIn(this,0);SetDiv('div_cofins_qtde',0)"
                                                onFocus="SetTextIn(this,1);SetDiv('div_cofins_qtde',1)">
                                                                </asp:TextBox>
                                                            </div>
                                                        </div>
                                                    </div>
                            
                            
                                                </div>
                            
                                            </div>
                                            
                         <!--///////////////////////////////////////////////////  Container -  LINHA LADO ESQUERDO  Quantidade Vendida  -   Valor do COFINS  /////////////////////////////////////////////////////////////////////////////////////////////-->
                                      
                            
                                            <div class="col-xl-6"
                                                style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">
                            
                                                <div class="row" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">
                            
                                                    <div class="col-md-6" style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">
                            
                            
                                                        <div class="row">
                                                            <div class="col"
                                                                style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                                                Quantidade Vendida
                                                            </div>
                                                        </div>
                            
                                                        <div class="row" style="padding: 0px; margin: 0px">
                                                            <div class="col" style="padding: 0px; margin: 0px">
                                                                <asp:TextBox ID="TextBox147" runat="server" CssClass="layouttexto"
                                                                    Style="width: 45%; padding: 0px; margin: 0px"
                                                                    onBlur="SetTextIn(this,0);SetDiv('div_cofins_qtde',0)"
                                                onFocus="SetTextIn(this,1);SetDiv('div_cofins_qtde',1)">
                            
                                                                </asp:TextBox>
                                                            </div>
                                                        </div>
                            
                                                    </div>
                            
                            
                                                    <div class=" col-md-6"
                                                        style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">
                                                        <div class="row">
                                                            <div class="col"
                                                                style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                                                Valor da Base de Cálculo da COFINS
                                                            </div>
                                                        </div>
                                                        <div class="row" style="padding: 0px; margin: 0px">
                                                            <div class="col" style="padding: 0px; margin: 0px">
                                                                <asp:TextBox ID="TextBox173" runat="server" CssClass="layouttexto"
                                                                    Style="width: 50%;" onBlur="SetTextIn(this,0);SetDiv('div_cofins_qtde',0)"
                                                                    onFocus="SetTextIn(this,1);SetDiv('div_cofins_qtde',1)">
                                                                </asp:TextBox>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                </div>
                            </div>
                        </div>
             
                    <!--///////////////////////////////////////////////////   Container - Grupo COFINS não tributado /////////////////////////////////////////////////////////////////////////////////////////////-->
             
             
                    <div class="container-fluid" style="padding: 0px; margin: 0px; width: 100%; height: 100%;">
             
             
                        <div class="row" style="width: 100%; height: 50px"></div>
             
                        <div class="row" style="width: 100%; height: 100%; padding: 0px; margin: 0px; background-color: transparent">
             
                            <div class="row"
                                style="width: 100%; height: 100%; color: #177CC0; padding-left: 20px; padding-top: 0px; font-family: Arial; font-size: 20px; font-weight: bold; margin-left: 0px">
             
                                <div id="i_cofins_nao_tributado_on" name="i_cofins_nao_tributado_on" class="col" align="left"
                                    style="display: none; visibility: hidden; font-size: 20px; color: red; margin-right: 20px; border-bottom: none; cursor: pointer"
                                    onclick="mostra_div_informacao('div_cofins_nao_tributado','i_cofins_nao_tributado_on','i_cofins_nao_tributado_off',0)">
                                    <span
                                        style="color: #177CC0; font-family: Arial; font-size: 20px; font-weight: bold;">Grupo COFINS não tributado
                                    </span>&nbsp;&nbsp;<i class="fa fa-toggle-on"></i>
                                </div>
                                <div id="i_cofins_nao_tributado_off" name="i_cofins_nao_tributado_off" class="col" align="left"
                                    style="display: block; visibility: visible; font-size: 20px; color: red; margin-right: 20px; border-bottom: solid; border-color: #767676; border-width: 1px; cursor: pointer"
                                    onclick="mostra_div_informacao('div_cofins_nao_tributado','i_cofins_nao_tributado_on','i_cofins_nao_tributado_off',1)">
                                    <span
                                        style="color: #177CC0; font-family: Arial; font-size: 20px; font-weight: bold;">Grupo COFINS não tributado
                                    </span>&nbsp;&nbsp;<i class="fa fa-toggle-off"></i>
                                </div>
             
             
                            </div>
             
                            <div class="row" style="width: 100%; height: 20px"></div>
             
             
                            <div id="div_cofins_nao_tributado" name="div_pis_nao_tributado"
                                style="display: none; visibility: visible; width: 100%; height: 100%; background-color: transparent; margin-left: 20px; margin-right: 20px; border: solid; border-color: #177CC0; border-width: 1px; border-radius: 10px; padding: 0 20px 20px 20px;">
             
             
             
                                <div class="row"
                                    style="width: 100%; padding: 0px; margin: 0px; background-color: transparent; height: 100%; padding: 0px; margin: 0px">
             
             
                                    <!--///////////////////////////////////////////////////  Container -  LINHA LADO ESQUERDO   CST do COFINS  -   Valor da Base de Cálculo do COFINS  /////////////////////////////////////////////////////////////////////////////////////////////-->
                                    <div class="col-xl-6"
                                        style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">
             
                                        <div class="row"
                                            style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">
             
                                            <div class="col-md-7"
                                                style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">
             
             
                                                <div class="row">
                                                    <div class="col"
                                                        style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                                        CST do COFINS&nbsp &nbsp
                                                        <img alt="" src="../Imagens/ihelp.png"
                                                            style="width: 20px; height: 21px; cursor: pointer"
                                                            onclick="anima_informacao(1,'qpisnaotributado')" />
                                                    </div>
                                                </div>
             
                                                <div class="row" style="padding: 0px; margin: 0px">
                                                    <div class="col" style="padding: 0px; margin: 0px">
                                                        <asp:DropDownList ID="DropDownList24" CssClass="layouttexto" runat="server" onBlur="SetTextIn(this,0);SetDiv('div_cofins_nao_tributado',0)"
                                                onFocus="SetTextIn(this,1);SetDiv('div_cofins_nao_tributado',1)">
                                                            <asp:ListItem style="width: 100%;" Text="04" Value="4" />
                                                            <asp:ListItem style="width: 100%;" Text="05" Value="5" />
                                                            <asp:ListItem style="width: 100%;" Text="06" Value="6" />
                                                            <asp:ListItem style="width: 100%;" Text="07" Value="7" />
                                                            <asp:ListItem style="width: 100%;" Text="08" Value="8" />
                                                            <asp:ListItem style="width: 100%;" Text="09" Value="9" />
                                                        </asp:DropDownList>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
             
             
                    <!--///////////////////////////////////////////////////   Container - Grupo COFINS Outras Operações /////////////////////////////////////////////////////////////////////////////////////////////-->
             
             
                    <div class="container-fluid" style="padding: 0px; margin: 0px; width: 100%; height: 100%;">
             
             
                        <div class="row" style="width: 100%; height: 50px"></div>
             
                        <div class="row" style="width: 100%; height: 100%; padding: 0px; margin: 0px; background-color: transparent">
             
                            <div class="row"
                                style="width: 100%; height: 100%; color: #177CC0; padding-left: 20px; padding-top: 0px; font-family: Arial; font-size: 20px; font-weight: bold; margin-left: 0px">
             
                                <div id="i_cofins_outras_operacoes_on" name="i_cofins_outras_operacoes_on" class="col" align="left"
                                    style="display: none; visibility: hidden; font-size: 20px; color: red; margin-right: 20px; border-bottom: none; cursor: pointer"
                                    onclick="mostra_div_informacao('div_cofins_outras_operacoes','i_cofins_outras_operacoes_on','i_cofins_outras_operacoes_off',0)">
                                    <span
                                        style="color: #177CC0; font-family: Arial; font-size: 20px; font-weight: bold;">Grupo COFINS Outras Operações
                                    </span>&nbsp;&nbsp;<i class="fa fa-toggle-on"></i>
                                </div>
                                <div id="i_cofins_outras_operacoes_off" name="i_cofins_outras_operacoes_off" class="col" align="left"
                                    style="display: block; visibility: visible; font-size: 20px; color: red; margin-right: 20px; border-bottom: solid; border-color: #767676; border-width: 1px; cursor: pointer"
                                    onclick="mostra_div_informacao('div_cofins_outras_operacoes','i_cofins_outras_operacoes_on','i_cofins_outras_operacoes_off',1)">
                                    <span
                                        style="color: #177CC0; font-family: Arial; font-size: 20px; font-weight: bold;">Grupo COFINS Outras Operações
                                    </span>&nbsp;&nbsp;<i class="fa fa-toggle-off"></i>
                                </div>
             
             
                            </div>
             
                            <div class="row" style="width: 100%; height: 20px"></div>
             
             
                            <div id="div_cofins_outras_operacoes" name="div_cofins_outras_operacoes"
                                style="display: none; visibility: visible; width: 100%; height: 100%; background-color: transparent; margin-left: 20px; margin-right: 20px; border: solid; border-color: #177CC0; border-width: 1px; border-radius: 10px; padding: 0 20px 20px 20px;">
             
             
             
                                <div class="row"
                                    style="width: 100%; padding: 0px; margin: 0px; background-color: transparent; height: 100%; padding: 0px; margin: 0px">
             
             
                                    <!--///////////////////////////////////////////////////  Container -  LINHA LADO ESQUERDO   CST do COFINS  -   Valor da Base de Cálculo do COFINS  /////////////////////////////////////////////////////////////////////////////////////////////-->
                                    <div class="col-xl-6"
                                        style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">
             
                                        <div class="row"
                                            style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">
             
                                            <div class="col-md-5"
                                                style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">
             
             
                                                <div class="row">
                                                    <div class="col"
                                                        style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                                        CST do COFINS&nbsp &nbsp
                                                        <img alt="" src="../Imagens/ihelp.png"
                                                            style="width: 20px; height: 21px; cursor: pointer"
                                                            onclick="anima_informacao(1,'qpisoutrasoperacoes')" />
                                                    </div>
                                                </div>
             
                                                <div class="row" style="padding: 0px; margin: 0px">
                                                    <div class="col" style="padding: 0px; margin: 0px">
                                                        <asp:DropDownList ID="DropDownList25" CssClass="layouttexto" runat="server" onBlur="SetTextIn(this,0);SetDiv('div_cofins_outras_operacoes',0)"
                                                onFocus="SetTextIn(this,1);SetDiv('div_cofins_outras_operacoes',1)">
                                                            <asp:ListItem style="width: 100%;" Text="49" Value="10" />
                                                            <asp:ListItem style="width: 100%;" Text="50" Value="11" />
                                                            <asp:ListItem style="width: 100%;" Text="51" Value="12" />
                                                            <asp:ListItem style="width: 100%;" Text="52" Value="13" />
                                                            <asp:ListItem style="width: 100%;" Text="53" Value="14" />
                                                            <asp:ListItem style="width: 100%;" Text="54" Value="15" />
                                                            <asp:ListItem style="width: 100%;" Text="55" Value="16" />
                                                            <asp:ListItem style="width: 100%;" Text="56" Value="17" />
                                                            <asp:ListItem style="width: 100%;" Text="57" Value="18" />
                                                            <asp:ListItem style="width: 100%;" Text="58" Value="19" />
                                                            <asp:ListItem style="width: 100%;" Text="59" Value="20" />
                                                            <asp:ListItem style="width: 100%;" Text="60" Value="21" />
                                                            <asp:ListItem style="width: 100%;" Text="61" Value="22" />
                                                            <asp:ListItem style="width: 100%;" Text="62" Value="23" />
                                                            <asp:ListItem style="width: 100%;" Text="63" Value="24" />
                                                            <asp:ListItem style="width: 100%;" Text="64" Value="25" />
                                                            <asp:ListItem style="width: 100%;" Text="65" Value="26" />
                                                            <asp:ListItem style="width: 100%;" Text="66" Value="27" />
                                                            <asp:ListItem style="width: 100%;" Text="67" Value="28" />
                                                            <asp:ListItem style="width: 100%;" Text="70" Value="29" />
                                                            <asp:ListItem style="width: 100%;" Text="71" Value="30" />
                                                            <asp:ListItem style="width: 100%;" Text="72" Value="31" />
                                                            <asp:ListItem style="width: 100%;" Text="73" Value="32" />
                                                            <asp:ListItem style="width: 100%;" Text="74" Value="33" />
                                                            <asp:ListItem style="width: 100%;" Text="75" Value="34" />
                                                            <asp:ListItem style="width: 100%;" Text="98" Value="35" />
                                                            <asp:ListItem style="width: 100%;" Text="99" Value="36" />
                                                        </asp:DropDownList>
                                                    </div>
                                                </div>
             
                                            </div>
             
             
                                            <div class=" col-md-7"
                                                style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">
                                                <div class="row">
                                                    <div class="col"
                                                        style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                                        Valor da Base de Cálculo do COFINS
                                                    </div>
                                                </div>
                                                <div class="row" style="padding: 0px; margin: 0px">
                                                    <div class="col" style="padding: 0px; margin: 0px">
                                                        <asp:TextBox ID="TextBox174" runat="server" CssClass="layouttexto"
                                                            Style="width: 100px;" onBlur="SetTextIn(this,0);SetDiv('div_cofins_outras_operacoes',0)"
                                                             onFocus="SetTextIn(this,1);SetDiv('div_cofins_outras_operacoes',1)">
                                                        </asp:TextBox>
                                                    </div>
                                                </div>
                                            </div>
             
             
                                        </div>
             
                                    </div>
             
                                    <!--///////////////////////////////////////////////////  Container -  LINHA LADO DIREITO  Quantidade Vendida  -   Alíquota do COFINS(%) /////////////////////////////////////////////////////////////////////////////////////////////-->
             
             
                                    <div class="col-xl-6"
                                        style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">
             
                                        <div class="row"
                                            style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">
             
                                            <div class="col-md-7"
                                                style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">
             
             
                                                <div class="row">
                                                    <div class="col"
                                                        style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                                        Alíquota do COFINS(%)
                                                    </div>
                                                </div>
             
                                                <div class="row" style="padding: 0px; margin: 0px">
                                                    <div class="col" style="padding: 0px; margin: 0px">
                                                        <asp:TextBox ID="TextBox175" runat="server" CssClass="layouttexto"
                                                            Style="width: 45%; padding: 0px; margin: 0px" onBlur="SetTextIn(this,0);SetDiv('div_cofins_outras_operacoes',0)"
                                                        onFocus="SetTextIn(this,1);SetDiv('div_cofins_outras_operacoes',1)">
             
                                                        </asp:TextBox>
                                                    </div>
                                                </div>
             
                                            </div>
             
             
                                            <div class=" col-md-5"
                                                style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">
                                                <div class="row">
                                                    <div class="col"
                                                        style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                                        Quantidade Vendida
                                                    </div>
                                                </div>
                                                <div class="row" style="padding: 0px; margin: 0px">
                                                    <div class="col" style="padding: 0px; margin: 0px">
                                                        <asp:TextBox ID="TextBox87" runat="server" CssClass="layouttexto"
                                                            Style="width: 45%; padding: 0px; margin: 0px" onBlur="SetTextIn(this,0);SetDiv('div_cofins_outras_operacoes',0)"
                                                            onFocus="SetTextIn(this,1);SetDiv('div_cofins_outras_operacoes',1)">
             
                                                        </asp:TextBox>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
             
                                <div class="row"
                                    style="width: 100%; padding: 0px; margin: 0px; background-color: transparent; height: 100%; padding: 0px; margin: 0px">
             
             
                                    <!--///////////////////////////////////////////////////  Container -  LINHA LADO ESQUERDO    -   Alíquota do COFINS(em reais)  /////////////////////////////////////////////////////////////////////////////////////////////-->
                                    <div class="col-xl-6"
                                        style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">
             
                                        <div class="row"
                                            style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">
             
                                            <div class="col-md-5"
                                                style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">
             
             
                                                <div class="row">
                                                    <div class="col"
                                                        style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                                        Valor do COFINS 
                                                    </div>
                                                </div>
             
                                                <div class="row" style="padding: 0px; margin: 0px">
                                                    <div class="col" style="padding: 0px; margin: 0px">
                                                        <asp:TextBox ID="TextBox177" runat="server" CssClass="layouttexto"
                                                            Style="width: 100px;" onBlur="SetTextIn(this,0);SetDiv('div_cofins_outras_operacoes',0)"
                                                        onFocus="SetTextIn(this,1);SetDiv('div_cofins_outras_operacoes',1)">
                                                        </asp:TextBox>
                                                    </div>
                                                </div>
             
                                            </div>
             
             
                                            <div class=" col-md-7"
                                                style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">
                                                <div class="row">
                                                    <div class="col"
                                                        style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                                        Alíquota do COFINS(em reais)
                                                    </div>
                                                </div>
                                                <div class="row" style="padding: 0px; margin: 0px">
                                                    <div class="col" style="padding: 0px; margin: 0px">
                                                        <asp:TextBox ID="TextBox178" runat="server" CssClass="layouttexto"
                                                            Style="width: 100px;" onBlur="SetTextIn(this,0);SetDiv('div_cofins_outras_operacoes',0)"
                                                            onFocus="SetTextIn(this,1);SetDiv('div_cofins_outras_operacoes',1)">
                                                        </asp:TextBox>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            </div>

                        <!--///////////////////////////////////////////////////   Container - COFINS ST/////////////////////////////////////////////////////////////////////////////////////////////-->


            <div class="container-fluid" style="padding: 0px; margin: 0px; width: 100%; height: 100%;">


                <div class="row" style="width: 100%; height: 50px"></div>
                   
                <div class="row" style="width: 100%; height: 100%; padding: 0px; margin: 0px; background-color: transparent">
                   
                    <div class="row" style="width: 100%; height: 100%; color: #177CC0; padding-left: 20px; padding-top: 0px; font-family: Arial; font-size: 20px; font-weight: bold; margin-left: 0px">
                   
                        <div id="i_cofins_st_on" name="i_cofins_st_on" class="col" align="left" style="display: none; visibility: hidden; font-size: 20px; color: red; margin-right: 20px; border-bottom: none; cursor: pointer" onclick="mostra_div_informacao('div_cofins_st','i_cofins_st_on','i_cofins_st_off',0)"><span style="color: #177CC0; font-family: Arial; font-size: 20px; font-weight: bold;">COFINS ST</span>&nbsp;&nbsp;<i class="fa fa-toggle-on"></i></div>
                        <div id="i_cofins_st_off" name="i_cofins_st_off" class="col" align="left" style="display: block; visibility: visible; font-size: 20px; color: red; margin-right: 20px; border-bottom: solid; border-color: #767676; border-width: 1px; cursor: pointer" onclick="mostra_div_informacao('div_cofins_st','i_cofins_st_on','i_cofins_st_off',1)"><span style="color: #177CC0; font-family: Arial; font-size: 20px; font-weight: bold;">CONFINS ST </span>&nbsp;&nbsp;<i class="fa fa-toggle-off"></i></div>
                   
                   
                    </div>
                   
                    <div class="row" style="width: 100%; height: 20px"></div>
                   
                   
                    <div id="div_cofins_st" name="div_cofins_st"
                        style="display: none; visibility: visible; width: 100%; height: 100%; background-color: transparent; margin-left: 20px; margin-right: 20px; border: solid; border-color: #177CC0; border-width: 1px; border-radius: 10px; padding: 0 20px 20px 20px;">
                   
                   
                   
                        <div class="row"
                            style="width: 100%; padding: 0px; margin: 0px; background-color: transparent; height: 100%; padding: 0px; margin: 0px">
                   
                   
                            <!--///////////////////////////////////////////////////  Container -  LINHA LADO ESQUERDO - Código de Situação Tributária do COFINS  -  Alíquota da COFINS(%) /////////////////////////////////////////////////////////////////////////////////////////////-->
                            <div class="col-xl-6"
                                style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">
                   
                                <div class="row" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">
                   
                                    <div class="col-md-7" style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">
                   
                   
                                        <div class="row">
                                            <div class="col"
                                                style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                                Valor da Base de Cálculo do COFINS 
                                            </div>
                                        </div>
                   
                                        <div class="row" style="padding: 0px; margin: 0px">
                                            <div class="col" style="padding: 0px; margin: 0px">
                                                <asp:TextBox ID="TextBox148" runat="server" CssClass="layouttexto"
                                                    Style="width: 200px;" onBlur="SetTextIn(this,0);SetDiv('div_cofins_st',0)"
                                                onFocus="SetTextIn(this,1);SetDiv('div_cofins_st',1)">
                                                </asp:TextBox>
                                            </div>
                                        </div>
                   
                                    </div>
                   
                   
                                    <div class=" col-md-5"
                                        style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">
                                        <div class="row">
                                            <div class="col"
                                                style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                                Alíquota da COFINS(%)  
                                            </div>
                                        </div>
                                        <div class="row" style="padding: 0px; margin: 0px">
                                            <div class="col" style="padding: 0px; margin: 0px">
                                                <asp:TextBox ID="TextBox149" runat="server" CssClass="layouttexto"
                                                    Style="width: 82px;" onBlur="SetTextIn(this,0);SetDiv('div_cofins_st',0)"
                                                onFocus="SetTextIn(this,1);SetDiv('div_cofins_st',1)">
                                                </asp:TextBox>
                                            </div>
                                        </div>
                                    </div>
                   
                   
                                </div>
                   
                            </div>
                            <!--/////////////////////////////////////////////////// Container LINHA LADO DIREITO -  Quantidade Vendida   / Alíquota da COFINS(em reais)/////////////////////////////////////////////////////////////////////////////////////////////-->
                            <div class="col-xl-6"
                                style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px;">
                   
                                <div class="row"
                                    style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">
                   
                                    <div class="col-md-6"
                                        style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-left: 15px; padding-top: 10px; padding-right: 12px">
                                        <div class="row">
                                            <div class="col"
                                                style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                                Quantidade Vendida 
                                            </div>
                                        </div>
                                        <div class="row" style="padding: 0px; margin: 0px">
                                            <div class="col" style="padding: 0px; margin: 0px">
                                                <asp:TextBox ID="TextBox150" runat="server" CssClass="layouttexto"
                                                    Style="width: 180px;" onBlur="SetTextIn(this,0);SetDiv('div_cofins_st',0)"
                                                onFocus="SetTextIn(this,1);SetDiv('div_cofins_st',1)">
                                                </asp:TextBox>
                                            </div>
                                        </div>
                                    </div>
               
                                    <div class="col-md-6"
                                    style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-left: 15px; padding-top: 10px; padding-right: 12px">
                                    <div class="row">
                                        <div class="col"
                                            style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                            Alíquota da COFINS(em reais)
                                        </div>
                                    </div>
                                    <div class="row" style="padding: 0px; margin: 0px">
                                        <div class="col" style="padding: 0px; margin: 0px">
                                            <asp:TextBox ID="TextBox151" runat="server" CssClass="layouttexto"
                                                Style="width: 130px;" onBlur="SetTextIn(this,0);SetDiv('div_cofins_st',0)"
                                                onFocus="SetTextIn(this,1);SetDiv('div_cofins_st',1)">
                                            </asp:TextBox>
                                        </div>
                                    </div>
                                </div>
                   
                                </div>
                            </div>
                        </div>
                           
                        <!--///////////////////////////////////////////////////  Container -  LINHA LADO ESQUERDO -  Valor da COFINS  /////////////////////////////////////////////////////////////////////////////////////////////-->
                        <div class="row"
                            style="width: 100%; padding: 0px; margin: 0px; background-color: transparent; height: 100%; padding: 0px; margin: 0px">
                   
                            <div class="col-xl-12"
                                style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">
                   
                                <div class="row" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">
                   
                                    <div class="col-md-12" style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">
                   
                   
                                        <div class="row">
                                            <div class="col"
                                                style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                                Valor da COFINS
                                            </div>
                                        </div>
                   
                                        <div class="row" style="padding: 0px; margin: 0px">
                                            <div class="col" style="padding: 0px; margin: 0px">
                                                <asp:TextBox ID="TextBox152" runat="server" CssClass="layouttexto"
                                                    Style="width: 200px; padding: 0px; margin: 0px"
                                                    onBlur="SetTextIn(this,0);SetDiv('div_cofins_st',0)"
                                                onFocus="SetTextIn(this,1);SetDiv('div_cofins_st',1)">
                   
                                                </asp:TextBox>
                                            </div>
                                        </div>
                   
                                    </div>
                                </div>
                   
                            </div>
                            
                        </div>
                            </div>
                        </div>
                    </div>

                        <!--///////////////////////////////////////////////////   Container - ISSQN/////////////////////////////////////////////////////////////////////////////////////////////-->


            <div class="container-fluid" style="padding: 0px; margin: 0px; width: 100%; height: 100%;">


                <div class="row" style="width: 100%; height: 50px"></div>
                   
                <div class="row" style="width: 100%; height: 100%; padding: 0px; margin: 0px; background-color: transparent">
                   
                    <div class="row" style="width: 100%; height: 100%; color: #177CC0; padding-left: 20px; padding-top: 0px; font-family: Arial; font-size: 20px; font-weight: bold; margin-left: 0px">
                   
                        <div id="i_issqn_on" name="i_cofins_st_on" class="col" align="left" style="display: none; visibility: hidden; font-size: 20px; color: red; margin-right: 20px; border-bottom: none; cursor: pointer" onclick="mostra_div_informacao('div_issqn','i_issqn_on','i_issqn_off',0)"><span style="color: #177CC0; font-family: Arial; font-size: 20px; font-weight: bold;">ISSQN</span>&nbsp;&nbsp;<i class="fa fa-toggle-on"></i></div>
                        <div id="i_issqn_off" name="i_cofins_st_off" class="col" align="left" style="display: block; visibility: visible; font-size: 20px; color: red; margin-right: 20px; border-bottom: solid; border-color: #767676; border-width: 1px; cursor: pointer" onclick="mostra_div_informacao('div_issqn','i_issqn_on','i_issqn_off',1)"><span style="color: #177CC0; font-family: Arial; font-size: 20px; font-weight: bold;">ISSQN </span>&nbsp;&nbsp;<i class="fa fa-toggle-off"></i></div>
                   
                   
                    </div>
                   
                    <div class="row" style="width: 100%; height: 20px"></div>
                   
                   
                    <div id="div_issqn" name="div_issqn"
                        style="display: none; visibility: visible; width: 100%; height: 100%; background-color: transparent; margin-left: 20px; margin-right: 20px; border: solid; border-color: #177CC0; border-width: 1px; border-radius: 10px; padding: 0 20px 20px 20px;">
                   
                   
                   
                        <div class="row"
                            style="width: 100%; padding: 0px; margin: 0px; background-color: transparent; height: 100%; padding: 0px; margin: 0px">
                   
                   
                            <!--///////////////////////////////////////////////////  Container -  LINHA LADO ESQUERDO - Código de Situação Tributária do COFINS  -  Alíquota da COFINS(%) /////////////////////////////////////////////////////////////////////////////////////////////-->
                            <div class="col-xl-6"
                                style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">
                   
                                <div class="row" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">
                   
                                    <div class="col-md-6" style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">
                   
                   
                                        <div class="row">
                                            <div class="col"
                                                style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                                Base de Cálculo do ISSQN &nbsp &nbsp <img alt="" src="../Imagens/ihelp.png"  style="width: 20px; height: 21px; cursor:pointer" onclick="anima_informacao(1,'basecalculoissqn')" /> 
                                            </div>
                                        </div>
                   
                                        <div class="row" style="padding: 0px; margin: 0px">
                                            <div class="col" style="padding: 0px; margin: 0px">
                                                <asp:TextBox ID="TextBox153" runat="server" CssClass="layouttexto"
                                                    Style="width: 45%;" onBlur="SetTextIn(this,0);SetDiv('div_issqn',0)"
                                                onFocus="SetTextIn(this,1);SetDiv('div_issqn',1)">
                                                </asp:TextBox>
                                            </div>
                                        </div>
                   
                                    </div>
                   
                   
                                    <div class=" col-md-6"
                                        style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">
                                        <div class="row">
                                            <div class="col"
                                                style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                                Alíquota do ISSQN  &nbsp &nbsp <img alt="" src="../Imagens/ihelp.png"  style="width: 20px; height: 21px; cursor:pointer" onclick="anima_informacao(1,'aliquotaissqn')" />
                                            </div>
                                        </div>
                                        <div class="row" style="padding: 0px; margin: 0px">
                                            <div class="col" style="padding: 0px; margin: 0px">
                                                <asp:TextBox ID="TextBox154" runat="server" CssClass="layouttexto"
                                                    Style="width: 140px;"  onBlur="SetTextIn(this,0);SetDiv('div_issqn',0)"
                                                onFocus="SetTextIn(this,1);SetDiv('div_issqn',1)">
                                                </asp:TextBox>
                                            </div>
                                        </div>
                                    </div>
                   
                   
                                </div>
                   
                            </div>
                            <!--/////////////////////////////////////////////////// Container LINHA LADO DIREITO -  Quantidade Vendida   / Alíquota da COFINS(em reais)/////////////////////////////////////////////////////////////////////////////////////////////-->
                            <div class="col-xl-6"
                                style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px;">
                   
                                <div class="row"
                                    style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">
                   
                                    <div class="col-md-5"
                                        style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-left: 15px; padding-top: 10px; padding-right: 12px">
                                        <div class="row">
                                            <div class="col"
                                                style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                                Valor do ISSQN
                                            </div>
                                        </div>
                                        <div class="row" style="padding: 0px; margin: 0px">
                                            <div class="col" style="padding: 0px; margin: 0px">
                                                <asp:TextBox ID="TextBox155" runat="server" CssClass="layouttexto"
                                                    Style="width: 45%;"  onBlur="SetTextIn(this,0);SetDiv('div_issqn',0)"
                                                onFocus="SetTextIn(this,1);SetDiv('div_issqn',1)">
                                                </asp:TextBox>
                                            </div>
                                        </div>
                                    </div>
               
                                    <div class="col-md-7"
                                    style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-left: 15px; padding-top: 10px; padding-right: 12px">
                                    <div class="row">
                                        <div class="col"
                                            style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                           Cód. do múnicípio de ocorrência &nbsp &nbsp <img alt="" src="../Imagens/ihelp.png"  style="width: 20px; height: 21px; cursor:pointer" onclick="anima_informacao(1,'codmunicipioocorrencia')" />
                                        </div>
                                    </div>
                                    <div class="row" style="padding: 0px; margin: 0px">
                                        <div class="col" style="padding: 0px; margin: 0px">
                                            <asp:TextBox ID="TextBox156" runat="server" CssClass="layouttexto"
                                                Style="width: 130px;"  onBlur="SetTextIn(this,0);SetDiv('div_issqn',0)"
                                                onFocus="SetTextIn(this,1);SetDiv('div_issqn',1)">
                                            </asp:TextBox>
                                        </div>
                                    </div>
                                </div>
                   
                                </div>
                            </div>
                        </div>
                           
                        <!--///////////////////////////////////////////////////  Container -  LINHA LADO ESQUERDO -  Item da lista de serviço - Valor dedução para redução da Base de Cálculo   /////////////////////////////////////////////////////////////////////////////////////////////-->
                        <div class="row" style="width:100%;height: 30px"></div>

                        <div class="row"
                            style="width: 100%; padding: 0px; margin: 0px; background-color: transparent; height: 100%; padding: 0px; margin: 0px">
                   
                            <div class="col-xl-6"
                                style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">
                   
                                <div class="row" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">
                   
                                    <div class="col-md-6" style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">
                   
                   
                                        <div class="row">
                                            <div class="col"
                                                style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                                Item da lista de serviço 
                                            </div>
                                        </div>
                   
                                        <div class="row" style="padding: 0px; margin: 0px">
                                            <div class="col" style="padding: 0px; margin: 0px">
                                                <asp:TextBox ID="TextBox157" runat="server" CssClass="layouttexto"
                                                    Style="width: 120px; padding: 0px; margin: 0px"
                                                    onBlur="SetTextIn(this,0);SetDiv('div_issqn',0)"
                                                onFocus="SetTextIn(this,1);SetDiv('div_issqn',1)">
                   
                                                </asp:TextBox>
                                            </div>
                                        </div>
                   
                                    </div>

                                    <div class="col-md-6" style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">
                   
                   
                                        <div class="row">
                                            <div class="col"
                                                style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                                Dedução na Base de Cálculo
                                            </div>
                                        </div>
                   
                                        <div class="row" style="padding: 0px; margin: 0px">
                                            <div class="col" style="padding: 0px; margin: 0px">
                                                <asp:TextBox ID="TextBox158" runat="server" CssClass="layouttexto"
                                                    Style="width: 45%; padding: 0px; margin: 0px"
                                                    onBlur="SetTextIn(this,0);SetDiv('div_issqn',0)"
                                                onFocus="SetTextIn(this,1);SetDiv('div_issqn',1)">
                   
                                                </asp:TextBox>
                                            </div>
                                        </div>
                   
                                    </div>
                                </div>
                   
                            </div>
                            
                        

                         <!--///////////////////////////////////////////////////  Container -  LINHA LADO direito -  Valor outras retenções - Valor desconto incodicionados  /////////////////////////////////////////////////////////////////////////////////////////////-->
                         
                
                         <div class="col-xl-6"
                             style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">
                
                             <div class="row" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">
                
                                 <div class="col-md-6" style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">
                
                
                                     <div class="row">
                                         <div class="col"
                                             style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                             Valor outras retenções 
                                         </div>
                                     </div>
                
                                     <div class="row" style="padding: 0px; margin: 0px">
                                         <div class="col" style="padding: 0px; margin: 0px">
                                             <asp:TextBox ID="TextBox159" runat="server" CssClass="layouttexto"
                                                 Style="width: 45%; padding: 0px; margin: 0px"
                                                 onBlur="SetTextIn(this,0);SetDiv('div_issqn',0)"
                                                onFocus="SetTextIn(this,1);SetDiv('div_issqn',1)">
                
                                             </asp:TextBox>
                                         </div>
                                     </div>
                
                                 </div>

                                 <div class="col-md-6" style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">
                
                
                                     <div class="row">
                                         <div class="col"
                                             style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                             Valor desconto incodicionados 
                                         </div>
                                     </div>

                                     <div class="row" style="padding: 0px; margin: 0px">
                                         <div class="col" style="padding: 0px; margin: 0px">
                                             <asp:TextBox ID="TextBox105" runat="server" CssClass="layouttexto"
                                                 Style="width: 45%; padding: 0px; margin: 0px"
                                                 onBlur="SetTextIn(this,0);SetDiv('div_issqn',0)"
                                                 onFocus="SetTextIn(this,1);SetDiv('div_issqn',1)">
                
                                             </asp:TextBox>
                                         </div>
                                     </div>
                
                                 </div>
                             </div>
                
                         </div>
                         
                     </div>

                     <!--///////////////////////////////////////////////////  Container -  LINHA LADO ESQUERDO -   Valor desconto condicionado - Valor retenção ISS   /////////////////////////////////////////////////////////////////////////////////////////////-->
                        <div class="row" style="width:100%;height: 30px"></div>

                     <div class="row"
                     style="width: 100%; padding: 0px; margin: 0px; background-color: transparent; height: 100%; padding: 0px; margin: 0px">
            
                     <div class="col-xl-6"
                         style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">
            
                         <div class="row" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">
            
                             <div class="col-md-6" style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">
            
            
                                 <div class="row">
                                     <div class="col"
                                         style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                         Valor desconto condicionado
                                     </div>
                                 </div>
            
                                 <div class="row" style="padding: 0px; margin: 0px">
                                     <div class="col" style="padding: 0px; margin: 0px">
                                         <asp:TextBox ID="TextBox161" runat="server" CssClass="layouttexto"
                                             Style="width: 45%; padding: 0px; margin: 0px"
                                            onBlur="SetTextIn(this,0);SetDiv('div_issqn',0)"
                                                onFocus="SetTextIn(this,1);SetDiv('div_issqn',1)">
            
                                         </asp:TextBox>
                                     </div>
                                 </div>
            
                             </div>

                             <div class="col-md-6" style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">
            
            
                                 <div class="row">
                                     <div class="col"
                                         style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                         Valor retenção ISS
                                     </div>
                                 </div>
            
                                 <div class="row" style="padding: 0px; margin: 0px">
                                     <div class="col" style="padding: 0px; margin: 0px">
                                         <asp:TextBox ID="TextBox162" runat="server" CssClass="layouttexto"
                                             Style="width: 45%; padding: 0px; margin: 0px"
                                            onBlur="SetTextIn(this,0);SetDiv('div_issqn',0)"
                                                onFocus="SetTextIn(this,1);SetDiv('div_issqn',1)">
            
                                         </asp:TextBox>
                                     </div>
                                 </div>
            
                             </div>
                         </div>
            
                     </div>
                     
                 

                  <!--///////////////////////////////////////////////////  Container -  LINHA LADO direito -  Indicador da exigibilidade do ISS - Valor desconto incodicionados  /////////////////////////////////////////////////////////////////////////////////////////////-->
                  
         
                  <div class="col-xl-6"
                      style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">
         
                      <div class="row" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

         
                          <div class="col-md-6" style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">
         
         
                              <div class="row">
                                  <div class="col"
                                      style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                      Indicador da exigibilidade do ISS&nbsp &nbsp<img alt="" src="../Imagens/ihelp.png"  style="width: 20px; height: 20px; cursor:pointer" onclick="anima_informacao(1,'indicadoriss')" />
                                  </div>
                              </div>
         
                              <div class="row" style="padding: 0px; margin: 0px">
                                  <div class="col" style="padding: 0px; margin: 0px">
                                      <asp:DropDownList ID="DropDownList18" CssClass="layouttexto" runat="server" onBlur="SetTextIn(this,0);SetDiv('div_issqn',0)"
                                                onFocus="SetTextIn(this,1);SetDiv('div_issqn',1)">
                                          <asp:ListItem style="width: 100%;" Text="1" Value="1" />
                                          <asp:ListItem style="width: 100%;" Text="2" Value="2" />
                                          <asp:ListItem style="width: 100%;" Text="3" Value="3" />
                                          <asp:ListItem style="width: 100%;" Text="4" Value="4" />
                                          <asp:ListItem style="width: 100%;" Text="5" Value="5" />
                                          <asp:ListItem style="width: 100%;" Text="6" Value="6" />
                                      </asp:DropDownList>
                                  </div>
                              </div>
         
                          </div>

                          <div class="col-md-6" style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">
         
         
                              <div class="row">
                                  <div class="col"
                                      style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                      Cód. do Serviço Municipal 
                                  </div>
                              </div>
         
                              <div class="row" style="padding: 0px; margin: 0px">
                                  <div class="col" style="padding: 0px; margin: 0px">
                                      <asp:TextBox ID="TextBox164" runat="server" CssClass="layouttexto"
                                          Style="width: 60%; padding: 0px; margin: 0px"
                                          onBlur="SetTextIn(this,0);SetDiv('div_issqn',0)"
                                                onFocus="SetTextIn(this,1);SetDiv('div_issqn',1)">
         
                                      </asp:TextBox>
                                  </div>
                              </div>
         
                          </div>
                      </div>
         
                  </div>
                  
              </div>
              <!--///////////////////////////////////////////////////  Container -  LINHA LADO ESQUERDO -   Valor desconto condicionado - Valor retenção ISS   /////////////////////////////////////////////////////////////////////////////////////////////-->
                        <div class="row" style="width:100%;height: 30px"></div>

              <div class="row"
              style="width: 100%; padding: 0px; margin: 0px; background-color: transparent; height: 100%; padding: 0px; margin: 0px">
     
              <div class="col-xl-6"
                  style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">
     
                  <div class="row" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">
     
                      <div class="col-md-6" style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">
     
     
                          <div class="row">
                              <div class="col"
                                  style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                  Código Municipal do Imposto 
                              </div>
                          </div>
     
                          <div class="row" style="padding: 0px; margin: 0px">
                              <div class="col" style="padding: 0px; margin: 0px">
                                  <asp:TextBox ID="TextBox165" runat="server" CssClass="layouttexto"
                                      Style="width: 100px; padding: 0px; margin: 0px"
                                      onBlur="SetTextIn(this,0);SetDiv('div_issqn',0)"
                                                onFocus="SetTextIn(this,1);SetDiv('div_issqn',1)">
     
                                  </asp:TextBox>
                              </div>
                          </div>
     
                      </div>

                      <div class="col-md-6" style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">
     
     
                          <div class="row">
                              <div class="col"
                                  style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                  Cód. do País de Prestação 
                              </div>
                          </div>
     
                          <div class="row" style="padding: 0px; margin: 0px">
                              <div class="col" style="padding: 0px; margin: 0px">
                                  <asp:TextBox ID="TextBox166" runat="server" CssClass="layouttexto"
                                      Style="width: 100px; padding: 0px; margin: 0px"
                                      onBlur="SetTextIn(this,0);SetDiv('div_issqn',0)"
                                                onFocus="SetTextIn(this,1);SetDiv('div_issqn',1)">
     
                                  </asp:TextBox>
                              </div>
                          </div>
     
                      </div>
                  </div>
     
              </div>
              
          

           <!--///////////////////////////////////////////////////  Container -  LINHA LADO direito -  Indicador da exigibilidade do ISS - Valor desconto incodicionados  /////////////////////////////////////////////////////////////////////////////////////////////-->
           
  
           <div class="col-xl-6"
               style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">
  
               <div class="row" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">
  
                   <div class="col-md-6" style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">
  
  
                       <div class="row">
                           <div class="col"
                               style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                               Indicador de incentivo Fiscal 
                           </div>
                       </div>
  
                       <div class="row" style="padding: 0px; margin: 0px">
                           <div class="col" style="padding: 0px; margin: 0px">
                               <asp:DropDownList ID="DropDownList19" CssClass="layouttexto" runat="server" onBlur="SetTextIn(this,0);SetDiv('div_issqn',0)"
                                                onFocus="SetTextIn(this,1);SetDiv('div_issqn',1)">
                                   <asp:ListItem style="width: 100%;" Text="Sim" Value="1" />
                                   <asp:ListItem style="width: 100%;" Text="Não" Value="2" />
                               </asp:DropDownList>
                           </div>
                       </div>
  
                   </div>

                   <div class="col-md-6" style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">
  
  
                       <div class="row">
                           <div class="col"
                               style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                               Número do processo judicial 
                           </div>
                       </div>
  
                       <div class="row" style="padding: 0px; margin: 0px">
                           <div class="col" style="padding: 0px; margin: 0px">
                               <asp:TextBox ID="TextBox163" runat="server" CssClass="layouttexto"
                                   Style="width: 100%; padding: 0px; margin: 0px"
                                   onBlur="SetTextIn(this,0);SetDiv('div_issqn',0)"
                                                onFocus="SetTextIn(this,1);SetDiv('div_issqn',1)">
                               </asp:TextBox>
                           </div>
                       </div>
                   </div>
               </div>
           </div>           
       </div>
       </div>
     </div>
 </div>

                        <!--///////////////////////////////////////////////////   Container - Tributo Devolvidos/////////////////////////////////////////////////////////////////////////////////////////////-->


                        <div class="container-fluid" style="padding: 0px; margin: 0px; width: 100%; height: 100%;">


                            <div class="row" style="width: 100%; height: 50px"></div>

                            <div class="row" style="width: 100%; height: 100%; padding: 0px; margin: 0px; background-color: transparent">

                                <div class="row" style="width: 100%; height: 100%; color: #177CC0; padding-left: 20px; padding-top: 0px; font-family: Arial; font-size: 20px; font-weight: bold; margin-left: 0px">

                                    <div id="i_tributo_devolvido_on" name="i_tributo_devolvido_on" class="col" align="left" style="display: none; visibility: hidden; font-size: 20px; color: red; margin-right: 20px; border-bottom: none; cursor: pointer" onclick="mostra_div_informacao('div_tributo_devolvido','i_tributo_devolvido_on','i_tributo_devolvido_off',0)"><span style="color: #177CC0; font-family: Arial; font-size: 20px; font-weight: bold;">Tributos Devolvidos</span>&nbsp;&nbsp;<i class="fa fa-toggle-on"></i></div>
                                    <div id="i_tributo_devolvido_off" name="i_tributo_devolvido_off" class="col" align="left" style="display: block; visibility: visible; font-size: 20px; color: red; margin-right: 20px; border-bottom: solid; border-color: #767676; border-width: 1px; cursor: pointer" onclick="mostra_div_informacao('div_tributo_devolvido','i_tributo_devolvido_on','i_tributo_devolvido_off',1)"><span style="color: #177CC0; font-family: Arial; font-size: 20px; font-weight: bold;">Tributos Devolvidos</span>&nbsp;&nbsp;<i class="fa fa-toggle-off"></i></div>


                                </div>

                                <div class="row" style="width: 100%; height: 20px"></div>


                                <div id="div_tributo_devolvido" name="div_tributo_devolvido"
                                    style="display: none; visibility: visible; width: 100%; height: 100%; background-color: transparent; margin-left: 20px; margin-right: 20px; border: solid; border-color: #177CC0; border-width: 1px; border-radius: 10px; padding: 0 20px 20px 20px;">



                                    <div class="row"
                                        style="width: 100%; padding: 0px; margin: 0px; background-color: transparent; height: 100%; padding: 0px; margin: 0px">


                                        <!--///////////////////////////////////////////////////  Container -  LINHA LADO ESQUERDO - Informação do Imposto Devolvido  -  % da mercadoria devolvida /////////////////////////////////////////////////////////////////////////////////////////////-->
                                        <div class="col-xl-6"
                                            style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

                                            <div class="row" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

                                                <div class="col-md-6" style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">


                                                    <div class="row">
                                                        <div class="col"
                                                            style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                                             % da mercadoria devolvida &nbsp &nbsp <img alt="" src="../Imagens/ihelp.png"  style="width: 20px; height: 21px; cursor:pointer" onclick="anima_informacao(1,'mercadoriadevolvida')" />
                                                        </div>
                                                    </div>

                                                    <div class="row" style="padding: 0px; margin: 0px">
                                                        <div class="col" style="padding: 0px; margin: 0px">
                                                            <asp:TextBox ID="TextBox179" runat="server" CssClass="layouttexto"
                                                                Style="width: 170px;" onBlur="SetTextIn(this,0);SetDiv('div_tributo_devolvido',0)"
                                                onFocus="SetTextIn(this,1);SetDiv('div_tributo_devolvido',1)">
                                                            </asp:TextBox>
                                                        </div>
                                                    </div>

                                                </div>


                                                <div class=" col-md-6"
                                                    style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">
                                                    <div class="row">
                                                        <div class="col"
                                                            style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                                            Valor do IPI devolvido &nbsp &nbsp <img alt="" src="../Imagens/ihelp.png"  style="width: 20px; height: 21px; cursor:pointer" onclick="anima_informacao(1,'valoripidevolvido')" />
                                                        </div>
                                                    </div>
                                                    <div class="row" style="padding: 0px; margin: 0px">
                                                        <div class="col" style="padding: 0px; margin: 0px">
                                                            <asp:TextBox ID="TextBox180" runat="server" CssClass="layouttexto"
                                                                Style="width: 170px;" onBlur="SetTextIn(this,0);SetDiv('div_tributo_devolvido',0)"
                                                onFocus="SetTextIn(this,1);SetDiv('div_tributo_devolvido',1)">
                                                            </asp:TextBox>
                                                        </div>
                                                    </div>
                                                </div>


                                            </div>

                                        </div>
                                        <!--/////////////////////////////////////////////////// Container LINHA LADO DIREITO -   Informação do IPI devolvido  /Valor do IPI devolvido/////////////////////////////////////////////////////////////////////////////////////////////-->
                                        <div class="col-xl-6"
                                            style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px;">

                                            <div class="row"
                                                style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

                                                <div class="col-md-12"
                                                    style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-left: 15px; padding-top: 10px; padding-right: 12px">
                                                    <div class="row">
                                                        <div class="col"
                                                            style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                                            Informações Adicionais do Produto 
                                                        </div>
                                                    </div>
                                                    <div class="row" style="padding: 0px; margin: 0px">
                                                        <asp:TextBox ID="TextBox181" runat="server" CssClass="layouttexto"
                                                            Style="width: 100%;" onBlur="SetTextIn(this,0);SetDiv('div_tributo_devolvido',0)"
                                                            onFocus="SetTextIn(this,1);SetDiv('div_tributo_devolvido',1)">
                                                        </asp:TextBox>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
            </div>
        </div>
 </div>
 </div>
    </div>
</div>
</asp:Panel>
    <!--/////////////////////////////////////////////////// Div com os totais da nota ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////-->
            
 
 <asp:Panel  ID="Panel4"  runat="server" BackColor="Transparent" Height="100%" Visible="true">
	<div class="container-fluid" id="div_totais_nota" name="div_totais_nota" style="padding:0px;margin:0px;  width:100%;height:100%; display:none;">


 <div class="row" style="width:100%;height:20px"></div>


     <div class="row" style="width: 100%; height: 100%;  padding-left:20px; padding-top: 0px; margin-left: 0px; visibility:visible">

         <div id="i_total_nfe_on" name="i_total_nfe_on" class="col" align="left" style="display: block; visibility: visible; font-size: 20px; color: red; margin-right: 20px; border-bottom: none; cursor: pointer" onclick="mostra_div_informacao('div_total_nfe','i_total_nfe_on','i_total_nfe_off',0)"><span style="color: #177CC0; font-family: Arial; font-size: 20px; font-weight: bold;">Total NF-e</span>&nbsp;&nbsp;<i class="fa fa-toggle-on"></i></div>
         <div id="i_total_nfe_off" name="i_total_nfe_off" class="col" align="left" style="display: none; visibility: hidden; font-size: 20px; color: red; margin-right: 20px; border-bottom: solid; border-width: 1px; border-color: #767676; cursor: pointer" onclick="mostra_div_informacao('div_total_nfe','i_total_nfe_on','i_total_nfe_off',1)"><span style="color: #177CC0; font-family: Arial; font-size: 20px; font-weight: bold;">Total NF-e</span>&nbsp;&nbsp;<i class="fa fa-toggle-off"></i></div>

     </div>

     <div class="row"  style="width: 100%; height: 2px"></div>

     <div id="div_total_nfe" name="div_total_nfe" style="visibility:visible;width:98%;height:100%;background-color:transparent;margin-left:20px;margin-right:20px;border:solid;border-color:#177CC0;border-width:1px;border-radius:10px;padding: 0px 20px 20px 20px;"    >
       
             <div class="row"
                     style="width:100%;padding:0px;margin:0px;background-color:transparent;height:100%;padding:0px;margin:0px">

                   
                    <!--/////////////////////////////////////////////////// LINHA LADO BC do ICMS/ Valor Total do ICMS  /////////////////////////////////////////////////////////////////////////////////////////////-->
                     <div class="col-xl-6"
                         style="width:100%;height:100%;background-color:transparent;padding:0px;margin:0px">

                         <div class="row"
                             style="width:100%;height:100%;background-color:transparent;padding:0px;margin:0px">

                             <div class="col-md-6"
                                 style="width:100%;height:100%;background-color:transparent;padding:10px;">


                                 <div class="row">
                                     <div class="col"
                                         style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                         BC do ICMS
                                     </div>
                                 </div>

                                 <div class="row" style="padding:0px;margin:0px">
                                     <div class="col" style="padding:0px;margin:0px">
                                         <asp:TextBox ID="cs_tste" runat="server" CssClass="layouttexto"
                                             style="width: 150px;padding:0px;margin:0px"
                                              onBlur="SetTextIn(this,0);SetDiv('div_total_nfe',0)" onFocus="SetTextIn(this,1);SetDiv('div_total_nfe',1)" >

                                         </asp:TextBox>
                                     </div>
                                 </div>

                             </div>


                             <div class=" col-md-6"
                                 style="width:100%;height:100%;background-color:transparent; padding:10px;">

                                 <div class="row">
                                     <div class="col"
                                         style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                         Valor Total do ICMS
                                     </div>
                                 </div>
                                 <div class="row" style="padding:0px;margin:0px">
                                     <div class="col" style="padding:0px;margin:0px">
                                         <asp:TextBox ID="cs_xw" runat="server" CssClass="layouttexto"
                                             style="width: 200px;" onBlur="SetTextIn(this,0);SetDiv('div_total_nfe',0)" onFocus="SetTextIn(this,1);SetDiv('div_total_nfe',1)" >
                                         </asp:TextBox>
                                     </div>
                                 </div>
                             </div>


                         </div>
                     
                     </div>

                 <!--/////////////////////////////////////////////////// LINHA LADO DIREITO  Valor Total do ICMS desonerado - BC do ICMS STs  /////////////////////////////////////////////////////////////////////////////////////////////-->
                 <div class="col-xl-6"
                     style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

                     <div class="row"
                         style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

                         <div class="col-md-5"
                             style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">


                             <div class="row">
                                 <div class="col"
                                     style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                     BC do ICMS ST
                                 </div>
                             </div>

                             <div class="row" style="padding: 0px; margin: 0px">
                                 <div class="col" style="padding: 0px; margin: 0px">
                                     <asp:TextBox ID="TextBox97" runat="server" CssClass="layouttexto"
                                         Style="width: 200px; padding: 0px; margin: 0px"
                                         onBlur="SetTextIn(this,0);SetDiv('div_total_nfe',0)" onFocus="SetTextIn(this,1);SetDiv('div_total_nfe',1)">

                                     </asp:TextBox>
                                 </div>
                             </div>

                         </div>


                         <div class=" col-md-7"
                             style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">

                             <div class="row">
                                 <div class="col"
                                     style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                      Valor Total do ICMS desonerado 
                                 </div>
                             </div>
                             <div class="row" style="padding: 0px; margin: 0px">
                                 <div class="col" style="padding: 0px; margin: 0px">
                                     <asp:TextBox ID="TextBox120" runat="server" CssClass="layouttexto"
                                         Style="width: 200px;" onBlur="SetTextIn(this,0);SetDiv('div_total_nfe',0)" onFocus="SetTextIn(this,1);SetDiv('div_total_nfe',1)">
                                     </asp:TextBox>
                                 </div>
                             </div>
                         </div>


                     </div>

                 </div>
             </div>

         <!--/////////////////////////////////////////////////// LINHA LADO Valor Total do ICMS ST/ Valor Total do ICMS  /////////////////////////////////////////////////////////////////////////////////////////////-->
         <div class="row" style="height: 30px"></div>

         <div class="row"
        style="width:100%;padding:0px;margin:0px;background-color:transparent;height:100%;padding:0px;margin:0px">

        <div class="col-xl-6"
            style="width:100%;height:100%;background-color:transparent;padding:0px;margin:0px">

            <div class="row"
                style="width:100%;height:100%;background-color:transparent;padding:0px;margin:0px">

                <div class="col-md-6"
                    style="width:100%;height:100%;background-color:transparent;padding:10px;">


                    <div class="row">
                        <div class="col"
                            style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                            Valor Total do ICMS ST
                        </div>
                    </div>

                    <div class="row" style="padding:0px;margin:0px">
                        <div class="col" style="padding:0px;margin:0px">
                            <asp:TextBox ID="TextBox121" runat="server" CssClass="layouttexto"
                                style="width: 150px;padding:0px;margin:0px"
                                 onBlur="SetTextIn(this,0);SetDiv('div_total_nfe',0)" onFocus="SetTextIn(this,1);SetDiv('div_total_nfe',1)" >

                            </asp:TextBox>
                        </div>
                    </div>

                </div>


                <div class=" col-md-6"
                    style="width:100%;height:100%;background-color:transparent; padding:10px;">

                    <div class="row">
                        <div class="col"
                            style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                            Total de Produtos e Serviços
                        </div>
                    </div>
                    <div class="row" style="padding:0px;margin:0px">
                        <div class="col" style="padding:0px;margin:0px">
                            <asp:TextBox ID="TextBox122" runat="server" CssClass="layouttexto"
                                style="width: 200px;" onBlur="SetTextIn(this,0);SetDiv('div_total_nfe',0)" onFocus="SetTextIn(this,1);SetDiv('div_total_nfe',1)" >
                            </asp:TextBox>
                        </div>
                    </div>
                </div>


            </div>
        
        </div>

    <!--/////////////////////////////////////////////////// LINHA LADO DIREITO  Valor Total do ICMS desonerado - BC do ICMS STs  /////////////////////////////////////////////////////////////////////////////////////////////-->
    <div class="col-xl-6"
        style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

        <div class="row"
            style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

            <div class="col-md-5"
                style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">


                <div class="row">
                    <div class="col"
                        style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                        Valor Total do Frete
                    </div>
                </div>

                <div class="row" style="padding: 0px; margin: 0px">
                    <div class="col" style="padding: 0px; margin: 0px">
                        <asp:TextBox ID="TextBox123" runat="server" CssClass="layouttexto"
                            Style="width: 200px; padding: 0px; margin: 0px"
                            onBlur="SetTextIn(this,0);SetDiv('div_total_nfe',0)" onFocus="SetTextIn(this,1);SetDiv('div_total_nfe',1)">

                        </asp:TextBox>
                    </div>
                </div>

            </div>


            <div class=" col-md-7"
                style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">

                <div class="row">
                    <div class="col"
                        style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                        Valor Total do Seguro
                    </div>
                </div>
                <div class="row" style="padding: 0px; margin: 0px">
                    <div class="col" style="padding: 0px; margin: 0px">
                        <asp:TextBox ID="TextBox124" runat="server" CssClass="layouttexto"
                            Style="width: 200px;" onBlur="SetTextIn(this,0);SetDiv('div_total_nfe',0)" onFocus="SetTextIn(this,1);SetDiv('div_total_nfe',1)">
                        </asp:TextBox>
                    </div>
                </div>
            </div>


        </div>

    </div>
</div>

                  <!--/////////////////////////////////////////////////// LINHA LADO Valor Total do Desconto/ Valor Total do II  /////////////////////////////////////////////////////////////////////////////////////////////-->
         <div class="row" style="height: 30px"></div>

         <div class="row"
        style="width:100%;padding:0px;margin:0px;background-color:transparent;height:100%;padding:0px;margin:0px">

        <div class="col-xl-6"
            style="width:100%;height:100%;background-color:transparent;padding:0px;margin:0px">

            <div class="row"
                style="width:100%;height:100%;background-color:transparent;padding:0px;margin:0px">

                <div class="col-md-6"
                    style="width:100%;height:100%;background-color:transparent;padding:10px;">


                    <div class="row">
                        <div class="col"
                            style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                            Valor Total do Desconto
                        </div>
                    </div>

                    <div class="row" style="padding:0px;margin:0px">
                        <div class="col" style="padding:0px;margin:0px">
                            <asp:TextBox ID="TextBox125" runat="server" CssClass="layouttexto"
                                style="width: 150px;padding:0px;margin:0px"
                                 onBlur="SetTextIn(this,0);SetDiv('div_total_nfe',0)" onFocus="SetTextIn(this,1);SetDiv('div_total_nfe',1)" >

                            </asp:TextBox>
                        </div>
                    </div>

                </div>


                <div class=" col-md-6"
                    style="width:100%;height:100%;background-color:transparent; padding:10px;">

                    <div class="row">
                        <div class="col"
                            style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                            Valor Total do II
                        </div>
                    </div>
                    <div class="row" style="padding:0px;margin:0px">
                        <div class="col" style="padding:0px;margin:0px">
                            <asp:TextBox ID="TextBox126" runat="server" CssClass="layouttexto"
                                style="width: 200px;" onBlur="SetTextIn(this,0);SetDiv('div_total_nfe',0)" onFocus="SetTextIn(this,1);SetDiv('div_total_nfe',1)" >
                            </asp:TextBox>
                        </div>
                    </div>
                </div>


            </div>
        
        </div>

    <!--/////////////////////////////////////////////////// LINHA LADO DIREITO  Valor Total do IPI - Valor Total do PIS  /////////////////////////////////////////////////////////////////////////////////////////////-->
    <div class="col-xl-6"
        style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

        <div class="row"
            style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

            <div class="col-md-5"
                style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">


                <div class="row">
                    <div class="col"
                        style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                        Valor Total do IPI
                    </div>
                </div>

                <div class="row" style="padding: 0px; margin: 0px">
                    <div class="col" style="padding: 0px; margin: 0px">
                        <asp:TextBox ID="TextBox127" runat="server" CssClass="layouttexto"
                            Style="width: 200px; padding: 0px; margin: 0px"
                            onBlur="SetTextIn(this,0);SetDiv('div_total_nfe',0)" onFocus="SetTextIn(this,1);SetDiv('div_total_nfe',1)">

                        </asp:TextBox>
                    </div>
                </div>

            </div>


            <div class=" col-md-7"
                style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">

                <div class="row">
                    <div class="col"
                        style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                        Valor Total do PIS
                    </div>
                </div>
                <div class="row" style="padding: 0px; margin: 0px">
                    <div class="col" style="padding: 0px; margin: 0px">
                        <asp:TextBox ID="TextBox128" runat="server" CssClass="layouttexto"
                            Style="width: 200px;" onBlur="SetTextIn(this,0);SetDiv('div_total_nfe',0)" onFocus="SetTextIn(this,1);SetDiv('div_total_nfe',1)">
                        </asp:TextBox>
                    </div>
                </div>
            </div>


        </div>

    </div>
</div>

                           <!--/////////////////////////////////////////////////// Valor COFINS /  Outras despesas acessórias /////////////////////////////////////////////////////////////////////////////////////////////-->
         <div class="row" style="height: 30px"></div>

         <div class="row"
        style="width:100%;padding:0px;margin:0px;background-color:transparent;height:100%;padding:0px;margin:0px">

        <div class="col-xl-6"
            style="width:100%;height:100%;background-color:transparent;padding:0px;margin:0px">

            <div class="row"
                style="width:100%;height:100%;background-color:transparent;padding:0px;margin:0px">

                <div class="col-md-6"
                    style="width:100%;height:100%;background-color:transparent;padding:10px;">


                    <div class="row">
                        <div class="col"
                            style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                            Valor COFINS 
                        </div>
                    </div>

                    <div class="row" style="padding:0px;margin:0px">
                        <div class="col" style="padding:0px;margin:0px">
                            <asp:TextBox ID="TextBox160" runat="server" CssClass="layouttexto"
                                style="width: 150px;padding:0px;margin:0px"
                                 onBlur="SetTextIn(this,0);SetDiv('div_total_nfe',0)" onFocus="SetTextIn(this,1);SetDiv('div_total_nfe',1)" >

                            </asp:TextBox>
                        </div>
                    </div>

                </div>


                <div class=" col-md-6"
                    style="width:100%;height:100%;background-color:transparent; padding:10px;">

                    <div class="row">
                        <div class="col"
                            style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                            Outras despesas acessórias
                        </div>
                    </div>
                    <div class="row" style="padding:0px;margin:0px">
                        <div class="col" style="padding:0px;margin:0px">
                            <asp:TextBox ID="TextBox176" runat="server" CssClass="layouttexto"
                                style="width: 200px;" onBlur="SetTextIn(this,0);SetDiv('div_total_nfe',0)" onFocus="SetTextIn(this,1);SetDiv('div_total_nfe',1)" >
                            </asp:TextBox>
                        </div>
                    </div>
                </div>


            </div>
        
        </div>

    <!--/////////////////////////////////////////////////// LINHA LADO DIREITO  Valor Total do IPI - Valor Total do PIS  /////////////////////////////////////////////////////////////////////////////////////////////-->
    <div class="col-xl-6"
        style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

        <div class="row"
            style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

            <div class="col-md-5"
                style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">


                <div class="row">
                    <div class="col"
                        style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                        Valor Total da NF-e
                    </div>
                </div>

                <div class="row" style="padding: 0px; margin: 0px">
                    <div class="col" style="padding: 0px; margin: 0px">
                        <asp:TextBox ID="TextBox182" runat="server" CssClass="layouttexto"
                            Style="width: 200px; padding: 0px; margin: 0px"
                            onBlur="SetTextIn(this,0);SetDiv('div_total_nfe',0)" onFocus="SetTextIn(this,1);SetDiv('div_total_nfe',1)">

                        </asp:TextBox>
                    </div>
                </div>

            </div>


            <div class=" col-md-7"
                style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">

                <div class="row">
                    <div class="col"
                        style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                       Total de impostos federais e estaduais
                    </div>
                </div>
                <div class="row" style="padding: 0px; margin: 0px">
                    <div class="col" style="padding: 0px; margin: 0px">
                        <asp:TextBox ID="TextBox183" runat="server" CssClass="layouttexto"
                            Style="width: 200px;" onBlur="SetTextIn(this,0);SetDiv('div_total_nfe',0)" onFocus="SetTextIn(this,1);SetDiv('div_total_nfe',1)">
                        </asp:TextBox>
                    </div>
                </div>
            </div>


        </div>

    </div>
</div>

             </div>
 

                         <!--///////////////////////////////////////////////////   Container - Total nfe/ISSQN/////////////////////////////////////////////////////////////////////////////////////////////-->


<div class="container-fluid" style="padding: 0px; margin: 0px; width: 100%; height: 100%;">


    <div class="row" style="width: 100%; height: 50px"></div>
       
    <div class="row" style="width: 100%; height: 100%; padding: 0px; margin: 0px; background-color: transparent">
       
        <div class="row" style="width: 100%; height: 100%; color: #177CC0; padding-left: 20px; padding-top: 0px; font-family: Arial; font-size: 20px; font-weight: bold; margin-left: 0px">
       
            <div id="i_total_nfe_issqn_on" name="i_total_nfe_issqn_on" class="col" align="left" style="display: none; visibility: hidden; font-size: 20px; color: red; margin-right: 20px; border-bottom: none; cursor: pointer" onclick="mostra_div_informacao('div_total_nfe_issqn','i_total_nfe_issqn_on','i_total_nfe_issqn_off',0)"><span style="color: #177CC0; font-family: Arial; font-size: 20px; font-weight: bold;">Total Nf-e/ ISSQN</span>&nbsp;&nbsp;<i class="fa fa-toggle-on"></i></div>
            <div id="i_total_nfe_issqn_off" name="i_total_nfe_issqn_off" class="col" align="left" style="display: block; visibility: visible; font-size: 20px; color: red; margin-right: 20px; border-bottom: solid; border-color: #767676; border-width: 1px; cursor: pointer" onclick="mostra_div_informacao('div_total_nfe_issqn','i_total_nfe_issqn_on','i_total_nfe_issqn_off',1)"><span style="color: #177CC0; font-family: Arial; font-size: 20px; font-weight: bold;">Total Nf-e / ISSQN </span>&nbsp;&nbsp;<i class="fa fa-toggle-off"></i></div>
       
       
        </div>
       
        <div class="row" style="width: 100%; height: 20px"></div>
       
       
        <div id="div_total_nfe_issqn" name="div_total_nfe_issqn"
            style="display: none; visibility: visible; width: 100%; height: 100%; background-color: transparent; margin-left: 20px; margin-right: 20px; border: solid; border-color: #177CC0; border-width: 1px; border-radius: 10px; padding: 0 20px 20px 20px;">
       
       
       
            <div class="row"
                style="width: 100%; padding: 0px; margin: 0px; background-color: transparent; height: 100%; padding: 0px; margin: 0px">
       
       
                <!--///////////////////////////////////////////////////  Container -  LINHA LADO ESQUERDO - Total dos Serviços Não Tributados pelo ICMS /////////////////////////////////////////////////////////////////////////////////////////////-->
                <div class="col-xl-6"
                    style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">
       
                    <div class="row" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">
       
                        <div class="col-md-auto" style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">
       
       
                            <div class="row">
                                <div class="col"
                                    style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                    Total dos Serviços Não Tributados pelo ICMS
                                </div>
                            </div>
       
                            <div class="row" style="padding: 0px; margin: 0px">
                                <div class="col" style="padding: 0px; margin: 0px">
                                    <asp:TextBox ID="TextBox251" runat="server" CssClass="layouttexto"
                                        Style="width: 200px;" onBlur="SetTextIn(this,0);SetDiv('div_total_nfe_issqn',0)"
                                    onFocus="SetTextIn(this,1);SetDiv('div_total_nfe_issqn',1)">
                                    </asp:TextBox>
                                </div>
                            </div>
                        </div>      
                    </div>
       
                </div>
                <!--/////////////////////////////////////////////////// Container LINHA LADO DIREITO -  Código do Regime de Tributação/////////////////////////////////////////////////////////////////////////////////////////////-->
                <div class="col-xl-6"
                    style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px;">
       
                    <div class="row"
                        style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">
       
                        <div class="col-md-auto"
                            style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-left: 15px; padding-top: 10px; padding-right: 12px">
                            <div class="row">
                                <div class="col"
                                    style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                    Código do Regime de Tributação &nbsp &nbsp <img alt="" src="../Imagens/ihelp.png"  style="width: 20px; height: 21px; cursor:pointer" onclick="anima_informacao(1,'codigotributacao')" />
                                </div>
                            </div>
                            <div class="row" style="padding: 0px; margin: 0px">
                                <div class="col" style="padding: 0px; margin: 0px">
                                    <asp:DropDownList ID="DropDownList36" onBlur="SetTextIn(this,0);SetDiv('div_total_nfe_issqn',0)" onFocus="SetTextIn(this,1);SetDiv('div_total_nfe_issqn',1)" CssClass="layouttexto" runat="server">
                                        <asp:ListItem style="width: 100%;" Text="0" Value="0" />
                                        <asp:ListItem style="width: 100%;" Text="1" Value="1" />
                                        <asp:ListItem style="width: 100%;" Text="2" Value="2" />
                                        <asp:ListItem style="width: 100%;" Text="9" Value="9" />

                                    </asp:DropDownList>
                                </div>
                            </div>
                        </div>                           
                    </div>
                </div>
            </div>


            <!--///////////////////////////////////////////////////  Container -  LINHA LADO ESQUERDO - Valor total do COFINS sobre serviços /////////////////////////////////////////////////////////////////////////////////////////////-->
                <div class="row" style="height:20px"></div>
            <div class="row"
                style="width: 100%; padding: 0px; margin: 0px; background-color: transparent; height: 100%; padding: 0px; margin: 0px">
       
                <div class="col-xl-6"
                    style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">
       
                    <div class="row" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">
       
                        <div class="col-md-auto" style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">
       
       
                            <div class="row">
                                <div class="col"
                                    style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                    Valor total do COFINS sobre serviços
                                </div>
                            </div>
       
                            <div class="row" style="padding: 0px; margin: 0px">
                                <div class="col" style="padding: 0px; margin: 0px">
                                    <asp:TextBox ID="TextBox255" runat="server" CssClass="layouttexto"
                                        Style="width: 200px;" onBlur="SetTextIn(this,0);SetDiv('div_total_nfe_issqn',0)"
                                    onFocus="SetTextIn(this,1);SetDiv('div_total_nfe_issqn',1)">
                                    </asp:TextBox>
                                </div>
                            </div>
                        </div>
                    </div>
       
                </div>
                <!--/////////////////////////////////////////////////// Container LINHA LADO DIREITO -  Valor total dedução para redução da Base de Cálculo/////////////////////////////////////////////////////////////////////////////////////////////-->
                <div class="col-xl-6"
                    style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px;">
       
                    <div class="row"
                        style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">
       
                        <div class="col-md-auto"
                            style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-left: 15px; padding-top: 10px; padding-right: 12px">
                            <div class="row">
                                <div class="col"
                                    style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                    Valor total dedução para redução da Base de Cálculo
                                </div>
                            </div>
                            <div class="row" style="padding: 0px; margin: 0px">
                                <div class="col" style="padding: 0px; margin: 0px">
                                    <asp:TextBox ID="TextBox257" runat="server" CssClass="layouttexto"
                                        Style="width: 180px;" onBlur="SetTextIn(this,0);SetDiv('div_total_nfe_issqn',0)"
                                    onFocus="SetTextIn(this,1);SetDiv('div_total_nfe_issqn',1)">
                                    </asp:TextBox>
                                </div>
                            </div>
                        </div>         
                    </div>
                </div>
            </div>

            <!--///////////////////////////////////////////////////  Container -  LINHA LADO ESQUERDO - Valor Total Base de Cálculo do ISS /////////////////////////////////////////////////////////////////////////////////////////////-->
            <div class="row" style="height: 20px"></div>
            <div class="row"
                style="width: 100%; padding: 0px; margin: 0px; background-color: transparent; height: 100%; padding: 0px; margin: 0px">

                <div class="col-xl-6"
                    style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

                    <div class="row" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

                        <div class="col-md-auto" style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">


                            <div class="row">
                                <div class="col"
                                    style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                    Valor Total Base de Cálculo do ISS
                                </div>
                            </div>

                            <div class="row" style="padding: 0px; margin: 0px">
                                <div class="col" style="padding: 0px; margin: 0px">
                                    <asp:TextBox ID="TextBox252" runat="server" CssClass="layouttexto"
                                        Style="width: 200px;" onBlur="SetTextIn(this,0);SetDiv('div_total_nfe_issqn',0)"
                                        onFocus="SetTextIn(this,1);SetDiv('div_total_nfe_issqn',1)">
                                    </asp:TextBox>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
                <!--/////////////////////////////////////////////////// Container LINHA LADO DIREITO -  Valor Total do ISS/////////////////////////////////////////////////////////////////////////////////////////////-->
                <div class="col-xl-6"
                    style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px;">

                    <div class="row"
                        style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

                        <div class="col-md-6"
                            style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-left: 15px; padding-top: 10px; padding-right: 12px">
                            <div class="row">
                                <div class="col"
                                    style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                    Valor Total do ISS
                                </div>
                            </div>
                            <div class="row" style="padding: 0px; margin: 0px">
                                <div class="col" style="padding: 0px; margin: 0px">
                                    <asp:TextBox ID="TextBox253" runat="server" CssClass="layouttexto"
                                        Style="width: 180px;" onBlur="SetTextIn(this,0);SetDiv('div_total_nfe_issqn',0)"
                                        onFocus="SetTextIn(this,1);SetDiv('div_total_nfe_issqn',1)">
                                    </asp:TextBox>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!--///////////////////////////////////////////////////  Container -  LINHA LADO ESQUERDO - Valor Total do PIS sobre serviços /////////////////////////////////////////////////////////////////////////////////////////////-->
            <div class="row" style="height: 20px"></div>
            <div class="row"
                style="width: 100%; padding: 0px; margin: 0px; background-color: transparent; height: 100%; padding: 0px; margin: 0px">

                <div class="col-xl-6"
                    style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

                    <div class="row" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

                        <div class="col-md-auto" style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">


                            <div class="row">
                                <div class="col"
                                    style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                    Valor Total do PIS sobre serviços
                                </div>
                            </div>

                            <div class="row" style="padding: 0px; margin: 0px">
                                <div class="col" style="padding: 0px; margin: 0px">
                                    <asp:TextBox ID="TextBox254" runat="server" CssClass="layouttexto"
                                        Style="width: 200px;" onBlur="SetTextIn(this,0);SetDiv('div_total_nfe_issqn',0)"
                                        onFocus="SetTextIn(this,1);SetDiv('div_total_nfe_issqn',1)">
                                    </asp:TextBox>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
                <!--/////////////////////////////////////////////////// Container LINHA LADO DIREITO -  Valor total da COFINS sobre serviços/////////////////////////////////////////////////////////////////////////////////////////////-->
                <div class="col-xl-6"
                    style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px;">

                    <div class="row"
                        style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

                        <div class="col-md-6"
                            style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-left: 15px; padding-top: 10px; padding-right: 12px">
                            <div class="row">
                                <div class="col"
                                    style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                    Valor total da COFINS sobre serviços
                                </div>
                            </div>
                            <div class="row" style="padding: 0px; margin: 0px">
                                <div class="col" style="padding: 0px; margin: 0px">
                                    <asp:TextBox ID="TextBox256" runat="server" CssClass="layouttexto"
                                        Style="width: 180px;" onBlur="SetTextIn(this,0);SetDiv('div_total_nfe_issqn',0)"
                                        onFocus="SetTextIn(this,1);SetDiv('div_total_nfe_issqn',1)">
                                    </asp:TextBox>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!--///////////////////////////////////////////////////  Container -  LINHA LADO ESQUERDO - Data da prestação do serviço /////////////////////////////////////////////////////////////////////////////////////////////-->
            <div class="row" style="height: 20px"></div>
            <div class="row"
                style="width: 100%; padding: 0px; margin: 0px; background-color: transparent; height: 100%; padding: 0px; margin: 0px">

                <div class="col-xl-6"
                    style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

                    <div class="row" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

                        <div class="col-md-auto" style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">


                            <div class="row">
                                <div class="col"
                                    style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                    Data da prestação do serviço
                                </div>
                            </div>

                            <div class="row" style="padding: 0px; margin: 0px">
                                <div class="col" style="padding: 0px; margin: 0px">
                                    <asp:TextBox ID="TextBox258" runat="server" CssClass="layouttexto"
                                        Style="width: 200px;" onBlur="SetTextIn(this,0);SetDiv('div_total_nfe_issqn',0)"
                                        onFocus="SetTextIn(this,1);SetDiv('div_total_nfe_issqn',1)">
                                    </asp:TextBox>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
                <!--/////////////////////////////////////////////////// Container LINHA LADO DIREITO -  Valor total de outras retenções/////////////////////////////////////////////////////////////////////////////////////////////-->
                <div class="col-xl-6"
                    style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px;">

                    <div class="row"
                        style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

                        <div class="col-md-6"
                            style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-left: 15px; padding-top: 10px; padding-right: 12px">
                            <div class="row">
                                <div class="col"
                                    style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                    Valor total de outras retenções
                                </div>
                            </div>
                            <div class="row" style="padding: 0px; margin: 0px">
                                <div class="col" style="padding: 0px; margin: 0px">
                                    <asp:TextBox ID="TextBox259" runat="server" CssClass="layouttexto"
                                        Style="width: 180px;" onBlur="SetTextIn(this,0);SetDiv('div_total_nfe_issqn',0)"
                                        onFocus="SetTextIn(this,1);SetDiv('div_total_nfe_issqn',1)">
                                    </asp:TextBox>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!--///////////////////////////////////////////////////  Container -  LINHA LADO ESQUERDO - Valor total desconto incondicionado/////////////////////////////////////////////////////////////////////////////////////////////-->
            <div class="row" style="height: 20px"></div>
            <div class="row"
                style="width: 100%; padding: 0px; margin: 0px; background-color: transparent; height: 100%; padding: 0px; margin: 0px">

                <div class="col-xl-6"
                    style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

                    <div class="row" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

                        <div class="col-md-auto" style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">


                            <div class="row">
                                <div class="col"
                                    style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                    Valor total desconto incondicionado
                                </div>
                            </div>

                            <div class="row" style="padding: 0px; margin: 0px">
                                <div class="col" style="padding: 0px; margin: 0px">
                                    <asp:TextBox ID="TextBox260" runat="server" CssClass="layouttexto"
                                        Style="width: 200px;" onBlur="SetTextIn(this,0);SetDiv('div_total_nfe_issqn',0)"
                                        onFocus="SetTextIn(this,1);SetDiv('div_total_nfe_issqn',1)">
                                    </asp:TextBox>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
                <!--/////////////////////////////////////////////////// Container LINHA LADO DIREITO -  Valor total desconto condicionado/////////////////////////////////////////////////////////////////////////////////////////////-->
                <div class="col-xl-6"
                    style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px;">

                    <div class="row"
                        style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

                        <div class="col-md-6"
                            style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-left: 15px; padding-top: 10px; padding-right: 12px">
                            <div class="row">
                                <div class="col"
                                    style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                    Valor total desconto condicionado
                                </div>
                            </div>
                            <div class="row" style="padding: 0px; margin: 0px">
                                <div class="col" style="padding: 0px; margin: 0px">
                                    <asp:TextBox ID="TextBox261" runat="server" CssClass="layouttexto"
                                        Style="width: 180px;" onBlur="SetTextIn(this,0);SetDiv('div_total_nfe_issqn',0)"
                                        onFocus="SetTextIn(this,1);SetDiv('div_total_nfe_issqn',1)">
                                    </asp:TextBox>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!--///////////////////////////////////////////////////  Container -  LINHA LADO ESQUERDO - Valor toal retenção ISS /////////////////////////////////////////////////////////////////////////////////////////////-->
            <div class="row" style="height: 20px"></div>
            <div class="row"
                style="width: 100%; padding: 0px; margin: 0px; background-color: transparent; height: 100%; padding: 0px; margin: 0px">
                <class="col-xl-6"
        style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

        <div class="row" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

            <div class="col-md-auto" style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">


                <div class="row">
                    <div class="col"
                        style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                        Valor toal retenção ISS
                    </div>
                </div>

                <div class="row" style="padding: 0px; margin: 0px">
                    <div class="col" style="padding: 0px; margin: 0px">
                        <asp:TextBox ID="TextBox262" runat="server" CssClass="layouttexto"
                            Style="width: 200px;" onBlur="SetTextIn(this,0);SetDiv('div_total_nfe_issqn',0)"
                            onFocus="SetTextIn(this,1);SetDiv('div_total_nfe_issqn',1)">
                        </asp:TextBox>
                    </div>
                </div>
            </div>
        </div>
            </div>
        </div>
    </div>
        </div>
                 <!--///////////////////////////////////////////////////   Container - Total nfe/retenção de tributos/////////////////////////////////////////////////////////////////////////////////////////////-->


<div class="container-fluid" style="padding: 0px; margin: 0px; width: 100%; height: 100%;">


    <div class="row" style="width: 100%; height: 50px"></div>
       
    <div class="row" style="width: 100%; height: 100%; padding: 0px; margin: 0px; background-color: transparent">
       
        <div class="row" style="width: 100%; height: 100%; color: #177CC0; padding-left: 20px; padding-top: 0px; font-family: Arial; font-size: 20px; font-weight: bold; margin-left: 0px">
       
            <div id="i_nfe_retencao_tributos_on" name="i_nfe_retencao_tributos_on" class="col" align="left" style="display: none; visibility: hidden; font-size: 20px; color: red; margin-right: 20px; border-bottom: none; cursor: pointer" onclick="mostra_div_informacao('div_nfe_retencao_tributos','i_nfe_retencao_tributos_on','i_nfe_retencao_tributos_off',0)"><span style="color: #177CC0; font-family: Arial; font-size: 20px; font-weight: bold;">Total Nf-e/ Retenção de Tributos</span>&nbsp;&nbsp;<i class="fa fa-toggle-on"></i></div>
            <div id="i_nfe_retencao_tributos_off" name="i_nfe_retencao_tributos_off" class="col" align="left" style="display: block; visibility: visible; font-size: 20px; color: red; margin-right: 20px; border-bottom: solid; border-color: #767676; border-width: 1px; cursor: pointer" onclick="mostra_div_informacao('div_nfe_retencao_tributos','i_nfe_retencao_tributos_on','i_nfe_retencao_tributos_off',1)"><span style="color: #177CC0; font-family: Arial; font-size: 20px; font-weight: bold;">Total Nf-e Retenção de Tributos </span>&nbsp;&nbsp;<i class="fa fa-toggle-off"></i></div>
       
       
        </div>
       
        <div class="row" style="width: 100%; height: 20px"></div>
       
       
        <div id="div_nfe_retencao_tributos" name="div_nfe_retencao_tributos"
            style="display: none; visibility: visible; width: 100%; height: 100%; background-color: transparent; margin-left: 20px; margin-right: 20px; border: solid; border-color: #177CC0; border-width: 1px; border-radius: 10px; padding: 0 20px 20px 20px;">
       
       
       
            <div class="row"
                style="width: 100%; padding: 0px; margin: 0px; background-color: transparent; height: 100%; padding: 0px; margin: 0px">
       
       
                <!--///////////////////////////////////////////////////  Container -  LINHA LADO ESQUERDO - Valor Retido de PIS  -  Valor Retido de COFINS /////////////////////////////////////////////////////////////////////////////////////////////-->
                <div class="col-xl-7"
                    style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">
       
                    <div class="row" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">
       
                        <div class="col-md-6" style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">
       
       
                            <div class="row">
                                <div class="col"
                                    style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                    Valor Retido de PIS
                                </div>
                            </div>
       
                            <div class="row" style="padding: 0px; margin: 0px">
                                <div class="col" style="padding: 0px; margin: 0px">
                                    <asp:TextBox ID="TextBox184" runat="server" CssClass="layouttexto"
                                        Style="width: 200px;" onBlur="SetTextIn(this,0);SetDiv('div_nfe_retencao_tributos',0)"
                                    onFocus="SetTextIn(this,1);SetDiv('div_nfe_retencao_tributos',1)">
                                    </asp:TextBox>
                                </div>
                            </div>
       
                        </div>
       
       
                        <div class=" col-md-6"
                            style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">
                            <div class="row">
                                <div class="col"
                                    style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                    Valor Retido de COFINS
                                </div>
                            </div>
                            <div class="row" style="padding: 0px; margin: 0px">
                                <div class="col" style="padding: 0px; margin: 0px">
                                    <asp:TextBox ID="TextBox185" runat="server" CssClass="layouttexto"
                                        Style="width: 82px;" onBlur="SetTextIn(this,0);SetDiv('div_nfe_retencao_tributos',0)"
                                    onFocus="SetTextIn(this,1);SetDiv('div_nfe_retencao_tributos',1)">
                                    </asp:TextBox>
                                </div>
                            </div>
                        </div>
       
       
                    </div>
       
                </div>
                <!--/////////////////////////////////////////////////// Container LINHA LADO DIREITO -  Valor Retido de CSLL    / Base de Cálculo do IRRF/////////////////////////////////////////////////////////////////////////////////////////////-->
                <div class="col-xl-5"
                    style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px;">
       
                    <div class="row"
                        style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">
       
                        <div class="col-md-6"
                            style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-left: 15px; padding-top: 10px; padding-right: 12px">
                            <div class="row">
                                <div class="col"
                                    style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                    Valor Retido de CSLL 
                                </div>
                            </div>
                            <div class="row" style="padding: 0px; margin: 0px">
                                <div class="col" style="padding: 0px; margin: 0px">
                                    <asp:TextBox ID="TextBox186" runat="server" CssClass="layouttexto"
                                        Style="width: 180px;" onBlur="SetTextIn(this,0);SetDiv('div_nfe_retencao_tributos',0)"
                                    onFocus="SetTextIn(this,1);SetDiv('div_nfe_retencao_tributos',1)">
                                    </asp:TextBox>
                                </div>
                            </div>
                        </div>
   
                        <div class="col-md-6"
                        style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-left: 15px; padding-top: 10px; padding-right: 12px">
                        <div class="row">
                            <div class="col"
                                style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                Base de Cálculo do IRRF
                            </div>
                        </div>
                        <div class="row" style="padding: 0px; margin: 0px">
                            <div class="col" style="padding: 0px; margin: 0px">
                                <asp:TextBox ID="TextBox187" runat="server" CssClass="layouttexto"
                                    Style="width: 130px;" onBlur="SetTextIn(this,0);SetDiv('div_nfe_retencao_tributos',0)"
                                    onFocus="SetTextIn(this,1);SetDiv('div_nfe_retencao_tributos',1)">
                                </asp:TextBox>
                            </div>
                        </div>
                    </div>
       
                    </div>
                </div>
            </div>


            <!--///////////////////////////////////////////////////  Container -  LINHA LADO ESQUERDO - Valor Retido do IRRF - Valor Retido de COFINS /////////////////////////////////////////////////////////////////////////////////////////////-->
                <div class="row" style="height:20px"></div>
            <div class="row"
                style="width: 100%; padding: 0px; margin: 0px; background-color: transparent; height: 100%; padding: 0px; margin: 0px">
       
                <div class="col-xl-7"
                    style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">
       
                    <div class="row" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">
       
                        <div class="col-md-6" style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">
       
       
                            <div class="row">
                                <div class="col"
                                    style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                    Valor Retido do IRRF
                                </div>
                            </div>
       
                            <div class="row" style="padding: 0px; margin: 0px">
                                <div class="col" style="padding: 0px; margin: 0px">
                                    <asp:TextBox ID="TextBox188" runat="server" CssClass="layouttexto"
                                        Style="width: 200px;" onBlur="SetTextIn(this,0);SetDiv('div_nfe_retencao_tributos',0)"
                                    onFocus="SetTextIn(this,1);SetDiv('div_nfe_retencao_tributos',1)">
                                    </asp:TextBox>
                                </div>
                            </div>
       
                        </div>
       
       
                        <div class=" col-md-6"
                            style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">
                            <div class="row">
                                <div class="col"
                                    style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                    BC da Retenção da Previdêncial Social
                                </div>
                            </div>
                            <div class="row" style="padding: 0px; margin: 0px">
                                <div class="col" style="padding: 0px; margin: 0px">
                                    <asp:TextBox ID="TextBox189" runat="server" CssClass="layouttexto"
                                        Style="width: 82px;" onBlur="SetTextIn(this,0);SetDiv('div_nfe_retencao_tributos',0)"
                                    onFocus="SetTextIn(this,1);SetDiv('div_nfe_retencao_tributos',1)">
                                    </asp:TextBox>
                                </div>
                            </div>
                        </div>
       
       
                    </div>
       
                </div>
                <!--/////////////////////////////////////////////////// Container LINHA LADO DIREITO -  BC da Retenção da Previdêncial Social    / Base de Cálculo do IRRF/////////////////////////////////////////////////////////////////////////////////////////////-->
                <div class="col-xl-5"
                    style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px;">
       
                    <div class="row"
                        style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">
       
                        <div class="col-md-auto"
                            style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-left: 15px; padding-top: 10px; padding-right: 12px">
                            <div class="row">
                                <div class="col"
                                    style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                    Valor da Retenção da Previdência Social
                                </div>
                            </div>
                            <div class="row" style="padding: 0px; margin: 0px">
                                <div class="col" style="padding: 0px; margin: 0px">
                                    <asp:TextBox ID="TextBox190" runat="server" CssClass="layouttexto"
                                        Style="width: 180px;" onBlur="SetTextIn(this,0);SetDiv('div_nfe_retencao_tributos',0)"
                                    onFocus="SetTextIn(this,1);SetDiv('div_nfe_retencao_tributos',1)">
                                    </asp:TextBox>
                                </div>
                            </div>
                        </div>
  
                    </div>
                </div>

                
            </div>

            </div>
        </div>
            </div>


   <!--/////////////////////////////////////////////////// Container - Informações do Transporte da NF-e/////////////////////////////////////////////////////////////////////////////////////////////-->


<div class="container-fluid" style="padding: 0px; margin: 0px; width: 100%; height: 100%;">


    <div class="row" style="width: 100%; height: 50px"></div>
       
    <div class="row" style="width: 100%; height: 100%; padding: 0px; margin: 0px; background-color: transparent">
       
        <div class="row" style="width: 100%; height: 100%; color: #177CC0; padding-left: 20px; padding-top: 0px; font-family: Arial; font-size: 20px; font-weight: bold; margin-left: 0px">
       
            <div id="i_informacoes_transporte_nfe_on" name="i_informacoes_transporte_nfe_on" class="col" align="left" style="display: none; visibility: hidden; font-size: 20px; color: red; margin-right: 20px; border-bottom: none; cursor: pointer" onclick="mostra_div_informacao('div_informacoes_transporte_nfe','i_informacoes_transporte_nfe_on','i_informacoes_transporte_nfe_off',0)"><span style="color: #177CC0; font-family: Arial; font-size: 20px; font-weight: bold;">Informações de Transporte da NF-e</span>&nbsp;&nbsp;<i class="fa fa-toggle-on"></i></div>
            <div id="i_informacoes_transporte_nfe_off" name="i_informacoes_transporte_nfe_off" class="col" align="left" style="display: block; visibility: visible; font-size: 20px; color: red; margin-right: 20px; border-bottom: solid; border-color: #767676; border-width: 1px; cursor: pointer" onclick="mostra_div_informacao('div_informacoes_transporte_nfe','i_informacoes_transporte_nfe_on','i_informacoes_transporte_nfe_off',1)"><span style="color: #177CC0; font-family: Arial; font-size: 20px; font-weight: bold;">Informações de Transporte da NF-e </span>&nbsp;&nbsp;<i class="fa fa-toggle-off"></i></div>
       
       
        </div>
       
        <div class="row" style="width: 100%; height: 20px"></div>
       
       
        <div id="div_informacoes_transporte_nfe" name="div_informacoes_transporte_nfe"
            style="display: none; visibility: visible; width: 100%; height: 100%; background-color: transparent; margin-left: 20px; margin-right: 20px; border: solid; border-color: #177CC0; border-width: 1px; border-radius: 10px; padding: 0 20px 20px 20px;">
       
       
       
            <div class="row"
                style="width: 100%; padding: 0px; margin: 0px; background-color: transparent; height: 100%; padding: 0px; margin: 0px">
       
       
                <!--///////////////////////////////////////////////////  Container -  LINHA LADO ESQUERDO - Valor Retido de PIS  -  Valor Retido de COFINS /////////////////////////////////////////////////////////////////////////////////////////////-->
                <div class="col-xl-6"
                    style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">
       
                    <div class="row" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">
       
                        <div class="col-md-6" style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">
       
       
                            <div class="row">
                                <div class="col"
                                    style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                    Modalidade do Frete &nbsp &nbsp <img alt="" src="../Imagens/ihelp.png"  style="width: 20px; height: 21px; cursor:pointer" onclick="anima_informacao(1,'modalidadefrete')" />
                                </div>
                            </div>
       
                            <div class="row" style="padding: 0px; margin: 0px">
                                <div class="col" style="padding: 0px; margin: 0px">
                                    <asp:DropDownList ID="DropDownList26" onBlur="SetTextIn(this,0);SetDiv('div_informacoes_transporte_nfe',0)" onFocus="SetTextIn(this,1);SetDiv('div_informacoes_transporte_nfe',1)" CssClass="layouttexto" runat="server">
                                        <asp:ListItem style="width: 100%;" Text="0" Value="0" />
                                        <asp:ListItem style="width: 100%;" Text="1" Value="1" />
                                        <asp:ListItem style="width: 100%;" Text="2" Value="2" />
                                        <asp:ListItem style="width: 100%;" Text="9" Value="9" />
                                        
                                    </asp:DropDownList>
                                </div>
                            </div>
       
                        </div>
       
       
                        <div class=" col-md-6"
                            style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">
                            <div class="row">
                                <div class="col"
                                    style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                    CNPJ do Transportador
                                </div>
                            </div>
                            <div class="row" style="padding: 0px; margin: 0px">
                                <div class="col" style="padding: 0px; margin: 0px">
                                    <asp:TextBox ID="TextBox192" runat="server" CssClass="layouttexto"
                                        Style="width: 45%;" onBlur="SetTextIn(this,0);SetDiv('div_informacoes_transporte_nfe',0)"
                                    onFocus="SetTextIn(this,1);SetDiv('div_informacoes_transporte_nfe',1)">
                                    </asp:TextBox>
                                </div>
                            </div>
                        </div>
       
       
                    </div>
       
                </div>
                <!--/////////////////////////////////////////////////// Container LINHA LADO DIREITO -  Razão Social ou nome   //////////////////////////////////////////////////////////////////////////////////////////////-->
                <div class="col-xl-6"
                    style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px;">
       
                    <div class="row"
                        style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">
       
                        <div class="col-md-12"
                            style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-left: 15px; padding-top: 10px; padding-right: 12px">
                            <div class="row">
                                <div class="col"
                                    style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                    Razão Social ou nome
                                </div>
                            </div>
                            <div class="row" style="padding: 0px; margin: 0px">
                                <div class="col" style="padding: 0px; margin: 0px">
                                    <asp:TextBox ID="TextBox193" runat="server" CssClass="layouttexto"
                                        Style="width: 100%;" onBlur="SetTextIn(this,0);SetDiv('div_informacoes_transporte_nfe',0)"
                                    onFocus="SetTextIn(this,1);SetDiv('div_informacoes_transporte_nfe',1)">
                                    </asp:TextBox>
                                </div>
                            </div>
                        </div>
   
                        
       
                    </div>
                </div>
            </div>

            <!--///////////////////////////////////////////////////  Container -  LINHA LADO ESQUERDO - CPF do Transportador - Inscrição Estadual do Transportador /////////////////////////////////////////////////////////////////////////////////////////////-->
            <div class="row" style="height: 20px"></div>
            <div class="row"
                style="width: 100%; padding: 0px; margin: 0px; background-color: transparent; height: 100%; padding: 0px; margin: 0px">

                <div class="col-xl-6"
                    style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

                    <div class="row" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

                        <div class="col-md-6" style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">


                            <div class="row">
                                <div class="col"
                                    style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                    CPF do Transportador
                                </div>
                            </div>

                            <div class="row" style="padding: 0px; margin: 0px">
                                <div class="col" style="padding: 0px; margin: 0px">
                                    <asp:TextBox ID="TextBox194" runat="server" CssClass="layouttexto"
                                        Style="width: 250px;" onBlur="SetTextIn(this,0);SetDiv('div_informacoes_transporte_nfe',0)"
                                        onFocus="SetTextIn(this,1);SetDiv('div_informacoes_transporte_nfe',1)">
                                    </asp:TextBox>
                                </div>
                            </div>

                        </div>


                        <div class=" col-md-6"
                            style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">
                            <div class="row">
                                <div class="col"
                                    style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                    Inscrição Estadual do Transportador
                                </div>
                            </div>
                            <div class="row" style="padding: 0px; margin: 0px">
                                <div class="col" style="padding: 0px; margin: 0px">
                                    <asp:TextBox ID="TextBox195" runat="server" CssClass="layouttexto"
                                        Style="width: 45%;" onBlur="SetTextIn(this,0);SetDiv('div_informacoes_transporte_nfe',0)"
                                        onFocus="SetTextIn(this,1);SetDiv('div_informacoes_transporte_nfe',1)">
                                    </asp:TextBox>
                                </div>
                            </div>
                        </div>


                    </div>

                </div>
                <!--/////////////////////////////////////////////////// Container LINHA LADO DIREITO -  Endereço completo   / UF/////////////////////////////////////////////////////////////////////////////////////////////-->
                <div class="col-xl-6"
                    style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px;">

                    <div class="row"
                        style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

                        <div class="col-md-8"
                            style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-left: 15px; padding-top: 10px; padding-right: 12px">
                            <div class="row">
                                <div class="col"
                                    style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                    Endereço completo
                                </div>
                            </div>
                            <div class="row" style="padding: 0px; margin: 0px">
                                <div class="col" style="padding: 0px; margin: 0px">
                                    <asp:TextBox ID="TextBox196" runat="server" CssClass="layouttexto"
                                        Style="width: 100%;" onBlur="SetTextIn(this,0);SetDiv('div_informacoes_transporte_nfe',0)"
                                        onFocus="SetTextIn(this,1);SetDiv('div_informacoes_transporte_nfe',1)">
                                    </asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <div class="col-md-4"
                            style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-left: 15px; padding-top: 10px; padding-right: 12px">
                            <div class="row">
                                <div class="col"
                                    style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                     UF
                                </div>
                            </div>
                            <div class="row" style="padding: 0px; margin: 0px">
                                <div class="col" style="padding: 0px; margin: 0px">
                                    <asp:DropDownList ID="DropDownList6" onBlur="SetTextIn(this,0);SetDiv('div_informacoes_transporte_nfe',0)" onFocus="SetTextIn(this,1);SetDiv('div_informacoes_transporte_nfe',1)" CssClass="layouttexto" runat="server">
                                        <asp:ListItem style="width: 100%;" Text="SP" Value="1" />
                                        <asp:ListItem style="width: 100%;" Text="AC" Value="2" />
                                        <asp:ListItem style="width: 100%;" Text="AL" Value="3" />
                                        <asp:ListItem style="width: 100%;" Text="AP" Value="4" />
                                        <asp:ListItem style="width: 100%;" Text="AM" Value="5" />
                                        <asp:ListItem style="width: 100%;" Text="BA" Value="6" />
                                        <asp:ListItem style="width: 100%;" Text="CE" Value="7" />
                                        <asp:ListItem style="width: 100%;" Text="DF" Value="8" />
                                        <asp:ListItem style="width: 100%;" Text="ES" Value="9" />
                                        <asp:ListItem style="width: 100%;" Text="GO" Value="10" />
                                        <asp:ListItem style="width: 100%;" Text="MA" Value="11" />
                                        <asp:ListItem style="width: 100%;" Text="MT" Value="12" />
                                        <asp:ListItem style="width: 100%;" Text="MS" Value="13" />
                                        <asp:ListItem style="width: 100%;" Text="MG" Value="14" />
                                        <asp:ListItem style="width: 100%;" Text="PA" Value="15" />
                                        <asp:ListItem style="width: 100%;" Text="PB" Value="16" />
                                        <asp:ListItem style="width: 100%;" Text="PR" Value="17" />
                                        <asp:ListItem style="width: 100%;" Text="PE" Value="18" />
                                        <asp:ListItem style="width: 100%;" Text="PI" Value="19" />
                                        <asp:ListItem style="width: 100%;" Text="RJ" Value="20" />
                                        <asp:ListItem style="width: 100%;" Text="RN" Value="21" />
                                        <asp:ListItem style="width: 100%;" Text="RS" Value="22" />
                                        <asp:ListItem style="width: 100%;" Text="RO" Value="23" />
                                        <asp:ListItem style="width: 100%;" Text="RR" Value="24" />
                                        <asp:ListItem style="width: 100%;" Text="SC" Value="25" />
                                        <asp:ListItem style="width: 100%;" Text="SE" Value="26" />
                                        <asp:ListItem style="width: 100%;" Text="TO" Value="27" />
                                        <asp:ListItem style="width: 100%;" Text="EX" Value="28" />
                                    </asp:DropDownList>
                                </div>
                            </div>
                        </div>
                        </div>
                    </div>
                </div>
                 <!--///////////////////////////////////////////////////  Container -  LINHA LADO ESQUERDO - Nome do Município  /////////////////////////////////////////////////////////////////////////////////////////////-->
                <div class="row" style="height: 20px"></div>


                <div class="row"
                        style="width: 100%; padding: 0px; margin: 0px; background-color: transparent; height: 100%; padding: 0px; margin: 0px">
                <div class="col-xl-6"
                    style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px;">

                    <div class="row"
                        style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

                        <div class="col-md-auto"
                            style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-left: 15px; padding-top: 10px; padding-right: 12px">
                            <div class="row">
                                <div class="col"
                                    style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                    Nome do Município
                                </div>
                            </div>
                            <div class="row" style="padding: 0px; margin: 0px">
                                <div class="col" style="padding: 0px; margin: 0px">
                                    <asp:TextBox ID="TextBox197" runat="server" CssClass="layouttexto"
                                        Style="width: 60%;" onBlur="SetTextIn(this,0);SetDiv('div_informacoes_transporte_nfe',0)"
                                        onFocus="SetTextIn(this,1);SetDiv('div_informacoes_transporte_nfe',1)">
                                    </asp:TextBox>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                    <!--///////////////////////////////////////////////////  Container -  LINHA LADO ESQUERDO - Nome do Município  /////////////////////////////////////////////////////////////////////////////////////////////-->
                    <div class="col-xl-6"
                        style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

                        <div class="row" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

                            <div class="col-md-6" style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">


                                <div class="row">
                                    <div class="col"
                                        style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                        Valor do Serviço
                                    </div>
                                </div>

                                <div class="row" style="padding: 0px; margin: 0px">
                                    <div class="col" style="padding: 0px; margin: 0px">
                                        <asp:TextBox ID="TextBox198" runat="server" CssClass="layouttexto"
                                            Style="width: 200px;" onBlur="SetTextIn(this,0);SetDiv('div_informacoes_transporte_nfe',0)"
                                            onFocus="SetTextIn(this,1);SetDiv('div_informacoes_transporte_nfe',1)">
                                        </asp:TextBox>
                                    </div>
                                </div>

                            </div>


                            <div class=" col-md-6"
                                style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">
                                <div class="row">
                                    <div class="col"
                                        style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                        Bc da Retenção do ICMS
                                    </div>
                                </div>
                                <div class="row" style="padding: 0px; margin: 0px">
                                    <div class="col" style="padding: 0px; margin: 0px">
                                        <asp:TextBox ID="TextBox199" runat="server" CssClass="layouttexto"
                                            Style="width: 150px;" onBlur="SetTextIn(this,0);SetDiv('div_informacoes_transporte_nfe',0)"
                                            onFocus="SetTextIn(this,1);SetDiv('div_informacoes_transporte_nfe',1)">
                                        </asp:TextBox>
                                    </div>
                                </div>
                            </div>


                        </div>

                    </div>

                </div>

            <!--///////////////////////////////////////////////////  Container -  LINHA LADO ESQUERDO - Alíquota da Retenção - Valor do ICMS Retido /////////////////////////////////////////////////////////////////////////////////////////////-->
            <div class="row" style="height: 20px"></div>
            <div class="row"
                style="width: 100%; padding: 0px; margin: 0px; background-color: transparent; height: 100%; padding: 0px; margin: 0px">

                <div class="col-xl-6"
                    style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

                    <div class="row" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

                        <div class="col-md-6" style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">


                            <div class="row">
                                <div class="col"
                                    style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                    Alíquota da Retenção
                                </div>
                            </div>

                            <div class="row" style="padding: 0px; margin: 0px">
                                <div class="col" style="padding: 0px; margin: 0px">
                                    <asp:TextBox ID="TextBox200" runat="server" CssClass="layouttexto"
                                        Style="width: 100px;" onBlur="SetTextIn(this,0);SetDiv('div_informacoes_transporte_nfe',0)"
                                        onFocus="SetTextIn(this,1);SetDiv('div_informacoes_transporte_nfe',1)">
                                    </asp:TextBox>
                                </div>
                            </div>

                        </div>


            <div class=" col-md-6"
                style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">
                <div class="row">
                    <div class="col"
                        style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                        Valor do ICMS Retido
                    </div>
                </div>
                <div class="row" style="padding: 0px; margin: 0px">
                    <div class="col" style="padding: 0px; margin: 0px">
                        <asp:TextBox ID="TextBox201" runat="server" CssClass="layouttexto"
                            Style="width: 150px;" onBlur="SetTextIn(this,0);SetDiv('div_informacoes_transporte_nfe',0)"
                            onFocus="SetTextIn(this,1);SetDiv('div_informacoes_transporte_nfe',1)">
                        </asp:TextBox>
                    </div>
                </div>
            </div>


        </div>

    </div>
    <!--/////////////////////////////////////////////////// Container LINHA LADO DIREITO -  CFOP   / Código DO municipio /////////////////////////////////////////////////////////////////////////////////////////////-->
    <div class="col-xl-6"
        style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px;">

        <div class="row"
            style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

            <div class="col-md-6"
                style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-left: 15px; padding-top: 10px; padding-right: 12px">
                <div class="row">
                    <div class="col"
                        style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                        CFOP
                    </div>
                </div>
                <div class="row" style="padding: 0px; margin: 0px">
                    <div class="col" style="padding: 0px; margin: 0px">
                        <asp:TextBox ID="TextBox202" runat="server" CssClass="layouttexto"
                            Style="width: 100px;" onBlur="SetTextIn(this,0);SetDiv('div_informacoes_transporte_nfe',0)"
                            onFocus="SetTextIn(this,1);SetDiv('div_informacoes_transporte_nfe',1)">
                        </asp:TextBox>
                    </div>
                </div>
            </div>

            <div class="col-md-6"
                style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-left: 15px; padding-top: 10px; padding-right: 12px">
                <div class="row">
                    <div class="col"
                        style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                         Código do municipio &nbsp &nbsp <img alt="" src="../Imagens/ihelp.png"  style="width: 20px; height: 20px; cursor:pointer" onclick="anima_informacao(1,'codigomunicipio')" />
                    </div>
                </div>
                <div class="row" style="padding: 0px; margin: 0px">
                    <div class="col" style="padding: 0px; margin: 0px">
                        <div class="input-group">
                            <asp:TextBox ID="TextBox203" runat="server" CssClass="layouttexto"
                                Style="width: 200px" onBlur="SetTextIn(this,0);SetDiv('div_dados_iniciais2',0)" onFocus="SetTextIn(this,1);SetDiv('div_dados_iniciais2',1)">
                            </asp:TextBox>
                            <div class="input-group-append">
                                <button class="material-symbols-outlined">
                                    <i
                                        class="fa-solid fa-magnifying-glass"></i>
                                </button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            </div>
        </div>
    </div>
            
            </div>
        </div>
    </div>


                      <!--///////////////////////////////////////////////////   Container - Informações de Transporte da NF-e / Grupo Veiculo Transporte/////////////////////////////////////////////////////////////////////////////////////////////-->


<div class="container-fluid" style="padding: 0px; margin: 0px; width: 100%; height: 100%;">


    <div class="row" style="width: 100%; height: 50px"></div>
       
    <div class="row" style="width: 100%; height: 100%; padding: 0px; margin: 0px; background-color: transparent">
       
        <div class="row" style="width: 100%; height: 100%; color: #177CC0; padding-left: 20px; padding-top: 0px; font-family: Arial; font-size: 20px; font-weight: bold; margin-left: 0px">
       
            <div id="i_informacoes_transporte_veiculos_on" name="i_informacoes_transporte_veiculos_on" class="col" align="left" style="display: none; visibility: hidden; font-size: 20px; color: red; margin-right: 20px; border-bottom: none; cursor: pointer" onclick="mostra_div_informacao('div_informacoes_transporte_veiculos','i_informacoes_transporte_veiculos_on','i_informacoes_transporte_veiculos_off',0)"><span style="color: #177CC0; font-family: Arial; font-size: 20px; font-weight: bold;">Informações de Transporte da NF-e / Grupo Veiculo Transporte</span>&nbsp;&nbsp;<i class="fa fa-toggle-on"></i></div>
            <div id="i_informacoes_transporte_veiculos_off" name="i_informacoes_transporte_veiculos_off" class="col" align="left" style="display: block; visibility: visible; font-size: 20px; color: red; margin-right: 20px; border-bottom: solid; border-color: #767676; border-width: 1px; cursor: pointer" onclick="mostra_div_informacao('div_informacoes_transporte_veiculos','i_informacoes_transporte_veiculos_on','i_informacoes_transporte_veiculos_off',1)"><span style="color: #177CC0; font-family: Arial; font-size: 20px; font-weight: bold;">Informações de Transporte da NF-e / Grupo Veiculo Transporte </span>&nbsp;&nbsp;<i class="fa fa-toggle-off"></i></div>
       
       
        </div>
       
        <div class="row" style="width: 100%; height: 20px"></div>
       
       
        <div id="div_informacoes_transporte_veiculos" name="div_informacoes_transporte_veiculos"
            style="display: none; visibility: visible; width: 100%; height: 100%; background-color: transparent; margin-left: 20px; margin-right: 20px; border: solid; border-color: #177CC0; border-width: 1px; border-radius: 10px; padding: 0 20px 20px 20px;">
       
       
       
            <div class="row"
                style="width: 100%; padding: 0px; margin: 0px; background-color: transparent; height: 100%; padding: 0px; margin: 0px">
       
       
                <!--///////////////////////////////////////////////////  Container -  LINHA LADO ESQUERDO - Placa do Veículo  -  Sigla da UF /////////////////////////////////////////////////////////////////////////////////////////////-->
                <div class="col-xl-6"
                    style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">
       
                    <div class="row" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">
       
                        <div class="col-md-6" style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">
       
       
                            <div class="row">
                                <div class="col"
                                    style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                    Placa do Veículo
                                </div>
                            </div>
       
                            <div class="row" style="padding: 0px; margin: 0px">
                                <div class="col" style="padding: 0px; margin: 0px">
                                    <asp:TextBox ID="TextBox204" runat="server" CssClass="layouttexto"
                                        Style="width: 200px;" onBlur="SetTextIn(this,0);SetDiv('div_informacoes_transporte_veiculos',0)"
                                    onFocus="SetTextIn(this,1);SetDiv('div_informacoes_transporte_veiculos',1)">
                                    </asp:TextBox>
                                </div>
                            </div>
       
                        </div>
       
       
                        <div class=" col-md-6"
                            style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">
                            <div class="row">
                                <div class="col"
                                    style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                    Sigla da UF
                                </div>
                            </div>
                            <div class="row" style="padding: 0px; margin: 0px">
                                <div class="col" style="padding: 0px; margin: 0px">
                                    <asp:DropDownList ID="DropDownList12" onBlur="SetTextIn(this,0);SetDiv('div_informacoes_transporte_veiculos',0)" onFocus="SetTextIn(this,1);SetDiv('div_informacoes_transporte_veiculos',1)" CssClass="layouttexto" runat="server">
                                        <asp:ListItem style="width: 100%;" Text="SP" Value="1" />
                                        <asp:ListItem style="width: 100%;" Text="AC" Value="2" />
                                        <asp:ListItem style="width: 100%;" Text="AL" Value="3" />
                                        <asp:ListItem style="width: 100%;" Text="AP" Value="4" />
                                        <asp:ListItem style="width: 100%;" Text="AM" Value="5" />
                                        <asp:ListItem style="width: 100%;" Text="BA" Value="6" />
                                        <asp:ListItem style="width: 100%;" Text="CE" Value="7" />
                                        <asp:ListItem style="width: 100%;" Text="DF" Value="8" />
                                        <asp:ListItem style="width: 100%;" Text="ES" Value="9" />
                                        <asp:ListItem style="width: 100%;" Text="GO" Value="10" />
                                        <asp:ListItem style="width: 100%;" Text="MA" Value="11" />
                                        <asp:ListItem style="width: 100%;" Text="MT" Value="12" />
                                        <asp:ListItem style="width: 100%;" Text="MS" Value="13" />
                                        <asp:ListItem style="width: 100%;" Text="MG" Value="14" />
                                        <asp:ListItem style="width: 100%;" Text="PA" Value="15" />
                                        <asp:ListItem style="width: 100%;" Text="PB" Value="16" />
                                        <asp:ListItem style="width: 100%;" Text="PR" Value="17" />
                                        <asp:ListItem style="width: 100%;" Text="PE" Value="18" />
                                        <asp:ListItem style="width: 100%;" Text="PI" Value="19" />
                                        <asp:ListItem style="width: 100%;" Text="RJ" Value="20" />
                                        <asp:ListItem style="width: 100%;" Text="RN" Value="21" />
                                        <asp:ListItem style="width: 100%;" Text="RS" Value="22" />
                                        <asp:ListItem style="width: 100%;" Text="RO" Value="23" />
                                        <asp:ListItem style="width: 100%;" Text="RR" Value="24" />
                                        <asp:ListItem style="width: 100%;" Text="SC" Value="25" />
                                        <asp:ListItem style="width: 100%;" Text="SE" Value="26" />
                                        <asp:ListItem style="width: 100%;" Text="TO" Value="27" />
                                        <asp:ListItem style="width: 100%;" Text="EX" Value="28" />
                                    </asp:DropDownList>
                                </div>
                            </div>
                        </div>
       
       
                    </div>
       
                </div>
                <!--/////////////////////////////////////////////////// Container LINHA LADO DIREITO -  Identificação da Balsa   / Identificação do vagão/////////////////////////////////////////////////////////////////////////////////////////////-->
                <div class="col-xl-6"
                    style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px;">
       
                    <div class="row"
                        style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">
       
                        <div class="col-md-6"
                            style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-left: 15px; padding-top: 10px; padding-right: 12px">
                            <div class="row">
                                <div class="col"
                                    style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                    Registro ANTT
                                </div>
                            </div>
                            <div class="row" style="padding: 0px; margin: 0px">
                                <div class="col" style="padding: 0px; margin: 0px">
                                    <asp:TextBox ID="TextBox206" runat="server" CssClass="layouttexto"
                                        Style="width: 70%" onBlur="SetTextIn(this,0);SetDiv('div_informacoes_transporte_veiculos',0)"
                                    onFocus="SetTextIn(this,1);SetDiv('div_informacoes_transporte_veiculos',1)">
                                    </asp:TextBox>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            </div>
        </div>
            </div>


                           <!--///////////////////////////////////////////////////   Container - Informações de Transporte da NF-e / Grupo Veiculo Transporte/////////////////////////////////////////////////////////////////////////////////////////////-->


<div class="container-fluid" style="padding: 0px; margin: 0px; width: 100%; height: 100%;">


    <div class="row" style="width: 100%; height: 50px"></div>
       
    <div class="row" style="width: 100%; height: 100%; padding: 0px; margin: 0px; background-color: transparent">
       
        <div class="row" style="width: 100%; height: 100%; color: #177CC0; padding-left: 20px; padding-top: 0px; font-family: Arial; font-size: 20px; font-weight: bold; margin-left: 0px">
       
            <div id="i_informacoes_transporte_reboque_on" name="i_informacoes_transporte_reboque_on" class="col" align="left" style="display: none; visibility: hidden; font-size: 20px; color: red; margin-right: 20px; border-bottom: none; cursor: pointer" onclick="mostra_div_informacao('div_informacoes_transporte_reboque','i_informacoes_transporte_reboque_on','i_informacoes_transporte_reboque_off',0)"><span style="color: #177CC0; font-family: Arial; font-size: 20px; font-weight: bold;">Informações de Transporte da NF-e / Reboque</span>&nbsp;&nbsp;<i class="fa fa-toggle-on"></i></div>
            <div id="i_informacoes_transporte_reboque_off" name="i_informacoes_transporte_reboque_off" class="col" align="left" style="display: block; visibility: visible; font-size: 20px; color: red; margin-right: 20px; border-bottom: solid; border-color: #767676; border-width: 1px; cursor: pointer" onclick="mostra_div_informacao('div_informacoes_transporte_reboque','i_informacoes_transporte_reboque_on','i_informacoes_transporte_reboque_off',1)"><span style="color: #177CC0; font-family: Arial; font-size: 20px; font-weight: bold;">Informações de Transporte da NF-e / Reboque</span>&nbsp;&nbsp;<i class="fa fa-toggle-off"></i></div>
       
       
        </div>
       
        <div class="row" style="width: 100%; height: 20px"></div>
       
       
        <div id="div_informacoes_transporte_reboque" name="div_informacoes_transporte_reboque"
            style="display: none; visibility: visible; width: 100%; height: 100%; background-color: transparent; margin-left: 20px; margin-right: 20px; border: solid; border-color: #177CC0; border-width: 1px; border-radius: 10px; padding: 0 20px 20px 20px;">
       
       
       
            <div class="row"
                style="width: 100%; padding: 0px; margin: 0px; background-color: transparent; height: 100%; padding: 0px; margin: 0px">
       
       
                <!--///////////////////////////////////////////////////  Container -  LINHA LADO ESQUERDO - Placa do Veículo  -  Sigla da UF /////////////////////////////////////////////////////////////////////////////////////////////-->
                <div class="col-xl-6"
                    style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">
       
                    <div class="row" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">
       
                        <div class="col-md-6" style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">
       
       
                            <div class="row">
                                <div class="col"
                                    style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                    Placa do Veículo
                                </div>
                            </div>
       
                            <div class="row" style="padding: 0px; margin: 0px">
                                <div class="col" style="padding: 0px; margin: 0px">
                                    <asp:TextBox ID="TextBox191" runat="server" CssClass="layouttexto"
                                        Style="width: 200px;" onBlur="SetTextIn(this,0);SetDiv('div_informacoes_transporte_reboque',0)"
                                    onFocus="SetTextIn(this,1);SetDiv('div_informacoes_transporte_reboque',1)">
                                    </asp:TextBox>
                                </div>
                            </div>
       
                        </div>
       
       
                        <div class=" col-md-6"
                            style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">
                            <div class="row">
                                <div class="col"
                                    style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                    Sigla da UF
                                </div>
                            </div>
                            <div class="row" style="padding: 0px; margin: 0px">
                                <div class="col" style="padding: 0px; margin: 0px">
                                    <asp:DropDownList ID="DropDownList27" onBlur="SetTextIn(this,0);SetDiv('div_informacoes_transporte_reboque',0)" onFocus="SetTextIn(this,1);SetDiv('div_informacoes_transporte_reboque',1)" CssClass="layouttexto" runat="server">
                                        <asp:ListItem style="width: 100%;" Text="SP" Value="1" />
                                        <asp:ListItem style="width: 100%;" Text="AC" Value="2" />
                                        <asp:ListItem style="width: 100%;" Text="AL" Value="3" />
                                        <asp:ListItem style="width: 100%;" Text="AP" Value="4" />
                                        <asp:ListItem style="width: 100%;" Text="AM" Value="5" />
                                        <asp:ListItem style="width: 100%;" Text="BA" Value="6" />
                                        <asp:ListItem style="width: 100%;" Text="CE" Value="7" />
                                        <asp:ListItem style="width: 100%;" Text="DF" Value="8" />
                                        <asp:ListItem style="width: 100%;" Text="ES" Value="9" />
                                        <asp:ListItem style="width: 100%;" Text="GO" Value="10" />
                                        <asp:ListItem style="width: 100%;" Text="MA" Value="11" />
                                        <asp:ListItem style="width: 100%;" Text="MT" Value="12" />
                                        <asp:ListItem style="width: 100%;" Text="MS" Value="13" />
                                        <asp:ListItem style="width: 100%;" Text="MG" Value="14" />
                                        <asp:ListItem style="width: 100%;" Text="PA" Value="15" />
                                        <asp:ListItem style="width: 100%;" Text="PB" Value="16" />
                                        <asp:ListItem style="width: 100%;" Text="PR" Value="17" />
                                        <asp:ListItem style="width: 100%;" Text="PE" Value="18" />
                                        <asp:ListItem style="width: 100%;" Text="PI" Value="19" />
                                        <asp:ListItem style="width: 100%;" Text="RJ" Value="20" />
                                        <asp:ListItem style="width: 100%;" Text="RN" Value="21" />
                                        <asp:ListItem style="width: 100%;" Text="RS" Value="22" />
                                        <asp:ListItem style="width: 100%;" Text="RO" Value="23" />
                                        <asp:ListItem style="width: 100%;" Text="RR" Value="24" />
                                        <asp:ListItem style="width: 100%;" Text="SC" Value="25" />
                                        <asp:ListItem style="width: 100%;" Text="SE" Value="26" />
                                        <asp:ListItem style="width: 100%;" Text="TO" Value="27" />
                                        <asp:ListItem style="width: 100%;" Text="EX" Value="28" />
                                    </asp:DropDownList>
                                </div>
                            </div>
                        </div>
       
       
                    </div>
       
                </div>
                <!--/////////////////////////////////////////////////// Container LINHA LADO DIREITO -  Identificação da Balsa   / Identificação do vagão/////////////////////////////////////////////////////////////////////////////////////////////-->
                <div class="col-xl-6"
                    style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px;">
       
                    <div class="row"
                        style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">
       
                        <div class="col-md-6"
                            style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-left: 15px; padding-top: 10px; padding-right: 12px">
                            <div class="row">
                                <div class="col"
                                    style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                    Identificação da Balsa
                                </div>
                            </div>
                            <div class="row" style="padding: 0px; margin: 0px">
                                <div class="col" style="padding: 0px; margin: 0px">
                                    <asp:TextBox ID="TextBox205" runat="server" CssClass="layouttexto"
                                        Style="width: 250px" onBlur="SetTextIn(this,0);SetDiv('div_informacoes_transporte_reboque',0)"
                                    onFocus="SetTextIn(this,1);SetDiv('div_informacoes_transporte_reboque',1)">
                                    </asp:TextBox>
                                </div>
                            </div>
                        </div>
   
                        <div class="col-md-6"
                        style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-left: 15px; padding-top: 10px; padding-right: 12px">
                        <div class="row">
                            <div class="col"
                                style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                Identificação do vagão
                            </div>
                        </div>
                        <div class="row" style="padding: 0px; margin: 0px">
                            <div class="col" style="padding: 0px; margin: 0px">
                                <asp:TextBox ID="TextBox209" runat="server" CssClass="layouttexto"
                                    Style="width: 250px;" onBlur="SetTextIn(this,0);SetDiv('div_informacoes_transporte_reboque',0)"
                                    onFocus="SetTextIn(this,1);SetDiv('div_informacoes_transporte_reboque',1)">
                                </asp:TextBox>
                            </div>
                        </div>
                    </div>
       
                    </div>
                </div>
            </div>


            <!--///////////////////////////////////////////////////  Container -  LINHA LADO ESQUERDO - Registro Nacional de Transporte de Carga /////////////////////////////////////////////////////////////////////////////////////////////-->
                <div class="row" style="height:20px"></div>
            <div class="row"
                style="width: 100%; padding: 0px; margin: 0px; background-color: transparent; height: 100%; padding: 0px; margin: 0px">
       
                <div class="col-xl-12"
                    style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">
       
                    <div class="row" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">
       
                        <div class="col-md-12" style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">
       
       
                            <div class="row">
                                <div class="col"
                                    style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                    Registro ANTT
                                </div>
                            </div>
       
                            <div class="row" style="padding: 0px; margin: 0px">
                                <div class="col" style="padding: 0px; margin: 0px">
                                    <asp:TextBox ID="TextBox210" runat="server" CssClass="layouttexto"
                                        Style="width: 250px;" onBlur="SetTextIn(this,0);SetDiv('div_informacoes_transporte_reboque',0)"
                                    onFocus="SetTextIn(this,1);SetDiv('div_informacoes_transporte_reboque',1)">
                                    </asp:TextBox>
                                </div>
                            </div>
       
                        </div>
       
                    </div>
                   </div>     
               

                
            </div>

            </div>
        </div>
            </div>


     <!--///////////////////////////////////////////////////   Container - Informações de Transporte da NF-e / Grupo Volumes /////////////////////////////////////////////////////////////////////////////////////////////-->


     <div class="container-fluid" style="padding: 0px; margin: 0px; width: 100%; height: 100%;">


         <div class="row" style="width: 100%; height: 50px"></div>

         <div class="row" style="width: 100%; height: 100%; padding: 0px; margin: 0px; background-color: transparent">

             <div class="row" style="width: 100%; height: 100%; color: #177CC0; padding-left: 20px; padding-top: 0px; font-family: Arial; font-size: 20px; font-weight: bold; margin-left: 0px">

                 <div id="i_informacoes_transporte_volumes_on" name="i_informacoes_transporte_volumes_on" class="col" align="left" style="display: none; visibility: hidden; font-size: 20px; color: red; margin-right: 20px; border-bottom: none; cursor: pointer" onclick="mostra_div_informacao('div_informacoes_transporte_volumes','i_informacoes_transporte_volumes_on','i_informacoes_transporte_volumes_off',0)"><span style="color: #177CC0; font-family: Arial; font-size: 20px; font-weight: bold;">Informações de Transporte da NF-e / Grupo Volumes</span>&nbsp;&nbsp;<i class="fa fa-toggle-on"></i></div>
                 <div id="i_informacoes_transporte_volumes_off" name="i_informacoes_transporte_volumes_off" class="col" align="left" style="display: block; visibility: visible; font-size: 20px; color: red; margin-right: 20px; border-bottom: solid; border-color: #767676; border-width: 1px; cursor: pointer" onclick="mostra_div_informacao('div_informacoes_transporte_volumes','i_informacoes_transporte_volumes_on','i_informacoes_transporte_volumes_off',1)"><span style="color: #177CC0; font-family: Arial; font-size: 20px; font-weight: bold;">Informações de Transporte da NF-e / Grupo Volumes</span>&nbsp;&nbsp;<i class="fa fa-toggle-off"></i></div>


             </div>

             <div class="row" style="width: 100%; height: 20px"></div>


             <div id="div_informacoes_transporte_volumes" name="div_informacoes_transporte_volumes"
                 style="display: none; visibility: visible; width: 100%; height: 100%; background-color: transparent; margin-left: 20px; margin-right: 20px; border: solid; border-color: #177CC0; border-width: 1px; border-radius: 10px; padding: 0 20px 20px 20px;">



                 <div class="row"
                     style="width: 100%; padding: 0px; margin: 0px; background-color: transparent; height: 100%; padding: 0px; margin: 0px">


                     <!--///////////////////////////////////////////////////  Container -  LINHA LADO ESQUERDO - Placa do Veículo  -  Sigla da UF /////////////////////////////////////////////////////////////////////////////////////////////-->
                     <div class="col-xl-6"
                         style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

                         <div class="row" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

                             <div class="col-md-12" style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">


                                 <div class="row">
                                     <div class="col"
                                         style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                         Qntd. Volume Transportado
                                     </div>
                                 </div>

                                 <div class="row" style="padding: 0px; margin: 0px">
                                     <div class="col" style="padding: 0px; margin: 0px">
                                         <asp:TextBox ID="TextBox207" runat="server" CssClass="layouttexto"
                                             Style="width: 60%;" onBlur="SetTextIn(this,0);SetDiv('div_informacoes_transporte_volumes',0)"
                                             onFocus="SetTextIn(this,1);SetDiv('div_informacoes_transporte_volumes',1)">
                                         </asp:TextBox>
                                     </div>
                                 </div>

                             </div>


                            
                         </div>

                     </div>
                     <!--/////////////////////////////////////////////////// Container LINHA LADO DIREITO -  Identificação da Balsa   / Identificação do vagão/////////////////////////////////////////////////////////////////////////////////////////////-->
                     <div class="col-xl-6"
                         style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px;">

                         <div class="row"
                             style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

                             <div class="col-md-12"
                                 style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-left: 15px; padding-top: 10px; padding-right: 12px">
                                 <div class="row">
                                     <div class="col"
                                         style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                         Espécie dos Volumes Transportados
                                     </div>
                                 </div>
                                 <div class="row" style="padding: 0px; margin: 0px">
                                     <div class="col" style="padding: 0px; margin: 0px">
                                         <asp:TextBox ID="TextBox208" runat="server" CssClass="layouttexto"
                                             Style="width: 80%" onBlur="SetTextIn(this,0);SetDiv('div_informacoes_transporte_volumes',0)"
                                             onFocus="SetTextIn(this,1);SetDiv('div_informacoes_transporte_volumes',1)">
                                         </asp:TextBox>
                                     </div>
                                 </div>
                             </div>

                         </div>
                     </div>
                 </div>


                 <!--///////////////////////////////////////////////////  Container -  LINHA LADO ESQUERDO - Registro Nacional de Transporte de Carga /////////////////////////////////////////////////////////////////////////////////////////////-->
                 <div class="row" style="height: 20px"></div>
                 <div class="row"
                     style="width: 100%; padding: 0px; margin: 0px; background-color: transparent; height: 100%; padding: 0px; margin: 0px">

                     <div class="col-xl-6"
                         style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

                         <div class="row" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

                             <div class="col-md-12" style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">


                                 <div class="row">
                                     <div class="col"
                                         style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                         Peso líquido (kg)
                                     </div>
                                 </div>

                                 <div class="row" style="padding: 0px; margin: 0px">
                                     <div class="col" style="padding: 0px; margin: 0px">
                                         <asp:TextBox ID="TextBox212" runat="server" CssClass="layouttexto"
                                             Style="width: 200px;" onBlur="SetTextIn(this,0);SetDiv('div_informacoes_transporte_volumes',0)"
                                             onFocus="SetTextIn(this,1);SetDiv('div_informacoes_transporte_volumes',1)">
                                         </asp:TextBox>
                                     </div>
                                 </div>
                             </div>
                         </div>
                     </div>
                 


                     <div class="col-xl-6"
                         style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

                         <div class="row" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

                             <div class="col-md-12" style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">


                                 <div class="row">
                                     <div class="col"
                                         style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                         Marca dos volumes transportados
                                     </div>
                                 </div>

                                 <div class="row" style="padding: 0px; margin: 0px">
                                     <div class="col" style="padding: 0px; margin: 0px">
                                         <asp:TextBox ID="TextBox211" runat="server" CssClass="layouttexto"
                                             Style="width: 80%;" onBlur="SetTextIn(this,0);SetDiv('div_informacoes_transporte_volumes',0)"
                                             onFocus="SetTextIn(this,1);SetDiv('div_informacoes_transporte_volumes',1)">
                                         </asp:TextBox>
                                     </div>
                                 </div>
                             </div>
                         </div>
                     </div>
                     </div>

                 <!--///////////////////////////////////////////////////  Container -  LINHA LADO ESQUERDO - Registro Nacional de Transporte de Carga /////////////////////////////////////////////////////////////////////////////////////////////-->
                 <div class="row" style="height: 20px"></div>
                 <div class="row"
                     style="width: 100%; padding: 0px; margin: 0px; background-color: transparent; height: 100%; padding: 0px; margin: 0px">

                     <div class="col-xl-6"
                         style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

                         <div class="row" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

                             <div class="col-md-12" style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">


                                 <div class="row">
                                     <div class="col"
                                         style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                         Peso Bruto (kg)
                                     </div>
                                 </div>

                                 <div class="row" style="padding: 0px; margin: 0px">
                                     <div class="col" style="padding: 0px; margin: 0px">
                                         <asp:TextBox ID="TextBox213" runat="server" CssClass="layouttexto"
                                             Style="width: 200px;" onBlur="SetTextIn(this,0);SetDiv('div_informacoes_transporte_volumes',0)"
                                             onFocus="SetTextIn(this,1);SetDiv('div_informacoes_transporte_volumes',1)">
                                         </asp:TextBox>
                                     </div>
                                 </div>
                             </div>
                         </div>
                     </div>



                     <div class="col-xl-6"
                         style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

                         <div class="row" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

                             <div class="col-md-12" style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">


                                 <div class="row">
                                     <div class="col"
                                         style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                         Numeração dos volumes transportados
                                     </div>
                                 </div>

                                 <div class="row" style="padding: 0px; margin: 0px">
                                     <div class="col" style="padding: 0px; margin: 0px">
                                         <asp:TextBox ID="TextBox214" runat="server" CssClass="layouttexto"
                                             Style="width: 80%;" onBlur="SetTextIn(this,0);SetDiv('div_informacoes_transporte_volumes',0)"
                                             onFocus="SetTextIn(this,1);SetDiv('div_informacoes_transporte_volumes',1)">
                                         </asp:TextBox>
                                     </div>
                                 </div>
                             </div>
                         </div>
                     </div>
                 </div>

             </div>


         </div>
 </div>

                                <!--///////////////////////////////////////////////////   Container - Informações de Transporte da NF-e / Grupo Lacres/////////////////////////////////////////////////////////////////////////////////////////////-->


<div class="container-fluid" style="padding: 0px; margin: 0px; width: 100%; height: 100%;">


    <div class="row" style="width: 100%; height: 50px"></div>
       
    <div class="row" style="width: 100%; height: 100%; padding: 0px; margin: 0px; background-color: transparent">
       
        <div class="row" style="width: 100%; height: 100%; color: #177CC0; padding-left: 20px; padding-top: 0px; font-family: Arial; font-size: 20px; font-weight: bold; margin-left: 0px">
       
            <div id="i_informacoes_transporte_lacres_on" name="i_informacoes_transporte_lacres_on" class="col" align="left" style="display: none; visibility: hidden; font-size: 20px; color: red; margin-right: 20px; border-bottom: none; cursor: pointer" onclick="mostra_div_informacao('div_informacoes_transporte_lacres','i_informacoes_transporte_lacres_on','i_informacoes_transporte_lacres_off',0)"><span style="color: #177CC0; font-family: Arial; font-size: 20px; font-weight: bold;">Informações de Transporte da NF-e / Lacres</span>&nbsp;&nbsp;<i class="fa fa-toggle-on"></i></div>
            <div id="i_informacoes_transporte_lacres_off" name="i_informacoes_transporte_lacres_off" class="col" align="left" style="display: block; visibility: visible; font-size: 20px; color: red; margin-right: 20px; border-bottom: solid; border-color: #767676; border-width: 1px; cursor: pointer" onclick="mostra_div_informacao('div_informacoes_transporte_lacres','i_informacoes_transporte_lacres_on','i_informacoes_transporte_lacres_off',1)"><span style="color: #177CC0; font-family: Arial; font-size: 20px; font-weight: bold;">Informações de Transporte da NF-e / Lacres</span>&nbsp;&nbsp;<i class="fa fa-toggle-off"></i></div>
       
       
        </div>
       
        <div class="row" style="width: 100%; height: 20px"></div>
       
       
        <div id="div_informacoes_transporte_lacres" name="div_informacoes_transporte_lacres"
            style="display: none; visibility: visible; width: 100%; height: 100%; background-color: transparent; margin-left: 20px; margin-right: 20px; border: solid; border-color: #177CC0; border-width: 1px; border-radius: 10px; padding: 0 20px 20px 20px;">
       
       
       
            <div class="row"
                style="width: 100%; padding: 0px; margin: 0px; background-color: transparent; height: 100%; padding: 0px; margin: 0px">
       
       
                <!--///////////////////////////////////////////////////  Container -  LINHA LADO ESQUERDO - Placa do Veículo  -  Sigla da UF /////////////////////////////////////////////////////////////////////////////////////////////-->
                <div class="col-xl-12"
                    style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">
       
                    <div class="row" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">
       
                        <div class="col-md-auto" style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">
       
       
                            <div class="row">
                                <div class="col"
                                    style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                    Número de Lacres
                                </div>
                            </div>
       
                            <div class="row" style="padding: 0px; margin: 0px">
                                <div class="col" style="padding: 0px; margin: 0px">
                                    <asp:TextBox ID="TextBox215" runat="server" CssClass="layouttexto"
                                        Style="width: 50%;" onBlur="SetTextIn(this,0);SetDiv('div_informacoes_transporte_lacres',0)"
                                    onFocus="SetTextIn(this,1);SetDiv('div_informacoes_transporte_lacres',1)">
                                    </asp:TextBox>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
     </div>


             <!--///////////////////////////////////////////////////   Container - Informações de Transporte da NF-e / Dados Cobrança/////////////////////////////////////////////////////////////////////////////////////////////-->


<div class="container-fluid" style="padding: 0px; margin: 0px; width: 100%; height: 100%;">


    <div class="row" style="width: 100%; height: 50px"></div>
       
    <div class="row" style="width: 100%; height: 100%; padding: 0px; margin: 0px; background-color: transparent">
       
        <div class="row" style="width: 100%; height: 100%; color: #177CC0; padding-left: 20px; padding-top: 0px; font-family: Arial; font-size: 20px; font-weight: bold; margin-left: 0px">
       
            <div id="i_informacoes_dados_cobranca_on" name="i_informacoes_dados_cobranca_on" class="col" align="left" style="display: none; visibility: hidden; font-size: 20px; color: red; margin-right: 20px; border-bottom: none; cursor: pointer" onclick="mostra_div_informacao('div_informacoes_dados_cobranca','i_informacoes_dados_cobranca_on','i_informacoes_dados_cobranca_off',0)"><span style="color: #177CC0; font-family: Arial; font-size: 20px; font-weight: bold;">Dados de Cobrança</span>&nbsp;&nbsp;<i class="fa fa-toggle-on"></i></div>
            <div id="i_informacoes_dados_cobranca_off" name="i_informacoes_dados_cobranca_off" class="col" align="left" style="display: block; visibility: visible; font-size: 20px; color: red; margin-right: 20px; border-bottom: solid; border-color: #767676; border-width: 1px; cursor: pointer" onclick="mostra_div_informacao('div_informacoes_dados_cobranca','i_informacoes_dados_cobranca_on','i_informacoes_dados_cobranca_off',1)"><span style="color: #177CC0; font-family: Arial; font-size: 20px; font-weight: bold;">Dados de Cobrança</span>&nbsp;&nbsp;<i class="fa fa-toggle-off"></i></div>
       
       
        </div>
       
        <div class="row" style="width: 100%; height: 20px"></div>
       
       
        <div id="div_informacoes_dados_cobranca" name="div_informacoes_dados_cobranca"
            style="display: none; visibility: visible; width: 100%; height: 100%; background-color: transparent; margin-left: 20px; margin-right: 20px; border: solid; border-color: #177CC0; border-width: 1px; border-radius: 10px; padding: 0 20px 20px 20px;">
       
       
       
            <div class="row"
                style="width: 100%; padding: 0px; margin: 0px; background-color: transparent; height: 100%; padding: 0px; margin: 0px">
       
       
                <!--///////////////////////////////////////////////////  Container -  LINHA LADO ESQUERDO - Número da Fatura - Valor Original do Fatura /////////////////////////////////////////////////////////////////////////////////////////////-->
                <div class="col-xl-6"
                    style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">
       
                    <div class="row" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">
       
                        <div class="col-md-auto" style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">
       
       
                            <div class="row">
                                <div class="col"
                                    style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                    Número da Fatura
                                </div>
                            </div>
       
                            <div class="row" style="padding: 0px; margin: 0px">
                                <div class="col" style="padding: 0px; margin: 0px">
                                    <asp:TextBox ID="TextBox216" runat="server" CssClass="layouttexto"
                                        Style="width: 70%;" onBlur="SetTextIn(this,0);SetDiv('div_informacoes_dados_cobranca',0)"
                                    onFocus="SetTextIn(this,1);SetDiv('div_informacoes_dados_cobranca',1)">
                                    </asp:TextBox>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            
    <!--///////////////////////////////////////////////////  Container -  Valor Original do Fatura /////////////////////////////////////////////////////////////////////////////////////////////-->
                <div class="col-xl-6"
                    style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

                    <div class="row" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

                        <div class="col-md-6" style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">


                            <div class="row">
                                <div class="col"
                                    style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                    Valor Original do Fatura
                                </div>
                            </div>

                            <div class="row" style="padding: 0px; margin: 0px">
                                <div class="col" style="padding: 0px; margin: 0px">
                                    <asp:TextBox ID="TextBox218" runat="server" CssClass="layouttexto"
                                        Style="width: 45%;" onBlur="SetTextIn(this,0);SetDiv('div_informacoes_dados_cobranca',0)"
                                        onFocus="SetTextIn(this,1);SetDiv('div_informacoes_dados_cobranca',1)">
                                    </asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <div class="col-md-6" style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">


                            <div class="row">
                                <div class="col"
                                    style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                    Valor do Desconto
                                </div>
                            </div>

                            <div class="row" style="padding: 0px; margin: 0px">
                                <div class="col" style="padding: 0px; margin: 0px">
                                    <asp:TextBox ID="TextBox223" runat="server" CssClass="layouttexto"
                                        Style="width: 45%;" onBlur="SetTextIn(this,0);SetDiv('div_informacoes_dados_cobranca',0)"
                                        onFocus="SetTextIn(this,1);SetDiv('div_informacoes_dados_cobranca',1)">
                                    </asp:TextBox>
                                </div>
                            </div>
                        </div>
        </div>
        </div>

    </div>


            <!--///////////////////////////////////////////////////  Container -  LINHA LADO ESQUERDO - Valor do Desconto/////////////////////////////////////////////////////////////////////////////////////////////-->
                    <div class="row"
            style="width: 100%; padding: 0px; margin: 0px; background-color: transparent; height: 100%; padding: 0px; margin: 0px">
            <div class="col-xl-6"
                style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">
   
                <div class="row" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">
   
                    <div class="col-md-auto" style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">
   
   
                        <div class="row">
                            <div class="col"
                                style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                Número da Duplicata
                            </div>
                        </div>
   
                        <div class="row" style="padding: 0px; margin: 0px">
                            <div class="col" style="padding: 0px; margin: 0px">
                                <asp:TextBox ID="TextBox217" runat="server" CssClass="layouttexto"
                                    Style="width: 90%;" onBlur="SetTextIn(this,0);SetDiv('div_informacoes_dados_cobranca',0)"
                                onFocus="SetTextIn(this,1);SetDiv('div_informacoes_dados_cobranca',1)">
                                </asp:TextBox>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        
                <!--///////////////////////////////////////////////////  Container -  Valor Líquido da Fatura /////////////////////////////////////////////////////////////////////////////////////////////-->
                        <div class="col-xl-6"
                            style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

                            <div class="row" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

                                <div class="col-md-6" style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">


                                    <div class="row">
                                        <div class="col"
                                            style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                            Valor Líquido da Fatura
                                        </div>
                                    </div>

                                    <div class="row" style="padding: 0px; margin: 0px">
                                        <div class="col" style="padding: 0px; margin: 0px">
                                            <asp:TextBox ID="TextBox219" runat="server" CssClass="layouttexto"
                                                Style="width: 45%;" onBlur="SetTextIn(this,0);SetDiv('div_informacoes_dados_cobranca',0)"
                                                onFocus="SetTextIn(this,1);SetDiv('div_informacoes_dados_cobranca',1)">
                                            </asp:TextBox>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-md-6" style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">


                                    <div class="row">
                                        <div class="col"
                                            style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                            Valor da duplicata
                                        </div>
                                    </div>

                                    <div class="row" style="padding: 0px; margin: 0px">
                                        <div class="col" style="padding: 0px; margin: 0px">
                                            <asp:TextBox ID="TextBox224" runat="server" CssClass="layouttexto"
                                                Style="width: 45%;" onBlur="SetTextIn(this,0);SetDiv('div_informacoes_dados_cobranca',0)"
                                                onFocus="SetTextIn(this,1);SetDiv('div_informacoes_dados_cobranca',1)">
                                            </asp:TextBox>
                                        </div>
                                    </div>
                                </div>
    </div>

         </div>
        </div>

          <!--///////////////////////////////////////////////////  Container -  LINHA LADO ESQUERDO - Número da Duplicata/////////////////////////////////////////////////////////////////////////////////////////////-->
                    <div class="row"
            style="width: 100%; padding: 0px; margin: 0px; background-color: transparent; height: 100%; padding: 0px; margin: 0px">
            <div class="col-xl-7"
                style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">
   
                <div class="row" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">
   
                    <div class="col-md-auto" style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">
   
   
                        <div class="row">
                            <div class="col"
                                style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                Data de Vencimento
                            </div>
                        </div>
   
                        <div class="row" style="padding: 0px; margin: 0px">
                            <div class="col" style="padding: 0px; margin: 0px">
                                <asp:TextBox ID="TextBox220" runat="server" CssClass="layouttexto"
                                    Style="width: 80px;" onBlur="SetTextIn(this,0);SetDiv('div_informacoes_dados_cobranca',0)"
                                onFocus="SetTextIn(this,1);SetDiv('div_informacoes_dados_cobranca',1)">
                                </asp:TextBox>
                            </div>
                        </div>
                    </div>
            </div>
        </div>
         
</div>     
        
        </div>
    </div>
    </div>
           <!--/////////////////////////////////////////////////// Container - Informações do Transporte da NF-e/////////////////////////////////////////////////////////////////////////////////////////////-->


<div class="container-fluid" style="padding: 0px; margin: 0px; width: 100%; height: 100%;">


    <div class="row" style="width: 100%; height: 50px"></div>
       
    <div class="row" style="width: 100%; height: 100%; padding: 0px; margin: 0px; background-color: transparent">
       
        <div class="row" style="width: 100%; height: 100%; color: #177CC0; padding-left: 20px; padding-top: 0px; font-family: Arial; font-size: 20px; font-weight: bold; margin-left: 0px">
       
            <div id="i_formas_pagamento_on" name="i_formas_pagamento_on" class="col" align="left" style="display: none; visibility: hidden; font-size: 20px; color: red; margin-right: 20px; border-bottom: none; cursor: pointer" onclick="mostra_div_informacao('div_formas_pagamento','i_formas_pagamento_on','i_formas_pagamento_off',0)"><span style="color: #177CC0; font-family: Arial; font-size: 20px; font-weight: bold;">Formas de Pagamento</span>&nbsp;&nbsp;<i class="fa fa-toggle-on"></i></div>
            <div id="i_formas_pagamento_off" name="i_formas_pagamento_off" class="col" align="left" style="display: block; visibility: visible; font-size: 20px; color: red; margin-right: 20px; border-bottom: solid; border-color: #767676; border-width: 1px; cursor: pointer" onclick="mostra_div_informacao('div_formas_pagamento','i_formas_pagamento_on','i_formas_pagamento_off',1)"><span style="color: #177CC0; font-family: Arial; font-size: 20px; font-weight: bold;">Formas de Pagamento </span>&nbsp;&nbsp;<i class="fa fa-toggle-off"></i></div>
       
       
        </div>
       
        <div class="row" style="width: 100%; height: 20px"></div>
       
       
        <div id="div_formas_pagamento" name="div_formas_pagamento"
            style="display: none; visibility: visible; width: 100%; height: 100%; background-color: transparent; margin-left: 20px; margin-right: 20px; border: solid; border-color: #177CC0; border-width: 1px; border-radius: 10px; padding: 0 20px 20px 20px;">
       
       
       
            <div class="row"
                style="width: 100%; padding: 0px; margin: 0px; background-color: transparent; height: 100%; padding: 0px; margin: 0px">
       
       
                <!--///////////////////////////////////////////////////  Container -  LINHA LADO ESQUERDO - Valor Retido de PIS  -  Valor Retido de COFINS /////////////////////////////////////////////////////////////////////////////////////////////-->
                <div class="col-xl-6"
                    style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">
       
                    <div class="row" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">
       
                        <div class="col-md-6" style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">
       
       
                            <div class="row">
                                <div class="col"
                                    style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                    Forma de Pagamento <img alt="" src="../Imagens/ihelp.png"  style="width: 20px; height: 21px; cursor:pointer" onclick="anima_informacao(1,'formadepagamento')" />
                                </div>
                            </div>
       
                            <div class="row" style="padding: 0px; margin: 0px">
                                <div class="col" style="padding: 0px; margin: 0px">
                                    <asp:DropDownList ID="DropDownList30" onBlur="SetTextIn(this,0);SetDiv('div_formas_pagamento',0)" onFocus="SetTextIn(this,1);SetDiv('div_formas_pagamento',1)" CssClass="layouttexto" runat="server">
                                        <asp:ListItem style="width: 100%;" Text="01" Value="0" />
                                        <asp:ListItem style="width: 100%;" Text="02" Value="1" />
                                        <asp:ListItem style="width: 100%;" Text="03" Value="2" />
                                        <asp:ListItem style="width: 100%;" Text="04" Value="3" />
                                        <asp:ListItem style="width: 100%;" Text="05" Value="4" />
                                        <asp:ListItem style="width: 100%;" Text="10" Value="5" />
                                        <asp:ListItem style="width: 100%;" Text="11" Value="6" />
                                        <asp:ListItem style="width: 100%;" Text="12" Value="7" />
                                        <asp:ListItem style="width: 100%;" Text="13" Value="8" />
                                        <asp:ListItem style="width: 100%;" Text="99" Value="9" />
                                    </asp:DropDownList>
                                </div>
                            </div>
       
                        </div>
       
       
                        <div class=" col-md-6"
                            style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">
                            <div class="row">
                                <div class="col"
                                    style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                    Valor do Pagamento
                                </div>
                            </div>
                            <div class="row" style="padding: 0px; margin: 0px">
                                <div class="col" style="padding: 0px; margin: 0px">
                                    <asp:TextBox ID="TextBox221" runat="server" CssClass="layouttexto"
                                        Style="width: 200px;" onBlur="SetTextIn(this,0);SetDiv('div_formas_pagamento',0)"
                                    onFocus="SetTextIn(this,1);SetDiv('div_formas_pagamento',1)">
                                    </asp:TextBox>
                                </div>
                            </div>
                        </div>
       
       
                    </div>
       
                </div>
                <!--/////////////////////////////////////////////////// Container LINHA LADO DIREITO -  Razão Social ou nome   //////////////////////////////////////////////////////////////////////////////////////////////-->
                <div class="col-xl-6"
                    style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px;">
       
                    <div class="row"
                        style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">
       
                        <div class="col-md-6"
                            style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-left: 15px; padding-top: 10px; padding-right: 12px">
                            <div class="row">
                                <div class="col"
                                    style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                    CNPJ da Credenciadora de cartões
                                </div>
                            </div>
                            <div class="row" style="padding: 0px; margin: 0px">
                                <div class="col" style="padding: 0px; margin: 0px">
                                    <asp:TextBox ID="TextBox225" runat="server" CssClass="layouttexto"
                                        Style="width: 90%;" onBlur="SetTextIn(this,0);SetDiv('div_formas_pagamento',0)"
                                    onFocus="SetTextIn(this,1);SetDiv('div_formas_pagamento',1)">
                                    </asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <div class="col-md-6" style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">


                            <div class="row">
                                <div class="col"
                                    style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                    Bandeira da operadora de cartões <img alt="" src="../Imagens/ihelp.png"  style="width: 20px; height: 21px; cursor:pointer" onclick="anima_informacao(1,'bandeiracartoes')" />
                                </div>
                            </div>

                            <div class="row" style="padding: 0px; margin: 0px">
                                <div class="col" style="padding: 0px; margin: 0px">
                                    <asp:DropDownList ID="DropDownList35" onBlur="SetTextIn(this,0);SetDiv('div_formas_pagamento',0)" onFocus="SetTextIn(this,1);SetDiv('div_formas_pagamento',1)" CssClass="layouttexto" runat="server">
                                        <asp:ListItem style="width: 100%;" Text="01" Value="0" />
                                        <asp:ListItem style="width: 100%;" Text="02" Value="1" />
                                        <asp:ListItem style="width: 100%;" Text="03" Value="2" />
                                        <asp:ListItem style="width: 100%;" Text="04" Value="3" />
                                        <asp:ListItem style="width: 100%;" Text="99" Value="4" />
                                    </asp:DropDownList>
                                </div>
                            </div>

                        </div>
       
                    </div>
                </div>
            </div>

            <!--///////////////////////////////////////////////////  Container -  LINHA LADO ESQUERDO - CPF do Transportador - Inscrição Estadual do Transportador /////////////////////////////////////////////////////////////////////////////////////////////-->
            <div class="row" style="height: 20px"></div>
            <div class="row"
                style="width: 100%; padding: 0px; margin: 0px; background-color: transparent; height: 100%; padding: 0px; margin: 0px">

                <div class="col-xl-12"
                    style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

                    <div class="row" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

                        <div class="col-md-6" style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">


                            <div class="row">
                                <div class="col"
                                    style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                    Número de autorização da operadora de cartões
                                </div>
                            </div>

                            <div class="row" style="padding: 0px; margin: 0px">
                                <div class="col" style="padding: 0px; margin: 0px">
                                    <asp:TextBox ID="TextBox226" runat="server" CssClass="layouttexto"
                                        Style="width: 50%;" onBlur="SetTextIn(this,0);SetDiv('div_formas_pagamento',0)"
                                        onFocus="SetTextIn(this,1);SetDiv('div_formas_pagamento',1)">
                                    </asp:TextBox>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                </div>
                
        </div>
    </div>
     </div>

     </div>
 </asp:Panel>

            <!--//////////////////////////////////////////////////// Div com as informacoes complementares da nota ///////////////////////////////////////////////////////////////////////////////////////////////-->
            <asp:Panel  ID="Panel5"  runat="server" BackColor="Transparent" Height="100%" Visible="true">
            <div id="div_informacoes_complementares" name="div_informacoes_complementares" style="display:none">

                <div class="row" style="width:100%;height:20px"></div>


    <div class="row" style="width: 100%; height: 100%;  padding-left:20px; padding-top: 0px; margin-left: 0px; visibility:visible">

        <div id="i_informacoes_adicionais_on" name="i_informacoes_adicionais_on" class="col" align="left" style="display: block; visibility: visible; font-size: 20px; color: red; margin-right: 20px; border-bottom: none; cursor: pointer" onclick="mostra_div_informacao('div_informacoes_adicionais','i_informacoes_adicionais_on','i_informacoes_adicionais_off',0)"><span style="color: #177CC0; font-family: Arial; font-size: 20px; font-weight: bold;">Informações Adicionais</span>&nbsp;&nbsp;<i class="fa fa-toggle-on"></i></div>
        <div id="i_informacoes_adicionais_off" name="i_informacoes_adicionais_off" class="col" align="left" style="display: none; visibility: hidden; font-size: 20px; color: red; margin-right: 20px; border-bottom: solid; border-width: 1px; border-color: #767676; cursor: pointer" onclick="mostra_div_informacao('div_informacoes_adicionais','i_informacoes_adicionais_on','i_informacoes_adicionais_off',1)"><span style="color: #177CC0; font-family: Arial; font-size: 20px; font-weight: bold;">Informações Adicionais</span>&nbsp;&nbsp;<i class="fa fa-toggle-off"></i></div>

    </div>

    <div class="row"  style="width: 100%; height: 2px"></div>

    <div id="div_informacoes_adicionais" name="div_informacoes_adicionais" style="visibility:visible;width:98%;height:100%;background-color:transparent;margin-left:20px;margin-right:20px;border:solid;border-color:#177CC0;border-width:1px;border-radius:10px;padding: 0px 20px 20px 20px;"    >
      

            <div class="row"
                    style="width:100%;padding:0px;margin:0px;background-color:transparent;height:100%;padding:0px;margin:0px">

                  
                   <!--/////////////////////////////////////////////////// LINHA LADO ESQUERDO Informações Adicionais de Interesse do Fisico /////////////////////////////////////////////////////////////////////////////////////////////-->
                    <div class="col-xl-12"
                        style="width:100%;height:100%;background-color:transparent;padding:0px;margin:0px">

                        <div class="row"
                            style="width:100%;height:100%;background-color:transparent;padding:0px;margin:0px">

                            <div class="col-md-auto"
                                style="width:100%;height:100%;background-color:transparent;padding:10px;">


                                <div class="row">
                                    <div class="col"
                                        style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                        Informações Adicionais de Interesse do Fisico 
                                    </div>
                                </div>

                                <div class="row" style="padding:0px;margin:0px">
                                    <div class="col" style="padding:0px;margin:0px">
                                        <asp:TextBox ID="TextBox227" runat="server" CssClass="layouttexto"
                                            style="width: 90%;padding:0px;margin:0px"
                                             onBlur="SetTextIn(this,0);SetDiv('div_informacoes_adicionais',0)" onFocus="SetTextIn(this,1);SetDiv('div_informacoes_adicionais',1)" >

                                        </asp:TextBox>
                                    </div>
                                </div>
                            </div>
                        </div>
                    
                    </div>

               <!--///////////////////////////////////////////////////  Container -  LINHA LADO ESQUERDO - Informações Complementares de interesse do Contribuinte  /////////////////////////////////////////////////////////////////////////////////////////////-->
                <div class="row" style="height: 20px"></div>
                <div class="row"
                    style="width: 100%; padding: 0px; margin: 0px; background-color: transparent; height: 100%; padding: 0px; margin: 0px">

                    <div class="col-xl-12"
                        style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

                        <div class="row" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

                            <div class="col-md-auto" style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">


                                <div class="row">
                                    <div class="col"
                                        style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                        Informações Complementares de interesse do Contribuinte 
                                    </div>
                                </div>

                                <div class="row" style="padding: 0px; margin: 0px">
                                    <div class="col" style="padding: 0px; margin: 0px">
                                        <asp:TextBox ID="TextBox228" runat="server" CssClass="layouttexto"
                                            Style="width: 90%;" onBlur="SetTextIn(this,0);SetDiv('div_informacoes_adicionais',0)"
                                            onFocus="SetTextIn(this,1);SetDiv('div_informacoes_adicionais',1)">
                                        </asp:TextBox>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
    </div>

               <!--///////////////////////////////////////////////////   Container - Informações de Transporte da NF-e / Grupo livre do comerciante/////////////////////////////////////////////////////////////////////////////////////////////-->


<div class="container-fluid" style="padding: 0px; margin: 0px; width: 100%; height: 100%;">


    <div class="row" style="width: 100%; height: 50px"></div>
       
    <div class="row" style="width: 100%; height: 100%; padding: 0px; margin: 0px; background-color: transparent">
       
        <div class="row" style="width: 100%; height: 100%; color: #177CC0; padding-left: 20px; padding-top: 0px; font-family: Arial; font-size: 20px; font-weight: bold; margin-left: 0px">
       
            <div id="i_informacoes_adicionais_comerciante_on" name="i_informacoes_adicionais_comerciante_on" class="col" align="left" style="display: none; visibility: hidden; font-size: 20px; color: red; margin-right: 20px; border-bottom: none; cursor: pointer" onclick="mostra_div_informacao('div_informacoes_adicionais_comerciante','i_informacoes_adicionais_comerciante_on','i_informacoes_adicionais_comerciante_off',0)"><span style="color: #177CC0; font-family: Arial; font-size: 20px; font-weight: bold;">Informações Adicionais / Livre Comerciante</span>&nbsp;&nbsp;<i class="fa fa-toggle-on"></i></div>
            <div id="i_informacoes_adicionais_comerciante_off" name="i_informacoes_adicionais_comerciante_off" class="col" align="left" style="display: block; visibility: visible; font-size: 20px; color: red; margin-right: 20px; border-bottom: solid; border-color: #767676; border-width: 1px; cursor: pointer" onclick="mostra_div_informacao('div_informacoes_adicionais_comerciante','i_informacoes_adicionais_comerciante_on','i_informacoes_adicionais_comerciante_off',1)"><span style="color: #177CC0; font-family: Arial; font-size: 20px; font-weight: bold;">Informações Adicionais / Livre Comerciante</span>&nbsp;&nbsp;<i class="fa fa-toggle-off"></i></div>
       
       
        </div>
       
        <div class="row" style="width: 100%; height: 20px"></div>
       
       
        <div id="div_informacoes_adicionais_comerciante" name="div_informacoes_adicionais_comerciante"
            style="display: none; visibility: visible; width: 100%; height: 100%; background-color: transparent; margin-left: 20px; margin-right: 20px; border: solid; border-color: #177CC0; border-width: 1px; border-radius: 10px; padding: 0 20px 20px 20px;">
       
       
       
            <div class="row"
                style="width: 100%; padding: 0px; margin: 0px; background-color: transparent; height: 100%; padding: 0px; margin: 0px">
       
       
                <!--///////////////////////////////////////////////////  Container -  LINHA LADO ESQUERDO - Placa do Veículo  -  Sigla da UF /////////////////////////////////////////////////////////////////////////////////////////////-->
                <div class="col-xl-12"
                    style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">
       
                    <div class="row" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">
       
                        <div class="col-md-5" style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">
       
       
                            <div class="row">
                                <div class="col"
                                    style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                    Identificação do campo
                                </div>
                            </div>
       
                            <div class="row" style="padding: 0px; margin: 0px">
                                <div class="col" style="padding: 0px; margin: 0px">
                                    <asp:TextBox ID="TextBox229" runat="server" CssClass="layouttexto"
                                        Style="width: 90%;" onBlur="SetTextIn(this,0);SetDiv('div_informacoes_adicionais_comerciante',0)"
                                    onFocus="SetTextIn(this,1);SetDiv('div_informacoes_adicionais_comerciante',1)">
                                    </asp:TextBox>
                                </div>
                            </div>
       
                        </div>
       
       
                        <div class=" col-md-7"
                            style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">
                            <div class="row">
                                <div class="col"
                                    style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                    Conteúdo do campo
                                </div>
                            </div>
                            <div class="row" style="padding: 0px; margin: 0px">
                                <div class="col" style="padding: 0px; margin: 0px">
                                    <asp:TextBox ID="TextBox231" runat="server" CssClass="layouttexto"
                                        Style="width: 90%;" onBlur="SetTextIn(this,0);SetDiv('div_informacoes_adicionais_comerciante',0)"
                                        onFocus="SetTextIn(this,1);SetDiv('div_informacoes_adicionais_comerciante',1)">
                                    </asp:TextBox>
                                </div>
                            </div>
                        </div>
       
       
                    </div>
       
                </div>

            </div>
            </div>
        </div>
            </div>

                               <!--///////////////////////////////////////////////////   Container - Informações de Transporte da NF-e / Grupo livre do comerciante/////////////////////////////////////////////////////////////////////////////////////////////-->


<div class="container-fluid" style="padding: 0px; margin: 0px; width: 100%; height: 100%;">


    <div class="row" style="width: 100%; height: 50px"></div>
       
    <div class="row" style="width: 100%; height: 100%; padding: 0px; margin: 0px; background-color: transparent">
       
        <div class="row" style="width: 100%; height: 100%; color: #177CC0; padding-left: 20px; padding-top: 0px; font-family: Arial; font-size: 20px; font-weight: bold; margin-left: 0px">
       
            <div id="i_informacoes_adicionais_contribuente_on" name="i_informacoes_adicionais_contribuente_on" class="col" align="left" style="display: none; visibility: hidden; font-size: 20px; color: red; margin-right: 20px; border-bottom: none; cursor: pointer" onclick="mostra_div_informacao('div_informacoes_adicionais_contribuente','i_informacoes_adicionais_contribuente_on','i_informacoes_adicionais_contribuente_off',0)"><span style="color: #177CC0; font-family: Arial; font-size: 20px; font-weight: bold;">Informações Adicionais / Livre Contribuinte</span>&nbsp;&nbsp;<i class="fa fa-toggle-on"></i></div>
            <div id="i_informacoes_adicionais_contribuente_off" name="i_informacoes_adicionais_contribuente_off" class="col" align="left" style="display: block; visibility: visible; font-size: 20px; color: red; margin-right: 20px; border-bottom: solid; border-color: #767676; border-width: 1px; cursor: pointer" onclick="mostra_div_informacao('div_informacoes_adicionais_contribuente','i_informacoes_adicionais_contribuente_on','i_informacoes_adicionais_contribuente_off',1)"><span style="color: #177CC0; font-family: Arial; font-size: 20px; font-weight: bold;">Informações Adicionais / Livre Contribuinte</span>&nbsp;&nbsp;<i class="fa fa-toggle-off"></i></div>
       
       
        </div>
       
        <div class="row" style="width: 100%; height: 20px"></div>
       
       
        <div id="div_informacoes_adicionais_contribuente" name="div_informacoes_adicionais_contribuente"
            style="display: none; visibility: visible; width: 100%; height: 100%; background-color: transparent; margin-left: 20px; margin-right: 20px; border: solid; border-color: #177CC0; border-width: 1px; border-radius: 10px; padding: 0 20px 20px 20px;">
       
       
       
            <div class="row"
                style="width: 100%; padding: 0px; margin: 0px; background-color: transparent; height: 100%; padding: 0px; margin: 0px">
       
       
                <!--///////////////////////////////////////////////////  Container -  LINHA LADO ESQUERDO - Placa do Veículo  -  Sigla da UF /////////////////////////////////////////////////////////////////////////////////////////////-->
                <div class="col-xl-12"
                    style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">
       
                    <div class="row" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">
       
                        <div class="col-md-5" style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">
       
       
                            <div class="row">
                                <div class="col"
                                    style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                    Identificação do campo
                                </div>
                            </div>
       
                            <div class="row" style="padding: 0px; margin: 0px">
                                <div class="col" style="padding: 0px; margin: 0px">
                                    <asp:TextBox ID="TextBox230" runat="server" CssClass="layouttexto"
                                        Style="width: 90%;" onBlur="SetTextIn(this,0);SetDiv('div_informacoes_adicionais_contribuente',0)"
                                    onFocus="SetTextIn(this,1);SetDiv('div_informacoes_adicionais_contribuente',1)">
                                    </asp:TextBox>
                                </div>
                            </div>
       
                        </div>
       
       
                        <div class=" col-md-7"
                            style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">
                            <div class="row">
                                <div class="col"
                                    style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                    Conteúdo do campo
                                </div>
                            </div>
                            <div class="row" style="padding: 0px; margin: 0px">
                                <div class="col" style="padding: 0px; margin: 0px">
                                    <asp:TextBox ID="TextBox232" runat="server" CssClass="layouttexto"
                                        Style="width: 90%;" onBlur="SetTextIn(this,0);SetDiv('div_informacoes_adicionais_contribuente',0)"
                                        onFocus="SetTextIn(this,1);SetDiv('div_informacoes_adicionais_contribuente',1)">
                                    </asp:TextBox>
                                </div>
                            </div>
                        </div>
       
       
                    </div>
       
                </div>

            </div>
            </div>
        </div>
            </div>

                    <!--///////////////////////////////////////////////////   Container - Informações de Transporte da NF-e / Grupo livre do comerciante/////////////////////////////////////////////////////////////////////////////////////////////-->


<div class="container-fluid" style="padding: 0px; margin: 0px; width: 100%; height: 100%;">


    <div class="row" style="width: 100%; height: 50px"></div>
       
    <div class="row" style="width: 100%; height: 100%; padding: 0px; margin: 0px; background-color: transparent">
       
        <div class="row" style="width: 100%; height: 100%; color: #177CC0; padding-left: 20px; padding-top: 0px; font-family: Arial; font-size: 20px; font-weight: bold; margin-left: 0px">
       
            <div id="i_informacoes_adicionais_processo_on" name="i_informacoes_adicionais_processo_on" class="col" align="left" style="display: none; visibility: hidden; font-size: 20px; color: red; margin-right: 20px; border-bottom: none; cursor: pointer" onclick="mostra_div_informacao('div_informacoes_adicionais_processo','i_informacoes_adicionais_processo_on','i_informacoes_adicionais_processo_off',0)"><span style="color: #177CC0; font-family: Arial; font-size: 20px; font-weight: bold;">Informações Adicionais / Processo referenciado </span>&nbsp;&nbsp;<i class="fa fa-toggle-on"></i></div>
            <div id="i_informacoes_adicionais_processo_off" name="i_informacoes_adicionais_processo_off" class="col" align="left" style="display: block; visibility: visible; font-size: 20px; color: red; margin-right: 20px; border-bottom: solid; border-color: #767676; border-width: 1px; cursor: pointer" onclick="mostra_div_informacao('div_informacoes_adicionais_processo','i_informacoes_adicionais_processo_on','i_informacoes_adicionais_processo_off',1)"><span style="color: #177CC0; font-family: Arial; font-size: 20px; font-weight: bold;">Informações Adicionais / Processo referenciado</span>&nbsp;&nbsp;<i class="fa fa-toggle-off"></i></div>
       
       
        </div>
       
        <div class="row" style="width: 100%; height: 20px"></div>
       
       
        <div id="div_informacoes_adicionais_processo" name="div_informacoes_adicionais_processo"
            style="display: none; visibility: visible; width: 100%; height: 100%; background-color: transparent; margin-left: 20px; margin-right: 20px; border: solid; border-color: #177CC0; border-width: 1px; border-radius: 10px; padding: 0 20px 20px 20px;">
       
       
       
            <div class="row"
                style="width: 100%; padding: 0px; margin: 0px; background-color: transparent; height: 100%; padding: 0px; margin: 0px">
       
       
                <!--///////////////////////////////////////////////////  Container -  LINHA LADO ESQUERDO - Placa do Veículo  -  Sigla da UF /////////////////////////////////////////////////////////////////////////////////////////////-->
                <div class="col-xl-12"
                    style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">
       
                    <div class="row" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">
       
                        <div class="col-md-7" style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">
       
       
                            <div class="row">
                                <div class="col"
                                    style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                    Indetificador do processo ou alto concessório
                                </div>
                            </div>
       
                            <div class="row" style="padding: 0px; margin: 0px">
                                <div class="col" style="padding: 0px; margin: 0px">
                                    <asp:TextBox ID="TextBox233" runat="server" CssClass="layouttexto"
                                        Style="width: 90%;" onBlur="SetTextIn(this,0);SetDiv('div_informacoes_adicionais_processo',0)"
                                    onFocus="SetTextIn(this,1);SetDiv('div_informacoes_adicionais_processo',1)">
                                    </asp:TextBox>
                                </div>
                            </div>
       
                        </div>
       
       
                        <div class=" col-md-5"
                            style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">
                            <div class="row">
                                <div class="col"
                                    style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                   Indicador da origem do processo <img alt="" src="../Imagens/ihelp.png"  style="width: 20px; height: 21px; cursor:pointer" onclick="anima_informacao(1,'origemdoprecesso')" />
                                </div>
                            </div>
                            <div class="row" style="padding: 0px; margin: 0px">
                                <div class="col" style="padding: 0px; margin: 0px">
                                    <asp:DropDownList ID="DropDownList31" onBlur="SetTextIn(this,0);SetDiv('div_informacoes_adicionais_processo',0)" onFocus="SetTextIn(this,1);SetDiv('div_informacoes_adicionais_processo',1)" CssClass="layouttexto" runat="server">
                                        <asp:ListItem style="width: 100%;" Text="01" Value="0" />
                                        <asp:ListItem style="width: 100%;" Text="02" Value="1" />
                                        <asp:ListItem style="width: 100%;" Text="03" Value="2" />
                                        <asp:ListItem style="width: 100%;" Text="04" Value="3" />
                                        <asp:ListItem style="width: 100%;" Text="99" Value="4" />
                                    </asp:DropDownList>
                                </div>
                            </div>
                        </div>
       
       
                    </div>
       
                </div>

            </div>
            </div>
        </div>
            </div>


                        <!--///////////////////////////////////////////////////   Container - Informações de Comércio Exterior/////////////////////////////////////////////////////////////////////////////////////////////-->


<div class="container-fluid" style="padding: 0px; margin: 0px; width: 100%; height: 100%;">


    <div class="row" style="width: 100%; height: 50px"></div>
       
    <div class="row" style="width: 100%; height: 100%; padding: 0px; margin: 0px; background-color: transparent">
       
        <div class="row" style="width: 100%; height: 100%; color: #177CC0; padding-left: 20px; padding-top: 0px; font-family: Arial; font-size: 20px; font-weight: bold; margin-left: 0px">
       
            <div id="i_informacoes_comercio_exterior_on" name="i_informacoes_comercio_exterior_on" class="col" align="left" style="display: none; visibility: hidden; font-size: 20px; color: red; margin-right: 20px; border-bottom: none; cursor: pointer" onclick="mostra_div_informacao('div_informacoes_comercio_exterior','i_informacoes_comercio_exterior_on','i_informacoes_comercio_exterior_off',0)"><span style="color: #177CC0; font-family: Arial; font-size: 20px; font-weight: bold;">Informações de Comércio Exterior </span>&nbsp;&nbsp;<i class="fa fa-toggle-on"></i></div>
            <div id="i_informacoes_comercio_exterior_off" name="i_informacoes_comercio_exterior_off" class="col" align="left" style="display: block; visibility: visible; font-size: 20px; color: red; margin-right: 20px; border-bottom: solid; border-color: #767676; border-width: 1px; cursor: pointer" onclick="mostra_div_informacao('div_informacoes_comercio_exterior','i_informacoes_comercio_exterior_on','i_informacoes_comercio_exterior_off',1)"><span style="color: #177CC0; font-family: Arial; font-size: 20px; font-weight: bold;">Informações de Comércio Exterior</span>&nbsp;&nbsp;<i class="fa fa-toggle-off"></i></div>
       
       
        </div>
       
        <div class="row" style="width: 100%; height: 20px"></div>
       
       
        <div id="div_informacoes_comercio_exterior" name="div_informacoes_comercio_exterior"
            style="display: none; visibility: visible; width: 100%; height: 100%; background-color: transparent; margin-left: 20px; margin-right: 20px; border: solid; border-color: #177CC0; border-width: 1px; border-radius: 10px; padding: 0 20px 20px 20px;">
       
       
       
            <div class="row"
                style="width: 100%; padding: 0px; margin: 0px; background-color: transparent; height: 100%; padding: 0px; margin: 0px">
       
       
                <!--///////////////////////////////////////////////////  Container -  LINHA LADO ESQUERDO - Sigla UF de Embarque ou Fronteira  -   Local de Embarque ou Fronteira /////////////////////////////////////////////////////////////////////////////////////////////-->
                <div class="col-xl-12"
                    style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">
       
                    <div class="row" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">
       
                        <div class="col-md-6" style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">
       
       
                            <div class="row">
                                <div class="col"
                                    style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                    Local de Embarque ou Fronteira 
                                </div>
                            </div>
       
                            <div class="row" style="padding: 0px; margin: 0px">
                                <div class="col" style="padding: 0px; margin: 0px">
                                    <asp:DropDownList ID="DropDownList32" onBlur="SetTextIn(this,0);SetDiv('div_informacoes_comercio_exterior',0)" onFocus="SetTextIn(this,1);SetDiv('div_informacoes_comercio_exterior',1)" CssClass="layouttexto" runat="server">
                                        <asp:ListItem style="width: 100%;" Text="SP" Value="1" />
                                        <asp:ListItem style="width: 100%;" Text="AC" Value="2" />
                                        <asp:ListItem style="width: 100%;" Text="AL" Value="3" />
                                        <asp:ListItem style="width: 100%;" Text="AP" Value="4" />
                                        <asp:ListItem style="width: 100%;" Text="AM" Value="5" />
                                        <asp:ListItem style="width: 100%;" Text="BA" Value="6" />
                                        <asp:ListItem style="width: 100%;" Text="CE" Value="7" />
                                        <asp:ListItem style="width: 100%;" Text="DF" Value="8" />
                                        <asp:ListItem style="width: 100%;" Text="ES" Value="9" />
                                        <asp:ListItem style="width: 100%;" Text="GO" Value="10" />
                                        <asp:ListItem style="width: 100%;" Text="MA" Value="11" />
                                        <asp:ListItem style="width: 100%;" Text="MT" Value="12" />
                                        <asp:ListItem style="width: 100%;" Text="MS" Value="13" />
                                        <asp:ListItem style="width: 100%;" Text="MG" Value="14" />
                                        <asp:ListItem style="width: 100%;" Text="PA" Value="15" />
                                        <asp:ListItem style="width: 100%;" Text="PB" Value="16" />
                                        <asp:ListItem style="width: 100%;" Text="PR" Value="17" />
                                        <asp:ListItem style="width: 100%;" Text="PE" Value="18" />
                                        <asp:ListItem style="width: 100%;" Text="PI" Value="19" />
                                        <asp:ListItem style="width: 100%;" Text="RJ" Value="20" />
                                        <asp:ListItem style="width: 100%;" Text="RN" Value="21" />
                                        <asp:ListItem style="width: 100%;" Text="RS" Value="22" />
                                        <asp:ListItem style="width: 100%;" Text="RO" Value="23" />
                                        <asp:ListItem style="width: 100%;" Text="RR" Value="24" />
                                        <asp:ListItem style="width: 100%;" Text="SC" Value="25" />
                                        <asp:ListItem style="width: 100%;" Text="SE" Value="26" />
                                        <asp:ListItem style="width: 100%;" Text="TO" Value="27" />
                                    </asp:DropDownList>
                                </div>
                            </div>
       
                        </div>
       
       
                        <div class=" col-md-6"
                            style="width: 100%; height: 120%; background-color: transparent; padding: 10px;">
                            <div class="row">
                                <div class="col"
                                    style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                   Sigla UF de Embarque ou Fronteira
                                </div>
                            </div>
                            <div class="row" style="padding: 0px; margin: 0px">
                                <div class="col" style="padding: 0px; margin: 0px">
                                    <asp:TextBox ID="TextBox236" runat="server" CssClass="layouttexto"
                                        Style="width: 50%;" onBlur="SetTextIn(this,0);SetDiv('div_informacoes_comercio_exterior',0)"
                                        onFocus="SetTextIn(this,1);SetDiv('div_informacoes_comercio_exterior',1)">
                                    </asp:TextBox>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>

             <!--///////////////////////////////////////////////////  Container -  LINHA LADO ESQUERDO - Informações Complementares de interesse do Contribuinte  /////////////////////////////////////////////////////////////////////////////////////////////-->
  <div class="row" style="height: 20px"></div>
  <div class="row"
      style="width: 100%; padding: 0px; margin: 0px; background-color: transparent; height: 100%; padding: 0px; margin: 0px">

      <div class="col-xl-12"
          style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

          <div class="row" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

              <div class="col-md-auto" style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">


                  <div class="row">
                      <div class="col"
                          style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                          Descrição do local de despacho
                      </div>
                  </div>

                  <div class="row" style="padding: 0px; margin: 0px">
                      <div class="col" style="padding: 0px; margin: 0px">
                          <asp:TextBox ID="TextBox234" runat="server" CssClass="layouttexto"
                              Style="width: 50%;" onBlur="SetTextIn(this,0);SetDiv('div_informacoes_comercio_exterior',0)"
                              onFocus="SetTextIn(this,1);SetDiv('div_informacoes_comercio_exterior',1)">
                          </asp:TextBox>
                      </div>
                  </div>
              </div>
          </div>
         </div>
      </div>
     </div>
   </div>
  </div>

                    <!--///////////////////////////////////////////////////   Container - Informações de Comércio Exterior/////////////////////////////////////////////////////////////////////////////////////////////-->


    <div class="container-fluid" style="padding: 0px; margin: 0px; width: 100%; height: 100%;">


    <div class="row" style="width: 100%; height: 50px"></div>
       
    <div class="row" style="width: 100%; height: 100%; padding: 0px; margin: 0px; background-color: transparent">
       
        <div class="row" style="width: 100%; height: 100%; color: #177CC0; padding-left: 20px; padding-top: 0px; font-family: Arial; font-size: 20px; font-weight: bold; margin-left: 0px">
       
            <div id="i_informacoes_compras_on" name="i_informacoes_compras_on" class="col" align="left" style="display: none; visibility: hidden; font-size: 20px; color: red; margin-right: 20px; border-bottom: none; cursor: pointer" onclick="mostra_div_informacao('div_informacoes_compras','i_informacoes_compras_on','i_informacoes_compras_off',0)"><span style="color: #177CC0; font-family: Arial; font-size: 20px; font-weight: bold;">Informações de Compras </span>&nbsp;&nbsp;<i class="fa fa-toggle-on"></i></div>
            <div id="i_informacoes_compras_off" name="i_informacoes_compras_off" class="col" align="left" style="display: block; visibility: visible; font-size: 20px; color: red; margin-right: 20px; border-bottom: solid; border-color: #767676; border-width: 1px; cursor: pointer" onclick="mostra_div_informacao('div_informacoes_compras','i_informacoes_compras_on','i_informacoes_compras_off',1)"><span style="color: #177CC0; font-family: Arial; font-size: 20px; font-weight: bold;">Informações de Compras</span>&nbsp;&nbsp;<i class="fa fa-toggle-off"></i></div>
       
       
        </div>
       
        <div class="row" style="width: 100%; height: 20px"></div>
       
       
        <div id="div_informacoes_compras" name="div_informacoes_compras"
            style="display: none; visibility: visible; width: 100%; height: 100%; background-color: transparent; margin-left: 20px; margin-right: 20px; border: solid; border-color: #177CC0; border-width: 1px; border-radius: 10px; padding: 0 20px 20px 20px;">
       
       
       
            <div class="row"
                style="width: 100%; padding: 0px; margin: 0px; background-color: transparent; height: 100%; padding: 0px; margin: 0px">
       
       
                <!--///////////////////////////////////////////////////  Container -  LINHA LADO ESQUERDO - Sigla UF de Embarque ou Fronteira  -   Local de Embarque ou Fronteira /////////////////////////////////////////////////////////////////////////////////////////////-->
                <div class="col-xl-12"
                    style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">
       
                    <div class="row" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">
       
                        <div class="col-md-7" style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">
       
       
                            <div class="row">
                                <div class="col"
                                    style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                     Pedido 
                                </div>
                            </div>
       
                            <div class="row" style="padding: 0px; margin: 0px">
                                <div class="col" style="padding: 0px; margin: 0px">
                                    <asp:TextBox ID="TextBox237" runat="server" CssClass="layouttexto"
                                        Style="width: 70%;" onBlur="SetTextIn(this,0);SetDiv('div_informacoes_compras',0)"
                                        onFocus="SetTextIn(this,1);SetDiv('div_informacoes_compras',1)">
                                    </asp:TextBox>
                                </div>
                            </div>
       
                        </div>
       
       
                        <div class=" col-md-5"
                            style="width: 100%; height: 120%; background-color: transparent; padding: 10px;">
                            <div class="row">
                                <div class="col"
                                    style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                  Nota de Empenho 
                                </div>
                            </div>
                            <div class="row" style="padding: 0px; margin: 0px">
                                <div class="col" style="padding: 0px; margin: 0px">
                                    <asp:TextBox ID="TextBox238" runat="server" CssClass="layouttexto"
                                        Style="width: 55%;" onBlur="SetTextIn(this,0);SetDiv('div_informacoes_compras',0)"
                                        onFocus="SetTextIn(this,1);SetDiv('div_informacoes_compras',1)">
                                    </asp:TextBox>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>

             <!--///////////////////////////////////////////////////  Container -  LINHA LADO ESQUERDO - Informações Complementares de interesse do Contribuinte  /////////////////////////////////////////////////////////////////////////////////////////////-->
            <div class="row" style="height: 20px"></div>
            <div class="row"
                style="width: 100%; padding: 0px; margin: 0px; background-color: transparent; height: 100%; padding: 0px; margin: 0px">

                <div class="col-xl-12"
                    style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

                    <div class="row" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

                        <div class="col-md-auto" style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">


                            <div class="row">
                                <div class="col"
                                    style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                    Contrato
                                </div>
                            </div>

                            <div class="row" style="padding: 0px; margin: 0px">
                                <div class="col" style="padding: 0px; margin: 0px">
                                    <asp:TextBox ID="TextBox235" runat="server" CssClass="layouttexto"
                                        Style="width: 41%;" onBlur="SetTextIn(this,0);SetDiv('div_informacoes_compras',0)"
                                        onFocus="SetTextIn(this,1);SetDiv('div_informacoes_compras',1)">
                                    </asp:TextBox>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    </div>

                <!--///////////////////////////////////////////////////   Container - Informações de Comércio Exterior/////////////////////////////////////////////////////////////////////////////////////////////-->


                <div class="container-fluid" style="padding: 0px; margin: 0px; width: 100%; height: 100%;">


                    <div class="row" style="width: 100%; height: 50px"></div>

                    <div class="row" style="width: 100%; height: 100%; padding: 0px; margin: 0px; background-color: transparent">

                        <div class="row" style="width: 100%; height: 100%; color: #177CC0; padding-left: 20px; padding-top: 0px; font-family: Arial; font-size: 20px; font-weight: bold; margin-left: 0px">

                            <div id="i_informacoes_registro_cana_on" name="i_informacoes_registro_cana_on" class="col" align="left" style="display: none; visibility: hidden; font-size: 20px; color: red; margin-right: 20px; border-bottom: none; cursor: pointer" onclick="mostra_div_informacao('div_informacoes_registro_cana','i_informacoes_registro_cana_on','i_informacoes_registro_cana_off',0)"><span style="color: #177CC0; font-family: Arial; font-size: 20px; font-weight: bold;">Informaçôes do Registro de Aquisição de Cana </span>&nbsp;&nbsp;<i class="fa fa-toggle-on"></i></div>
                            <div id="i_informacoes_registro_cana_off" name="i_informacoes_registro_cana_off" class="col" align="left" style="display: block; visibility: visible; font-size: 20px; color: red; margin-right: 20px; border-bottom: solid; border-color: #767676; border-width: 1px; cursor: pointer" onclick="mostra_div_informacao('div_informacoes_registro_cana','i_informacoes_registro_cana_on','i_informacoes_registro_cana_off',1)"><span style="color: #177CC0; font-family: Arial; font-size: 20px; font-weight: bold;">Informaçôes do Registro de Aquisição de Cana</span>&nbsp;&nbsp;<i class="fa fa-toggle-off"></i></div>


                        </div>

                        <div class="row" style="width: 100%; height: 20px"></div>


                        <div id="div_informacoes_registro_cana" name="div_informacoes_registro_cana"
                            style="display: none; visibility: visible; width: 100%; height: 100%; background-color: transparent; margin-left: 20px; margin-right: 20px; border: solid; border-color: #177CC0; border-width: 1px; border-radius: 10px; padding: 0 20px 20px 20px;">



                            <div class="row"
                                style="width: 100%; padding: 0px; margin: 0px; background-color: transparent; height: 100%; padding: 0px; margin: 0px">


                                <!--///////////////////////////////////////////////////  Container -  LINHA LADO ESQUERDO - Sigla UF de Embarque ou Fronteira  -   Local de Embarque ou Fronteira /////////////////////////////////////////////////////////////////////////////////////////////-->
                                <div class="col-xl-6"
                                    style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

                                    <div class="row" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

                                        <div class="col-md-6" style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">


                                            <div class="row">
                                                <div class="col"
                                                    style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                                    Identificação da Safra
                                                </div>
                                            </div>

                                            <div class="row" style="padding: 0px; margin: 0px">
                                                <div class="col" style="padding: 0px; margin: 0px">
                                                    <asp:TextBox ID="TextBox239" runat="server" CssClass="layouttexto"
                                                        Style="width: 70%;" onBlur="SetTextIn(this,0);SetDiv('div_informacoes_registro_cana',0)"
                                                        onFocus="SetTextIn(this,1);SetDiv('div_informacoes_registro_cana',1)">
                                                    </asp:TextBox>
                                                </div>
                                            </div>

                                        </div>

       
                                        <div class=" col-md-6"
                                            style="width: 100%; height: 120%; background-color: transparent; padding: 10px;">
                                            <div class="row">
                                                <div class="col"
                                                    style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                                    Mês e ano de referencia
                                                </div>
                                            </div>
                                            <div class="row" style="padding: 0px; margin: 0px">
                                                <div class="col" style="padding: 0px; margin: 0px">
                                                    <asp:TextBox ID="TextBox240" runat="server" CssClass="layouttexto"
                                                        Style="width: 55%;" onBlur="SetTextIn(this,0);SetDiv('div_informacoes_registro_cana',0)"
                                                        onFocus="SetTextIn(this,1);SetDiv('div_informacoes_registro_cana',1)">
                                                    </asp:TextBox>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                 <!--///////////////////////////////////////////////////  Container  - Dia  -   Quantidade /////////////////////////////////////////////////////////////////////////////////////////////-->
                                <div class="col-xl-6"
                                    style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

                                    <div class="row" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

                                        <div class="col-md-6" style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">


                                            <div class="row">
                                                <div class="col"
                                                    style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                                    Dia 
                                                </div>
                                            </div>

                                            <div class="row" style="padding: 0px; margin: 0px">
                                                <div class="col" style="padding: 0px; margin: 0px">
                                                    <asp:TextBox ID="TextBox242" runat="server" CssClass="layouttexto"
                                                        Style="width: 70%;" onBlur="SetTextIn(this,0);SetDiv('div_informacoes_registro_cana',0)"
                                                        onFocus="SetTextIn(this,1);SetDiv('div_informacoes_registro_cana',1)">
                                                    </asp:TextBox>
                                                </div>
                                            </div>

                                        </div>


                                        <div class=" col-md-6"
                                            style="width: 100%; height: 120%; background-color: transparent; padding: 10px;">
                                            <div class="row">
                                                <div class="col"
                                                    style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                                    Quantidade
                                                </div>
                                            </div>
                                            <div class="row" style="padding: 0px; margin: 0px">
                                                <div class="col" style="padding: 0px; margin: 0px">
                                                    <asp:TextBox ID="TextBox243" runat="server" CssClass="layouttexto"
                                                        Style="width: 55%;" onBlur="SetTextIn(this,0);SetDiv('div_informacoes_registro_cana',0)"
                                                        onFocus="SetTextIn(this,1);SetDiv('div_informacoes_registro_cana',1)">
                                                    </asp:TextBox>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                            </div>

                            <!--///////////////////////////////////////////////////  Container -  LINHA LADO ESQUERDO -  Quantidade Total do Mês - Quantidade Total Anterior  /////////////////////////////////////////////////////////////////////////////////////////////-->
                            <div class="row" style="height: 20px"></div>
                            <div class="row"
                                style="width: 100%; padding: 0px; margin: 0px; background-color: transparent; height: 100%; padding: 0px; margin: 0px">

                                <div class="col-xl-6"
                                    style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

                                    <div class="row" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

                                        <div class="col-md-6" style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">


                                            <div class="row">
                                                <div class="col"
                                                    style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                                    Quantidade Total do Mês
                                                </div>
                                            </div>

                                            <div class="row" style="padding: 0px; margin: 0px">
                                                <div class="col" style="padding: 0px; margin: 0px">
                                                    <asp:TextBox ID="TextBox241" runat="server" CssClass="layouttexto"
                                                        Style="width: 41%;" onBlur="SetTextIn(this,0);SetDiv('div_informacoes_registro_cana',0)"
                                                        onFocus="SetTextIn(this,1);SetDiv('div_informacoes_registro_cana',1)">
                                                    </asp:TextBox>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="col-md-6" style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">


                                            <div class="row">
                                                <div class="col"
                                                    style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                                    Quantidade Total Anterior
                                                </div>
                                            </div>

                                            <div class="row" style="padding: 0px; margin: 0px">
                                                <div class="col" style="padding: 0px; margin: 0px">
                                                    <asp:TextBox ID="TextBox244" runat="server" CssClass="layouttexto"
                                                        Style="width: 41%;" onBlur="SetTextIn(this,0);SetDiv('div_informacoes_registro_cana',0)"
                                                        onFocus="SetTextIn(this,1);SetDiv('div_informacoes_registro_cana',1)">
                                                    </asp:TextBox>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                 <!--///////////////////////////////////////////////////  Container -  Quantidade Total Geral - Descrição da Dedução /////////////////////////////////////////////////////////////////////////////////////////////-->
                                
                                <div class="col-xl-6"
                                    style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

                                    <div class="row" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

                                        <div class="col-md-6" style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">


                                            <div class="row">
                                                <div class="col"
                                                    style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                                    Quantidade Total Geral
                                                </div>
                                            </div>

                                            <div class="row" style="padding: 0px; margin: 0px">
                                                <div class="col" style="padding: 0px; margin: 0px">
                                                    <asp:TextBox ID="TextBox245" runat="server" CssClass="layouttexto"
                                                        Style="width: 41%;" onBlur="SetTextIn(this,0);SetDiv('div_informacoes_registro_cana',0)"
                                                        onFocus="SetTextIn(this,1);SetDiv('div_informacoes_registro_cana',1)">
                                                    </asp:TextBox>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="col-md-6" style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">


                                            <div class="row">
                                                <div class="col"
                                                    style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                                    Descrição da Dedução
                                                </div>
                                            </div>

                                            <div class="row" style="padding: 0px; margin: 0px">
                                                <div class="col" style="padding: 0px; margin: 0px">
                                                    <asp:TextBox ID="TextBox246" runat="server" CssClass="layouttexto"
                                                        Style="width: 41%;" onBlur="SetTextIn(this,0);SetDiv('div_informacoes_registro_cana',0)"
                                                        onFocus="SetTextIn(this,1);SetDiv('div_informacoes_registro_cana',1)">
                                                    </asp:TextBox>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <!--///////////////////////////////////////////////////  Container -  LINHA LADO ESQUERDO -  Quantidade Total do Mês - Quantidade Total Anterior  /////////////////////////////////////////////////////////////////////////////////////////////-->
                            <div class="row" style="height: 20px"></div>
                            <div class="row"
                                style="width: 100%; padding: 0px; margin: 0px; background-color: transparent; height: 100%; padding: 0px; margin: 0px">

                                <div class="col-xl-6"
                                    style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

                                    <div class="row" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

                                        <div class="col-md-6" style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">


                                            <div class="row">
                                                <div class="col"
                                                    style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                                   Valor da Dedução
                                                </div>
                                            </div>

                                            <div class="row" style="padding: 0px; margin: 0px">
                                                <div class="col" style="padding: 0px; margin: 0px">
                                                    <asp:TextBox ID="TextBox247" runat="server" CssClass="layouttexto"
                                                        Style="width: 41%;" onBlur="SetTextIn(this,0);SetDiv('div_informacoes_registro_cana',0)"
                                                        onFocus="SetTextIn(this,1);SetDiv('div_informacoes_registro_cana',1)">
                                                    </asp:TextBox>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="col-md-6" style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">


                                            <div class="row">
                                                <div class="col"
                                                    style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                                    Valor dos Fornecimentos
                                                </div>
                                            </div>

                                            <div class="row" style="padding: 0px; margin: 0px">
                                                <div class="col" style="padding: 0px; margin: 0px">
                                                    <asp:TextBox ID="TextBox248" runat="server" CssClass="layouttexto"
                                                        Style="width: 41%;" onBlur="SetTextIn(this,0);SetDiv('div_informacoes_registro_cana',0)"
                                                        onFocus="SetTextIn(this,1);SetDiv('div_informacoes_registro_cana',1)">
                                                    </asp:TextBox>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!--///////////////////////////////////////////////////  Container -  Quantidade Total Geral - Descrição da Dedução /////////////////////////////////////////////////////////////////////////////////////////////-->

                                <div class="col-xl-6"
                                    style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

                                    <div class="row" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

                                        <div class="col-md-6" style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">


                                            <div class="row">
                                                <div class="col"
                                                    style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                                    Valor Total da Dedução
                                                </div>
                                            </div>

                                            <div class="row" style="padding: 0px; margin: 0px">
                                                <div class="col" style="padding: 0px; margin: 0px">
                                                    <asp:TextBox ID="TextBox249" runat="server" CssClass="layouttexto"
                                                        Style="width: 41%;" onBlur="SetTextIn(this,0);SetDiv('div_informacoes_registro_cana',0)"
                                                        onFocus="SetTextIn(this,1);SetDiv('div_informacoes_registro_cana',1)">
                                                    </asp:TextBox>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="col-md-6" style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">


                                            <div class="row">
                                                <div class="col"
                                                    style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                                    Valor Liquido dos Fornecimentos
                                                </div>
                                            </div>

                                            <div class="row" style="padding: 0px; margin: 0px">
                                                <div class="col" style="padding: 0px; margin: 0px">
                                                    <asp:TextBox ID="TextBox250" runat="server" CssClass="layouttexto"
                                                        Style="width: 41%;" onBlur="SetTextIn(this,0);SetDiv('div_informacoes_registro_cana',0)"
                                                        onFocus="SetTextIn(this,1);SetDiv('div_informacoes_registro_cana',1)">
                                                    </asp:TextBox>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>

            </div>

            </asp:Panel> 

</asp:Content>
