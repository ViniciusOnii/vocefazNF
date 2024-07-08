﻿<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/telas/Topo.Master" CodeBehind="parametrosimpressaoboletos.aspx.vb" Inherits="VoceFazNfe.parametrosimpressaoboletos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    

        <div class="row" style="width: 100%; height: 210px; background-color: transparent"></div>

      <!--/////////////////////////////////////////////////// Container  - Impressão Bradesco /////////////////////////////////////////////////////////////////////////////////////////////-->


  <div class="container-fluid" style="padding: 0px; margin: 0px; width: 97%; height: 100%">


      <div class="row" style="width: 100%; height: 50px"></div>

      <div class="row" style="width: 100%; height: 100%; display: block; padding-left: 20px; padding-top: 0px; margin-left: 0px;">

          <div id="i_cadastro_cliente_impressao_bradesco_on" name="i_cadastro_cliente_impressao_bradesco_on" class="col" align="left" style="display: block; visibility: visible; font-size: 20px; color: red; margin-right: 20px; border-bottom: none; cursor: pointer" onclick="mostra_div_informacao('div_cadastro_cliente_impressao_bradesco','i_cadastro_cliente_impressao_bradesco_on','i_cadastro_cliente_impressao_bradesco_off',0)"><span style="color: #177CC0; font-family: Arial; font-size: 20px; font-weight: bold;">Bradesco</span>&nbsp;&nbsp;<i class="fa fa-toggle-on"></i> &nbsp <img alt="" src="../Imagens/bradesco.png" style="width: 30px; height: 24px; cursor: pointer"/></div>
          <div id="i_cadastro_cliente_impressao_bradesco_off" name="i_cadastro_cliente_impressao_bradesco_off" class="col" align="left" style="display: none; visibility: hidden; font-size: 20px; color: red; margin-right: 20px; border-bottom: solid; border-color: #767676; border-width: 1px; cursor: pointer" onclick="mostra_div_informacao('div_cadastro_cliente_impressao_bradesco','i_cadastro_cliente_impressao_bradesco_on','i_cadastro_cliente_impressao_bradesco_off',1)"><span style="color: #177CC0; font-family: Arial; font-size: 20px; font-weight: bold;">Bradesco</span>&nbsp;&nbsp;<i class="fa fa-toggle-off"></i> </div>

      </div>

             <div class="row" style="width: 100%; height: 20px"></div>

   <!--/////////////////////////////////////////////////// Div com os dados Complemento /////////////////////////////////////////////////////////////////////////////////////////////-->
   <div id="div_cadastro_cliente_impressao_bradesco" name="div_cadastro_cliente_impressao_bradesco"
       style="display: block; visibility: visible; width: 100%; height: 100%; background-color: transparent; margin-left: 20px; margin-right: 20px; border: solid; border-color: #177CC0; border-width: 1px; border-radius: 10px; padding: 0px 20px 20px 20px;">



       <div class="row"
           style="width: 100%; padding: 0px; margin: 0px; background-color: transparent; height: 100%; padding: 0px; margin: 0px">

           <!--/////////////////////////////////////////////////// lado esquerdo vendendor - Agencia - Conta /////////////////////////////////////////////////////////////////////////////////////////////-->
           <div class="col-xl-6" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px; padding-left: 10px">

               <div class="row" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">



                   <div class="col-md-6" style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-left: 15px; padding-top: 10px">
                       <div class="row">
                           <div class="col" style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                               Agência
                           </div>
                       </div>
              
                           <div class="row" style="padding: 0px; margin: 0px">
                               <div class="col" style="padding: 0px; margin: 0px">                                  
                                   <asp:TextBox ID="cs_cadastro_cliente_agencia_bradesco" runat="server" CssClass="layouttexto"
                                       Style="width: 140px" onBlur="SetTextIn(this,0);SetDiv('div_cadastro_cliente_impressao_bradesco',0)" onFocus="SetTextIn(this,1);SetDiv('div_cadastro_cliente_impressao_bradesco',1)">
                                   </asp:TextBox>                              
                               </div>
                           </div>
                       
                   </div>
                   <div class="col-md-6" style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-left: 15px; padding-top: 10px">
                       <div class="row">
                           <div class="col" style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                              Conta
                           </div>
                       </div>                      
                           <div class="row" style="padding: 0px; margin: 0px">
                               <div class="col" style="padding: 0px; margin: 0px">                                  
                                   <asp:TextBox ID="cs_cadastro_cliente_conta_bradesco" runat="server" CssClass="layouttexto"
                                       Style="width: 140px" onBlur="SetTextIn(this,0);SetDiv('div_cadastro_cliente_impressao_bradesco',0)" onFocus="SetTextIn(this,1);SetDiv('div_cadastro_cliente_impressao_bradesco',1)">
                                   </asp:TextBox>                                   
                               </div>
                           </div>
                       
                   </div>

               </div>
           </div>
           <!--/////////////////////////////////////////////////// Lado Direito - Código do Cliente - Carteira /////////////////////////////////////////////////////////////////////////////////////////////-->
           <div class="col-xl-6" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px; padding-left: 10px">

               <div class="row" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">



                   <div class="col-md-7" style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-left: 15px; padding-top: 10px">
                       <div class="row">
                           <div class="col" style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                               Cód. do Cliente junto ao Bradesco
                           </div>
                       </div>
                           <div class="row" style="padding: 0px; margin: 0px">
                               <div class="col" style="padding: 0px; margin: 0px">
                                  
                                   <asp:TextBox ID="cs_cadastro_cliente_junto_bradesco" runat="server" CssClass="layouttexto"
                                       Style="width: 270px" onBlur="SetTextIn(this,0);SetDiv('div_cadastro_cliente_impressao_bradesco',0)" onFocus="SetTextIn(this,1);SetDiv('div_cadastro_cliente_impressao_bradesco',1)">
                                   </asp:TextBox>

                               </div>
                           </div>
                       
                   </div>
                   <div class="col-md-5" style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-left: 15px; padding-top: 10px">
                       <div class="row">
                           <div class="col" style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                               Carteira &nbsp &nbsp <img alt="" src="../Imagens/ihelp.png"  style="width: 20px; height: 21px; cursor:pointer" onclick="anima_informacao(1,'carteira')" />
                           </div>
                       </div>


                       <div class="row" style="padding: 0px; margin: 0px">
                           <div class="col" style="padding: 0px; margin: 0px">
                               <asp:TextBox ID="cs_cadastro_cliente_carteira_bradesco" runat="server" CssClass="layouttexto"
                                   Style="width: 100px" onBlur="SetTextIn(this,0);SetDiv('div_cadastro_cliente_impressao_bradesco',0)" onFocus="SetTextIn(this,1);SetDiv('div_cadastro_cliente_impressao_bradesco',1)">
                               </asp:TextBox>
                                
                           </div>
                       </div>
                   </div>
               </div>
           </div>
       </div>

       <!--/////////////////////////////////////////////////// lado esquerdo E-Parametro de multa (CNAB) - Percentual /////////////////////////////////////////////////////////////////////////////////////////////-->
       <div class="row" style="height: 30px"></div>
       <div class="row" style="width: 100%; padding: 0px; margin: 0px; background-color: transparent; height: 100%; padding: 0px; margin: 0px; padding-left: 10px"">
           <div class="col-xl-6" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

               <div class="row" style="width: 100%; padding: 0px; margin: 0px; background-color: transparent; height: 100%; padding: 0px; margin: 0px">
                   <div class="col-md-6" style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">

                       <div class="row">
                           <div class="col"
                               style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                               Paramêtros de Multa(CNAB)
                           </div>
                       </div>
                           <div class="row" style="padding: 0px; margin: 0px">
                               <div class="col" style="padding: 0px; margin: 0px">

                                   <asp:DropDownList ID="cs_cadastro_cliente_multa_bradesco" onBlur="SetTextIn(this,0);SetDiv('div_cadastro_cliente_impressao_bradesco',0)" onFocus="SetTextIn(this,1);SetDiv('div_cadastro_cliente_impressao_bradesco',1)" CssClass="layouttexto" runat="server">
                                       <asp:ListItem style="width: 100%;" Text="0" Value="1" />
                                       <asp:ListItem style="width: 100%;" Text="2" Value="2" />
                                   </asp:DropDownList>
                               </div>
                           </div>
                       
                   </div>

                   <div class="col-md-6" style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">

                       <div class="row">
                           <div class="col"
                               style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                               Percentual de Multa(CNAB)  
                           </div>
                       </div>

                       <div class="row" style="padding: 0px; margin: 0px">
                           <div class="col" style="padding: 0px; margin: 0px">
                               <asp:TextBox ID="cs_cadastro_cliente_percentual_multa_bradesco" runat="server" CssClass="layouttexto"
                                   Style="width: 75%; padding: 0px; margin: 0px"
                                   onBlur="SetTextIn(this,0);SetDiv('div_cadastro_cliente_impressao_bradesco',0)" onFocus="SetTextIn(this,1);SetDiv('div_cadastro_cliente_impressao_bradesco',1)">

                               </asp:TextBox>
                           </div>
                       </div>
                   </div>
               </div>
           </div>
           <!--/////////////////////////////////////////////////// lado direito - Instrução(CNAB) - Número Sequencial de Remessa /////////////////////////////////////////////////////////////////////////////////////////////-->
           <div class="col-xl-6" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

               <div class="row" style="width: 100%; padding: 0px; margin: 0px; background-color: transparent; height: 100%; padding: 0px; margin: 0px">
                   <div class="col-md-7" style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">

                       <div class="row">
                           <div class="col"
                               style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                               Número Sequencial de Remessa
                           </div>
                       </div>

                       <div class="row" style="padding: 0px; margin: 0px">
                           <div class="col" style="padding: 0px; margin: 0px">
                               <asp:TextBox ID="cs_cadastro_remessa_bradesco" runat="server" CssClass="layouttexto"
                                   Style="width: 60%; padding: 0px; margin: 0px"
                                   onBlur="SetTextIn(this,0);SetDiv('div_cadastro_cliente_impressao_bradesco',0)" onFocus="SetTextIn(this,1);SetDiv('div_cadastro_cliente_impressao_bradesco',1)">

                               </asp:TextBox>
                           </div>
                       </div>
                   </div>

                   <div class="col-md-5" style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">

                       <div class="row">
                           <div class="col"
                               style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                               Instrução(CNAB)
                           </div>
                       </div>

                       <div class="row" style="padding: 0px; margin: 0px">
                           <div class="col" style="padding: 0px; margin: 0px">
                               <asp:DropDownList ID="cs_cadastro_cliente_instrucao_bradesco" onBlur="SetTextIn(this,0);SetDiv('div_cadastro_cliente_impressao_bradesco',0)" onFocus="SetTextIn(this,1);SetDiv('div_cadastro_cliente_impressao_bradesco',1)" CssClass="layouttexto" runat="server">
                                   <asp:ListItem style="width: 100%;" Text="00" Value="1" />
                                   <asp:ListItem style="width: 100%;" Text="06" Value="2" />
                                   <asp:ListItem style="width: 100%;" Text="10" Value="3" />
                                   <asp:ListItem style="width: 100%;" Text="11" Value="4" />
                                   <asp:ListItem style="width: 100%;" Text="12" Value="5" />
                                   <asp:ListItem style="width: 100%;" Text="13" Value="6" />
                                   <asp:ListItem style="width: 100%;" Text="14" Value="7" />
                                   <asp:ListItem style="width: 100%;" Text="15" Value="8" />
                                   
                               </asp:DropDownList>
                           </div>
                       </div>
                   </div>
               </div>
           </div>
       </div>
        <!--/////////////////////////////////////////////////// lado esquerdo dias Protesto(CNAB) - % juros Diarios (CNAB) /////////////////////////////////////////////////////////////////////////////////////////////-->
