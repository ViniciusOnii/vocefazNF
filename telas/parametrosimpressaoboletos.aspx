<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/telas/Topo.Master" CodeBehind="parametrosimpressaoboletos.aspx.vb" Inherits="VoceFazNfe.parametrosimpressaoboletos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    

    <div class="row" style="width: 100%; height: 210px; background-color: transparent"></div>

      <!--/////////////////////////////////////////////////// Container  - Complemento  /////////////////////////////////////////////////////////////////////////////////////////////-->


  <div class="container-fluid" style="padding: 0px; margin: 0px; width: 97%; height: 100%">


      <div class="row" style="width: 100%; height: 50px"></div>

      <div class="row" style="width: 100%; height: 100%; display: block; padding-left: 20px; padding-top: 0px; margin-left: 0px;">

          <div id="i_cadastro_cliente_dados_complemento_on" name="i_cadastro_cliente_dados_complemento_on" class="col" align="left" style="display: block; visibility: visible; font-size: 20px; color: red; margin-right: 20px; border-bottom: none; cursor: pointer" onclick="mostra_div_informacao('div_cadastro_cliente_dados_complemento','i_cadastro_cliente_dados_complemento_on','i_cadastro_cliente_dados_complemento_off',0)"><span style="color: #177CC0; font-family: Arial; font-size: 20px; font-weight: bold;">Complemento</span>&nbsp;&nbsp;<i class="fa fa-toggle-on"></i></div>
          <div id="i_cadastro_cliente_dados_complemento_off" name="i_cadastro_cliente_dados_complemento_off" class="col" align="left" style="display: none; visibility: hidden; font-size: 20px; color: red; margin-right: 20px; border-bottom: solid; border-color: #767676; border-width: 1px; cursor: pointer" onclick="mostra_div_informacao('div_cadastro_cliente_dados_complemento','i_cadastro_cliente_dados_complemento_on','i_cadastro_cliente_dados_complemento_off',1)"><span style="color: #177CC0; font-family: Arial; font-size: 20px; font-weight: bold;">Complemento</span>&nbsp;&nbsp;<i class="fa fa-toggle-off"></i></div>


      </div>

             <div class="row" style="width: 100%; height: 20px"></div>

   <!--/////////////////////////////////////////////////// Div com os dados Complemento /////////////////////////////////////////////////////////////////////////////////////////////-->
   <div id="div_cadastro_cliente_dados_complemento" name="div_cadastro_cliente_dados_complemento"
       style="display: block; visibility: visible; width: 100%; height: 100%; background-color: transparent; margin-left: 20px; margin-right: 20px; border: solid; border-color: #177CC0; border-width: 1px; border-radius: 10px; padding: 0px 20px 20px 20px;">



       <div class="row"
           style="width: 100%; padding: 0px; margin: 0px; background-color: transparent; height: 100%; padding: 0px; margin: 0px">

           <!--/////////////////////////////////////////////////// lado esquerdo vendendor - Agencia - Conta /////////////////////////////////////////////////////////////////////////////////////////////-->
           <div class="col-xl-7" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px; padding-left: 10px">

               <div class="row" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">



                   <div class="col-md-6" style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-left: 15px; padding-top: 10px">
                       <div class="row">
                           <div class="col" style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                               Agência
                           </div>
                       </div>
              
                           <div class="row" style="padding: 0px; margin: 0px">
                               <div class="col" style="padding: 0px; margin: 0px">                                  
                                   <asp:TextBox ID="cs_cadastro_cliente_vendedor1" runat="server" CssClass="layouttexto"
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
                                   <asp:TextBox ID="cs_cadastro_cliente_regiao1" runat="server" CssClass="layouttexto"
                                       Style="width: 140px" onBlur="SetTextIn(this,0);SetDiv('div_cadastro_cliente_dados_complemento',0)" onFocus="SetTextIn(this,1);SetDiv('div_cadastro_cliente_dados_complemento',1)">
                                   </asp:TextBox>                                   
                               </div>
                           </div>
                       
                   </div>

               </div>
           </div>
           <!--/////////////////////////////////////////////////// Lado Direito - Código do Cliente - Carteira /////////////////////////////////////////////////////////////////////////////////////////////-->
           <div class="col-xl-5" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px; padding-left: 10px">

               <div class="row" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">



                   <div class="col-md-6" style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-left: 15px; padding-top: 10px">
                       <div class="row">
                           <div class="col" style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                               Nosso Número
                           </div>
                       </div>
                           <div class="row" style="padding: 0px; margin: 0px">
                               <div class="col" style="padding: 0px; margin: 0px">
                                  
                                   <asp:TextBox ID="cs_cadastro_cliente_familia_cliente1" runat="server" CssClass="layouttexto"
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
                               <asp:TextBox ID="cs_cliente_complemente_data_nascimento" runat="server" CssClass="layouttexto"
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
           <div class="col-xl-7" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

               <div class="row" style="width: 100%; padding: 0px; margin: 0px; background-color: transparent; height: 100%; padding: 0px; margin: 0px">
                   <div class="col-md-6" style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">

                       <div class="row">
                           <div class="col"
                               style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                               Cód. do Cliente junto ao Bradesco
                           </div>
                       </div>
                           <div class="row" style="padding: 0px; margin: 0px">
                               <div class="col" style="padding: 0px; margin: 0px">

                                   <asp:DropDownList ID="cs_pessoa_cliente" onBlur="SetTextIn(this,0);SetDiv('div_cadastro_clientes',0)" onFocus="SetTextIn(this,1);SetDiv('div_cadastro_clientes',1)" CssClass="layouttexto" runat="server">
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
                               Número Squencial de Remessa  
                           </div>
                       </div>

                       <div class="row" style="padding: 0px; margin: 0px">
                           <div class="col" style="padding: 0px; margin: 0px">
                               <asp:TextBox ID="cs_cadastro_cliente_email" runat="server" CssClass="layouttexto"
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
                   <div class="col-md-7" style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">

                       <div class="row">
                           <div class="col"
                               style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                               Parâmetro de Multa (CNAB)
                           </div>
                       </div>

                       <div class="row" style="padding: 0px; margin: 0px">
                           <div class="col" style="padding: 0px; margin: 0px">
                               <asp:TextBox ID="cs_cadastro_cliente_envio_nfe" runat="server" CssClass="layouttexto"
                                   Style="width: 80%; padding: 0px; margin: 0px"
                                   onBlur="SetTextIn(this,0);SetDiv('div_cadastro_cliente_dados_complemento',0)" onFocus="SetTextIn(this,1);SetDiv('div_cadastro_cliente_dados_complemento',1)">

                               </asp:TextBox>
                           </div>
                       </div>
                   </div>

                   <div class="col-md-5" style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">

                       <div class="row">
                           <div class="col"
                               style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                               & de Multa (CNAB)
                           </div>
                       </div>

                       <div class="row" style="padding: 0px; margin: 0px">
                           <div class="col" style="padding: 0px; margin: 0px">
                               <asp:DropDownList ID="DropDownList1" onBlur="SetTextIn(this,0);SetDiv('div_cadastro_clientes',0)" onFocus="SetTextIn(this,1);SetDiv('div_cadastro_clientes',1)" CssClass="layouttexto" runat="server">
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
        <!--/////////////////////////////////////////////////// lado esquerdo E-mail - Site /////////////////////////////////////////////////////////////////////////////////////////////-->
