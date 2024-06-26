﻿<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/telas/Topo.Master" CodeBehind="teste.aspx.vb" Inherits="VoceFazNfe.teste" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

   <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@24,400,0,0" />


      <div class="container-fluid" style="padding:0px;margin:0px;width:100%;height:100%">


            <div class="row" style="width:100%;height:200px"></div>


            <!--/////////////////////////////////////////////////// Dados Principais da Empresa - Emitente //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////-->
            <div class="row" style="width:100%;height:100%;padding:0px;margin:0px;background-color:transparent">


                <div class="row" style="width:100%;height:100%;color: #177CC0; padding-left: 20px; padding-top: 0px; font-family: Arial; font-size: 20px; font-weight: bold;margin-left:0px">Dados da Empresa (Emitente)</div>

                <div class="row" style="width:100%;height:20px"></div>
               
                <div style="display:block;visibility:visible;width:100%;height:100%;background-color:transparent;margin-left:20px;margin-right:20px;border:solid;border-color:#177CC0;border-width:1px;border-radius:10px;padding: 0px 20px 20px 20px;">
                        
                     <div class="row" style="width:100%;padding:0px;margin:0px;background-color:transparent;height:100%;padding:0px;margin:0px">

                        <!--/////////////////////////////////////////////////// LINHA LADO ESQUERDO CNPJ/RAZAO SOCIAL /////////////////////////////////////////////////////////////////////////////////////////////-->
                        <div class="col-xl-7" style="width:100%;height:100%;background-color:transparent;padding:0px;margin:0px">

                            <div class="row" style="width:100%;height:100%;background-color:transparent;padding:0px;margin:0px">

                                <div class="col-md-4" style="width:100%;height:100%;background-color:transparent;padding:10px;">

                                    <div class="row" style="width:100%">
                                        <div class="col" style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">CNPJ</div>
                                    </div>

                                    <div class="row" style="width:100%;padding:0px;margin:0px">
                                        <div class="col" style="padding:0px;margin:0px">
                                            <asp:TextBox ID="cs_cnpj" runat="server" CssClass="layouttexto"
                                                style="width: 150px;padding:0px;margin:0px"
                                                placeholder="00.000.000/0000-00" onBlur="SetTextIn(this,0)"
                                                onFocus="SetTextIn(this,1)" >

                                            </asp:TextBox>
                                        </div>
                                    </div>

                                </div>

                                <div class=" col-md-8" style="width:100%;height:100%;background-color:transparent; padding:10px;">
                                    
                                    <div class="row" style="width:100%;height:100%">
                                        <div class="col" style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">Razão Social</div>
                                    </div>

                                    <div class="row" style="width:100%;padding:0px;margin:0px">
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
                    <div class="row" style="width:100%;height: 30px"></div>

                    <div class="row" style="width:100%;height:100%">

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
                                                Style="width:220px;" onBlur="SetTextIn(this,0)" onFocus="SetTextIn(this,1)">
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
                                                 Style="width:220px;" onBlur="SetTextIn(this,0)" onFocus="SetTextIn(this,1)">
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
                                                 Style="width: 150px;" placeholder="00.00-0-00" onBlur="SetTextIn(this,0)" onFocus="SetTextIn(this,1)">
                                             </asp:TextBox>
                                         </div>
                                     </div>
                                 </div>
                                </div>
                            
                            </div>
                        </div>

                    <!--/////////////////////////////////////////////////// Div com os dados Iniciais / Código Regime Tributário /////////////////////////////////////////////////////////////////////////////////////////////-->
                    <div class="row" style="width:100%;height: 30px"></div>

                    <div class="row" style="width:100%;height:100%">

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
                                        <asp:ListItem style="width: 200px;" Text="Simples Nacional" Value="1" />
                                        <asp:ListItem style="width: 200px;"
                                            Text="Simples Nacional, execesso sublimite de receita bruta" Value="2" />
                                        <asp:ListItem style="width: 200px;" Text="Regime normal" Value="3" />
                                    </asp:DropDownList>
                                </div>

                            </div>
                        </div>
                    </div>
             

                 </div>

           </div>
      


            <!--/////////////////////////////////////////////////// Endereco do emitente   /////////////////////////////////////////////////////////////////////////////////////////////-->
            <div class="container-fluid" style="padding:0px;margin:0px;width:100%;height:100%">

                <div class="row" style="width:100%;height:50px"></div>

                <div class="row" style="width:100%;height:100%;padding:0px;margin:0px;background-color:transparent">

                <!--/////////////////////////////////////////////////// Div com os dados Iniciais / Principais da Nota /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////-->
                <div id="div_dados_iniciais_emitente" name="div_dados_iniciais_emitente" style="display:block;visibility:visible;width:100%;height:100%;background-color:transparent;margin-left:20px;margin-right:20px;border:solid;border-color:#177CC0;border-width:1px;border-radius:10px;padding: 0px 20px 20px 20px;">


                 <div class="row" style="width:100%;padding:0px;margin:0px;background-color:transparent;height:100%;padding:0px;margin:0px">

                     <!--/////////////////////////////////////////////////// LINHA LADO DIREITO - CEP/ENDEREÇO/ NÚMERO /////////////////////////////////////////////////////////////////////////////////////////////-->
                     <div class="col-xl-7" style="width:100%;height:100%;background-color:transparent;padding:0px;margin:0px">

                         <div class="row"
                             style="width:100%;height:100%;background-color:transparent;padding:0px;margin:0px">

                             <div class="col-md-4"
                                 style="width:100%;height:100%;background-color:transparent;padding:10px;">


                                  <div class="row" style="width:100%;height:100%">
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


                             <div class=" col-md-6" style="width:100%;height:100%;background-color:transparent; padding:10px;">
                                 <div class="row" style="width:100%;height:100%">
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
                                 <asp:TextBox ID="cs_complemento" runat="server" CssClass="layouttexto"
                                     style="width: 100%;" onBlur="SetTextIn(this,0)" onFocus="SetTextIn(this,1)">
                                 </asp:TextBox>
                             </div>
                         </div>
                      </div>   
                     </div>
                 
                     <!--/////////////////////////////////////////////////// Div com os dados Iniciais / BAIRRO/ CODIGO DO MUNICIPIO/ NOME DO MUNICIPIO  /////////////////////////////////////////////////////////////////////////////////////////////-->
                 <div class="row" style="width:100%;height: 30px"></div>

                 <div class="row" style="width:100%;height:100%">
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
                                         <asp:TextBox ID="cs_bairro" runat="server" CssClass="layouttexto"
                                             Style="width: 280px;" onBlur="SetTextIn(this,0)" onFocus="SetTextIn(this,1)">
                                         </asp:TextBox> 
                                     </div>
                                 </div>
                             </div>
                         
                         </div>
                     </div>
                      <!--/////////////////////////////////////////////////// LINHA LADO DIREITO NOME PAIS /////////////////////////////////////////////////////////////////////////////////////////////-->
                     <div class="col-xl-9" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px; padding-left: 10px; padding-top: 10px; padding-left: 20px">
                         <div class="row">
                             <div class="col-md-4" style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-left: 10px">
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

                  <!--/////////////////////////////////////////////////// Última linha  /////////////////////////////////////////////////////////////////////////////////////////////-->
                 <div class="row" style="width:100%;height: 30px"></div>

                 <div class="row" style="width:100%;height:100%">
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
                                                Style="width: 70px;" onBlur="SetTextIn(this,0)" onFocus="SetTextIn(this,1)">
                                            </asp:TextBox>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-4" style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-left:10px; padding-top:10px">
                                    <div class="row">
                                        <div class="col"
                                            style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                            Nome do País
                                        </div>
                                    </div>
                                    <div class="row" style="padding: 0px; margin: 0px">
                                        <div class="col" style="padding: 0px; margin: 0px; background-color: transparent">
                                            <asp:TextBox ID="cs_nomePais" runat="server" CssClass="layouttexto"
                                                Style="width: 100px;" onBlur="SetTextIn(this,0)" onFocus="SetTextIn(this,1)">
                                            </asp:TextBox>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-md-4" style="width: 100%; height: 100%; background-color: transparent; padding: 10px; padding-top:15px">
                                    <div class="row">
                                        <div class="col"
                                            style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                            Telefone
                                        </div>
                                    </div>
                                    <div class="row" style="padding: 0px; margin: 0px">
                                        <div class="col" style="padding: 0px; margin: 0px; background-color: transparent">
                                            <asp:TextBox ID="cs_telefone" runat="server" CssClass="layouttexto"
                                                Style="width: 166px;" onBlur="SetTextIn(this,0)"
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



      </div> 


      <div class="container-fluid" style="padding:0px;margin:0px;width:100%;height:100%">

          <div class="row" style="width:100%;height:40px"></div>


          <div class="row" style="width:100%;height:100%">

              <div class="col" align="center">

                  <div style="width:300px;height:100%;cursor:pointer">
                      <asp:Button ID="Button1" runat="server" style="cursor:pointer;border-radius:10px;" Text="Confirmar Dados" BackColor="#17479E" BorderStyle="Solid" BorderWidth="1px" ForeColor="White" Height="43px" Width="230px" />
                  </div>

              </div>

          </div>


      </div>  
     
        <asp:Button ID="Button2" runat="server" Text="Button" />

 

</asp:Content>