<div class="row" style="height: 30px"></div>
<div class="row" style="width: 100%; padding: 0px; margin: 0px; background-color: transparent; height: 100%; padding: 0px; margin: 0px; padding-left: 10px"">
    <div class="col-xl-6" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

        <div class="row" style="width: 100%; padding: 0px; margin: 0px; background-color: transparent; height: 100%; padding: 0px; margin: 0px">
            <div class="col-md-6" style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">

                <div class="row">
                    <div class="col"
                        style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                        Dias Protesto(CNAB)
                    </div>
                </div>             
                    <div class="row" style="padding: 0px; margin: 0px">
                        <div class="col" style="padding: 0px; margin: 0px">
                            <asp:TextBox ID="cs_cadastro_cliente_protesto_bradesco" runat="server" CssClass="layouttexto"
                                Style="width: 150px;" onBlur="SetTextIn(this,0);SetDiv('div_cadastro_cliente_impressao_bradesco',0)" onFocus="SetTextIn(this,1);SetDiv('div_cadastro_cliente_impressao_bradesco',1)">
                            </asp:TextBox>

                                                 
                        </div>
                    </div>               
            </div>

            <div class="col-md-6" style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">

                <div class="row">
                    <div class="col"
                        style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                        % de Juros Diarios (CNAB)
                    </div>
                </div>

                <div class="row" style="padding: 0px; margin: 0px">
                    <div class="col" style="padding: 0px; margin: 0px">
                        <asp:TextBox ID="cs_cadastro_cliente_juros_bradesco" runat="server" CssClass="layouttexto"
                            Style="width: 75%; padding: 0px; margin: 0px"
                            onBlur="SetTextIn(this,0);SetDiv('div_cadastro_cliente_impressao_bradesco',0)" onFocus="SetTextIn(this,1);SetDiv('div_cadastro_cliente_impressao_bradesco',1)">

                        </asp:TextBox>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--/////////////////////////////////////////////////// lado direito - Nosso Número - Instruções do boleto /////////////////////////////////////////////////////////////////////////////////////////////-->
    <div class="col-xl-6" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

        <div class="row" style="width: 100%; padding: 0px; margin: 0px; background-color: transparent; height: 100%; padding: 0px; margin: 0px">
            <div class="col-md-5" style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">

                <div class="row">
                    <div class="col"
                        style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                        Nosso Número &nbsp &nbsp <img alt="" src="../Imagens/ihelp.png"  style="width: 20px; height: 21px; cursor:pointer" onclick="anima_informacao(1,'nossonumero')" />
                    </div>
                </div>

                <div class="row" style="padding: 0px; margin: 0px">
                    <div class="col" style="padding: 0px; margin: 0px">
                        <asp:TextBox ID="cs_cadastro_cliente_numero_bradesco" runat="server" CssClass="layouttexto"
                            Style="width: 40%; padding: 0px; margin: 0px"
                            onBlur="SetTextIn(this,0);SetDiv('div_cadastro_cliente_impressao_bradesco',0)" onFocus="SetTextIn(this,1);SetDiv('div_cadastro_cliente_impressao_bradesco',1)">

                        </asp:TextBox>
                    </div>
                </div>
            </div>

            <div class="col-md-7" style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">

                <div class="row">
                    <div class="col"
                        style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                        Instruções que serão impressas no boleto
                    </div>
                </div>

                <div class="row" style="padding: 0px; margin: 0px">
                    <div class="col" style="padding: 0px; margin: 0px">
                        <textarea id="cs_cadastro_cliente_impressao_bradesco" runat="server" class="layouttexto" rows="4" cols="50"
                            style="width: 100%; padding: 0px; margin: 0px; border: 1px solid #000000;"
                            onblur="SetTextIn(this,0);SetDiv('div_cadastro_cliente_impressao_bradesco',0)" onfocus="SetTextIn(this,1);SetDiv('div_cadastro_cliente_impressao_bradesco',1)">
        </textarea>
                    </div>
                </div>
            </div>

        </div>
    </div>
       </div>
       </div>
      </div>
           

      <!--/////////////////////////////////////////////////// Container  - Impressão Itaú  /////////////////////////////////////////////////////////////////////////////////////////////-->
       <div class="row" style="width: 100%; height: 20px; background-color: transparent"></div>

  <div class="container-fluid" style="padding: 0px; margin: 0px; width: 97%; height: 100%">


      <div class="row" style="width: 100%; height: 50px"></div>

      <div class="row" style="width: 100%; height: 100%; display: block; padding-left: 20px; padding-top: 0px; margin-left: 0px;">

          <div id="i_cadastro_cliente_impressao_itau_on" name="i_cadastro_cliente_impressao_bradesco_on" class="col" align="left" style="display: block; visibility: visible; font-size: 20px; color: red; margin-right: 20px; border-bottom: none; cursor: pointer" onclick="mostra_div_informacao('div_cadastro_impressao_bradesco','i_cadastro_cliente_impressao_bradesco_on','i_cadastro_cliente_impressao_bradesco_off',0)"><span style="color: #177CC0; font-family: Arial; font-size: 20px; font-weight: bold;">Itaú</span>&nbsp;&nbsp;<i class="fa fa-toggle-on"></i> &nbsp <img alt="" src="../Imagens/itau.png" style="width: 30px; height: 24px; cursor: pointer"/></div>
          <div id="i_cadastro_cliente_impressao_itau_off" name="i_cadastro_cliente_impressao_bradesco_off" class="col" align="left" style="display: none; visibility: hidden; font-size: 20px; color: red; margin-right: 20px; border-bottom: solid; border-color: #767676; border-width: 1px; cursor: pointer" onclick="mostra_div_informacao('div_cadastro_cliente_impressao_bradesco','i_cadastro_cliente_impressao_bradesco_on','i_cadastro_cliente_dados_complemento_off',1)"><span style="color: #177CC0; font-family: Arial; font-size: 20px; font-weight: bold;">Itaú</span>&nbsp;&nbsp;<i class="fa fa-toggle-off"></i> </div>
          
                                   


      </div>

             <div class="row" style="width: 100%; height: 20px"></div>

   <!--/////////////////////////////////////////////////// Div com os dados Complemento /////////////////////////////////////////////////////////////////////////////////////////////-->
   <div id="div_cadastro_cliente_impressao_itau" name="div_cadastro_cliente_impressao_itau"
       style="display: block; visibility: visible; width: 100%; height: 100%; background-color: transparent; margin-left: 20px; margin-right: 20px; border: solid; border-color: #177CC0; border-width: 1px; border-radius: 10px; padding: 0px 20px 20px 20px;">



       <div class="row"
           style="width: 100%; padding: 0px; margin: 0px; background-color: transparent; height: 100%; padding: 0px; margin: 0px">

           <!--/////////////////////////////////////////////////// lado esquerdo vendendor - Agencia - Conta /////////////////////////////////////////////////////////////////////////////////////////////-->
           <div class="col-xl-6" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px; padding-left: 10px">

               <div class="row" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">



                   <div class="col-md-6" style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-left: 15px; padding-top: 10px">
                       <div class="row">
                           <div class="col" style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                               Agência
                           </div>
                       </div>
              
                           <div class="row" style="padding: 0px; margin: 0px">
                               <div class="col" style="padding: 0px; margin: 0px">                                  
                                   <asp:TextBox ID="TextBox5" runat="server" CssClass="layouttexto"
                                       Style="width: 140px" onBlur="SetTextIn(this,0);SetDiv('div_cadastro_cliente_dados_complemento',0)" onFocus="SetTextIn(this,1);SetDiv('div_cadastro_cliente_dados_complemento',1)">
                                   </asp:TextBox>                              
                               </div>
                           </div>
                       
                   </div>
                   <div class="col-md-6" style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-left: 15px; padding-top: 10px">
                       <div class="row">
                           <div class="col" style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                              Cód. do Cliente junto ao Itaú
                           </div>
                       </div>                      
                           <div class="row" style="padding: 0px; margin: 0px">
                               <div class="col" style="padding: 0px; margin: 0px">                                  
                                   <asp:TextBox ID="TextBox6" runat="server" CssClass="layouttexto"
                                       Style="width: 140px" onBlur="SetTextIn(this,0);SetDiv('div_cadastro_cliente_dados_complemento',0)" onFocus="SetTextIn(this,1);SetDiv('div_cadastro_cliente_dados_complemento',1)">
                                   </asp:TextBox>                                   
                               </div>
                           </div>
                       
                   </div>

               </div>
           </div>
           <!--/////////////////////////////////////////////////// Lado Direito - Código do Cliente - Carteira /////////////////////////////////////////////////////////////////////////////////////////////-->
           <div class="col-xl-6" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px; padding-left: 10px">

               <div class="row" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">



                   <div class="col-md-7" style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-left: 15px; padding-top: 10px">
                       <div class="row">
                           <div class="col" style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                               Cód. do Cliente junto ao Itaú
                           </div>
                       </div>
                           <div class="row" style="padding: 0px; margin: 0px">
                               <div class="col" style="padding: 0px; margin: 0px">
                                  
                                   <asp:TextBox ID="TextBox7" runat="server" CssClass="layouttexto"
                                       Style="width: 270px" onBlur="SetTextIn(this,0);SetDiv('div_cadastro_cliente_dados_complemento',0)" onFocus="SetTextIn(this,1);SetDiv('div_cadastro_cliente_dados_complemento',1)">
                                   </asp:TextBox>

                               </div>
                           </div>
                       
                   </div>
                   <div class="col-md-5" style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-left: 15px; padding-top: 10px">
                       <div class="row">
                           <div class="col" style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                               Carteira
                           </div>
                       </div>


                       <div class="row" style="padding: 0px; margin: 0px">
                           <div class="col" style="padding: 0px; margin: 0px">
                               <asp:TextBox ID="TextBox8" runat="server" CssClass="layouttexto"
                                   Style="width: 100px" onBlur="SetTextIn(this,0);SetDiv('div_cadastro_cliente_dados_complemento',0)" onFocus="SetTextIn(this,1);SetDiv('div_cadastro_cliente_dados_complemento',1)">
                               </asp:TextBox>
                                
                           </div>
                       </div>
                   </div>
               </div>
           </div>
       </div>

       <!--/////////////////////////////////////////////////// lado esquerdo E-Parametro de multa (CNAB) - Percentual /////////////////////////////////////////////////////////////////////////////////////////////-->
       <div class="row" style="height: 30px"></div>
       <div class="row" style="width: 100%; padding: 0px; margin: 0px; background-color: transparent; height: 100%; padding: 0px; margin: 0px; padding-left: 10px"">
           <div class="col-xl-6" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

               <div class="row" style="width: 100%; padding: 0px; margin: 0px; background-color: transparent; height: 100%; padding: 0px; margin: 0px">
                   <div class="col-md-5" style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">

                       <div class="row">
                           <div class="col"
                               style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                               Instrução(CNAB)
                           </div>
                       </div>

                       <div class="row" style="padding: 0px; margin: 0px">
                           <div class="col" style="padding: 0px; margin: 0px">
                               <asp:DropDownList ID="DropDownList2" onBlur="SetTextIn(this,0);SetDiv('div_cadastro_clientes',0)" onFocus="SetTextIn(this,1);SetDiv('div_cadastro_clientes',1)" CssClass="layouttexto" runat="server">
                                   <asp:ListItem style="width: 100%;" Text="00" Value="1" />
                                   <asp:ListItem style="width: 100%;" Text="06" Value="2" />
                                   <asp:ListItem style="width: 100%;" Text="10" Value="3" />
                                   <asp:ListItem style="width: 100%;" Text="11" Value="4" />
                                   <asp:ListItem style="width: 100%;" Text="12" Value="5" />
                                   <asp:ListItem style="width: 100%;" Text="13" Value="6" />
                                   <asp:ListItem style="width: 100%;" Text="14" Value="7" />
                                   <asp:ListItem style="width: 100%;" Text="15" Value="8" />

                               </asp:DropDownList>
                           </div>
                       </div>
                   </div>

                   <div class="col-md-6" style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">

                       <div class="row">
                           <div class="col"
                               style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                               Dias de Prostesto(CNAB)
                           </div>
                       </div>

                       <div class="row" style="padding: 0px; margin: 0px">
                           <div class="col" style="padding: 0px; margin: 0px">
                               <asp:TextBox ID="TextBox9" runat="server" CssClass="layouttexto"
                                   Style="width: 75%; padding: 0px; margin: 0px"
                                   onBlur="SetTextIn(this,0);SetDiv('div_cadastro_cliente_dados_complemento',0)" onFocus="SetTextIn(this,1);SetDiv('div_cadastro_cliente_dados_complemento',1)">

                               </asp:TextBox>
                           </div>
                       </div>
                   </div>
               </div>
           </div>
           <!--/////////////////////////////////////////////////// lado direito - Instrução(CNAB) - Número Sequencial de Remessa /////////////////////////////////////////////////////////////////////////////////////////////-->
           <div class="col-xl-6" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

               <div class="row" style="width: 100%; padding: 0px; margin: 0px; background-color: transparent; height: 100%; padding: 0px; margin: 0px">
                   <div class="col-md-6" style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">

                       <div class="row">
                           <div class="col"
                               style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                               % de Juros Diarios(CNAB)
                           </div>
                       </div>

                       <div class="row" style="padding: 0px; margin: 0px">
                           <div class="col" style="padding: 0px; margin: 0px">
                               <asp:TextBox ID="TextBox10" runat="server" CssClass="layouttexto"
                                   Style="width: 60%; padding: 0px; margin: 0px"
                                   onBlur="SetTextIn(this,0);SetDiv('div_cadastro_cliente_dados_complemento',0)" onFocus="SetTextIn(this,1);SetDiv('div_cadastro_cliente_dados_complemento',1)">

                               </asp:TextBox>
                           </div>
                       </div>
                   </div>

                   <div class="col-md-6" style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">

                       <div class="row">
                           <div class="col"
                               style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                               Instruções que serão impressas no boleto
                           </div>
                       </div>

                       <div class="row" style="padding: 0px; margin: 0px">
                           <div class="col" style="padding: 0px; margin: 0px">
                               <textarea id="Textarea3" runat="server" class="layouttexto" rows="4" cols="50"
                                   style="width: 100%; padding: 0px; margin: 0px; border: 1px solid #000000;"
                                   onblur="SetTextIn(this,0);SetDiv('div_cadastro_cliente_documentacao',0)" onfocus="SetTextIn(this,1);SetDiv('div_cadastro_cliente_documentacao',1)">
                                </textarea>
                           </div>
                       </div>
                   </div>
               </div>
           </div>
       </div>
   </div>
  </div>

        <!--/////////////////////////////////////////////////// Container  - Impressão Safra  /////////////////////////////////////////////////////////////////////////////////////////////-->
     <div class="row" style="width: 100%; height: 20px; background-color: transparent"></div>

