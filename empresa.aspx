<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Topo.Master" CodeBehind="empresa.aspx.vb"
    Inherits="VoceFazNfe.empresa" %>
    <asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

        <link rel="stylesheet"
            href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@24,400,0,0" />



        <div class="container-fluid" style="padding:0px;margin:0px;width:100%;height:100%">


            <div class="row" style="width:100%;height:200px"></div>

            <div class="row" style="width:100%;height:100%;padding:0px;margin:0px;background-color:transparent">

                <!--/////////////////////////////////////////////////// Div com os dados Iniciais / Principais da Nota /////////////////////////////////////////////////////////////////////////////////////////////-->
                <div id="div_dados_iniciais" name="div_dados_iniciais"
                    style="display:block;visibility:visible;width:100%;height:100%;background-color:transparent;margin-left:20px;margin-right:20px;border:solid;border-color:#177CC0;border-width:1px;border-radius:10px;padding: 0 20px 20px 20px;">
                                        
                    <div class="row"
                        style="width:100%;padding:0px;margin:0px;background-color:transparent;height:100%;padding:0px;margin:0px">

                        <!--/////////////////////////////////////////////////// LINHA LADO ESQUERDO CNPJ/RAZAO SOCIAL /////////////////////////////////////////////////////////////////////////////////////////////-->
                        <div class="col-xl-7"
                            style="width:100%;height:100%;background-color:transparent;padding:0px;margin:0px">

                            <div class="row"
                                style="width:100%;height:100%;background-color:transparent;padding:0px;margin:0px">

                                <div class="col-md-4"
                                    style="width:100%;height:100%;background-color:transparent;padding:10px;">


                                    <div class="row">
                                        <div class="col"
                                            style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                            CNPJ
                                        </div>
                                    </div>

                                    <div class="row" style="padding:0px;margin:0px">
                                        <div class="col" style="padding:0px;margin:0px">
                                            <asp:TextBox ID="cs_emissao" runat="server" CssClass="layouttexto"
                                                style="width: 150px;padding:0px;margin:0px"
                                                placeholder="00.000.000/0000-00" onBlur="SetTextIn(this,0)"
                                                onFocus="SetTextIn(this,1)" onkeypress="return validarNumeros(event); ">

                                            </asp:TextBox>
                                        </div>
                                    </div>

                                </div>


                                <div class=" col-md-8"
                                    style="width:100%;height:100%;background-color:transparent; padding:10px;">
                                    <div class="row">
                                        <div class="col"
                                            style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                            Razão Social
                                        </div>
                                    </div>
                                    <div class="row" style="padding:0px;margin:0px">
                                        <div class="col" style="padding:0px;margin:0px">
                                            <asp:TextBox ID="cs_razaosocial" runat="server" CssClass="layouttexto"
                                                style="width: 93%;" onBlur="SetTextIn(this,0)"
                                                onFocus="SetTextIn(this,1)">
                                            </asp:TextBox>
                                        </div>
                                    </div>
                                </div>


                            </div>

                        </div>

                        <!--/////////////////////////////////////////////////// LINHA LADO DIREITO NOME FANTASIA /////////////////////////////////////////////////////////////////////////////////////////////-->
                        <div class="col-xl-5" style="width:100%;height:100%;background-color:transparent;padding:0px;margin:0px; padding-left:10px; padding-top:10px">
                            <div class="row">
                        <div class="col"
                           style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                            Nome Fantasia
                                </div>
                            </div>
                            <div class="row" style="padding:0px;margin:0px">
                                <div class="col" style="padding:0px;margin:0px; background-color:transparent">
                                    <asp:TextBox ID="cs_nomefantasia" runat="server" CssClass="layouttexto"
                                        style="width: 100%;" onBlur="SetTextIn(this,0)" onFocus="SetTextIn(this,1)">
                                    </asp:TextBox>
                                </div>
                            </div>
                         </div>   
                        
                        </div>
                        <!--/////////////////////////////////////////////////// Div com os dados Iniciais / Inscrição Estadual/IEST/ CNAE Fiscal/  /////////////////////////////////////////////////////////////////////////////////////////////-->
                        <div class="row" style="height: 30px"></div>

                    <div class="row" >

                        <div class="col-xl-12"
                            style="width:100%;height:100%;background-color:transparent;padding:0px;margin:0px; padding-left:10px">

                            <div class="row"
                                style="width:100%;height:100%;background-color:transparent;padding:0px;margin:0px">

                                <div class="col-md-4" style="width:100%;height:100%;background-color:transparent;padding:10px;">
                                            <div class="row">
                                                <div class="col"
                                                    style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                                     Inscrição Estadual
                                                </div>
                                            </div>
                                    <div class="row" style="padding: 0px; margin: 0px">
                                        <div class="col" style="padding: 0px; margin: 0px; background-color: transparent">
                                            <asp:TextBox ID="cs_inscricaoestadual" runat="server" CssClass="layouttexto"
                                                Style="width: 45%;" onBlur="SetTextIn(this,0)" onFocus="SetTextIn(this,1)">
                                            </asp:TextBox>
                                        </div>
                                    </div>
                                </div>  
                                 <div class="col-md-4" style="width:100%;height:100%;background-color:transparent;padding:10px;">
                                             <div class="row">
                                                 <div class="col"
                                                     style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                                     IE do Substituto Tributário
                                                 </div>
                                             </div>
                                     <div class="row" style="padding: 0px; margin: 0px">
                                         <div class="col" style="padding: 0px; margin: 0px; background-color: transparent">
                                             <asp:TextBox ID="cs_IE" runat="server" CssClass="layouttexto"
                                                 Style="width:40%;" onBlur="SetTextIn(this,0)" onFocus="SetTextIn(this,1)">
                                             </asp:TextBox>
                                         </div>
                                     </div>
                                 </div>    
                                 <div class="col-md-4" style="width:100%;height:100%;background-color:transparent;padding:10px;">
                                             <div class="row">
                                                 <div class="col"
                                                     style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                                      CNAE Fiscal
                                                 </div>
                                             </div>
                                     <div class="row" style="padding: 0px; margin: 0px">
                                         <div class="col" style="padding: 0px; margin: 0px; background-color: transparent">
                                             <asp:TextBox ID="cs_cnaeFiscal" runat="server" CssClass="layouttexto"
                                                 Style="width: 40%;" placeholder="00.00-0-00" onBlur="SetTextIn(this,0)" onFocus="SetTextIn(this,1)">
                                             </asp:TextBox>
                                         </div>
                                     </div>
                                 </div>
                                </div>
                            
                            </div>
                        </div>

                        <!--/////////////////////////////////////////////////// Div com os dados Iniciais / Código Regime Tributário /////////////////////////////////////////////////////////////////////////////////////////////-->
                    <div class="row" style="height: 30px"></div>

                    <div class="row">

                        <div class="col-xl" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px; padding-top: 10px; padding-left: 15px">
                            <div class="row">
                                <div class="col"
                                    style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                    Código Regime Tributário
                                </div>
                            </div>

                            <div class="row" style="padding: 0px; margin: 0px">

                                <div class="col" style="padding: 0px; margin: 0px; background-color: transparent">
                                    <asp:DropDownList ID="cs_regimeTributario" runat="server">
                                        <asp:ListItem style="width: 100%;" Text="Simples Nacional" Value="1" />
                                        <asp:ListItem style="width: 100%;"
                                            Text="Simples Nacional, execesso sublimite de receita bruta" Value="2" />
                                        <asp:ListItem style="width: 100%;" Text="Regime normal" Value="3" />
                                    </asp:DropDownList>
                                </div>

                            </div>
                        </div>
                    </div>

           </div>
        </div>
      </div>


       
                    


                            
        <!--/////////////////////////////////////////////////// Div com os dados Iniciais / Emitente/ 1 linha - CEP/Endereço/Número/Complemento   /////////////////////////////////////////////////////////////////////////////////////////////-->

             <div class="container-fluid" style="padding:0px;margin:0px;width:100%;height:100%">


     <div class="row" style="width:100%;height:50px"></div>

     <div class="row" style="width:100%;height:100%;padding:0px;margin:0px;background-color:transparent">

         <!--/////////////////////////////////////////////////// Div com os dados Iniciais / Principais da Nota /////////////////////////////////////////////////////////////////////////////////////////////-->
         <div id="div_dados_iniciais_emitente" name="div_dados_iniciais_emitente"
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
                                        <asp:TextBox ID="cs_cep" runat="server" CssClass="layouttexto"
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
                                     <asp:TextBox ID="cs_endereco" runat="server" CssClass="layouttexto"
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
                                            <asp:TextBox ID="cs_numero" runat="server" CssClass="layouttexto"
                                                Style="width: 50%;" onBlur="SetTextIn(this,0)"
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
                             <asp:TextBox ID="cs_complemento" runat="server" CssClass="layouttexto"
                                 style="width: 70%;" onBlur="SetTextIn(this,0)" onFocus="SetTextIn(this,1)">
                             </asp:TextBox>
                         </div>
                     </div>
                  </div>   
                 </div>
                 
                 <!--/////////////////////////////////////////////////// Div com os dados Iniciais / BAIRRO/ CODIGO DO MUNICIPIO/ NOME DO MUNICIPIO  /////////////////////////////////////////////////////////////////////////////////////////////-->
             <div class="row" style="height: 30px"></div>
             <div class="row">
                 <div class="col-xl-9"
                     style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px; padding-left: 10px">

                     <div class="row"
                         style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

                         <div class="col-md-3" style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">
                             <div class="row">
                                 <div class="col"
                                     style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                     Bairro
                                 </div>
                             </div>
                             <div class="row" style="padding: 0px; margin: 0px">
                                 <div class="col" style="padding: 0px; margin: 0px; background-color: transparent">
                                     <asp:TextBox ID="cs_bairro" runat="server" CssClass="layouttexto"
                                         Style="width: 90%;" onBlur="SetTextIn(this,0)" onFocus="SetTextIn(this,1)">
                                     </asp:TextBox>
                                 </div>
                             </div>
                         </div>
                         <div class="col-md-4" style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-left:10px">
                             <div class="row">
                                 <div class="col"
                                     style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                     Código do Município
                                 </div>
                             </div>
                             <div class="row">
                                 <div class="col">
                                     <asp:TextBox ID="cs_codMunicipio" runat="server" CssClass="layouttexto"
                                         Style="width: 30%;" onBlur="SetTextIn(this,0)"
                                         onFocus="SetTextIn(this,1)"></asp:TextBox>
                                     <button class="material-symbols-outlined">
                                         <i
                                             class="fa-solid fa-magnifying-glass"></i>
                                     </button>
                                 </div>
                             </div>
                         </div>

                         <div class="col-md-5" style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">
                             <div class="row">
                                 <div class="col"
                                     style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                     Nome do Município
                                 </div>
                             </div>
                             <div class="row" style="padding: 0px; margin: 0px">
                                 <div class="col" style="padding: 0px; margin: 0px; background-color: transparent">
                                     <asp:TextBox ID="cs_nomemunicipio" runat="server" CssClass="layouttexto"
                                         Style="width: 60%;" onBlur="SetTextIn(this,0)" onFocus="SetTextIn(this,1)">
                                     </asp:TextBox>
                                 </div>
                             </div>
                         </div>
                     </div>
                 </div>
                  <!--/////////////////////////////////////////////////// LINHA LADO DIREITO NOME PAIS /////////////////////////////////////////////////////////////////////////////////////////////-->
                 <div class="col-xl-3" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px; padding-left: 10px; padding-top: 10px; padding-left:20px">
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

              <!--/////////////////////////////////////////////////// Última linha  /////////////////////////////////////////////////////////////////////////////////////////////-->
             <div class="row" style="height: 30px"></div>
             <div class="row">
                    <div class="col-xl-12"
                        style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px; padding-left: 10px">

                        <div class="row"
                            style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

                            <div class="col-md-4" style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">
                                <div class="row">
                                    <div class="col"
                                        style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                         Código do País 
                                    </div>
                                </div>
                                <div class="row" style="padding: 0px; margin: 0px">
                                    <div class="col" style="padding: 0px; margin: 0px; background-color: transparent">
                                        <asp:TextBox ID="cs_codPais" runat="server" CssClass="layouttexto"
                                            Style="width: 20%;"  onBlur="SetTextIn(this,0)" onFocus="SetTextIn(this,1)">
                                        </asp:TextBox>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4" style="width: 100%; height: 100%; background-color: transparent; padding: 4px;">
                                <div class="row">
                                    <div class="col"
                                        style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                        Nome do País
                                    </div>
                                </div>
                                <div class="row" style="padding: 0px; margin: 0px">
                                    <div class="col" style="padding: 0px; margin: 0px; background-color: transparent">
                                        <asp:TextBox ID="cs_nomePais" runat="server" CssClass="layouttexto"
                                            Style="width: 20%;" onBlur="SetTextIn(this,0)" onFocus="SetTextIn(this,1)">
                                        </asp:TextBox>
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-4" style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">
                                <div class="row">
                                    <div class="col"
                                        style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                        Telefone
                                    </div>
                                </div>
                                <div class="row" style="padding: 0px; margin: 0px">
                                    <div class="col" style="padding: 0px; margin: 0px; background-color: transparent">
                                        <asp:TextBox ID="cs_telefone" runat="server" CssClass="layouttexto"
                                            Style="width: 30%;" onBlur="SetTextIn(this,0)"
                                            onFocus="SetTextIn(this,1)"></asp:TextBox>
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



    </asp:Content>