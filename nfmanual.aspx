<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/topo.Master" CodeBehind="nfmanual.aspx.vb" Inherits="VoceFazNfe.nfmanual" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <div class="row" style="width:100%;height:210px;background-color:transparent"></div>

    <!-- Menu das seçoes da nota fiscal -->
    <nav class="navbar navbar-expand-lg navbar-light bg-light">

          <a class="navbar-brand" style="color:#177CC0;padding-left:10px;padding-top:0px; font-family: Arial; font-size: 20px; font-weight: bold;">Nota Fiscal Eletrônica</a>

          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="true" aria-label="Alterna navegação">
            <span class="navbar-toggler-icon"></span>
          </button>

          <div class="collapse navbar-collapse justify-content-center" id="navbarNavAltMarkup">

            <div class="navbar-nav justify-content-sm-center">

              <a id="menu_dados_iniciais" name="menu_dados_iniciais" class="nav-item" style="cursor:pointer;color:#177CC0;width:170px;padding-top:10px;padding-left:20px" onmouseover="muda_foco_menu_nfe(this,1)" onmouseout="muda_foco_menu_nfe(this,0)" onclick="seleciona_menu_nfe(this)">Dados Principais</a>
              <a id="menu_dados_destinatario" name="menu_dados_destinatario" class="nav-item" style="cursor:pointer;width:140px;padding-top:10px;padding-left:20px" onmouseover="muda_foco_menu_nfe(this,1)" onmouseout="muda_foco_menu_nfe(this,0)" onclick="seleciona_menu_nfe(this)">Destinatário</a>                 
              <a id="menu_itens_nota" name="menu_itens_nota" class="nav-item" style="cursor:pointer;width:140px;padding-top:10px;padding-left:20px" onmouseover="muda_foco_menu_nfe(this,1)" onmouseout="muda_foco_menu_nfe(this,0)" onclick="seleciona_menu_nfe(this)">Itens da Nota</a>
              <a id="menu_totais_nota" name="menu_totais_nota" class="nav-item" style="cursor:pointer;width:140px;padding-top:10px;padding-left:20px" onmouseover="muda_foco_menu_nfe(this,1)" onmouseout="muda_foco_menu_nfe(this,0)" onclick="seleciona_menu_nfe(this)">Totais da Nota</a>
              <a id="menu_informacoes_complementares" name="menu_informacoes_complementares" class="nav-item" style="cursor:pointer;width:150px;padding-top:10px;padding-left:20px;padding-bottom:20px" onmouseover="muda_foco_menu_nfe(this,1)" onmouseout="muda_foco_menu_nfe(this,0)" onclick="seleciona_menu_nfe(this)">Dados Adicionais</a>

            </div>

          </div>

    </nav>


