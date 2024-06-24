<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/telas/Topo.Master" CodeBehind="cadastrodefornecedores.aspx.vb" Inherits="VoceFazNfe.cadastrodefornecedores" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="row" style="width: 100%; height: 210px; background-color: transparent"></div>

<!--///////////////////////////////////////////////////  Container dados Principais do Produto  /////////////////////////////////////////////////////////////////////////////////////////////-->
<div class="container-fluid" style="padding: 0px; margin: 0px; width: 100%; height: 100%">
    <div class="row" style="width: 100%; height: 50px"></div>


    <div class="row" style="width: 100%; height: 100%; padding: 0px; margin: 0px; background-color: transparent">



        <div class="row" style="width: 100%; height: 100%; color: #177CC0; padding-left: 20px; padding-top: 0px; font-family: Arial; font-size: 20px; font-weight: bold; margin-left: 0px">

            <div id="i_cadastro_fornecedores_on" name="i_cadastro_fornecedores_on" class="col" align="left" style="display: block; visibility: visible; font-size: 20px; color: red; margin-right: 20px; border-bottom: none; cursor: pointer" onclick="mostra_div_informacao('div_cadastro_fornecedores','i_cadastro_fornecedores_on','i_cadastro_fornecedores_off',0)"><span style="color: #177CC0; font-family: Arial; font-size: 20px; font-weight: bold;">Dados Principais do Fornecedor</span>&nbsp;&nbsp;<i class="fa fa-toggle-on"></i></div>
            <div id="i_cadastro_fornecedores_off" name="i_cadastro_fornecedores_off" class="col" align="left" style="display: none; visibility: hidden; font-size: 20px; color: red; margin-right: 20px; border-bottom: solid; border-width: 1px; border-color: #767676; cursor: pointer" onclick="mostra_div_informacao('div_cadastro_fornecedores','i_cadastro_fornecedores_on','i_cadastro_fornecedores_off',1)"><span style="color: #177CC0; font-family: Arial; font-size: 20px; font-weight: bold;">Dados Principais do Fornecedor</span>&nbsp;&nbsp;<i class="fa fa-toggle-off"></i></div>

        </div>
        
        <div class="row" style="width: 100%; height: 20px"></div>


        <div id="div_cadastro_fornecedores" name="div_cadastro_fornecedores" style="display: block; visibility: visible; width: 100%; height: 100%; background-color: transparent; margin-left: 20px; margin-right: 20px; border: solid; border-color: #177CC0; border-width: 1px; border-radius: 10px; padding: 0px 20px 20px 20px;">
            <div class="row" style="height: 20px"></div>

            <div class="row" style="width: 100%; padding: 0px; margin: 0px; background-color: transparent; height: 100%; padding: 0px; margin: 0px">

                <!--/////////////////////////////////////////////////// Lado Esquerdo -  Código do Produto - Código do Barras /////////////////////////////////////////////////////////////////////////////////////////////-->
                <div class="col-xl-5" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

                    <div class="row" style="width: 100%; padding: 0px; margin: 0px; background-color: transparent; height: 100%; padding: 0px; margin: 0px">
                        <div class="col-md-2" style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">

                            <div class="row">
                                <div class="col" style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                    <asp:ImageButton runat="server" ID="cs_imagem_fornecedor" Height="50px" ImageUrl="~/Imagens/fornecedor.png" Width="50px" Style="cursor: pointer" />
                                </div>
                            </div>
                        </div>

                        <div class="col-md-5"
                            style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">


                            <div class="row">
                                <div class="col"
                                    style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                    Código 
                                </div>
                            </div>

                            <div class="row" style="padding: 0px; margin: 0px">
                                <div class="col" style="padding: 0px; margin: 0px">
                                    <asp:TextBox ID="cs_codigo_barras" runat="server" CssClass="layouttexto"
                                        Style="width: 80%; padding: 0px; margin: 0px"
                                        onBlur="SetTextIn(this,0);SetDiv('div_cadastro_fornecedores',0)" onFocus="SetTextIn(this,1);SetDiv('div_cadastro_fornecedores',1)">

                                    </asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <div class="col-md-5"
                            style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">


                            <div class="row">
                                <div class="col"
                                    style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                    Pessoa 
                                </div>
                            </div>

                            <div class="row" style="padding: 0px; margin: 0px">
                                <div class="col" style="padding: 0px; margin: 0px">
                                    <asp:DropDownList ID="cs_tipo_de_produto_sat" onBlur="SetTextIn(this,0);SetDiv('div_cadastro_fornecedores',0)" onFocus="SetTextIn(this,1);SetDiv('div_cadastro_fornecedores',1)" CssClass="layouttexto" runat="server">
                                        <asp:ListItem style="width: 100%;" Text="J" Value="1" />
                                        <asp:ListItem style="width: 100%;" Text="F" Value="2" />

                                    </asp:DropDownList>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>

                <!--/////////////////////////////////////////////////// Lado direito -  Razão social e Nome Fantasia /////////////////////////////////////////////////////////////////////////////////////////////-->

                <div class="col-xl-7" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

                    <div class="row" style="width: 100%; padding: 0px; margin: 0px; background-color: transparent; height: 100%; padding: 0px; margin: 0px">
                        <div class="col-md-6" style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">
                            <div class="row">
                                <div class="col"
                                    style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                    Razão Social
                                </div>
                            </div>

                            <div class="row" style="padding: 0px; margin: 0px">
                                <div class="col" style="padding: 0px; margin: 0px">
                                    <asp:TextBox ID="cs_fornecedor_razao_social" runat="server" CssClass="layouttexto"
                                        Style="width: 90%; padding: 0px; margin: 0px"
                                        onBlur="SetTextIn(this,0);SetDiv('div_cadastro_fornecedores',0)" onFocus="SetTextIn(this,1);SetDiv('div_cadastro_fornecedores',1)">

                                    </asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <div class="col-md-6"
                            style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">


                            <div class="row">
                                <div class="col"
                                    style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                    Nome fantasia 
                                </div>
                            </div>

                            <div class="row" style="padding: 0px; margin: 0px">
                                <div class="col" style="padding: 0px; margin: 0px">
                                    <asp:TextBox ID="cs_fornecedor_nome_fantasia" runat="server" CssClass="layouttexto"
                                        Style="width: 80%; padding: 0px; margin: 0px"
                                        onBlur="SetTextIn(this,0);SetDiv('div_cadastro_fornecedores',0)" onFocus="SetTextIn(this,1);SetDiv('div_cadastro_fornecedores',1)">

                                    </asp:TextBox>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!--/////////////////////////////////////////////////// Lado Esquerdo - CEP/ENDEREÇO/ NÚMERO /////////////////////////////////////////////////////////////////////////////////////////////-->

            <div class="row"
                style="width: 100%; padding: 0px; margin: 0px; background-color: transparent; height: 100%; padding: 0px; margin: 0px">


                <div class="col-xl-7"
                    style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

                    <div class="row"
                        style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

                        <div class="col-md-4"
                            style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">


                            <div class="row">
                                <div class="col"
                                    style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                    CEP
                                </div>

                            </div>

                            <div class="input-group">
                                <asp:TextBox ID="cs_fornecedor_cep_destinatario" runat="server" CssClass="layouttexto"
                                    Style="width: 150px" placeholder="00000-000" onBlur="SetTextIn(this,0);SetDiv('div_cadastro_fornecedores',0)" onFocus="SetTextIn(this,1);SetDiv('div_cadastro_fornecedores',1)">
                                </asp:TextBox>
                                <div class="input-group-append">
                                    <button class="material-symbols-outlined">
                                        <i
                                            class="fa-solid fa-magnifying-glass"></i>
                                    </button>
                                </div>
                            </div>

                        </div>


                        <div class=" col-md-6"
                            style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">
                            <div class="row">
                                <div class="col"
                                    style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                    Endereço
                                </div>
                            </div>
                            <div class="row" style="padding: 0px; margin: 0px">
                                <div class="col" style="padding: 0px; margin: 0px">
                                    <asp:TextBox ID="cs_fornecedor_endereco_destinatario" runat="server" CssClass="layouttexto"
                                        Style="width: 93%;" onBlur="SetTextIn(this,0);SetDiv('div_cadastro_fornecedores',0)" onFocus="SetTextIn(this,1);SetDiv('div_cadastro_fornecedores',1)">
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
                                    <asp:TextBox ID="cs_fornecedor_numero_destinatario" runat="server" CssClass="layouttexto"
                                        Style="width: 80px;" onBlur="SetTextIn(this,0);SetDiv('div_cadastro_fornecedores',0)" onFocus="SetTextIn(this,1);SetDiv('div_cadastro_fornecedores',1)">
                                    </asp:TextBox>
                                </div>
                            </div>
                        </div>

                    </div>

                </div>

                <!--/////////////////////////////////////////////////// Lado Direito complemento /////////////////////////////////////////////////////////////////////////////////////////////-->
                <div class="col-xl-5" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px; padding-left: 10px; padding-top: 10px">
                    <div class="row">
                        <div class="col"
                            style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                            Complemento
                        </div>
                    </div>
                    <div class="row" style="padding: 0px; margin: 0px">
                        <div class="col" style="padding: 0px; margin: 0px; background-color: transparent">
                            <asp:TextBox ID="cs_fornecedor_complemento_destinatario" runat="server" CssClass="layouttexto"
                                Style="width: 90%;" onBlur="SetTextIn(this,0);SetDiv('div_cadastro_fornecedores',0)" onFocus="SetTextIn(this,1);SetDiv('div_cadastro_fornecedores',1)">
                            </asp:TextBox>
                        </div>
                    </div>
                </div>
            </div>

            <!--/////////////////////////////////////////////////// lado esquerdo/ BAIRRO/ CODIGO DO MUNICIPIO/  /////////////////////////////////////////////////////////////////////////////////////////////-->
            <div class="row" style="height: 30px"></div>
            <div class="row">
                <div class="col-xl-5" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

                    <div class="row" style="width: 100%; padding: 0px; margin: 0px; background-color: transparent; height: 100%; padding: 0px; margin: 0px">
                        <div class="col-md-5" style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-top: 10px; padding-left: 20px;">
                            <div class="row">
                                <div class="col"
                                    style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                    Bairro
                                </div>
                            </div>
                            <div class="row" style="padding: 0px; margin: 0px">
                                <div class="col" style="padding: 0px; margin: 0px; background-color: transparent">
                                    <asp:TextBox ID="cs_fornecedor_bairro" runat="server" CssClass="layouttexto"
                                        Style="width: 50%;" onBlur="SetTextIn(this,0);SetDiv('div_cadastro_fornecedores',0)" onFocus="SetTextIn(this,1);SetDiv('div_cadastro_fornecedores',1)">
                                    </asp:TextBox>
                                </div>
                            </div>
                            </div>
                        <div class="col-md-7" style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-top: 10px; padding-left: 20px;">
                            <div class="row">
                                <div class="col"
                                    style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                    Código do Município &nbsp &nbsp
                                     <img alt="" src="../Imagens/ihelp.png" style="width: 20px; height: 21px; cursor: pointer" onclick="anima_informacao(1,'codigomunicipio')" />
                                </div>
                            </div>
                            <div class="row">
                                <div class="col">
                                    <asp:TextBox ID="cs_fornecedor_codigo_municipio" runat="server" CssClass="layouttexto"
                                        Style="width: 170px;" onBlur="SetTextIn(this,0);SetDiv('div_cadastro_fornecedores',0)" onFocus="SetTextIn(this,1);SetDiv('div_cadastro_fornecedores',1)"></asp:TextBox>
                                    <button class="material-symbols-outlined">
                                        <i
                                            class="fa-solid fa-magnifying-glass"></i>
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!--/////////////////////////////////////////////////// lado direito - Nome do municipio - UF - Estado /////////////////////////////////////////////////////////////////////////////////////////////-->
                <div class="col-xl-7" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px; padding-left: 10px; padding-top: 10px; padding-left: 20px">
                    <div class="row">
                        

                        <div class="col-md-5" style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">
                            <div class="row">
                                <div class="col"
                                    style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                    Nome do Município
                                </div>
                            </div>
                            <div class="row" style="padding: 0px; margin: 0px">
                                <div class="col" style="padding: 0px; margin: 0px; background-color: transparent">
                                    <asp:TextBox ID="cs_fornecedor_nome_municipio" runat="server" CssClass="layouttexto"
                                        Style="width: 80%;" onBlur="SetTextIn(this,0);SetDiv('div_cadastro_fornecedores',0)" onFocus="SetTextIn(this,1);SetDiv('div_cadastro_fornecedores',1)">
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
                                    <asp:DropDownList ID="cs_fornecedor_uf" onBlur="SetTextIn(this,0);SetDiv('div_cadastro_fornecedores',0)" onFocus="SetTextIn(this,1);SetDiv('div_cadastro_fornecedores',1)" CssClass="layouttexto" runat="server">
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

                        <div class="col-md-5" style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">
                            <div class="row">
                                <div class="col"
                                    style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                    Estado
                                </div>
                            </div>
                            <div class="row">
                                <div class="col">
                                    <asp:TextBox ID="cs_fornecedor_estado" runat="server" CssClass="layouttexto"
                                        Style="width: 170px;" onBlur="SetTextIn(this,0);SetDiv('div_cadastro_fornecedores',0)" onFocus="SetTextIn(this,1);SetDiv('div_cadastro_fornecedores',1)"></asp:TextBox>
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
            <!--///////////////////////////////////////////////////  Lado esquerdo - codigo do pais - nome do pais  /////////////////////////////////////////////////////////////////////////////////////////////-->
            <div class="row" style="height: 30px"></div>
            <div class="row">
                <div class="col-xl-12"
                    style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px; padding-left: 10px">

                    <div class="row"
                        style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

                        <div class="col-md-5" style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">
                            <div class="row">
                                <div class="col"
                                    style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                    Código do País (Tabela do BACEN)
                                </div>
                            </div>
                           <div class="row">
                               <div class="col">
                                   <asp:TextBox ID="cs_fornecedor_codigo_pais" runat="server" CssClass="layouttexto"
                                       Style="width: 170px;" onBlur="SetTextIn(this,0);SetDiv('div_cadastro_fornecedores',0)" onFocus="SetTextIn(this,1);SetDiv('div_cadastro_fornecedores',1)"></asp:TextBox>
                                   <button class="material-symbols-outlined">
                                       <i
                                           class="fa-solid fa-magnifying-glass"></i>
                                   </button>
                               </div>
                           </div>
                        </div>
                        <div class="col-md-7" style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-left: 10px; padding-top: 10px">
                            <div class="row">
                                <div class="col"
                                    style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                    Nome do País (Tabela do BACEN)
                                </div>
                            </div>
                            <div class="row" style="padding: 0px; margin: 0px">
                                <div class="col" style="padding: 0px; margin: 0px; background-color: transparent">
                                    <asp:TextBox ID="cs_fornecedor_nome_pais" runat="server" CssClass="layouttexto"
                                        Style="width: 100px;" onBlur="SetTextIn(this,0);SetDiv('div_cadastro_fornecedores',0)" onFocus="SetTextIn(this,1);SetDiv('div_cadastro_fornecedores',1)">
                                    </asp:TextBox>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
               
                </div>
            </div>
        </div>
                <!--///////////////////////////////////////////////////  Container - Fornecedor Documentação  /////////////////////////////////////////////////////////////////////////////////////////////-->

       <div class="container-fluid" style="padding: 0px; margin: 0px; width: 100%; height: 100%">
    <div class="row" style="width: 100%; height: 50px"></div>


    <div class="row" style="width: 100%; height: 100%; padding: 0px; margin: 0px; background-color: transparent">



        <div class="row" style="width: 100%; height: 100%; color: #177CC0; padding-left: 20px; padding-top: 0px; font-family: Arial; font-size: 20px; font-weight: bold; margin-left: 0px">

            <div id="i_cadastro_fornecedores_documentacao_on" name="i_cadastro_fornecedores_documentacao_on" class="col" align="left" style="display: block; visibility: visible; font-size: 20px; color: red; margin-right: 20px; border-bottom: none; cursor: pointer" onclick="mostra_div_informacao('div_cadastro_fornecedores_documentacao','i_cadastro_fornecedores_documentacao_on','i_cadastro_fornecedores_documentacao_off',0)"><span style="color: #177CC0; font-family: Arial; font-size: 20px; font-weight: bold;">Documentação</span>&nbsp;&nbsp;<i class="fa fa-toggle-on"></i></div>
            <div id="i_cadastro_fornecedores_documentacao_off" name="i_cadastro_fornecedores_documentacao_off" class="col" align="left" style="display: none; visibility: hidden; font-size: 20px; color: red; margin-right: 20px; border-bottom: solid; border-width: 1px; border-color: #767676; cursor: pointer" onclick="mostra_div_informacao('div_cadastro_fornecedores_documentacao','i_cadastro_fornecedores_documentacao_on','i_cadastro_fornecedores_documentacao_off',1)"><span style="color: #177CC0; font-family: Arial; font-size: 20px; font-weight: bold;">Documentação</span>&nbsp;&nbsp;<i class="fa fa-toggle-off"></i></div>

        </div>
        
        <div class="row" style="width: 100%; height: 20px"></div>


        <div id="div_cadastro_fornecedores_documentacao" name="div_cadastro_fornecedores_documentacao" style="display: block; visibility: visible; width: 100%; height: 100%; background-color: transparent; margin-left: 20px; margin-right: 20px; border: solid; border-color: #177CC0; border-width: 1px; border-radius: 10px; padding: 0px 20px 20px 20px;">
            <div class="row" style="height: 20px"></div>

            <div class="row" style="width: 100%; padding: 0px; margin: 0px; background-color: transparent; height: 100%; padding: 0px; margin: 0px">

                <!--/////////////////////////////////////////////////// Lado Esquerdo -  CNPJ - Inscrição/////////////////////////////////////////////////////////////////////////////////////////////-->
                <div class="col-xl-6" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

                    <div class="row" style="width: 100%; padding: 0px; margin: 0px; background-color: transparent; height: 100%; padding: 0px; margin: 0px">
                        <div class="col-md-6" style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">

                            <div class="row">
                                <div class="col"
                                    style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                    CNPJ
                                </div>
                            </div>

                            <div class="row" style="padding: 0px; margin: 0px">
                                <div class="col" style="padding: 0px; margin: 0px">
                                    <asp:TextBox ID="TextBox10" runat="server" CssClass="layouttexto"
                                        Style="width: 80%; padding: 0px; margin: 0px"
                                        onBlur="SetTextIn(this,0);SetDiv('div_cadastro_fornecedores_documentacao',0)" onFocus="SetTextIn(this,1);SetDiv('div_cadastro_fornecedores_documentacao',1)">

                                    </asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <div class="col-md-6"
                            style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">


                            <div class="row">
                                <div class="col"
                                    style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                    Inscrição 
                                </div>
                            </div>

                            <div class="row" style="padding: 0px; margin: 0px">
                                <div class="col" style="padding: 0px; margin: 0px">
                                    <asp:TextBox ID="TextBox8" runat="server" CssClass="layouttexto"
                                        Style="width: 80%; padding: 0px; margin: 0px"
                                        onBlur="SetTextIn(this,0);SetDiv('div_cadastro_fornecedores_documentacao',0)" onFocus="SetTextIn(this,1);SetDiv('div_cadastro_fornecedores_documentacao',1)">

                                    </asp:TextBox>
                                </div>
                            </div>
                        </div>

                      

                    </div>
                </div>

                <!--/////////////////////////////////////////////////// Inscrição SUFRAMA /////////////////////////////////////////////////////////////////////////////////////////////-->

                <div class="col-xl-6" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

                    <div class="row" style="width: 100%; padding: 0px; margin: 0px; background-color: transparent; height: 100%; padding: 0px; margin: 0px">
                        <div class="col-md-6" style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">
                            <div class="row">
                                <div class="col"
                                    style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                    Inscrição SUFRAMA
                                </div>
                            </div>

                            <div class="row" style="padding: 0px; margin: 0px">
                                <div class="col" style="padding: 0px; margin: 0px">
                                    <asp:TextBox ID="TextBox9" runat="server" CssClass="layouttexto"
                                        Style="width: 90%; padding: 0px; margin: 0px"
                                        onBlur="SetTextIn(this,0);SetDiv('div_cadastro_fornecedores_documentacao',0)" onFocus="SetTextIn(this,1);SetDiv('div_cadastro_fornecedores_documentacao',1)">

                                    </asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <div class="col-md-6" style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">

                            <div class="row">
                                <div class="col" style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                    <asp:ImageButton runat="server" Height="50px" Widht="70px" ImageUrl="~/Imagens/sefaz.jpg" Width="50px" Style="cursor: pointer" />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            </div>
        </div>
    </div>
     <!--///////////////////////////////////////////////////  Container - Fone / Contato   /////////////////////////////////////////////////////////////////////////////////////////////-->
           <div class="container-fluid" style="padding: 0px; margin: 0px; width: 100%; height: 100%">
