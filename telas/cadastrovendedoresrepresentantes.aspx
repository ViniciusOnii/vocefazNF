<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/telas/Topo.Master" CodeBehind="cadastrovendedoresrepresentantes.aspx.vb" Inherits="VoceFazNfe.cadastrovendedores_representantes" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

            <div class="row" style="width: 100%; height: 210px; background-color: transparent"></div>

<!--///////////////////////////////////////////////////  Container dados Principais do Produto  /////////////////////////////////////////////////////////////////////////////////////////////-->
<div class="container-fluid" style="padding: 0px; margin: 0px; width: 100%; height: 100%">
    <div class="row" style="width: 100%; height: 50px"></div>


    <div class="row" style="width: 100%; height: 100%; padding: 0px; margin: 0px; background-color: transparent">



        <div class="row" style="width: 100%; height: 100%; color: #177CC0; padding-left: 20px; padding-top: 0px; font-family: Arial; font-size: 20px; font-weight: bold; margin-left: 0px">

            <div id="i_cadastro_vendedor_on" name="i_cadastro_vendedor_on" class="col" align="left" style="display: block; visibility: visible; font-size: 20px; color: red; margin-right: 20px; border-bottom: none; cursor: pointer" onclick="mostra_div_informacao('div_cadastro_vendedor','i_cadastro_vendedor_on','i_cadastro_vendedor_off',0)"><span style="color: #177CC0; font-family: Arial; font-size: 20px; font-weight: bold;">Dados Principais do Vendedor</span>&nbsp;&nbsp;<i class="fa fa-toggle-on"></i></div>
            <div id="i_cadastro_vendedor_off" name="i_cadastro_vendedor_off" class="col" align="left" style="display: none; visibility: hidden; font-size: 20px; color: red; margin-right: 20px; border-bottom: solid; border-width: 1px; border-color: #767676; cursor: pointer" onclick="mostra_div_informacao('div_cadastro_vendedor','i_cadastro_vendedor_on','i_cadastro_vendedor_off',1)"><span style="color: #177CC0; font-family: Arial; font-size: 20px; font-weight: bold;">Dados Principais do Vendedor</span>&nbsp;&nbsp;<i class="fa fa-toggle-off"></i></div>

        </div>
        
        <div class="row" style="width: 100%; height: 20px"></div>


        <div id="div_cadastro_vendedor" name="div_cadastro_vendedor" style="display: block; visibility: visible; width: 100%; height: 100%; background-color: transparent; margin-left: 20px; margin-right: 20px; border: solid; border-color: #177CC0; border-width: 1px; border-radius: 10px; padding: 0px 20px 20px 20px;">
            <div class="row" style="height: 20px"></div>

            <div class="row" style="width: 100%; padding: 0px; margin: 0px; background-color: transparent; height: 100%; padding: 0px; margin: 0px">

                <!--/////////////////////////////////////////////////// Lado Esquerdo -  Código do Produto - Nome do Vendendor /////////////////////////////////////////////////////////////////////////////////////////////-->
                <div class="col-xl-6" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

                    <div class="row" style="width: 100%; padding: 0px; margin: 0px; background-color: transparent; height: 100%; padding: 0px; margin: 0px">
                        <div class="col-md-5"
                            style="width: 50%; height: 100%; background-color: transparent; padding: 10px;">


                            <div class="row">
                                <div class="col"
                                    style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                    Código 
                                </div>
                            </div>

                            <div class="row" style="padding: 0px; margin: 0px">
                                <div class="col" style="padding: 0px; margin: 0px">
                                    <asp:TextBox ID="cs_codigo_vendedor_representante" runat="server" CssClass="layouttexto"
                                        Style="width: 80%; padding: 0px; margin: 0px"
                                        onBlur="SetTextIn(this,0);SetDiv('div_cadastro_vendedor',0)" onFocus="SetTextIn(this,1);SetDiv('div_cadastro_vendedor',1)">

                                    </asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <div class="col-md-7"
                            style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">


                            <div class="row">
                                <div class="col"
                                    style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                    Nome do Vendedor
                                </div>
                            </div>

                            <div class="row" style="padding: 0px; margin: 0px">
                                <div class="col" style="padding: 0px; margin: 0px">
                                    <asp:TextBox ID="cs_nome_vendedor_vendedor" runat="server" CssClass="layouttexto"
                                        Style="width: 80%; padding: 0px; margin: 0px"
                                        onBlur="SetTextIn(this,0);SetDiv('div_cadastro_vendedor',0)" onFocus="SetTextIn(this,1);SetDiv('div_cadastro_vendedor',1)">

                                    </asp:TextBox>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
                 <!--/////////////////////////////////////////////////// Lado Esquerdo -  Apelido - Código do Pessoa -Tipo /////////////////////////////////////////////////////////////////////////////////////////////-->

                <div class="col-xl-6" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

                    <div class="row" style="width: 100%; padding: 0px; margin: 0px; background-color: transparent; height: 100%; padding: 0px; margin: 0px">
                        <div class="col-md-6" style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">
                            <div class="row">
                                <div class="col"
                                    style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                    Apelido
                                </div>
                            </div>

                            <div class="row" style="padding: 0px; margin: 0px">
                                <div class="col" style="padding: 0px; margin: 0px">
                                    <asp:TextBox ID="cs_apelido_vendedor_representante" runat="server" CssClass="layouttexto"
                                        Style="width: 90%; padding: 0px; margin: 0px"
                                        onBlur="SetTextIn(this,0);SetDiv('div_cadastro_vendedor',0)" onFocus="SetTextIn(this,1);SetDiv('div_cadastro_vendedor',1)">

                                    </asp:TextBox>
                                </div>
                                </div>
                            </div>

                        <div class="col-md-2"
                            style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">


                            <div class="row">
                                <div class="col"
                                    style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                    Pessoa 
                                </div>
                            </div>

                            <div class="row" style="padding: 0px; margin: 0px">
                                <div class="col" style="padding: 0px; margin: 0px">
                                    <asp:DropDownList ID="cs_pessoa_vendedor_representante" onBlur="SetTextIn(this,0);SetDiv('div_cadastro_vendedor',0)" onFocus="SetTextIn(this,1);SetDiv('div_cadastro_vendedor',1)" CssClass="layouttexto" runat="server">
                                        <asp:ListItem style="width: 100%;" Text="J" Value="1" />
                                        <asp:ListItem style="width: 100%;" Text="F" Value="2" />

                                    </asp:DropDownList>
                                </div>
                            </div>
                        </div>

                        <div class="col-md-4"
                            style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">


                            <div class="row">
                                <div class="col"
                                    style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                    Tipo 
                                </div>
                            </div>

                            <div class="row" style="padding: 0px; margin: 0px">
                                <div class="col" style="padding: 0px; margin: 0px">
                                    <asp:DropDownList ID="cs_tipo_vendedor_representante" onBlur="SetTextIn(this,0);SetDiv('div_cadastro_vendedor',0)" onFocus="SetTextIn(this,1);SetDiv('div_cadastro_vendedor',1)" CssClass="layouttexto" runat="server">
                                        <asp:ListItem style="width: 100%;" Text="Vendedor" Value="1" />
                                        <asp:ListItem style="width: 100%;" Text="Representante" Value="2" />

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

    
                <!--///////////////////////////////////////////////////  Container - Endereço   /////////////////////////////////////////////////////////////////////////////////////////////-->

   <div class="container-fluid" style="padding: 0px; margin: 0px; width: 100%; height: 100%">