<div id="div_dados_iniciais" name="div_dados_iniciais">
    <div class="container-fluid" style="padding:0px;margin:0px;width:100%;height:100%">

        <div class="row" style="width:100%;height:100%;padding:0px;margin:0px;background-color:transparent">

            <!--/////////////////////////////////////////////////// Div com os dados Iniciais / Principais da Nota /////////////////////////////////////////////////////////////////////////////////////////////-->
            <div  style="display:block;visibility:visible;width:100%;height:100%;background-color:transparent;margin-left:20px;margin-right:20px;border:solid;border-color:#177CC0;border-width:1px;border-radius:10px;padding-left:20px;padding-right:20px;padding-bottom:20px">

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
                                                placeholder="00.000.000/0000-00" onBlur="SetTextIn(this,0)"
                                                onFocus="SetTextIn(this,1)" >

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
                                                style="width: 93%;" onBlur="SetTextIn(this,0)"
                                                onFocus="SetTextIn(this,1)">
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
                                Identificação do destinatário 
                            </div>
                        </div>
                        <div class="row" style="padding: 0px; margin: 0px">
                            <div class="col" style="padding: 0px; margin: 0px; background-color: transparent">
                                <asp:TextBox ID="cs_identificacao_destinatrio" runat="server" CssClass="layouttexto"
                                    Style="width: 100%;" onBlur="SetTextIn(this,0)" onFocus="SetTextIn(this,1)">
                                </asp:TextBox>
                            </div>
                        </div>
                    </div>
                </div>
                
            </div>

        </div>
        
    </div>
    

    
     <!--/////////////////////////////////////////////////// Container2 - Endereço do Destinatário da NF-e  /////////////////////////////////////////////////////////////////////////////////////////////-->

            
     <div class="container-fluid" style="padding:0px;margin:0px;width:100%;height:100%">
           

     <div class="row" style="width:100%;height:50px"></div>
          <p style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold; padding-left:25px;">Endereço do Destinatário da NF-e</p>
     <div class="row" style="width:100%;height:100%;padding:0px;margin:0px;background-color:transparent">

         <!--/////////////////////////////////////////////////// Div com os dados Iniciais / Principais da Nota /////////////////////////////////////////////////////////////////////////////////////////////-->
         <div id="div_dados_endereco_do_destinatario" name="div_dados_endereco_do_destinatario"
             style="display:block;visibility:visible;width:100%;height:100%;background-color:transparent;margin-left:20px;margin-right:20px;border:solid;border-color:#177CC0;border-width:1px;border-radius:10px;padding: 0 20px 20px 20px;">


            
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
                                            style="width: 150px" placeholder="00000-000" onBlur="SetTextIn(this,0)" onFocus="SetTextIn(this,1)">
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
                                         style="width: 93%;" onBlur="SetTextIn(this,0)"
                                         onFocus="SetTextIn(this,1)">
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
                                                Style="width: 80px;" onBlur="SetTextIn(this,0)"
                                                onFocus="SetTextIn(this,1)">
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
                                 style="width: 100%;" onBlur="SetTextIn(this,0)" onFocus="SetTextIn(this,1)">
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
                                         Style="width: 260px;" onBlur="SetTextIn(this,0)" onFocus="SetTextIn(this,1)">
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
                                     Código do Município
                                 </div>
                             </div>
                             <div class="row">
                                 <div class="col">
                                     <asp:TextBox ID="cs_codMunicipio" runat="server" CssClass="layouttexto"
                                         Style="width: 170px;" onBlur="SetTextIn(this,0)"
                                         onFocus="SetTextIn(this,1)"></asp:TextBox>
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
                                         Style="width: 80%;" onBlur="SetTextIn(this,0)" onFocus="SetTextIn(this,1)">
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
                                    <asp:DropDownList ID="cs_uf" runat="server">
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
                                     <asp:TextBox ID="codigo_pais_destinatario" runat="server" CssClass="layouttexto" Style="width: 100px;" onBlur="SetTextIn(this,0)" onFocus="SetTextIn(this,1)"></asp:TextBox>
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
                                         Style="width: 100px;" onBlur="SetTextIn(this,0)" onFocus="SetTextIn(this,1)">
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
                                             Style="width: 166px" placeholder="00000-000" onBlur="SetTextIn(this,0)" onFocus="SetTextIn(this,1)">
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
                                             Indicador da IE do Destinatário

                                         </div>
                                     </div>
                                     <div class="row" style="padding: 0px; margin: 0px">
                                         <div class="col" style="padding: 0px; margin: 0px">
                                             <asp:DropDownList ID="cs_regimeTributario" runat="server">
                                        <asp:ListItem style="width: 200px;" Text="Contribuente ICMS" Value="1" />
                                        <asp:ListItem style="width: 200px;"
                                            Text="Contribuente isento de Inscrição no cadastro de Contribuentes " Value="2" />
                                        <asp:ListItem style="width: 200px;" />
                                    </asp:DropDownList>
                                         </div>
                                     </div>
                                 </div>
                                 </div>
                             </div>
                 </div>
                                  <!--/////////////////////////////////////////////////// ÚLTIMA linha -LADO ESQUERDO /////////////////////////////////////////////////////////////////////////////////////////////-->
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
                                                         <asp:TextBox ID="inscricao_estadual_destinatario" runat="server" CssClass="layouttexto" Style="width: 80%;" onBlur="SetTextIn(this,0)" onFocus="SetTextIn(this,1)"></asp:TextBox>
                                                     </div>
                                                 </div>
                                             </div>

                                                <div class="col-md-6" style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-left: 10px; padding-top: 10px">
                                                    <div class="row">
                                                        <div class="col" style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                                            Inscrição na SUFRAMA
                                                        </div>
                                                    </div>
                                                    <div class="row">
                                                     <div class="col">
                                                         <asp:TextBox ID="inscricao_suframa_destinatario" runat="server" CssClass="layouttexto" Style="width: 80%;" onBlur="SetTextIn(this,0)" onFocus="SetTextIn(this,1)"></asp:TextBox>
                                                     </div>
                                                 </div>
                                                </div>
                                         </div>

                                     </div>
                                             <!--/////////////////////////////////////////////////// ÚLTIMA linha -LADO ESQUERDO /////////////////////////////////////////////////////////////////////////////////////////////-->
                                      <div class="col-xl-6" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px; padding-left: 10px">

                                         <div class="row" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

                                             <div class="col-md-8" style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-left: 10px; padding-top: 10px">
                                                 <div class="row">
                                                     <div class="col" style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                                         Inscrição Municipal do Tomador do Serviço
                                                     </div>
                                                 </div>
                                                 <div class="row">
                                                     <div class="col">
                                                         <asp:TextBox runat="server" CssClass="layouttexto" Style="width: 90%;" onBlur="SetTextIn(this,0)" onFocus="SetTextIn(this,1)"></asp:TextBox>
                                                     </div>
                                                 </div>
                                             </div>

                                                <div class="col-md-4" style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-left: 10px; padding-top: 10px">
                                                    <div class="row">
                                                        <div class="col" style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                                            Email
                                                        </div>
                                                    </div>
                                                    <div class="row">
                                                     <div class="col">
                                                         <asp:TextBox runat="server" CssClass="layouttexto" Style="width: 90%;" onBlur="SetTextIn(this,0)" onFocus="SetTextIn(this,1)"></asp:TextBox>
                                                     </div>
                                                 </div>
                                                </div>
                                         </div>
                                     </div>
                                 </div>
