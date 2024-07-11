<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/telas/Topo.Master" CodeBehind="parametrosimpressaoboletos.aspx.vb" Inherits="VoceFazNfe.parametrosimpressaoboletos" %>
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

          <div id="i_cadastro_cliente_impressao_itau_on" name="i_cadastro_cliente_impressao_bradesco_on" class="col" align="left" style="display: block; visibility: visible; font-size: 20px; color: red; margin-right: 20px; border-bottom: none; cursor: pointer" onclick="mostra_div_informacao('div_cadastro_cliente_impressao_itau','i_cadastro_cliente_impressao_itau_on','i_cadastro_cliente_impressao_itau_off',0)"><span style="color: #177CC0; font-family: Arial; font-size: 20px; font-weight: bold;">Itaú</span>&nbsp;&nbsp;<i class="fa fa-toggle-on"></i> &nbsp <img alt="" src="../Imagens/itau.png" style="width: 30px; height: 24px; cursor: pointer"/></div>
          <div id="i_cadastro_cliente_impressao_itau_off" name="i_cadastro_cliente_impressao_bradesco_off" class="col" align="left" style="display: none; visibility: hidden; font-size: 20px; color: red; margin-right: 20px; border-bottom: solid; border-color: #767676; border-width: 1px; cursor: pointer" onclick="mostra_div_informacao('div_cadastro_cliente_impressao_itau','i_cadastro_cliente_impressao_itau_on','i_cadastro_cliente_impressao_itau_off',1)"><span style="color: #177CC0; font-family: Arial; font-size: 20px; font-weight: bold;">Itaú</span>&nbsp;&nbsp;<i class="fa fa-toggle-off"></i> </div>
                                         
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
                                   <asp:TextBox ID="cs_cadastro_cliente_agencia_itau" runat="server" CssClass="layouttexto"
                                       Style="width: 140px" onBlur="SetTextIn(this,0);SetDiv('div_cadastro_cliente_impressao_itau',0)" onFocus="SetTextIn(this,1);SetDiv('div_cadastro_cliente_impressao_itau',1)">
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
                                   <asp:TextBox ID="cs_cadastro_cliente_conta_itau" runat="server" CssClass="layouttexto"
                                       Style="width: 140px" onBlur="SetTextIn(this,0);SetDiv('div_cadastro_cliente_impressao_itau',0)" onFocus="SetTextIn(this,1);SetDiv('div_cadastro_cliente_impressao_itau',1)">
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
                               Nosso Número &nbsp &nbsp <img alt="" src="../Imagens/ihelp.png"  style="width: 20px; height: 21px; cursor:pointer" onclick="anima_informacao(1,'nossonumero')" />
                           </div>
                       </div>
                           <div class="row" style="padding: 0px; margin: 0px">
                               <div class="col" style="padding: 0px; margin: 0px">
                                  
                                   <asp:TextBox ID="cs_cadastro_cliente_nosso_numero_itau" runat="server" CssClass="layouttexto"
                                       Style="width: 270px" onBlur="SetTextIn(this,0);SetDiv('div_cadastro_cliente_impressao_itau',0)" onFocus="SetTextIn(this,1);SetDiv('div_cadastro_cliente_impressao_itau',1)">
                                   </asp:TextBox>

                               </div>
                           </div>
                       
                   </div>
                   <div class="col-md-6" style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-left: 15px; padding-top: 10px">
                       <div class="row">
                           <div class="col" style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                               Carteira &nbsp &nbsp <img alt="" src="../Imagens/ihelp.png"  style="width: 20px; height: 21px; cursor:pointer" onclick="anima_informacao(1,'carteira')" />
                           </div>
                       </div>


                       <div class="row" style="padding: 0px; margin: 0px">
                           <div class="col" style="padding: 0px; margin: 0px">
                               <asp:TextBox ID="cs_cadastro_cliente_carteira_itau" runat="server" CssClass="layouttexto"
                                   Style="width: 100px" onBlur="SetTextIn(this,0);SetDiv('div_cadastro_cliente_impressao_itau',0)" onFocus="SetTextIn(this,1);SetDiv('div_cadastro_cliente_impressao_itau',1)">
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
                               Cód. Cliente junto ao Itáu &nbsp &nbsp <img alt="" src="../Imagens/ihelp.png"  style="width: 20px; height: 21px; cursor:pointer" onclick="anima_informacao(1,'codigocliente')" />
                           </div>
                       </div>

                       <div class="row" style="padding: 0px; margin: 0px">
                           <div class="col" style="padding: 0px; margin: 0px">
                               <asp:TextBox ID="cs_cadastro_cliente_cod_cliente_itau" runat="server" CssClass="layouttexto"
                                   Style="width: 100px" onBlur="SetTextIn(this,0);SetDiv('div_cadastro_cliente_impressao_itau',0)" onFocus="SetTextIn(this,1);SetDiv('div_cadastro_cliente_impressao_itau',1)">
                               </asp:TextBox>

                           </div>
                       </div>
                   </div>

                   <div class="col-md-6" style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">

                       <div class="row">
                           <div class="col"
                               style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                               Instrução(CNAB)
                           </div>
                       </div>

                       <div class="row" style="padding: 0px; margin: 0px">
                           <div class="col" style="padding: 0px; margin: 0px">
                               <asp:DropDownList ID="cs_cadastro_cliente_instrucao_itau" onBlur="SetTextIn(this,0);SetDiv('div_cadastro_cliente_impressao_itau',0)" onFocus="SetTextIn(this,1);SetDiv('div_cadastro_cliente_impressao_itau',1)" CssClass="layouttexto" runat="server">
                                   <asp:ListItem style="width: 100%;" Text="03" Value="1" />
                                   <asp:ListItem style="width: 100%;" Text="05" Value="2" />
                                   <asp:ListItem style="width: 100%;" Text="06" Value="3" />
                                   <asp:ListItem style="width: 100%;" Text="07" Value="4" />
                                   <asp:ListItem style="width: 100%;" Text="08" Value="5" />
                                   <asp:ListItem style="width: 100%;" Text="09" Value="6" />
                                   <asp:ListItem style="width: 100%;" Text="10" Value="7" />
                                   <asp:ListItem style="width: 100%;" Text="11" Value="8" />
                                   <asp:ListItem style="width: 100%;" Text="12" Value="10" />
                                   <asp:ListItem style="width: 100%;" Text="13" Value="11" />
                                   <asp:ListItem style="width: 100%;" Text="14" Value="12" />
                                   <asp:ListItem style="width: 100%;" Text="15" Value="13" />
                                   <asp:ListItem style="width: 100%;" Text="16" Value="14" />
                                   <asp:ListItem style="width: 100%;" Text="17" Value="15" />
                                   <asp:ListItem style="width: 100%;" Text="18" Value="16" />
                                   <asp:ListItem style="width: 100%;" Text="19" Value="17" />
                                   <asp:ListItem style="width: 100%;" Text="20" Value="18" />
                                   <asp:ListItem style="width: 100%;" Text="21" Value="19" />
                                   <asp:ListItem style="width: 100%;" Text="22" Value="20" />
                                   <asp:ListItem style="width: 100%;" Text="23" Value="21" />
                                   <asp:ListItem style="width: 100%;" Text="24" Value="22" />
                                   <asp:ListItem style="width: 100%;" Text="25" Value="23" />
                                   <asp:ListItem style="width: 100%;" Text="26" Value="24" />
                                   <asp:ListItem style="width: 100%;" Text="27" Value="25" />
                                   <asp:ListItem style="width: 100%;" Text="28" Value="26" />
                                   <asp:ListItem style="width: 100%;" Text="29" Value="27" />
                                   <asp:ListItem style="width: 100%;" Text="31" Value="28" />
                                   <asp:ListItem style="width: 100%;" Text="32" Value="29" />
                                   <asp:ListItem style="width: 100%;" Text="37" Value="30" />
                                   <asp:ListItem style="width: 100%;" Text="39" Value="31" />
                                   <asp:ListItem style="width: 100%;" Text="43" Value="32" />
                                   <asp:ListItem style="width: 100%;" Text="79" Value="33" />
                                   <asp:ListItem style="width: 100%;" Text="80" Value="34" />
                                   <asp:ListItem style="width: 100%;" Text="81" Value="35" />
                                   <asp:ListItem style="width: 100%;" Text="82" Value="36" />
                                   <asp:ListItem style="width: 100%;" Text="84" Value="37" />
                                   <asp:ListItem style="width: 100%;" Text="86" Value="38" />
                                   <asp:ListItem style="width: 100%;" Text="88" Value="39" />
                                   <asp:ListItem style="width: 100%;" Text="90" Value="40" />
                               </asp:DropDownList>
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
                               Dias Protesto (CNAB)
                           </div>
                       </div>

                       <div class="row" style="padding: 0px; margin: 0px">
                           <div class="col" style="padding: 0px; margin: 0px">
                               <asp:TextBox ID="cs_cadastro_cliente_dias_protesto_itau" runat="server" CssClass="layouttexto"
                                   Style="width: 60%; padding: 0px; margin: 0px"
                                   onBlur="SetTextIn(this,0);SetDiv('div_cadastro_cliente_impressao_itau',0)" onFocus="SetTextIn(this,1);SetDiv('div_cadastro_cliente_impressao_itau',1)">

                               </asp:TextBox>
                           </div>
                       </div>
                   </div>

                   <div class="col-md-6" style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">

                       <div class="row">
                           <div class="col"
                               style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                               % de juros Diarios(CNAB)
                           </div>
                       </div>

                       <div class="row" style="padding: 0px; margin: 0px">
                           <div class="col" style="padding: 0px; margin: 0px">
                               <asp:TextBox ID="cs_cadastro_cliente_juros_itau" runat="server" CssClass="layouttexto"
                                   Style="width: 60%; padding: 0px; margin: 0px"
                                   onBlur="SetTextIn(this,0);SetDiv('div_cadastro_cliente_impressao_itau',0)" onFocus="SetTextIn(this,1);SetDiv('div_cadastro_cliente_impressao_itau',1)">

                               </asp:TextBox>
                           </div>
                       </div>
                   </div>
               </div>
           </div>
       </div>
        <!--/////////////////////////////////////////////////// lado Esquerdo - Instrução do Boleto /////////////////////////////////////////////////////////////////////////////////////////////-->
       <div class="row" style="height: 30px"></div>
    <div class="row" style="width: 100%; padding: 0px; margin: 0px; background-color: transparent; height: 100%; padding: 0px; margin: 0px; padding-left: 10px"">
    <div class="col-xl-6" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

        <div class="row" style="width: 100%; padding: 0px; margin: 0px; background-color: transparent; height: 100%; padding: 0px; margin: 0px">
            <div class="col-md-12" style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">

                <div class="row">
                    <div class="col"
                        style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                        Instrução do Boleto
                    </div>
                </div>

                <div class="row" style="padding: 0px; margin: 0px">
                    <div class="col" style="padding: 0px; margin: 0px">
                        <textarea id="cs_cadastro_cliente_boleto_itau" runat="server" class="layouttexto" rows="4" cols="50"
                            style="width: 60%; padding: 0px; margin: 0px; border: 1px solid #000000;"
                            onblur="SetTextIn(this,0);SetDiv('div_cadastro_cliente_impressao_itau',0)" onfocus="SetTextIn(this,1);SetDiv('div_cadastro_cliente_impressao_itau',1)">
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

        <div id="i_cadastro_cliente_impressao_safra_on" name="i_cadastro_cliente_impressao_safra_on" class="col" align="left" style="display: block; visibility: visible; font-size: 20px; color: red; margin-right: 20px; border-bottom: none; cursor: pointer" onclick="mostra_div_informacao('div_cadastro_cliente_impressao_safra','i_cadastro_cliente_impressao_safra_on','i_cadastro_cliente_impressao_safra_off',0)"><span style="color: #177CC0; font-family: Arial; font-size: 20px; font-weight: bold;">Safra</span>&nbsp;&nbsp;<i class="fa fa-toggle-on"></i> &nbsp <img alt="" src="../Imagens/safra.png" style="width: 40px; height: 34px; cursor: pointer"/></div>
        <div id="i_cadastro_cliente_impressao_safra_off" name="i_cadastro_cliente_impressao_safra_off" class="col" align="left" style="display: none; visibility: hidden; font-size: 20px; color: red; margin-right: 20px; border-bottom: solid; border-color: #767676; border-width: 1px; cursor: pointer" onclick="mostra_div_informacao('div_cadastro_cliente_impressao_safra','i_cadastro_cliente_impressao_safra_on','i_cadastro_cliente_impressao_safra_off',1)"><span style="color: #177CC0; font-family: Arial; font-size: 20px; font-weight: bold;">Safra</span>&nbsp;&nbsp;<i class="fa fa-toggle-off"></i> </div>                                  
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
                                 <asp:TextBox ID="cs_cadastro_cliente_agencia_safra" runat="server" CssClass="layouttexto"
                                     Style="width: 140px" onBlur="SetTextIn(this,0);SetDiv('div_cadastro_cliente_impressao_safra',0)" onFocus="SetTextIn(this,1);SetDiv('div_cadastro_cliente_impressao_safra',1)">
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
                                 <asp:TextBox ID="cs_cadastro_cliente_conta_safra" runat="server" CssClass="layouttexto"
                                     Style="width: 140px" onBlur="SetTextIn(this,0);SetDiv('div_cadastro_cliente_impressao_safra',0)" onFocus="SetTextIn(this,1);SetDiv('div_cadastro_cliente_impressao_safra',1)">
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
                             Nosso Número &nbsp &nbsp <img alt="" src="../Imagens/ihelp.png"  style="width: 20px; height: 21px; cursor:pointer" onclick="anima_informacao(1,'nossonumero')" />
                         </div>
                     </div>
                         <div class="row" style="padding: 0px; margin: 0px">
                             <div class="col" style="padding: 0px; margin: 0px">
                                
                                 <asp:TextBox ID="cs_cadastro_cliente_nosso_numero_safra" runat="server" CssClass="layouttexto"
                                     Style="width: 270px" onBlur="SetTextIn(this,0);SetDiv('div_cadastro_cliente_impressao_safra',0)" onFocus="SetTextIn(this,1);SetDiv('div_cadastro_cliente_impressao_safra',1)">
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
                             <asp:TextBox ID="cs_cadastro_cliente_carteira_safra" runat="server" CssClass="layouttexto"
                                 Style="width: 100px" onBlur="SetTextIn(this,0);SetDiv('div_cadastro_cliente_impressao_safra',0)" onFocus="SetTextIn(this,1);SetDiv('div_cadastro_cliente_impressao_safra',1)">
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
                             Instruções do Boleto
                         </div>
                     </div>

                     <div class="row" style="padding: 0px; margin: 0px">
                         <div class="col" style="padding: 0px; margin: 0px">
                             <textarea id="cs_cadastro_cliente_boleto_safra" runat="server" class="layouttexto" rows="4" cols="50"
                                 style="width: 100%; padding: 0px; margin: 0px; border: 1px solid #000000;"
                                 onblur="SetTextIn(this,0);SetDiv('div_cadastro_cliente_impressao_safra',0)" onfocus="SetTextIn(this,1);SetDiv('div_cadastro_cliente_impressao_safra',1)">
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

        <div id="i_cadastro_cliente_impressao_banco_brasil_on" name="i_cadastro_cliente_impressao_safra_on" class="col" align="left" style="display: block; visibility: visible; font-size: 20px; color: red; margin-right: 20px; border-bottom: none; cursor: pointer" onclick="mostra_div_informacao('div_cadastro_cliente_impressao_banco_brasil','i_cadastro_cliente_impressao_banco_brasil_on','i_cadastro_cliente_impressao_banco_brasil_off',0)"><span style="color: #177CC0; font-family: Arial; font-size: 20px; font-weight: bold;">Banco do Brasil</span>&nbsp;&nbsp;<i class="fa fa-toggle-on"></i> &nbsp <img alt="" src="../Imagens/brasil.png" style="width: 40px; height: 34px; cursor: pointer"/></div>
        <div id="i_cadastro_cliente_impressao_banco_brasil_off" name="i_cadastro_cliente_impressao_safra_off" class="col" align="left" style="display: none; visibility: hidden; font-size: 20px; color: red; margin-right: 20px; border-bottom: solid; border-color: #767676; border-width: 1px; cursor: pointer" onclick="mostra_div_informacao('div_cadastro_cliente_impressao_banco_brasil','i_cadastro_cliente_impressao_banco_brasil_on','i_cadastro_cliente_impressao_banco_brasil_off',1)"><span style="color: #177CC0; font-family: Arial; font-size: 20px; font-weight: bold;">Banco do Brasil</span>&nbsp;&nbsp;<i class="fa fa-toggle-off"></i> </div>                                  
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
                                 <asp:TextBox ID="cs_cadastro_cliente_agencia_brasil" runat="server" CssClass="layouttexto"
                                     Style="width: 140px" onBlur="SetTextIn(this,0);SetDiv('div_cadastro_cliente_impressao_banco_brasil',0)" onFocus="SetTextIn(this,1);SetDiv('div_cadastro_cliente_impressao_banco_brasil',1)">
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
                                 <asp:TextBox ID="cs_cadastro_cliente_conta_brasil" runat="server" CssClass="layouttexto"
                                     Style="width: 140px" onBlur="SetTextIn(this,0);SetDiv('div_cadastro_cliente_impressao_banco_brasil',0)" onFocus="SetTextIn(this,1);SetDiv('div_cadastro_cliente_impressao_banco_brasil',1)">
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
                             Nosso Número &nbsp &nbsp <img alt="" src="../Imagens/ihelp.png"  style="width: 20px; height: 21px; cursor:pointer" onclick="anima_informacao(1,'nossonumero')" />
                         </div>
                     </div>
                         <div class="row" style="padding: 0px; margin: 0px">
                             <div class="col" style="padding: 0px; margin: 0px">
                                
                                 <asp:TextBox ID="cs_cadastro_cliente_nosso_numero_brasil" runat="server" CssClass="layouttexto"
                                     Style="width: 270px" onBlur="SetTextIn(this,0);SetDiv('div_cadastro_cliente_impressao_banco_brasil',0)" onFocus="SetTextIn(this,1);SetDiv('div_cadastro_cliente_impressao_banco_brasil',1)">
                                 </asp:TextBox>

                             </div>
                         </div>
                     
                 </div>
                 <div class="col-md-6" style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-left: 15px; padding-top: 10px">
                     <div class="row">
                         <div class="col" style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                             Carteira &nbsp &nbsp <img alt="" src="../Imagens/ihelp.png"  style="width: 20px; height: 21px; cursor:pointer" onclick="anima_informacao(1,'carteira')" />
                         </div>
                     </div>


                     <div class="row" style="padding: 0px; margin: 0px">
                         <div class="col" style="padding: 0px; margin: 0px">
                             <asp:TextBox ID="cs_cadastro_cliente_carteira_brasil" runat="server" CssClass="layouttexto"
                                 Style="width: 100px" onBlur="SetTextIn(this,0);SetDiv('div_cadastro_cliente_impressao_banco_brasil',0)" onFocus="SetTextIn(this,1);SetDiv('div_cadastro_cliente_impressao_banco_brasil',1)">
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
                             Número do Convênio &nbsp &nbsp <img alt="" src="../Imagens/ihelp.png"  style="width: 20px; height: 21px; cursor:pointer" onclick="anima_informacao(1,'numeroconvenio')" />
                         </div>
                     </div>


                     <div class="row" style="padding: 0px; margin: 0px">
                         <div class="col" style="padding: 0px; margin: 0px">
                             <asp:TextBox ID="cs_cadastro_cliente_convenio_brasil" runat="server" CssClass="layouttexto"
                                 Style="width: 100px" onBlur="SetTextIn(this,0);SetDiv('div_cadastro_cliente_impressao_banco_brasil',0)" onFocus="SetTextIn(this,1);SetDiv('div_cadastro_cliente_impressao_banco_brasil',1)">
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
                             <textarea id="cs_cadastro_cliente_boleto_brasil" runat="server" class="layouttexto" rows="4" cols="50"
                                 style="width: 100%; padding: 0px; margin: 0px; border: 1px solid #000000;"
                                 onblur="SetTextIn(this,0);SetDiv('div_cadastro_cliente_impressao_banco_brasil',0)" onfocus="SetTextIn(this,1);SetDiv('div_cadastro_cliente_impressao_banco_brasil',1)">
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
                             Nosso Número &nbsp &nbsp <img alt="" src="../Imagens/ihelp.png"  style="width: 20px; height: 21px; cursor:pointer" onclick="anima_informacao(1,'nossonumero')" />
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





        