<div class="row" style="width: 100%; height: 50px"></div>


<div class="row" style="width: 100%; height: 100%; padding: 0px; margin: 0px; background-color: transparent">



    <div class="row" style="width: 100%; height: 100%; color: #177CC0; padding-left: 20px; padding-top: 0px; font-family: Arial; font-size: 20px; font-weight: bold; margin-left: 0px">

        <div id="i_cadastro_vendedor_endereco_on" name="i_cadastro_vendedor_endereco_on" class="col" align="left" style="display: none; visibility: hidden; font-size: 20px; color: red; margin-right: 20px; border-bottom: none; cursor: pointer" onclick="mostra_div_informacao('div_cadastro_vendedor_endereco','i_cadastro_vendedor_endereco_on','i_cadastro_vendedor_endereco_off',0)"><span style="color: #177CC0; font-family: Arial; font-size: 20px; font-weight: bold;">Endereço</span>&nbsp;&nbsp;<i class="fa fa-toggle-on"></i></div>
        <div id="i_cadastro_vendedor_endereco_off" name="i_cadastro_vendedor_endereco_off" class="col" align="left" style="display: block; visibility: visible; font-size: 20px; color: red; margin-right: 20px; border-bottom: solid; border-width: 1px; border-color: #767676; cursor: pointer" onclick="mostra_div_informacao('div_cadastro_vendedor_endereco','i_cadastro_vendedor_endereco_on','i_cadastro_vendedor_endereco_off',1)"><span style="color: #177CC0; font-family: Arial; font-size: 20px; font-weight: bold;">Endereço</span>&nbsp;&nbsp;<i class="fa fa-toggle-off"></i></div>

    </div>
    
    <div class="row" style="width: 100%; height: 20px"></div>


    <div id="div_cadastro_vendedor_endereco" name="div_cadastro_vendedor_endereco" style="display: none; visibility: hidden; width: 100%; height: 100%; background-color: transparent; margin-left: 20px; margin-right: 20px; border: solid; border-color: #177CC0; border-width: 1px; border-radius: 10px; padding: 0px 20px 20px 20px;">
        <div class="row" style="height: 20px"></div>

        <div class="row" style="width: 100%; padding: 0px; margin: 0px; background-color: transparent; height: 100%; padding: 0px; margin: 0px">

            <!--/////////////////////////////////////////////////// Lado Esquerdo -  CNPJ - Inscrição/////////////////////////////////////////////////////////////////////////////////////////////-->
            <div class="col-xl-6" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

                <div class="row" style="width: 100%; padding: 0px; margin: 0px; background-color: transparent; height: 100%; padding: 0px; margin: 0px">
                    <div class="col-md-6" style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">

                        <div class="row">
                            <div class="col"
                                style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                CEP
                            </div>
                        </div>

                        <div class="input-group">
                            <asp:TextBox ID="cs_cep_vendedor_representante" runat="server" CssClass="layouttexto"
                                Style="width: 150px" placeholder="00000-000" onBlur="SetTextIn(this,0);SetDiv('div_cadastro_vendedor_endereco',0)" onFocus="SetTextIn(this,1);SetDiv('div_cadastro_vendedor_endereco',1)">
                            </asp:TextBox>
                            <div class="input-group-append">
                                <button class="material-symbols-outlined">
                                    <i
                                        class="fa-solid fa-magnifying-glass"></i>
                                </button>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-6"
                        style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">


                        <div class="row">
                            <div class="col"
                                style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                Endereço 
                            </div>
                        </div>

                        <div class="row" style="padding: 0px; margin: 0px">
                            <div class="col" style="padding: 0px; margin: 0px">
                                <asp:TextBox ID="cs_endereco_vendedor_representante" runat="server" CssClass="layouttexto"
                                    Style="width: 90%; padding: 0px; margin: 0px"
                                    onBlur="SetTextIn(this,0);SetDiv('div_cadastro_vendedor_endereco',0)" onFocus="SetTextIn(this,1);SetDiv('div_cadastro_vendedor_endereco',1)">

                                </asp:TextBox>
                            </div>
                        </div>
                    </div>

                  

                </div>
            </div>

            <!--/////////////////////////////////////////////////// Lado Direito - Bairro, estado, cidade/////////////////////////////////////////////////////////////////////////////////////////////-->

            <div class="col-xl-6" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

                <div class="row" style="width: 100%; padding: 0px; margin: 0px; background-color: transparent; height: 100%; padding: 0px; margin: 0px">
                    <div class="col-md-5" style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">
                        <div class="row">
                            <div class="col"
                                style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                Cidade
                            </div>
                        </div>

                        <div class="row" style="padding: 0px; margin: 0px">
                            <div class="col" style="padding: 0px; margin: 0px">
                                <asp:TextBox ID="cs_cidade_vendedor_representante" runat="server" CssClass="layouttexto"
                                    Style="width: 90%; padding: 0px; margin: 0px"
                                    onBlur="SetTextIn(this,0);SetDiv('div_cadastro_vendedor_endereco',0)" onFocus="SetTextIn(this,1);SetDiv('div_cadastro_vendedor_endereco',1)">

                                </asp:TextBox>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-5" style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">
                        <div class="row">
                            <div class="col"
                                style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                Bairro
                            </div>
                        </div>

                        <div class="row" style="padding: 0px; margin: 0px">
                            <div class="col" style="padding: 0px; margin: 0px">
                                <asp:TextBox ID="cs_bairro_vendedor_representante" runat="server" CssClass="layouttexto"
                                    Style="width: 90%; padding: 0px; margin: 0px"
                                    onBlur="SetTextIn(this,0);SetDiv('div_cadastro_vendedor_endereco',0)" onFocus="SetTextIn(this,1);SetDiv('div_cadastro_vendedor_endereco',1)">

                                </asp:TextBox>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-2" style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">
                        <div class="row">
                            <div class="col"
                                style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                Estado
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <asp:DropDownList ID="cs_estado_vendedor_representante" onBlur="SetTextIn(this,0);SetDiv('div_cadastro_vendedor_endereco',0)" onFocus="SetTextIn(this,1);SetDiv('div_cadastro_vendedor_endereco',1)" CssClass="layouttexto" runat="server">
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
    <!--///////////////////////////////////////////////////  Container - Fornecedor Documentação  /////////////////////////////////////////////////////////////////////////////////////////////-->

    <div class="container-fluid" style="padding: 0px; margin: 0px; width: 100%; height: 100%">
        <div class="row" style="width: 100%; height: 50px"></div>


        <div class="row" style="width: 100%; height: 100%; padding: 0px; margin: 0px; background-color: transparent">



            <div class="row" style="width: 100%; height: 100%; color: #177CC0; padding-left: 20px; padding-top: 0px; font-family: Arial; font-size: 20px; font-weight: bold; margin-left: 0px">

                <div id="i_cadastro_documentacao_vendedor_on" name="i_cadastro_documentacao_vendedor_on" class="col" align="left" style="display: none; visibility: hidden; font-size: 20px; color: red; margin-right: 20px; border-bottom: none; cursor: pointer" onclick="mostra_div_informacao('div_cadastro_documentacao_vendedor','i_cadastro_documentacao_vendedor_on','i_cadastro_documentacao_vendedor_off',0)"><span style="color: #177CC0; font-family: Arial; font-size: 20px; font-weight: bold;">Documentação</span>&nbsp;&nbsp;<i class="fa fa-toggle-on"></i></div>
                <div id="i_cadastro_documentacao_vendedor_off" name="i_cadastro_documentacao_vendedor_off" class="col" align="left" style="display: block; visibility: visible; font-size: 20px; color: red; margin-right: 20px; border-bottom: solid; border-width: 1px; border-color: #767676; cursor: pointer" onclick="mostra_div_informacao('div_cadastro_documentacao_vendedor','i_cadastro_documentacao_vendedor_on','i_cadastro_documentacao_vendedor_off',1)"><span style="color: #177CC0; font-family: Arial; font-size: 20px; font-weight: bold;">Documentação</span>&nbsp;&nbsp;<i class="fa fa-toggle-off"></i></div>

            </div>

            <div class="row" style="width: 100%; height: 20px"></div>


            <div id="div_cadastro_documentacao_vendedor" name="div_cadastro_documentacao_vendedor" style="display: none; visibility: hidden; width: 100%; height: 100%; background-color: transparent; margin-left: 20px; margin-right: 20px; border: solid; border-color: #177CC0; border-width: 1px; border-radius: 10px; padding: 0px 20px 20px 20px;">
                <div class="row" style="height: 20px"></div>

                <div class="row" style="width: 100%; padding: 0px; margin: 0px; background-color: transparent; height: 100%; padding: 0px; margin: 0px">

                    <!--/////////////////////////////////////////////////// Lado Esquerdo -  CNPJ - Inscrição/////////////////////////////////////////////////////////////////////////////////////////////-->
                    <div class="col-xl-6" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

                        <div class="row" style="width: 100%; padding: 0px; margin: 0px; background-color: transparent; height: 100%; padding: 0px; margin: 0px">
                            <div class="col-md-6" style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">

                                <div class="row">
                                    <div class="col"
                                        style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                        CPF
                                    </div>
                                </div>

                                <div class="row" style="padding: 0px; margin: 0px">
                                    <div class="col" style="padding: 0px; margin: 0px">
                                        <asp:TextBox ID="cs_cpf_vendedor_representante" runat="server" CssClass="layouttexto"
                                            Style="width: 80%; padding: 0px; margin: 0px"
                                            onBlur="SetTextIn(this,0);SetDiv('div_cadastro_documentacao_vendedor',0)" onFocus="SetTextIn(this,1);SetDiv('div_cadastro_documentacao_vendedor',1)">

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
                                        <asp:TextBox ID="cs_inscricao_vendedor_representante" runat="server" CssClass="layouttexto"
                                            Style="width: 80%; padding: 0px; margin: 0px"
                                            onBlur="SetTextIn(this,0);SetDiv('div_cadastro_documentacao_vendedor',0)" onFocus="SetTextIn(this,1);SetDiv('div_cadastro_documentacao_vendedor',1)">

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

 
    <!--///////////////////////////////////////////////////  Container - Fone/ Contato  /////////////////////////////////////////////////////////////////////////////////////////////-->
    <div class="container-fluid" style="padding: 0px; margin: 0px; width: 100%; height: 100%">
        <div class="row" style="width: 100%; height: 50px"></div>


        <div class="row" style="width: 100%; height: 100%; padding: 0px; margin: 0px; background-color: transparent">



            <div class="row" style="width: 100%; height: 100%; color: #177CC0; padding-left: 20px; padding-top: 0px; font-family: Arial; font-size: 20px; font-weight: bold; margin-left: 0px">

                <div id="i_cadastro_fone_contato_vendedor_on" name="i_cadastro_fone_contato_vendedor_on" class="col" align="left" style="display: none; visibility: hidden; font-size: 20px; color: red; margin-right: 20px; border-bottom: none; cursor: pointer" onclick="mostra_div_informacao('div_cadastro_fone_contato_vendedor','i_cadastro_fone_contato_vendedor_on','i_cadastro_fone_contato_vendedor_off',0)"><span style="color: #177CC0; font-family: Arial; font-size: 20px; font-weight: bold;">Fone / Contato</span>&nbsp;&nbsp;<i class="fa fa-toggle-on"></i></div>
                <div id="i_cadastro_fone_contato_vendedor_off" name="i_cadastro_fone_contato_vendedor_off" class="col" align="left" style="display: block; visibility: visible; font-size: 20px; color: red; margin-right: 20px; border-bottom: solid; border-width: 1px; border-color: #767676; cursor: pointer" onclick="mostra_div_informacao('div_cadastro_fone_contato_vendedor','i_cadastro_fone_contato_vendedor_on','i_cadastro_fone_contato_vendedor_off',1)"><span style="color: #177CC0; font-family: Arial; font-size: 20px; font-weight: bold;">Fone / Contato</span>&nbsp;&nbsp;<i class="fa fa-toggle-off"></i></div>

            </div>

            <div class="row" style="width: 100%; height: 20px"></div>


            <div id="div_cadastro_fone_contato_vendedor" name="div_cadastro_fone_contato_vendedor" style="display: none; visibility: hidden; width: 100%; height: 100%; background-color: transparent; margin-left: 20px; margin-right: 20px; border: solid; border-color: #177CC0; border-width: 1px; border-radius: 10px; padding: 0px 20px 20px 20px;">
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
                                        <asp:TextBox ID="cs_fone_contato_vendedor" runat="server" CssClass="layouttexto"
                                            Style="width: 80%; padding: 0px; margin: 0px"
                                            onBlur="SetTextIn(this,0);SetDiv('div_cadastro_fone_contato_vendedor',0)" onFocus="SetTextIn(this,1);SetDiv('div_cadastro_fone_contato_vendedor',1)">

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
                                        <asp:TextBox ID="cs_fone_contato_ramal" runat="server" CssClass="layouttexto"
                                            Style="width: 200px; padding: 0px; margin: 0px"
                                            onBlur="SetTextIn(this,0);SetDiv('div_cadastro_fone_contato_vendedor',0)" onFocus="SetTextIn(this,1);SetDiv('div_cadastro_fone_contato_vendedor',1)">

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
                                        <asp:TextBox ID="cs_fone_contato_fax" runat="server" CssClass="layouttexto"
                                            Style="width: 200px; padding: 0px; margin: 0px"
                                            onBlur="SetTextIn(this,0);SetDiv('div_cadastro_fone_contato_vendedor',0)" onFocus="SetTextIn(this,1);SetDiv('div_cadastro_fone_contato_vendedor',1)">

                                        </asp:TextBox>
                                    </div>
                                </div>
                            </div>


                        </div>
                    </div>

                    <!--/////////////////////////////////////////////////// lado direito - Site - Contato /////////////////////////////////////////////////////////////////////////////////////////////-->

                    <div class="col-xl-5" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

                        <div class="row" style="width: 100%; padding: 0px; margin: 0px; background-color: transparent; height: 100%; padding: 0px; margin: 0px">
                            <div class="col-md-5" style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">
                                <div class="row">
                                    <div class="col"
                                        style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                        Contato
                                    </div>
                                </div>

                                <div class="row" style="padding: 0px; margin: 0px">
                                    <div class="col" style="padding: 0px; margin: 0px">
                                        <asp:TextBox ID="cs_fone_contato_contato" runat="server" CssClass="layouttexto"
                                            Style="width: 90%; padding: 0px; margin: 0px"
                                            onBlur="SetTextIn(this,0);SetDiv('div_cadastro_fone_contato_vendedor',0)" onFocus="SetTextIn(this,1);SetDiv('div_cadastro_fone_contato_vendedor',1)">

                                        </asp:TextBox>
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-7" style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">

                                <div class="row">
                                    <div class="col"
                                        style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                        Site
                                    </div>
                                </div>

                                <div class="row" style="padding: 0px; margin: 0px">
                                    <div class="col" style="padding: 0px; margin: 0px">
                                        <asp:TextBox ID="cs_fone_contato_site" runat="server" CssClass="layouttexto"
                                            Style="width: 90%; padding: 0px; margin: 0px"
                                            onBlur="SetTextIn(this,0);SetDiv('div_cadastro_fone_contato_vendedor',0)" onFocus="SetTextIn(this,1);SetDiv('div_cadastro_fone_contato_vendedor ',1)">

                                        </asp:TextBox>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>


                <!--/////////////////////////////////////////////////// Lado Esquerdo -  Email ////////////////////////////////////////////////////////////////////////////////////////////-->
                <div class="row" style="width: 100%; padding: 0px; margin: 0px; background-color: transparent; height: 100%; padding: 0px; margin: 0px">
                    <div class="col-xl-12" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

                        <div class="row" style="width: 100%; padding: 0px; margin: 0px; background-color: transparent; height: 100%; padding: 0px; margin: 0px">
                            <div class="col-md" style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">

                                <div class="row">
                                    <div class="col"
                                        style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                        E-mail
                                    </div>
                                </div>

                                <div class="row" style="padding: 0px; margin: 0px">
                                    <div class="col" style="padding: 0px; margin: 0px">
                                        <asp:TextBox ID="cs_fone_contato_email" runat="server" CssClass="layouttexto"
                                            Style="width: 35%; padding: 0px; margin: 0px"
                                            onBlur="SetTextIn(this,0);SetDiv('div_cadastro_fone_contato_vendedor',0)" onFocus="SetTextIn(this,1);SetDiv('div_cadastro_fone_contato_vendedor ',1)">

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

    <!--///////////////////////////////////////////////////  Container - Obersavações Gerais /////////////////////////////////////////////////////////////////////////////////////////////-->