<div class="row" style="width: 100%; height: 50px"></div>


<div class="row" style="width: 100%; height: 100%; padding: 0px; margin: 0px; background-color: transparent">



    <div class="row" style="width: 100%; height: 100%; color: #177CC0; padding-left: 20px; padding-top: 0px; font-family: Arial; font-size: 20px; font-weight: bold; margin-left: 0px">

        <div id="i_cadastro_fornecedores_fone_contato_on" name="i_cadastro_fornecedores_fone_contato_on" class="col" align="left" style="display: block; visibility: visible; font-size: 20px; color: red; margin-right: 20px; border-bottom: none; cursor: pointer" onclick="mostra_div_informacao('div_cadastro_fornecedores_fone_contato','i_cadastro_fornecedores_fone_contato_on','i_cadastro_fornecedores_fone_contato_off',0)"><span style="color: #177CC0; font-family: Arial; font-size: 20px; font-weight: bold;">Fone / Contato</span>&nbsp;&nbsp;<i class="fa fa-toggle-on"></i></div>
        <div id="i_cadastro_fornecedores_fone_contato_off" name="i_cadastro_fornecedores_fone_contato_off" class="col" align="left" style="display: none; visibility: hidden; font-size: 20px; color: red; margin-right: 20px; border-bottom: solid; border-width: 1px; border-color: #767676; cursor: pointer" onclick="mostra_div_informacao('div_cadastro_fornecedores_fone_contato','i_cadastro_fornecedores_fone_contato_on','i_cadastro_fornecedores_fone_contato_off',1)"><span style="color: #177CC0; font-family: Arial; font-size: 20px; font-weight: bold;">Fone / Contato</span>&nbsp;&nbsp;<i class="fa fa-toggle-off"></i></div>

    </div>
    
    <div class="row" style="width: 100%; height: 20px"></div>


    <div id="div_cadastro_fornecedores_fone_contato" name="div_cadastro_fornecedores_fone_contato" style="display: block; visibility: visible; width: 100%; height: 100%; background-color: transparent; margin-left: 20px; margin-right: 20px; border: solid; border-color: #177CC0; border-width: 1px; border-radius: 10px; padding: 0px 20px 20px 20px;">
        <div class="row" style="height: 20px"></div>

        <div class="row" style="width: 100%; padding: 0px; margin: 0px; background-color: transparent; height: 100%; padding: 0px; margin: 0px">

            <!--/////////////////////////////////////////////////// Lado Esquerdo -  Telefone - Ramal - Fax /////////////////////////////////////////////////////////////////////////////////////////////-->
            <div class="col-xl-7" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

                <div class="row" style="width: 100%; padding: 0px; margin: 0px; background-color: transparent; height: 100%; padding: 0px; margin: 0px">
                    <div class="col-md-4" style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">

                        <div class="row">
                            <div class="col"
                                style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                Telefone
                            </div>
                        </div>

                        <div class="row" style="padding: 0px; margin: 0px">
                            <div class="col" style="padding: 0px; margin: 0px">
                                <asp:TextBox ID="TextBox11" runat="server" CssClass="layouttexto"
                                    Style="width: 80%; padding: 0px; margin: 0px"
                                    onBlur="SetTextIn(this,0);SetDiv('div_cadastro_fornecedores_fone_contato',0)" onFocus="SetTextIn(this,1);SetDiv('div_cadastro_fornecedores_fone_contato',1)">

                                </asp:TextBox>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-4"
                        style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">


                        <div class="row">
                            <div class="col"
                                style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                Ramal 
                            </div>
                        </div>

                        <div class="row" style="padding: 0px; margin: 0px">
                            <div class="col" style="padding: 0px; margin: 0px">
                                <asp:TextBox ID="TextBox12" runat="server" CssClass="layouttexto"
                                    Style="width: 200px; padding: 0px; margin: 0px"
                                    onBlur="SetTextIn(this,0);SetDiv('div_cadastro_fornecedores_fone_contato',0)" onFocus="SetTextIn(this,1);SetDiv('div_cadastro_fornecedores_fone_contato',1)">

                                </asp:TextBox>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-4"
                        style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">


                        <div class="row">
                            <div class="col"
                                style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                FAX 
                            </div>
                        </div>

                        <div class="row" style="padding: 0px; margin: 0px">
                            <div class="col" style="padding: 0px; margin: 0px">
                                <asp:TextBox ID="TextBox14" runat="server" CssClass="layouttexto"
                                    Style="width: 200px; padding: 0px; margin: 0px"
                                    onBlur="SetTextIn(this,0);SetDiv('div_cadastro_fornecedores_fone_contato',0)" onFocus="SetTextIn(this,1);SetDiv('div_cadastro_fornecedores_documentacao',1)">

                                </asp:TextBox>
                            </div>
                        </div>
                    </div>
                  

                </div>
            </div>

            <!--/////////////////////////////////////////////////// lado direito - Celular - Contato /////////////////////////////////////////////////////////////////////////////////////////////-->

            <div class="col-xl-5" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

                <div class="row" style="width: 100%; padding: 0px; margin: 0px; background-color: transparent; height: 100%; padding: 0px; margin: 0px">
                    <div class="col-md-5" style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">
                        <div class="row">
                            <div class="col"
                                style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                Celular
                            </div>
                        </div>

                        <div class="row" style="padding: 0px; margin: 0px">
                            <div class="col" style="padding: 0px; margin: 0px">
                                <asp:TextBox ID="TextBox13" runat="server" CssClass="layouttexto"
                                    Style="width: 90%; padding: 0px; margin: 0px"
                                    onBlur="SetTextIn(this,0);SetDiv('div_cadastro_fornecedores_fone_contato',0)" onFocus="SetTextIn(this,1);SetDiv('div_cadastro_fornecedores_fone_contato',1)">

                                </asp:TextBox>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-7" style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">

                        <div class="row">
                            <div class="col"
                                style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                Contato
                            </div>
                        </div>

                        <div class="row" style="padding: 0px; margin: 0px">
                            <div class="col" style="padding: 0px; margin: 0px">
                                <asp:TextBox ID="TextBox15" runat="server" CssClass="layouttexto"
                                    Style="width: 90%; padding: 0px; margin: 0px"
                                    onBlur="SetTextIn(this,0);SetDiv('div_cadastro_fornecedores_fone_contato',0)" onFocus="SetTextIn(this,1);SetDiv('div_cadastro_fornecedores_fone_contato',1)">

                                </asp:TextBox>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
         <!--/////////////////////////////////////////////////// lado esquerdo E-mail - Site /////////////////////////////////////////////////////////////////////////////////////////////-->
        <div class="row" style="width: 100%; padding: 0px; margin: 0px; background-color: transparent; height: 100%; padding: 0px; margin: 0px">
        <div class="col-xl-7" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

            <div class="row" style="width: 100%; padding: 0px; margin: 0px; background-color: transparent; height: 100%; padding: 0px; margin: 0px">
                <div class="col-md-6" style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">

                    <div class="row">
                        <div class="col"
                            style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                            E-mail
                        </div>
                    </div>

                    <div class="row" style="padding: 0px; margin: 0px">
                        <div class="col" style="padding: 0px; margin: 0px">
                            <asp:TextBox ID="TextBox16" runat="server" CssClass="layouttexto"
                                Style="width: 80%; padding: 0px; margin: 0px"
                                onBlur="SetTextIn(this,0);SetDiv('div_cadastro_fornecedores_fone_contato',0)" onFocus="SetTextIn(this,1);SetDiv('div_cadastro_fornecedores_fone_contato',1)">

                            </asp:TextBox>
                        </div>
                    </div>
                </div>

                <div class="col-md-6" style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">

                    <div class="row">
                        <div class="col"
                            style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                           Site
                        </div>
                    </div>

                    <div class="row" style="padding: 0px; margin: 0px">
                        <div class="col" style="padding: 0px; margin: 0px">
                            <asp:TextBox ID="TextBox17" runat="server" CssClass="layouttexto"
                                Style="width: 75%; padding: 0px; margin: 0px"
                                onBlur="SetTextIn(this,0);SetDiv('div_cadastro_fornecedores_fone_contato',0)" onFocus="SetTextIn(this,1);SetDiv('div_cadastro_fornecedores_fone_contato',1)">

                            </asp:TextBox>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--/////////////////////////////////////////////////// lado direito - Email para envio de NF-e /////////////////////////////////////////////////////////////////////////////////////////////-->
            <div class="col-xl-5" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

                <div class="row" style="width: 100%; padding: 0px; margin: 0px; background-color: transparent; height: 100%; padding: 0px; margin: 0px">
                    <div class="col-md" style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">

                        <div class="row">
                            <div class="col"
                                style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                E-mail para envio da NF-e
                            </div>
                        </div>

                        <div class="row" style="padding: 0px; margin: 0px">
                            <div class="col" style="padding: 0px; margin: 0px">
                                <asp:TextBox ID="TextBox18" runat="server" CssClass="layouttexto"
                                    Style="width: 80%; padding: 0px; margin: 0px"
                                    onBlur="SetTextIn(this,0);SetDiv('div_cadastro_fornecedores_fone_contato',0)" onFocus="SetTextIn(this,1);SetDiv('div_cadastro_fornecedores_fone_contato',1)">

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
    <!--///////////////////////////////////////////////////  Container - Fornecedor Documentação  /////////////////////////////////////////////////////////////////////////////////////////////-->

    <div class="container-fluid" style="padding: 0px; margin: 0px; width: 100%; height: 100%">
        <div class="row" style="width: 100%; height: 50px"></div>


        <div class="row" style="width: 100%; height: 100%; padding: 0px; margin: 0px; background-color: transparent">



            <div class="row" style="width: 100%; height: 100%; color: #177CC0; padding-left: 20px; padding-top: 0px; font-family: Arial; font-size: 20px; font-weight: bold; margin-left: 0px">

                <div id="i_cadastro_fornecedores_observacoes_gerais_on" name="i_cadastro_fornecedores_observacoes_gerais_on" class="col" align="left" style="display: block; visibility: hidden; font-size: 20px; color: red; margin-right: 20px; border-bottom: none; cursor: pointer" onclick="mostra_div_informacao('div_cadastro_fornecedores_observacoes_gerais','i_cadastro_fornecedores_observacoes_gerais_on','i_cadastro_fornecedores_observacoes_gerais_off',0)"><span style="color: #177CC0; font-family: Arial; font-size: 20px; font-weight: bold;">Observações Gerais</span>&nbsp;&nbsp;<i class="fa fa-toggle-on"></i></div>
                <div id="i_cadastro_fornecedores_observacoes_gerais_off" name="i_cadastro_fornecedores_observacoes_gerais_off" class="col" align="left" style="display: none; visibility: visible; font-size: 20px; color: red; margin-right: 20px; border-bottom: solid; border-width: 1px; border-color: #767676; cursor: pointer" onclick="mostra_div_informacao('div_cadastro_fornecedores_observacoes_gerais','i_cadastro_fornecedores_observacoes_gerais_on','i_cadastro_fornecedores_observacoes_gerais_off',1)"><span style="color: #177CC0; font-family: Arial; font-size: 20px; font-weight: bold;">Observações Gerais</span>&nbsp;&nbsp;<i class="fa fa-toggle-off"></i></div>

            </div>

            <div class="row" style="width: 100%; height: 20px"></div>


            <div id="div_cadastro_fornecedores_observacoes_gerais" name="div_cadastro_fornecedores_observacoes_gerais" style="display: block; visibility: hidden; width: 100%; height: 100%; background-color: transparent; margin-left: 20px; margin-right: 20px; border: solid; border-color: #177CC0; border-width: 1px; border-radius: 10px; padding: 0px 20px 20px 20px;">
                <div class="row" style="height: 20px"></div>

                <div class="row" style="width: 100%; padding: 0px; margin: 0px; background-color: transparent; height: 100%; padding: 0px; margin: 0px">

                    <!--/////////////////////////////////////////////////// Lado Esquerdo -  Código do Produto - Código do Barras /////////////////////////////////////////////////////////////////////////////////////////////-->
                    <div class="col-xl-6" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

                        <div class="row" style="width: 100%; padding: 0px; margin: 0px; background-color: transparent; height: 100%; padding: 0px; margin: 0px">
                            <div class="col-md-auto" style="width: 150%; height: 100%; background-color: transparent; padding: 10px;">

                                <div class="row">
                                    <div class="col"
                                        style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                        Obersvações Gerais
                                    </div>
                                </div>

                                <div class="row" style="padding: 0px; margin: 0px">
                                    <div class="col" style="padding: 0px; margin: 0px">
                                        <asp:TextBox ID="TextBox19" runat="server" CssClass="layouttexto"
                                            Style="width: 100%; padding: 0px; margin: 0px"
                                            onBlur="SetTextIn(this,0);SetDiv('div_cadastro_fornecedores_observacoes_gerais',0)" onFocus="SetTextIn(this,1);SetDiv('div_cadastro_fornecedores_observacoes_gerais',1)">

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
</asp:Content>