<div class="container-fluid" style="padding: 0px; margin: 0px; width: 97%; height: 100%">


    <div class="row" style="width: 100%; height: 50px"></div>

    <div class="row" style="width: 100%; height: 100%; display: block; padding-left: 20px; padding-top: 0px; margin-left: 0px;">

        <div id="i_cadastro_cliente_impressao_safra_on" name="i_cadastro_cliente_impressao_safra_on" class="col" align="left" style="display: block; visibility: visible; font-size: 20px; color: red; margin-right: 20px; border-bottom: none; cursor: pointer" onclick="mostra_div_informacao('div_cadastro_impressao_bradesco','i_cadastro_cliente_impressao_bradesco_on','i_cadastro_cliente_impressao_bradesco_off',0)"><span style="color: #177CC0; font-family: Arial; font-size: 20px; font-weight: bold;">Safra</span>&nbsp;&nbsp;<i class="fa fa-toggle-on"></i> &nbsp <img alt="" src="../Imagens/safra.png" style="width: 40px; height: 34px; cursor: pointer"/></div>
        <div id="i_cadastro_cliente_impressao_safra_off" name="i_cadastro_cliente_impressao_safra_off" class="col" align="left" style="display: none; visibility: hidden; font-size: 20px; color: red; margin-right: 20px; border-bottom: solid; border-color: #767676; border-width: 1px; cursor: pointer" onclick="mostra_div_informacao('div_cadastro_cliente_impressao_bradesco','i_cadastro_cliente_impressao_bradesco_on','i_cadastro_cliente_dados_complemento_off',1)"><span style="color: #177CC0; font-family: Arial; font-size: 20px; font-weight: bold;">Safra</span>&nbsp;&nbsp;<i class="fa fa-toggle-off"></i> </div>                                  
    </div>

           <div class="row" style="width: 100%; height: 20px"></div>

 <!--/////////////////////////////////////////////////// Div com os dados Complemento /////////////////////////////////////////////////////////////////////////////////////////////-->
 <div id="div_cadastro_cliente_impressao_safra" name="div_cadastro_cliente_impressao_safra"
     style="display: block; visibility: visible; width: 100%; height: 100%; background-color: transparent; margin-left: 20px; margin-right: 20px; border: solid; border-color: #177CC0; border-width: 1px; border-radius: 10px; padding: 0px 20px 20px 20px;">



     <div class="row"
         style="width: 100%; padding: 0px; margin: 0px; background-color: transparent; height: 100%; padding: 0px; margin: 0px">

         <!--/////////////////////////////////////////////////// lado esquerdo vendendor - Agencia - Conta /////////////////////////////////////////////////////////////////////////////////////////////-->
         <div class="col-xl-6" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px; padding-left: 10px">

             <div class="row" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">



                 <div class="col-md-6" style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-left: 15px; padding-top: 10px">
                     <div class="row">
                         <div class="col" style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                             Agência
                         </div>
                     </div>
            
                         <div class="row" style="padding: 0px; margin: 0px">
                             <div class="col" style="padding: 0px; margin: 0px">                                  
                                 <asp:TextBox ID="TextBox1" runat="server" CssClass="layouttexto"
                                     Style="width: 140px" onBlur="SetTextIn(this,0);SetDiv('div_cadastro_cliente_dados_complemento',0)" onFocus="SetTextIn(this,1);SetDiv('div_cadastro_cliente_dados_complemento',1)">
                                 </asp:TextBox>                              
                             </div>
                         </div>
                     
                 </div>
                 <div class="col-md-6" style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-left: 15px; padding-top: 10px">
                     <div class="row">
                         <div class="col" style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                            Conta
                         </div>
                     </div>                      
                         <div class="row" style="padding: 0px; margin: 0px">
                             <div class="col" style="padding: 0px; margin: 0px">                                  
                                 <asp:TextBox ID="TextBox3" runat="server" CssClass="layouttexto"
                                     Style="width: 140px" onBlur="SetTextIn(this,0);SetDiv('div_cadastro_cliente_dados_complemento',0)" onFocus="SetTextIn(this,1);SetDiv('div_cadastro_cliente_dados_complemento',1)">
                                 </asp:TextBox>                                   
                             </div>
                         </div>
                     
                 </div>

             </div>
         </div>
         <!--/////////////////////////////////////////////////// Lado Direito - Código do Cliente - Carteira /////////////////////////////////////////////////////////////////////////////////////////////-->
         <div class="col-xl-6" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px; padding-left: 10px">

             <div class="row" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">



                 <div class="col-md-7" style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-left: 15px; padding-top: 10px">
                     <div class="row">
                         <div class="col" style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                             Nosso Número
                         </div>
                     </div>
                         <div class="row" style="padding: 0px; margin: 0px">
                             <div class="col" style="padding: 0px; margin: 0px">
                                
                                 <asp:TextBox ID="TextBox4" runat="server" CssClass="layouttexto"
                                     Style="width: 270px" onBlur="SetTextIn(this,0);SetDiv('div_cadastro_cliente_dados_complemento',0)" onFocus="SetTextIn(this,1);SetDiv('div_cadastro_cliente_dados_complemento',1)">
                                 </asp:TextBox>

                             </div>
                         </div>
                     
                 </div>
                 <div class="col-md-5" style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-left: 15px; padding-top: 10px">
                     <div class="row">
                         <div class="col" style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                             Carteira
                         </div>
                     </div>


                     <div class="row" style="padding: 0px; margin: 0px">
                         <div class="col" style="padding: 0px; margin: 0px">
                             <asp:TextBox ID="TextBox11" runat="server" CssClass="layouttexto"
                                 Style="width: 100px" onBlur="SetTextIn(this,0);SetDiv('div_cadastro_cliente_dados_complemento',0)" onFocus="SetTextIn(this,1);SetDiv('div_cadastro_cliente_dados_complemento',1)">
                             </asp:TextBox>
                              
                         </div>
                     </div>
                 </div>
             </div>
         </div>
     </div>

     <!--/////////////////////////////////////////////////// lado esquerdo E-Parametro de multa (CNAB) - Percentual /////////////////////////////////////////////////////////////////////////////////////////////-->
     <div class="row" style="height: 30px"></div>
     <div class="row" style="width: 100%; padding: 0px; margin: 0px; background-color: transparent; height: 100%; padding: 0px; margin: 0px; padding-left: 10px"">
         <div class="col-xl-6" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

             <div class="row" style="width: 100%; padding: 0px; margin: 0px; background-color: transparent; height: 100%; padding: 0px; margin: 0px">
                 <div class="col-md-6" style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">

                     <div class="row">
                         <div class="col"
                             style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                             Instruções que serão impressas no boleto
                         </div>
                     </div>

                     <div class="row" style="padding: 0px; margin: 0px">
                         <div class="col" style="padding: 0px; margin: 0px">
                             <textarea id="Textarea2" runat="server" class="layouttexto" rows="4" cols="50"
                                 style="width: 100%; padding: 0px; margin: 0px; border: 1px solid #000000;"
                                 onblur="SetTextIn(this,0);SetDiv('div_cadastro_cliente_documentacao',0)" onfocus="SetTextIn(this,1);SetDiv('div_cadastro_cliente_documentacao',1)">
                            </textarea>
                         </div>
                     </div>
                 </div>
             </div>
         </div>       
     </div>
 </div>