<div class="row" style="height: 30px"></div>
<div class="row" style="width: 100%; padding: 0px; margin: 0px; background-color: transparent; height: 100%; padding: 0px; margin: 0px; padding-left: 10px"">
    <div class="col-xl-7" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

        <div class="row" style="width: 100%; padding: 0px; margin: 0px; background-color: transparent; height: 100%; padding: 0px; margin: 0px">
            <div class="col-md-6" style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">

                <div class="row">
                    <div class="col"
                        style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                        Instrução(CNAB)
                    </div>
                </div>             
                    <div class="row" style="padding: 0px; margin: 0px">
                        <div class="col" style="padding: 0px; margin: 0px">
                            <asp:TextBox ID="TextBox1" runat="server" CssClass="layouttexto"
                                Style="width: 10%;" onBlur="SetTextIn(this,0);SetDiv('div_cadastro_cliente_dados_complemento',0)" onFocus="SetTextIn(this,1);SetDiv('div_cadastro_cliente_dados_complemento',1)">
                            </asp:TextBox>

                            <asp:TextBox ID="TextBox2" runat="server" CssClass="layouttexto"
                                Style="width: 270px" onBlur="SetTextIn(this,0);SetDiv('div_cadastro_cliente_dados_complemento',0)" onFocus="SetTextIn(this,1);SetDiv('div_cadastro_cliente_dados_complemento',1)">
                            </asp:TextBox>                       
                        </div>
                    </div>               
            </div>

            <div class="col-md-6" style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">

                <div class="row">
                    <div class="col"
                        style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                        Dias De Protesto
                    </div>
                </div>

                <div class="row" style="padding: 0px; margin: 0px">
                    <div class="col" style="padding: 0px; margin: 0px">
                        <asp:TextBox ID="TextBox3" runat="server" CssClass="layouttexto"
                            Style="width: 75%; padding: 0px; margin: 0px"
                            onBlur="SetTextIn(this,0);SetDiv('div_cadastro_cliente_dados_complemento',0)" onFocus="SetTextIn(this,1);SetDiv('div_cadastro_cliente_dados_complemento',1)">

                        </asp:TextBox>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--/////////////////////////////////////////////////// lado direito - Email para envio de NF-e /////////////////////////////////////////////////////////////////////////////////////////////-->
    <div class="col-xl-5" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

        <div class="row" style="width: 100%; padding: 0px; margin: 0px; background-color: transparent; height: 100%; padding: 0px; margin: 0px">
            <div class="col-md-6" style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">

                <div class="row">
                    <div class="col-md-6"
                        style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                        % de Juros Diario (CNAB)
                    </div>
                </div>

                <div class="row" style="padding: 0px; margin: 0px">
                    <div class="col" style="padding: 0px; margin: 0px">
                        <textarea id="myTextArea" runat="server" class="layouttexto" rows="4" cols="50"
                            style="width: 70%; padding: 0px; margin: 0px; border: 1px solid #000000;"
                            onblur="SetTextIn(this,0);SetDiv('div_cadastro_cliente_documentacao',0)" onfocus="SetTextIn(this,1);SetDiv('div_cadastro_cliente_documentacao',1)">
                    </textarea>
                    </div>
                </div>
            </div>

            <div class="col-md-6" style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">

                <div class="row">
                    <div class="col-md-6"
                        style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                        Instruções que serão impressas no boleto
                    </div>
                </div>

                <div class="row" style="padding: 0px; margin: 0px">
                    <div class="col" style="padding: 0px; margin: 0px">
                        <textarea id="Textarea1" runat="server" class="layouttexto" rows="4" cols="50"
                            style="width: 60%; padding: 0px; margin: 0px; border: 1px solid #000000;"
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





        