</div>

         </div>
     </div>

    <!--/////////////////////////////////////////////////// Container3 - Identificação Local de Retirada /////////////////////////////////////////////////////////////////////////////////////////////-->

            
     <div class="container-fluid" style="padding:0px;margin:0px;width:100%;height:100%">
           

     <div class="row" style="width:100%;height:50px"></div>
          <p style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold; padding-left:25px;">Identificação Local de Retirada</p>
     <div class="row" style="width:100%;height:100%;padding:0px;margin:0px;background-color:transparent">

         
         <div id="div_dados_iniciais_local_de_retirada" name="div_dados_iniciais_local_de_retirada"
             style="display:block;visibility:visible;width:100%;height:100%;background-color:transparent;margin-left:20px;margin-right:20px;border:solid;border-color:#177CC0;border-width:1px;border-radius:10px;padding: 0 20px 20px 20px;">


            
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
                                                placeholder="00.000.000/0000-00" onBlur="SetTextIn(this,0)"
                                                onFocus="SetTextIn(this,1)" >

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
                                         style="width: 93%;" onBlur="SetTextIn(this,0)"
                                         onFocus="SetTextIn(this,1)">
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
                                                Style="width: 80px;" onBlur="SetTextIn(this,0)"
                                                onFocus="SetTextIn(this,1)">
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
                                 style="width: 100%;" onBlur="SetTextIn(this,0)" onFocus="SetTextIn(this,1)">
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
                                         Style="width: 260px;" onBlur="SetTextIn(this,0)" onFocus="SetTextIn(this,1)">
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
                                     Código do Município
                                 </div>
                             </div>
                             <div class="row">
                                 <div class="col">
                                     <asp:TextBox ID="codigo_municipio_local_de_retirada" runat="server" CssClass="layouttexto"
                                         Style="width: 170px;" onBlur="SetTextIn(this,0)"
                                         onFocus="SetTextIn(this,1)"></asp:TextBox>
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
                                         Style="width: 80%;" onBlur="SetTextIn(this,0)" onFocus="SetTextIn(this,1)">
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
                                     <asp:DropDownList ID="uf_local_de_retirada" runat="server">
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

    <div class="container-fluid" style="padding:0px;margin:0px;width:100%;height:100%">
           

     <div class="row" style="width:100%;height:50px"></div>
          <p style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold; padding-left:25px;">Identificação Local de Entrega</p>
     <div class="row" style="width:100%;height:100%;padding:0px;margin:0px;background-color:transparent">

         <!--/////////////////////////////////////////////////// Div com os dados Iniciais / Principais da Nota /////////////////////////////////////////////////////////////////////////////////////////////-->
         <div id="div_dados_iniciais_local_de_entrega" name="div_dados_iniciais_local_de_entrega"
             style="display:block;visibility:visible;width:100%;height:100%;background-color:transparent;margin-left:20px;margin-right:20px;border:solid;border-color:#177CC0;border-width:1px;border-radius:10px;padding: 0 20px 20px 20px;">


            
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
                                                placeholder="00.000.000/0000-00" onBlur="SetTextIn(this,0)"
                                                onFocus="SetTextIn(this,1)" >

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
                                         style="width: 93%;" onBlur="SetTextIn(this,0)"
                                         onFocus="SetTextIn(this,1)">
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
                                                Style="width: 80px;" onBlur="SetTextIn(this,0)"
                                                onFocus="SetTextIn(this,1)">
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
                                 style="width: 100%;" onBlur="SetTextIn(this,0)" onFocus="SetTextIn(this,1)">
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
                                         Style="width: 260px;" onBlur="SetTextIn(this,0)" onFocus="SetTextIn(this,1)">
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
                                     Código do Município
                                 </div>
                             </div>
                             <div class="row">
                                 <div class="col">
                                     <asp:TextBox ID="codigo_municipio_local_de_entrega" runat="server" CssClass="layouttexto"
                                         Style="width: 170px;" onBlur="SetTextIn(this,0)"
                                         onFocus="SetTextIn(this,1)"></asp:TextBox>
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
                                         Style="width: 80%;" onBlur="SetTextIn(this,0)" onFocus="SetTextIn(this,1)">
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
                                     <asp:DropDownList ID="uf_local_de_entrega" runat="server">
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


    </div>

    <!--/////////////////////////////////////////////////// Div com os dados Iniciais / Principais da Nota /////////////////////////////////////////////////////////////////////////////////////////////-->
            <div id="div_dados_destinatario" name="div_dados_destinatario" style="display:none;visibility:hidden;width:100%;height:100%;background-color:red;margin-left:20px;margin-right:20px;border:solid;border-color:#177CC0;border-width:1px;border-radius:10px;padding-left:20px;padding-right:20px;padding-bottom:20px">

                <div class="row">


           


                                  
                </div>                        
                        
            </div>


            <!--/////////////////////////////////////////////////// Div com os dados itens nota /////////////////////////////////////////////////////////////////////////////////////////////////////////////////-->
            <div id="div_itens_nota" name="div_itens_nota" style="display:none;visibility:hidden;width:100%;height:100%;background-color:green;margin-left:20px;margin-right:20px;border:solid;border-color:#177CC0;border-width:1px;border-radius:10px;padding-left:20px;padding-right:20px;padding-bottom:20px">

            </div>


            <!--/////////////////////////////////////////////////// Div com os totais da nota ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////-->
            <div id="div_totais_nota" name="div_totais_nota" style="display:none;visibility:hidden;width:100%;height:100%;background-color:yellow;margin-left:20px;margin-right:20px;border:solid;border-color:#177CC0;border-width:1px;border-radius:10px;padding-left:20px;padding-right:20px;padding-bottom:20px">

            </div>


            <!--//////////////////////////////////////////////////// Div com as informacoes complementares da nota ///////////////////////////////////////////////////////////////////////////////////////////////-->
            <div id="div_informacoes_complementares" name="div_informacoes_complementares" style="display:none;visibility:hidden;width:100%;height:100%;background-color:blue;margin-left:20px;margin-right:20px;border:solid;border-color:#177CC0;border-width:1px;border-radius:10px;padding-left:20px;padding-right:20px;padding-bottom:20px">

                <div class="row">

                    <div class="col" style="background-color:red"></div>

                </div>

            </div>


        

   


</asp:Content>
