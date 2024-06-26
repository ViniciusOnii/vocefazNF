<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/telas/Topo.Master" CodeBehind="cadastroclientes.aspx.vb" Inherits="VoceFazNfe.cadastroclientes" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">



    <div class="row" style="width: 100%; height: 210px; background-color: transparent"></div>

    <!--///////////////////////////////////////////////////  Container dados Principais do Produto  /////////////////////////////////////////////////////////////////////////////////////////////-->
    <div class="container-fluid" style="padding: 0px; margin: 0px; width: 100%; height: 100%">
        <div class="row" style="width: 100%; height: 50px"></div>


        <div class="row" style="width: 100%; height: 100%; padding: 0px; margin: 0px; background-color: transparent">



            <div class="row" style="width: 100%; height: 100%; color: #177CC0; padding-left: 20px; padding-top: 0px; font-family: Arial; font-size: 20px; font-weight: bold; margin-left: 0px">

                <div id="i_cadastro_clientes_on" name="i_cadastro_clientes_on" class="col" align="left" style="display: block; visibility: visible; font-size: 20px; color: red; margin-right: 20px; border-bottom: none; cursor: pointer" onclick="mostra_div_informacao('div_cadastro_clientes','i_cadastro_clientes_on','i_cadastro_clientes_off',0)"><span style="color: #177CC0; font-family: Arial; font-size: 20px; font-weight: bold;">Dados Principais do Cliente</span>&nbsp;&nbsp;<i class="fa fa-toggle-on"></i></div>
                <div id="i_cadastro_clientes_off" name="i_cadastro_clientes_off" class="col" align="left" style="display: none; visibility: hidden; font-size: 20px; color: red; margin-right: 20px; border-bottom: solid; border-width: 1px; border-color: #767676; cursor: pointer" onclick="mostra_div_informacao('div_cadastro_clientes','i_cadastro_clientes_on','i_cadastro_clientes_off',1)"><span style="color: #177CC0; font-family: Arial; font-size: 20px; font-weight: bold;">Dados Principais do Cliente</span>&nbsp;&nbsp;<i class="fa fa-toggle-off"></i></div>

            </div>

            <div class="row" style="width: 100%; height: 20px"></div>


            <div id="div_cadastro_clientes" name="div_cadastro_clientes" style="display: block; visibility: visible; width: 100%; height: 100%; background-color: transparent; margin-left: 20px; margin-right: 20px; border: solid; border-color: #177CC0; border-width: 1px; border-radius: 10px; padding: 0px 20px 20px 20px;">
                <div class="row" style="height: 20px"></div>

                <div class="row" style="width: 100%; padding: 0px; margin: 0px; background-color: transparent; height: 100%; padding: 0px; margin: 0px">

                    <!--/////////////////////////////////////////////////// Lado Esquerdo -  Código do Produto - Código do Barras /////////////////////////////////////////////////////////////////////////////////////////////-->
                    <div class="col-xl-5" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

                        <div class="row" style="width: 100%; padding: 0px; margin: 0px; background-color: transparent; height: 100%; padding: 0px; margin: 0px">
                            <div class="col-md-2" style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">

                                <div class="row">
                                    <div class="col" style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                        <asp:ImageButton runat="server" ID="cs_imagem_cliente" Height="50px" ImageUrl="~/Imagens/fornecedor.png" Width="50px" Style="cursor: pointer" />
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
                                        <asp:TextBox ID="cs_codigo_cliente" runat="server" CssClass="layouttexto"
                                            Style="width: 80%; padding: 0px; margin: 0px"
                                            onBlur="SetTextIn(this,0);SetDiv('div_cadastro_clientes',0)" onFocus="SetTextIn(this,1);SetDiv('div_cadastro_clientes',1)">

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
                                        <asp:DropDownList ID="cs_pessoa_cliente" onBlur="SetTextIn(this,0);SetDiv('div_cadastro_clientes',0)" onFocus="SetTextIn(this,1);SetDiv('div_cadastro_clientes',1)" CssClass="layouttexto" runat="server">
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
                            <div class="col-md-5" style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">
                                <div class="row">
                                    <div class="col"
                                        style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                        Razão Social
                                    </div>
                                </div>

                                <div class="row" style="padding: 0px; margin: 0px">
                                    <div class="col" style="padding: 0px; margin: 0px">
                                        <asp:TextBox ID="cs_razao_social_cliente" runat="server" CssClass="layouttexto"
                                            Style="width: 90%; padding: 0px; margin: 0px"
                                            onBlur="SetTextIn(this,0);SetDiv('div_cadastro_clientes',0)" onFocus="SetTextIn(this,1);SetDiv('div_cadastro_clientes',1)">

                                        </asp:TextBox>
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-5"
                                style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">


                                <div class="row">
                                    <div class="col"
                                        style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                        Nome fantasia 
                                    </div>
                                </div>

                                <div class="row" style="padding: 0px; margin: 0px">
                                    <div class="col" style="padding: 0px; margin: 0px">
                                        <asp:TextBox ID="cs_nome_fantasia_cliente" runat="server" CssClass="layouttexto"
                                            Style="width: 80%; padding: 0px; margin: 0px"
                                            onBlur="SetTextIn(this,0);SetDiv('div_cadastro_clientes',0)" onFocus="SetTextIn(this,1);SetDiv('div_cadastro_clientes',1)">

                                        </asp:TextBox>
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-2" style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">

                                <div class="row">
                                    <div class="col" style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                        <asp:ImageButton runat="server" ID="cs_sefaz_cliente" Height="50px" Widht="70px" ImageUrl="~/Imagens/sefaz.jpg" Width="50px" Style="cursor: pointer" />
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!--/////////////////////////////////////////////////// Container2 - Endereço do Destinatário da NF-e  /////////////////////////////////////////////////////////////////////////////////////////////-->


    <div class="container-fluid" style="padding: 0px; margin: 0px; width: 97%; height: 100%">


        <div class="row" style="width: 100%; height: 50px"></div>

        <div class="row" style="width: 100%; height: 100%; display: block; padding-left: 20px; padding-top: 0px; margin-left: 0px;">

            <div id="i_endereco_faturamento_on" name="i_endereco_faturamento_on" class="col" align="left" style="display: none; visibility: hidden; font-size: 20px; color: red; margin-right: 20px; border-bottom: none; cursor: pointer" onclick="mostra_div_informacao('div_endereco_faturamento','i_endereco_faturamento_on','i_endereco_faturamento_off',0)"><span style="color: #177CC0; font-family: Arial; font-size: 20px; font-weight: bold;">Endereço de Faturamento</span>&nbsp;&nbsp;<i class="fa fa-toggle-on"></i></div>
            <div id="i_endereco_faturamento_off" name="i_endereco_faturamento_off" class="col" align="left" style="display: block; visibility: visible; font-size: 20px; color: red; margin-right: 20px; border-bottom: solid; border-color: #767676; border-width: 1px; cursor: pointer" onclick="mostra_div_informacao('div_endereco_faturamento','i_endereco_faturamento_on','i_endereco_faturamento_off',1)"><span style="color: #177CC0; font-family: Arial; font-size: 20px; font-weight: bold;">Endereço de Faturamento</span>&nbsp;&nbsp;<i class="fa fa-toggle-off"></i></div>


        </div>

        <div class="row" style="width: 100%; height: 20px"></div>

        <!--/////////////////////////////////////////////////// Div com os dados endereço Faturamento /////////////////////////////////////////////////////////////////////////////////////////////-->
        <div id="div_endereco_faturamento" name="div_endereco_faturamento"
            style="display: none; visibility: hidden; width: 100%; height: 100%; background-color: transparent; margin-left: 20px; margin-right: 20px; border: solid; border-color: #177CC0; border-width: 1px; border-radius: 10px; padding: 0px 20px 20px 20px;">



            <div class="row"
                style="width: 100%; padding: 0px; margin: 0px; background-color: transparent; height: 100%; padding: 0px; margin: 0px">

                <!--/////////////////////////////////////////////////// LINHA LADO DIREITO - CEP/ENDEREÇO/ NÚMERO /////////////////////////////////////////////////////////////////////////////////////////////-->
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
                                <asp:TextBox ID="cs_endereco_faturamento_cep" runat="server" CssClass="layouttexto"
                                    Style="width: 150px" placeholder="00000-000" onBlur="SetTextIn(this,0);SetDiv('div_dados_endereco_do_destinatario',0)" onFocus="SetTextIn(this,1);SetDiv('div_dados_endereco_do_destinatario',1)">
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
                                    <asp:TextBox ID="cs_endereco_faturamento" runat="server" CssClass="layouttexto"
                                        Style="width: 93%;" onBlur="SetTextIn(this,0);SetDiv('div_dados_endereco_do_destinatario',0)" onFocus="SetTextIn(this,1);SetDiv('div_dados_endereco_do_destinatario',1)">
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
                                    <asp:TextBox ID="cs_endereco_faturamento_numero" runat="server" CssClass="layouttexto"
                                        Style="width: 80px;" onBlur="SetTextIn(this,0);SetDiv('div_dados_endereco_do_destinatario',0)" onFocus="SetTextIn(this,1);SetDiv('div_dados_endereco_do_destinatario',1)">
                                    </asp:TextBox>
                                </div>
                            </div>
                        </div>

                    </div>

                </div>

                <!--/////////////////////////////////////////////////// LINHA LADO DIREITO COMPLEMENTO /////////////////////////////////////////////////////////////////////////////////////////////-->
                <div class="col-xl-5" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px; padding-left: 10px; padding-top: 10px">
                    <div class="row">
                        <div class="col"
                            style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                            Complemento
                        </div>
                    </div>
                    <div class="row" style="padding: 0px; margin: 0px">
                        <div class="col" style="padding: 0px; margin: 0px; background-color: transparent">
                            <asp:TextBox ID="cs_endereco_faturamento_complemento" runat="server" CssClass="layouttexto"
                                Style="width: 100%;" onBlur="SetTextIn(this,0);SetDiv('div_dados_endereco_do_destinatario',0)" onFocus="SetTextIn(this,1);SetDiv('div_dados_endereco_do_destinatario',1)">
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
                                    <asp:TextBox ID="cs_bairro_destinatario" runat="server" CssClass="layouttexto"
                                        Style="width: 260px;" onBlur="SetTextIn(this,0);SetDiv('div_dados_endereco_do_destinatario',0)" onFocus="SetTextIn(this,1);SetDiv('div_dados_endereco_do_destinatario',1)">
                                    </asp:TextBox>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
                <!--/////////////////////////////////////////////////// LINHA LADO DIREITO NOME PAIS /////////////////////////////////////////////////////////////////////////////////////////////-->
                <div class="col-xl-9" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px; padding-left: 10px; padding-top: 10px; padding-left: 20px">
                    <div class="row">
                        <div class="col-md-4" style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-top: 10px; padding-left: 20px;">
                            <div class="row">
                                <div class="col"
                                    style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                    Código do Município &nbsp &nbsp
                                    <img alt="" src="../Imagens/ihelp.png" style="width: 20px; height: 21px; cursor: pointer" onclick="anima_informacao(1,'codigomunicipio')" />
                                </div>
                            </div>
                            <div class="row">
                                <div class="col">
                                    <asp:TextBox ID="cs_codMunicipio" runat="server" CssClass="layouttexto"
                                        Style="width: 170px;" onBlur="SetTextIn(this,0);SetDiv('div_dados_endereco_do_destinatario',0)" onFocus="SetTextIn(this,1);SetDiv('div_dados_endereco_do_destinatario',1)"></asp:TextBox>
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
                                        Style="width: 80%;" onBlur="SetTextIn(this,0);SetDiv('div_dados_endereco_do_destinatario',0)" onFocus="SetTextIn(this,1);SetDiv('div_dados_endereco_do_destinatario',1)">
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
                                    <asp:DropDownList ID="cs_uf" onBlur="SetTextIn(this,0);SetDiv('div_dados_endereco_do_destinatario',0)" onFocus="SetTextIn(this,1);SetDiv('div_dados_endereco_do_destinatario',1)" CssClass="layouttexto" runat="server">
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
                            <div class="row">
                                <div class="col">
                                    <asp:TextBox ID="codigo_pais_destinatario" runat="server" CssClass="layouttexto" Style="width: 100px;" onBlur="SetTextIn(this,0);SetDiv('div_dados_endereco_do_destinatario',0)" onFocus="SetTextIn(this,1);SetDiv('div_dados_endereco_do_destinatario',1)"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4" style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-left: 10px; padding-top: 10px">
                            <div class="row">
                                <div class="col"
                                    style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                    Nome do País
                                </div>
                            </div>
                            <div class="row" style="padding: 0px; margin: 0px">
                                <div class="col" style="padding: 0px; margin: 0px; background-color: transparent">
                                    <asp:TextBox ID="cs_nome_Pais_destinatario" runat="server" CssClass="layouttexto"
                                        Style="width: 100px;" onBlur="SetTextIn(this,0);SetDiv('div_dados_endereco_do_destinatario',0)" onFocus="SetTextIn(this,1);SetDiv('div_dados_endereco_do_destinatario',1)">
                                    </asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <div class="col-md-4" style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">

                            <div class="row">
                                <div class="col" style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                    <asp:ImageButton runat="server" ID="ImageButton1" Height="50px" Widht="70px" ImageUrl="~/Imagens/icone_dados_cliente.png" Width="50px" Style="cursor: pointer" />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>








</asp:Content>