</div>


            <!--/////////////////////////////////////////////////// Container  - Impressão Banco do Brasil /////////////////////////////////////////////////////////////////////////////////////////////-->
     <div class="row" style="width: 100%; height: 20px; background-color: transparent"></div>

<div class="container-fluid" style="padding: 0px; margin: 0px; width: 97%; height: 100%">


    <div class="row" style="width: 100%; height: 50px"></div>

    <div class="row" style="width: 100%; height: 100%; display: block; padding-left: 20px; padding-top: 0px; margin-left: 0px;">

        <div id="i_cadastro_cliente_impressao_banco_brasil_on" name="i_cadastro_cliente_impressao_safra_on" class="col" align="left" style="display: block; visibility: visible; font-size: 20px; color: red; margin-right: 20px; border-bottom: none; cursor: pointer" onclick="mostra_div_informacao('div_cadastro_impressao_bradesco','i_cadastro_cliente_impressao_bradesco_on','i_cadastro_cliente_impressao_bradesco_off',0)"><span style="color: #177CC0; font-family: Arial; font-size: 20px; font-weight: bold;">Banco do Brasil</span>&nbsp;&nbsp;<i class="fa fa-toggle-on"></i> &nbsp <img alt="" src="../Imagens/brasil.png" style="width: 40px; height: 34px; cursor: pointer"/></div>
        <div id="i_cadastro_cliente_impressao_banco_brasil_off" name="i_cadastro_cliente_impressao_safra_off" class="col" align="left" style="display: none; visibility: hidden; font-size: 20px; color: red; margin-right: 20px; border-bottom: solid; border-color: #767676; border-width: 1px; cursor: pointer" onclick="mostra_div_informacao('div_cadastro_cliente_impressao_bradesco','i_cadastro_cliente_impressao_bradesco_on','i_cadastro_cliente_dados_complemento_off',1)"><span style="color: #177CC0; font-family: Arial; font-size: 20px; font-weight: bold;">Banco do Brasil</span>&nbsp;&nbsp;<i class="fa fa-toggle-off"></i> </div>                                  
    </div>

           <div class="row" style="width: 100%; height: 20px"></div>

 <!--/////////////////////////////////////////////////// Div com os dados Complemento /////////////////////////////////////////////////////////////////////////////////////////////-->
 <div id="div_cadastro_cliente_impressao_banco_brasil" name="div_cadastro_cliente_impressao_banco_brasil"
     style="display: block; visibility: visible; width: 100%; height: 100%; background-color: transparent; margin-left: 20px; margin-right: 20px; border: solid; border-color: #177CC0; border-width: 1px; border-radius: 10px; padding: 0px 20px 20px 20px;">



     <div class="row"
         style="width: 100%; padding: 0px; margin: 0px; background-color: transparent; height: 100%; padding: 0px; margin: 0px">

         <!--/////////////////////////////////////////////////// lado esquerdo vendendor - Agencia - Conta /////////////////////////////////////////////////////////////////////////////////////////////-->
         <div class="col-xl-6" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px; padding-left: 10px">

             <div class="row" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">



                 <div class="col-md-6" style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-left: 15px; padding-top: 10px">
                     <div class="row">
                         <div class="col" style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                             Agência
                         </div>
                     </div>
            
                         <div class="row" style="padding: 0px; margin: 0px">
                             <div class="col" style="padding: 0px; margin: 0px">                                  
                                 <asp:TextBox ID="TextBox12" runat="server" CssClass="layouttexto"
                                     Style="width: 140px" onBlur="SetTextIn(this,0);SetDiv('div_cadastro_cliente_dados_complemento',0)" onFocus="SetTextIn(this,1);SetDiv('div_cadastro_cliente_dados_complemento',1)">
                                 </asp:TextBox>                              
                             </div>
                         </div>
                     
                 </div>
                 <div class="col-md-6" style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-left: 15px; padding-top: 10px">
                     <div class="row">
                         <div class="col" style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                            Conta
                         </div>
                     </div>                      
                         <div class="row" style="padding: 0px; margin: 0px">
                             <div class="col" style="padding: 0px; margin: 0px">                                  
                                 <asp:TextBox ID="TextBox13" runat="server" CssClass="layouttexto"
                                     Style="width: 140px" onBlur="SetTextIn(this,0);SetDiv('div_cadastro_cliente_dados_complemento',0)" onFocus="SetTextIn(this,1);SetDiv('div_cadastro_cliente_dados_complemento',1)">
                                 </asp:TextBox>                                   
                             </div>
                         </div>
                     
                 </div>

             </div>
         </div>
         <!--/////////////////////////////////////////////////// Lado Direito - Código do Cliente - Carteira /////////////////////////////////////////////////////////////////////////////////////////////-->
         <div class="col-xl-6" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px; padding-left: 10px">

             <div class="row" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">



                 <div class="col-md-6" style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-left: 15px; padding-top: 10px">
                     <div class="row">
                         <div class="col" style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                             Nosso Número
                         </div>
                     </div>
                         <div class="row" style="padding: 0px; margin: 0px">
                             <div class="col" style="padding: 0px; margin: 0px">
                                
                                 <asp:TextBox ID="TextBox14" runat="server" CssClass="layouttexto"
                                     Style="width: 270px" onBlur="SetTextIn(this,0);SetDiv('div_cadastro_cliente_dados_complemento',0)" onFocus="SetTextIn(this,1);SetDiv('div_cadastro_cliente_dados_complemento',1)">
                                 </asp:TextBox>

                             </div>
                         </div>
                     
                 </div>
                 <div class="col-md-6" style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-left: 15px; padding-top: 10px">
                     <div class="row">
                         <div class="col" style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                             Carteira
                         </div>
                     </div>


                     <div class="row" style="padding: 0px; margin: 0px">
                         <div class="col" style="padding: 0px; margin: 0px">
                             <asp:TextBox ID="TextBox15" runat="server" CssClass="layouttexto"
                                 Style="width: 100px" onBlur="SetTextIn(this,0);SetDiv('div_cadastro_cliente_dados_complemento',0)" onFocus="SetTextIn(this,1);SetDiv('div_cadastro_cliente_dados_complemento',1)">
                             </asp:TextBox>
                              
                         </div>
                     </div>
                 </div>
             </div>
         </div>
     </div>

     <!--/////////////////////////////////////////////////// lado esquerdo E-Parametro de multa (CNAB) - Percentual /////////////////////////////////////////////////////////////////////////////////////////////-->
     <div class="row" style="height: 30px"></div>
     <div class="row" style="width: 100%; padding: 0px; margin: 0px; background-color: transparent; height: 100%; padding: 0px; margin: 0px; padding-left: 10px"">
         <div class="col-xl-6" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

             <div class="row" style="width: 100%; padding: 0px; margin: 0px; background-color: transparent; height: 100%; padding: 0px; margin: 0px">



                 <div class="col-md-6" style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-left: 15px; padding-top: 10px">
                     <div class="row">
                         <div class="col" style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                             Número do Convênio
                         </div>
                     </div>


                     <div class="row" style="padding: 0px; margin: 0px">
                         <div class="col" style="padding: 0px; margin: 0px">
                             <asp:TextBox ID="TextBox16" runat="server" CssClass="layouttexto"
                                 Style="width: 100px" onBlur="SetTextIn(this,0);SetDiv('div_cadastro_cliente_dados_complemento',0)" onFocus="SetTextIn(this,1);SetDiv('div_cadastro_cliente_dados_complemento',1)">
                             </asp:TextBox>

                         </div>
                     </div>
                 </div>


                 <div class="col-md-6" style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">

                     <div class="row">
                         <div class="col"
                             style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                             Instruções do Boleto
                         </div>
                     </div>

                     <div class="row" style="padding: 0px; margin: 0px">
                         <div class="col" style="padding: 0px; margin: 0px">
                             <textarea id="Textarea1" runat="server" class="layouttexto" rows="4" cols="50"
                                 style="width: 100%; padding: 0px; margin: 0px; border: 1px solid #000000;"
                                 onblur="SetTextIn(this,0);SetDiv('div_cadastro_cliente_documentacao',0)" onfocus="SetTextIn(this,1);SetDiv('div_cadastro_cliente_documentacao',1)">
                            </textarea>
                         </div>
                     </div>
                 </div>
             </div>
         </div>       
     </div>
 </div>