<div class="container-fluid" style="padding: 0px; margin: 0px; width: 100%; height: 100%">
    <div class="row" style="width: 100%; height: 50px"></div>


    <div class="row" style="width: 100%; height: 100%; padding: 0px; margin: 0px; background-color: transparent">



        <div class="row" style="width: 100%; height: 100%; color: #177CC0; padding-left: 20px; padding-top: 0px; font-family: Arial; font-size: 20px; font-weight: bold; margin-left: 0px">

            <div id="i_cadastro_observacoes_gerais_vendedor_on" name="i_cadastro_observacoes_gerais_vendedor_on" class="col" align="left" style="display: block; visibility: hidden; font-size: 20px; color: red; margin-right: 20px; border-bottom: none; cursor: pointer" onclick="mostra_div_informacao('div_cadastro_observacoes_gerais_vendedor','i_cadastro_observacoes_gerais_vendedor_on','i_cadastro_observacoes_gerais_vendedor_off',0)"><span style="color: #177CC0; font-family: Arial; font-size: 20px; font-weight: bold;">Observações Gerais</span>&nbsp;&nbsp;<i class="fa fa-toggle-on"></i></div>
            <div id="i_cadastro_observacoes_gerais_vendedor_off" name="i_cadastro_observacoes_gerais_vendedor_off" class="col" align="left" style="display: none; visibility: visible; font-size: 20px; color: red; margin-right: 20px; border-bottom: solid; border-width: 1px; border-color: #767676; cursor: pointer" onclick="mostra_div_informacao('div_cadastro_observacoes_gerais_vendedor','i_cadastro_observacoes_gerais_vendedor_on','i_cadastro_observacoes_gerais_vendedor_off',1)"><span style="color: #177CC0; font-family: Arial; font-size: 20px; font-weight: bold;">Observações Gerais</span>&nbsp;&nbsp;<i class="fa fa-toggle-off"></i></div>

        </div>

        <div class="row" style="width: 100%; height: 20px"></div>


        <div id="div_cadastro_observacoes_gerais_vendedor" name="div_observacoes_gerais_vendedor" style="display: block; visibility: hidden; width: 100%; height: 100%; background-color: transparent; margin-left: 20px; margin-right: 20px; border: solid; border-color: #177CC0; border-width: 1px; border-radius: 10px; padding: 0px 20px 20px 20px;">
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
                                        onBlur="SetTextIn(this,0);SetDiv('div_cadastro_observacoes_gerais_vendedor',0)" onFocus="SetTextIn(this,1);SetDiv('div_cadastro_observacoes_gerais_vendedor',1)">

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
</asp:Content>