</div>




                <!--/////////////////////////////////////////////////// Container  - Impressão Banco Santander/////////////////////////////////////////////////////////////////////////////////////////////-->
     <div class="row" style="width: 100%; height: 20px; background-color: transparent"></div>

<div class="container-fluid" style="padding: 0px; margin: 0px; width: 97%; height: 100%">


    <div class="row" style="width: 100%; height: 50px"></div>

    <div class="row" style="width: 100%; height: 100%; display: block; padding-left: 20px; padding-top: 0px; margin-left: 0px;">

        <div id="i_cadastro_cliente_impressao_santander_on" name="i_cadastro_cliente_impressao_satander_on" class="col" align="left" style="display: block; visibility: visible; font-size: 20px; color: red; margin-right: 20px; border-bottom: none; cursor: pointer" onclick="mostra_div_informacao('div_cadastro_impressao_bradesco','i_cadastro_cliente_impressao_bradesco_on','i_cadastro_cliente_impressao_bradesco_off',0)"><span style="color: #177CC0; font-family: Arial; font-size: 20px; font-weight: bold;">Santander</span>&nbsp;&nbsp;<i class="fa fa-toggle-on"></i> &nbsp <img alt="" src="../Imagens/santander.png" style="width: 40px; height: 34px; cursor: pointer"/></div>
        <div id="i_cadastro_cliente_impressao_santander_off" name="i_cadastro_cliente_impressao_santander_off" class="col" align="left" style="display: none; visibility: hidden; font-size: 20px; color: red; margin-right: 20px; border-bottom: solid; border-color: #767676; border-width: 1px; cursor: pointer" onclick="mostra_div_informacao('div_cadastro_cliente_impressao_bradesco','i_cadastro_cliente_impressao_bradesco_on','i_cadastro_cliente_dados_complemento_off',1)"><span style="color: #177CC0; font-family: Arial; font-size: 20px; font-weight: bold;">Santander</span>&nbsp;&nbsp;<i class="fa fa-toggle-off"></i> </div>                                  
    </div>

           <div class="row" style="width: 100%; height: 20px"></div>

 <!--/////////////////////////////////////////////////// Div com os dados Complemento /////////////////////////////////////////////////////////////////////////////////////////////-->
 <div id="div_cadastro_cliente_impressao_santander" name="div_cadastro_cliente_impressao_santander"
     style="display: block; visibility: visible; width: 100%; height: 100%; background-color: transparent; margin-left: 20px; margin-right: 20px; border: solid; border-color: #177CC0; border-width: 1px; border-radius: 10px; padding: 0px 20px 20px 20px;">



     <div class="row"
         style="width: 100%; padding: 0px; margin: 0px; background-color: transparent; height: 100%; padding: 0px; margin: 0px">

         <!--/////////////////////////////////////////////////// lado esquerdo vendendor - Agencia - Conta /////////////////////////////////////////////////////////////////////////////////////////////-->
         <div class="col-xl-6" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px; padding-left: 10px">

             <div class="row" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">



                 <div class="col-md-6" style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-left: 15px; padding-top: 10px">
                     <div class="row">
                         <div class="col" style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                             Agência
                         </div>
                     </div>
            
                         <div class="row" style="padding: 0px; margin: 0px">
                             <div class="col" style="padding: 0px; margin: 0px">                                  
                                 <asp:TextBox ID="TextBox17" runat="server" CssClass="layouttexto"
                                     Style="width: 140px" onBlur="SetTextIn(this,0);SetDiv('div_cadastro_cliente_dados_complemento',0)" onFocus="SetTextIn(this,1);SetDiv('div_cadastro_cliente_dados_complemento',1)">
                                 </asp:TextBox>                              
                             </div>
                         </div>
                     
                 </div>
                 <div class="col-md-6" style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-left: 15px; padding-top: 10px">
                     <div class="row">
                         <div class="col" style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                            Conta
                         </div>
                     </div>                      
                         <div class="row" style="padding: 0px; margin: 0px">
                             <div class="col" style="padding: 0px; margin: 0px">                                  
                                 <asp:TextBox ID="TextBox18" runat="server" CssClass="layouttexto"
                                     Style="width: 140px" onBlur="SetTextIn(this,0);SetDiv('div_cadastro_cliente_dados_complemento',0)" onFocus="SetTextIn(this,1);SetDiv('div_cadastro_cliente_dados_complemento',1)">
                                 </asp:TextBox>                                   
                             </div>
                         </div>
                     
                 </div>

             </div>
         </div>
         <!--/////////////////////////////////////////////////// Lado Direito - Código do Cliente - Carteira /////////////////////////////////////////////////////////////////////////////////////////////-->
         <div class="col-xl-6" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px; padding-left: 10px">

             <div class="row" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">



                 <div class="col-md-6" style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-left: 15px; padding-top: 10px">
                     <div class="row">
                         <div class="col" style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                             Nosso Número
                         </div>
                     </div>
                         <div class="row" style="padding: 0px; margin: 0px">
                             <div class="col" style="padding: 0px; margin: 0px">
                                
                                 <asp:TextBox ID="TextBox19" runat="server" CssClass="layouttexto"
                                     Style="width: 270px" onBlur="SetTextIn(this,0);SetDiv('div_cadastro_cliente_dados_complemento',0)" onFocus="SetTextIn(this,1);SetDiv('div_cadastro_cliente_dados_complemento',1)">
                                 </asp:TextBox>

                             </div>
                         </div>
                     
                 </div>
                 <div class="col-md-6" style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-left: 15px; padding-top: 10px">
                     <div class="row">
                         <div class="col" style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                             Carteira
                         </div>
                     </div>


                     <div class="row" style="padding: 0px; margin: 0px">
                         <div class="col" style="padding: 0px; margin: 0px">
                             <asp:TextBox ID="TextBox20" runat="server" CssClass="layouttexto"
                                 Style="width: 100px" onBlur="SetTextIn(this,0);SetDiv('div_cadastro_cliente_dados_complemento',0)" onFocus="SetTextIn(this,1);SetDiv('div_cadastro_cliente_dados_complemento',1)">
                             </asp:TextBox>
                              
                         </div>
                     </div>
                 </div>
             </div>
         </div>
     </div>

     <!--/////////////////////////////////////////////////// lado esquerdo E-Parametro de multa (CNAB) - Percentual /////////////////////////////////////////////////////////////////////////////////////////////-->
     <div class="row" style="height: 30px"></div>
     <div class="row" style="width: 100%; padding: 0px; margin: 0px; background-color: transparent; height: 100%; padding: 0px; margin: 0px; padding-left: 10px"">
         <div class="col-xl-6" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

             <div class="row" style="width: 100%; padding: 0px; margin: 0px; background-color: transparent; height: 100%; padding: 0px; margin: 0px">



                 <div class="col-md-6" style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-left: 15px; padding-top: 10px">
                     <div class="row">
                         <div class="col" style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                             Identificação do Cedente
                         </div>
                     </div>


                     <div class="row" style="padding: 0px; margin: 0px">
                         <div class="col" style="padding: 0px; margin: 0px">
                             <asp:TextBox ID="TextBox21" runat="server" CssClass="layouttexto"
                                 Style="width: 100px" onBlur="SetTextIn(this,0);SetDiv('div_cadastro_cliente_dados_complemento',0)" onFocus="SetTextIn(this,1);SetDiv('div_cadastro_cliente_dados_complemento',1)">
                             </asp:TextBox>

                         </div>
                     </div>
                 </div>


                 <div class="col-md-6" style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">

                     <div class="row">
                         <div class="col"
                             style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                            Cód. De Transmição CNAB
                         </div>
                     </div>

                     <div class="row" style="padding: 0px; margin: 0px">
                         <div class="col" style="padding: 0px; margin: 0px">
                             <asp:TextBox ID="TextBox23" runat="server" CssClass="layouttexto"
                                 Style="width: 140px" onBlur="SetTextIn(this,0);SetDiv('div_cadastro_cliente_dados_complemento',0)" onFocus="SetTextIn(this,1);SetDiv('div_cadastro_cliente_dados_complemento',1)">
                             </asp:TextBox>
                         </div>
                     </div>
                 </div>
             </div>
         </div>       

          <!--/////////////////////////////////////////////////// Lado Direito - Código do Cliente - Carteira /////////////////////////////////////////////////////////////////////////////////////////////-->
        <div class="col-xl-6" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px; padding-left: 10px">

     <div class="row" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">



         <div class="col-md-6" style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-left: 15px; padding-top: 10px">
             <div class="row">
                 <div class="col" style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                     Número da Conta Cobrança CNAB
                 </div>
             </div>
                 <div class="row" style="padding: 0px; margin: 0px">
                     <div class="col" style="padding: 0px; margin: 0px">
                        
                         <asp:TextBox ID="TextBox22" runat="server" CssClass="layouttexto"
                             Style="width: 270px" onBlur="SetTextIn(this,0);SetDiv('div_cadastro_cliente_dados_complemento',0)" onFocus="SetTextIn(this,1);SetDiv('div_cadastro_cliente_dados_complemento',1)">
                         </asp:TextBox>

                     </div>
                 </div>

         </div>
         <div class="col-md-6" style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-left: 15px; padding-top: 10px">
             <div class="row">
                 <div class="col" style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                     Instruções do Boleto
                 </div>
             </div>


             <div class="row" style="padding: 0px; margin: 0px">
                 <div class="col" style="padding: 0px; margin: 0px">
                     <textarea id="Textarea5" runat="server" class="layouttexto" rows="4" cols="50"
                         style="width: 100%; padding: 0px; margin: 0px; border: 1px solid #000000;"
                         onblur="SetTextIn(this,0);SetDiv('div_cadastro_cliente_documentacao',0)" onfocus="SetTextIn(this,1);SetDiv('div_cadastro_cliente_documentacao',1)">
       </textarea>
                 </div>
             </div>
         </div>
     </div>
        </div>
     </div>
 </div>
    </div>

</asp:Content>





        