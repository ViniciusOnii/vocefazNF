<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/telas/Topo.Master" CodeBehind="cadastrodeprodutos.aspx.vb" Inherits="VoceFazNfe.cadastrodeprodutos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="row" style="width: 100%; height: 210px; background-color: transparent"></div>

<!--/////////////////////////////////////////////////// 2 Container dados Principais do Produto  /////////////////////////////////////////////////////////////////////////////////////////////-->
<div class="container-fluid" style="padding: 0px; margin: 0px; width: 100%; height: 100%">
    <div class="row" style="width: 100%; height: 50px"></div>


    <div class="row" style="width: 100%; height: 100%; padding: 0px; margin: 0px; background-color: transparent">



        <div class="row" style="width: 100%; height: 100%; color: #177CC0; padding-left: 20px; padding-top: 0px; font-family: Arial; font-size: 20px; font-weight: bold; margin-left: 0px">

            <div id="i_cadastro_produtos_on" name="i_cadastro_produtos_on" class="col" align="left" style="display: block; visibility: visible; font-size: 20px; color: red; margin-right: 20px; border-bottom: none; cursor: pointer" onclick="mostra_div_informacao('div_cadastro_produtos','i_cadastro_produtos_on','i_cadastro_produtos_off',0)"><span style="color: #177CC0; font-family: Arial; font-size: 20px; font-weight: bold;">Dados Principais do Produto</span>&nbsp;&nbsp;<i class="fa fa-toggle-on"></i></div>
            <div id="i_cadastro_produtos_off" name="i_cadastro_produtos_off" class="col" align="left" style="display: none; visibility: hidden; font-size: 20px; color: red; margin-right: 20px; border-bottom: solid; border-width: 1px; border-color: #767676; cursor: pointer" onclick="mostra_div_informacao('div_cadastro_produtos','i_cadastro_produtos_on','i_cadastro_produtos_off',1)"><span style="color: #177CC0; font-family: Arial; font-size: 20px; font-weight: bold;">Dados Principais do Produto</span>&nbsp;&nbsp;<i class="fa fa-toggle-off"></i></div>

        </div>

        <div class="row" style="width: 100%; height: 20px"></div>


        <div id="div_cadastro_produtos" name="div_cadastro_produtos" style="display: block; visibility: visible; width: 100%; height: 100%; background-color: transparent; margin-left: 20px; margin-right: 20px; border: solid; border-color: #177CC0; border-width: 1px; border-radius: 10px; padding: 0px 20px 20px 20px;">
            <div class="row" style="height: 20px"></div>

            <div class="row" style="width: 100%; padding: 0px; margin: 0px; background-color: transparent; height: 100%; padding: 0px; margin: 0px">

                <!--/////////////////////////////////////////////////// Lado Esquerdo -  Código do Produto - Código do Barras /////////////////////////////////////////////////////////////////////////////////////////////-->
                <div class="col-xl-6" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

                    <div class="row" style="width: 100%; padding: 0px; margin: 0px; background-color: transparent; height: 100%; padding: 0px; margin: 0px">
                        <div class="col-md-6" style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">

                            <div class="row">
                                <div class="col" style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                    Código do Produto
                                </div>
                            </div>

                            <div class="row" style="padding: 0px; margin: 0px">
                                <div class="col" style="padding: 0px; margin: 0px">
                                    <asp:TextBox ID="cs_codigo_produto" runat="server" CssClass="layouttexto"
                                        Style="width: 90%; padding: 0px; margin: 0px"
                                        onBlur="SetTextIn(this,0);SetDiv('div_cadastro_produtos',0)" onFocus="SetTextIn(this,1);SetDiv('div_cadastro_produtos',1)">
                                    </asp:TextBox>

                                </div>
                            </div>
                        </div>

                        <div class="col-md-6"
                            style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">


                            <div class="row">
                                <div class="col"
                                    style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                    Código do Barras
                                </div>
                            </div>

                            <div class="row" style="padding: 0px; margin: 0px">
                                <div class="col" style="padding: 0px; margin: 0px">
                                    <asp:TextBox ID="cs_codigo_barras" runat="server" CssClass="layouttexto"
                                        Style="width: 80%; padding: 0px; margin: 0px"
                                        onBlur="SetTextIn(this,0);SetDiv('div_cadastro_produtos',0)" onFocus="SetTextIn(this,1);SetDiv('div_cadastro_produtos',1)">

                                    </asp:TextBox>
                                </div>
                            </div>

                        </div>

                    </div>
                </div>

                <!--///////////////////// lado direito -  Cod. Fabricante/Fornecedor / Código Pai /////////////////////////////////////////////////////////////////////////////////////////////-->
                <div class="col-xl-6" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

                    <div class="row" style="width: 100%; padding: 0px; margin: 0px; background-color: transparent; height: 100%; padding: 0px; margin: 0px">
                        <div class="col-md-6" style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">

                            <div class="row">
                                <div class="col" style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                    Cod. Fabricante/Fornecedor
                                </div>
                            </div>

                            <div class="row" style="padding: 0px; margin: 0px">
                                <div class="col" style="padding: 0px; margin: 0px">
                                    <asp:TextBox ID="cs_cod_fabricante_fornecedor" runat="server" CssClass="layouttexto"
                                        Style="width: 50%; padding: 0px; margin: 0px"
                                        onBlur="SetTextIn(this,0);SetDiv('div_cadastro_produtos',0)" onFocus="SetTextIn(this,1);SetDiv('div_cadastro_produtos',1)">
                                    </asp:TextBox>

                                </div>
                            </div>
                        </div>

                        <div class="col-md-6"
                            style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">


                            <div class="row">
                                <div class="col"
                                    style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                    Código Pai
                                </div>
                            </div>

                            <div class="row" style="padding: 0px; margin: 0px">
                                <div class="col" style="padding: 0px; margin: 0px">
                                    <asp:TextBox ID="TextBox4" runat="server" CssClass="layouttexto"
                                        Style="width: 50%; padding: 0px; margin: 0px"
                                        onBlur="SetTextIn(this,0);SetDiv('div_cadastro_produtos',0)" onFocus="SetTextIn(this,1);SetDiv('div_cadastro_produtos',1)">

                                    </asp:TextBox>
                                </div>
                            </div>

                        </div>

                    </div>
                </div>
            </div>

            <!--///////////////////// Lado esquerdo - Referencia - Descrição / /////////////////////////////////////////////////////////////////////////////////////////////-->
            <div class="row" style="height: 30px"></div>
            <div class="row">
                <div class="col-xl-7" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px; padding-left: 10px">

                    <div class="row" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">



                        <div class="col-md-5" style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-left: 15px; padding-top: 10px">
                            <div class="row">
                                <div class="col" style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                    Referencia
                                </div>
                            </div>
                            <div class="row" style="padding: 0px; margin: 0px">
                                <div class="col" style="padding: 0px; margin: 0px">
                                    <asp:TextBox ID="cs_numero_modelo_fiscal_dados_principais" runat="server" CssClass="layouttexto"
                                        Style="width: 270px;" onBlur="SetTextIn(this,0);SetDiv('div_cadastro_produtos',0)" onFocus="SetTextIn(this,1);SetDiv('div_cadastro_produtos',1)">
                                    </asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-7" style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-left: 15px; padding-top: 10px">
                            <div class="row">
                                <div class="col" style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                    Descrição 
                                </div>
                            </div>
                            <div class="row" style="padding: 0px; margin: 0px">
                                <div class="col" style="padding: 0px; margin: 0px">
                                    <asp:TextBox ID="cs_serie_documento_fiscal_dados_principais" runat="server" CssClass="layouttexto"
                                        Style="width: 90%;" onBlur="SetTextIn(this,0);SetDiv('div_cadastro_produtos',0)" onFocus="SetTextIn(this,1);SetDiv('div_cadastro_produtos',1)">
                                    </asp:TextBox>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
                <!--/////////////////////////////////////////////////// Lado Direito - Complemento da Descrição /////////////////////////////////////////////////////////////////////////////////////////////-->
                <div class="col-xl-5" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px; padding-left: 10px">

                    <div class="row" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">



                        <div class="col-auto" style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-left: 15px; padding-top: 10px">
                            <div class="row">
                                <div class="col" style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                    Complemento da Descrição

                                </div>
                            </div>
                            <div class="row">
                                <div class="col">
                                    <asp:TextBox ID="cs_numero_documento_fiscal_dados_principais" runat="server" CssClass="layouttexto" Style="width: 90%;" onBlur="SetTextIn(this,0);SetDiv('div_cadastro_produtos',0)" onFocus="SetTextIn(this,1);SetDiv('div_cadastro_produtos',1)"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!--///////////////////// Lado esquerdo - Unidade de Estoque - Cor/ /////////////////////////////////////////////////////////////////////////////////////////////-->
            <div class="row" style="height: 30px"></div>
            <div class="row">
                <div class="col-xl-7" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px; padding-left: 10px">

                    <div class="row" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">



                        <div class="col-md-5" style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-left: 15px; padding-top: 10px">
                            <div class="row">
                                <div class="col" style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                    Unidade de Estoque
                                </div>
                            </div>
                            <div class="input-group">

                                <div class="row" style="padding: 0px; margin: 0px">
                                    <div class="col" style="padding: 0px; margin: 0px">
                                        <asp:TextBox ID="cs_unidade_estoque0" runat="server" CssClass="layouttexto"
                                            Style="width: 10%;" onBlur="SetTextIn(this,0);SetDiv('div_cadastro_produtos',0)" onFocus="SetTextIn(this,1);SetDiv('div_cadastro_produtos',1)">
                                        </asp:TextBox>



                                        <asp:TextBox ID="cs_unidade_estoque" runat="server" CssClass="layouttexto"
                                            Style="width: 270px" onBlur="SetTextIn(this,0);SetDiv('div_cadastro_produtos',0)" onFocus="SetTextIn(this,1);SetDiv('div_cadastro_produtos',1)">
                                        </asp:TextBox>



                                        <button class="material-symbols-outlined">
                                            <i class="fa-solid fa-magnifying-glass"></i>
                                        </button>

                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-7" style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-left: 15px; padding-top: 10px">
                            <div class="row">
                                <div class="col" style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                    Cor 
                                </div>
                            </div>
                            <div class="input-group">

                                <div class="row" style="padding: 0px; margin: 0px">
                                    <div class="col" style="padding: 0px; margin: 0px">
                                        <asp:TextBox ID="cs_cor0" runat="server" CssClass="layouttexto"
                                            Style="width: 10%;" onBlur="SetTextIn(this,0);SetDiv('div_cadastro_produtos',0)" onFocus="SetTextIn(this,1);SetDiv('div_cadastro_produtos',1)">
                                        </asp:TextBox>



                                        <asp:TextBox ID="TextBox3" runat="server" CssClass="layouttexto"
                                            Style="width: 270px" onBlur="SetTextIn(this,0);SetDiv('div_cadastro_produtos',0)" onFocus="SetTextIn(this,1);SetDiv('div_cadastro_produtos',1)">
                                        </asp:TextBox>



                                        <button class="material-symbols-outlined">
                                            <i class="fa-solid fa-magnifying-glass"></i>
                                        </button>

                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
                <!--/////////////////////////////////////////////////// Lado Direito - Tamanho /////////////////////////////////////////////////////////////////////////////////////////////-->
                <div class="col-xl-5" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px; padding-left: 10px">

                    <div class="row" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">



                        <div class="col-auto" style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-left: 15px; padding-top: 10px">
                            <div class="row">
                                <div class="col" style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                    Tamanho

                                </div>
                            </div>
                            <div class="input-group">

                                <div class="row" style="padding: 0px; margin: 0px">
                                    <div class="col" style="padding: 0px; margin: 0px">
                                        <asp:TextBox ID="cs_tamanho0" runat="server" CssClass="layouttexto"
                                            Style="width: 10%;" onBlur="SetTextIn(this,0);SetDiv('div_cadastro_produtos',0)" onFocus="SetTextIn(this,1);SetDiv('div_cadastro_produtos',1)">
                                        </asp:TextBox>



                                        <asp:TextBox ID="TextBox6" runat="server" CssClass="layouttexto"
                                            Style="width: 270px" onBlur="SetTextIn(this,0);SetDiv('div_cadastro_produtos',0)" onFocus="SetTextIn(this,1);SetDiv('div_cadastro_produtos',1)">
                                        </asp:TextBox>



                                        <button class="material-symbols-outlined">
                                            <i class="fa-solid fa-magnifying-glass"></i>
                                        </button>

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!--///////////////////// Lado Esquerdo - Grupo e Sub-grupo/ /////////////////////////////////////////////////////////////////////////////////////////////-->
            <div class="row" style="height: 30px"></div>
            <div class="row">
                <div class="col-xl-7" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px; padding-left: 10px">

                    <div class="row" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">



                        <div class="col-md-5" style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-left: 15px; padding-top: 10px">
                            <div class="row">
                                <div class="col" style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                    Grupo
                                </div>
                            </div>
                            <div class="input-group">

                                <div class="row" style="padding: 0px; margin: 0px">
                                    <div class="col" style="padding: 0px; margin: 0px">
                                        <asp:TextBox ID="cs_cadastro_grupo0" runat="server" CssClass="layouttexto"
                                            Style="width: 10%;" onBlur="SetTextIn(this,0);SetDiv('div_cadastro_produtos',0)" onFocus="SetTextIn(this,1);SetDiv('div_cadastro_produtos',1)">
                                        </asp:TextBox>



                                        <asp:TextBox ID="cs_cadastro_grupo" runat="server" CssClass="layouttexto"
                                            Style="width: 270px" onBlur="SetTextIn(this,0);SetDiv('div_cadastro_produtos',0)" onFocus="SetTextIn(this,1);SetDiv('div_cadastro_produtos',1)">
                                        </asp:TextBox>



                                        <button class="material-symbols-outlined">
                                            <i class="fa-solid fa-magnifying-glass"></i>
                                        </button>

                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-7" style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-left: 15px; padding-top: 10px">
                            <div class="row">
                                <div class="col" style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                    Sub-Grupo 
                                </div>
                            </div>
                            <div class="input-group">

                                <div class="row" style="padding: 0px; margin: 0px">
                                    <div class="col" style="padding: 0px; margin: 0px">
                                        <asp:TextBox ID="cs_cadastro_sub_grupo0" runat="server" CssClass="layouttexto"
                                            Style="width: 10%;" onBlur="SetTextIn(this,0);SetDiv('div_cadastro_produtos',0)" onFocus="SetTextIn(this,1);SetDiv('div_cadastro_produtos',1)">
                                        </asp:TextBox>



                                        <asp:TextBox ID="cs_cadastro_sub_grupo" runat="server" CssClass="layouttexto"
                                            Style="width: 270px" onBlur="SetTextIn(this,0);SetDiv('div_cadastro_produtos',0)" onFocus="SetTextIn(this,1);SetDiv('div_cadastro_produtos',1)">
                                        </asp:TextBox>



                                        <button class="material-symbols-outlined">
                                            <i class="fa-solid fa-magnifying-glass"></i>
                                        </button>

                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
                 <!--///////////////////// Lado Direito - R$ Transferência e Custo Médio / /////////////////////////////////////////////////////////////////////////////////////////////-->

                <div class="col-xl-5" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px; padding-left: 10px">

                    <div class="row" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">



                        <div class="col-md-6" style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-left: 15px; padding-top: 10px">
                            <div class="row">
                                <div class="col" style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                    R$ Transferência
                                </div>
                            </div>
                            <div class="row">
                                <div class="col">
                                    <asp:TextBox ID="cs_rs_transferencia" runat="server" CssClass="layouttexto" Style="width: 200px;" onBlur="SetTextIn(this,0);SetDiv('div_cadastro_produtos',0)" onFocus="SetTextIn(this,1);SetDiv('div_cadastro_produtos',1)"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6" style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-left: 15px; padding-top: 10px">
                            <div class="row">
                                <div class="col" style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                    Custo Médio 
                                </div>
                            </div>
                            <div class="row">
                                <div class="col">
                                    <asp:TextBox ID="cs_custo_medio" runat="server" CssClass="layouttexto" Style="width: 200px;" onBlur="SetTextIn(this,0);SetDiv('div_cadastro_produtos',0)" onFocus="SetTextIn(this,1);SetDiv('div_cadastro_produtos',1)"></asp:TextBox>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>


            </div>

            <!--///////////////////// Lado esquerdo - Último Custo - % Margem/ /////////////////////////////////////////////////////////////////////////////////////////////-->
            <div class="row" style="height: 30px"></div>
            <div class="row">
                <div class="col-xl-7" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px; padding-left: 10px">

                    <div class="row" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">



                        <div class="col-md-5" style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-left: 15px; padding-top: 10px">
                            <div class="row">
                                <div class="col" style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                    Último Custo
                                </div>
                            </div>
                            <div class="row">
                                <div class="col">
                                    <asp:TextBox ID="cs_ultimo_custo" runat="server" CssClass="layouttexto" Style="width: 200px;" onBlur="SetTextIn(this,0);SetDiv('div_cadastro_produtos',0)" onFocus="SetTextIn(this,1);SetDiv('div_cadastro_produtos',1)"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-7" style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-left: 15px; padding-top: 10px">
                            <div class="row">
                                <div class="col" style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                    % Margem
                                </div>
                            </div>
                            <div class="row">
                                <div class="col">
                                    <asp:TextBox ID="cs_margem" runat="server" CssClass="layouttexto" Style="width: 200px;" onBlur="SetTextIn(this,0);SetDiv('div_cadastro_produtos',0)" onFocus="SetTextIn(this,1);SetDiv('div_cadastro_produtos',1)"></asp:TextBox>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
                <!--/////////////////////////////////////////////////// Lado Direito - R$ Venda Varejo - R$ Venda Atacado   /////////////////////////////////////////////////////////////////////////////////////////////-->
                <div class="col-xl-5" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px; padding-left: 10px">

                    <div class="row" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">



                        <div class="col-6" style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-left: 15px; padding-top: 10px">
                            <div class="row">
                                <div class="col" style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                   R$ Venda Varejo

                                </div>
                            </div>
                            <div class="row">
                                <div class="col">
                                    <asp:TextBox ID="cs_venda_varejo" runat="server" CssClass="layouttexto" Style="width: 200px;" onBlur="SetTextIn(this,0);SetDiv('div_cadastro_produtos',0)" onFocus="SetTextIn(this,1);SetDiv('div_cadastro_produtos',1)"></asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <div class="col-6" style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-left: 15px; padding-top: 10px">
                            <div class="row">
                                <div class="col" style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                     R$ Venda Atacado
                                </div>
                            </div>
                            <div class="row">
                                <div class="col">
                                    <asp:TextBox ID="cs_venda_atacado" runat="server" CssClass="layouttexto" Style="width: 200px;" onBlur="SetTextIn(this,0);SetDiv('div_cadastro_produtos',0)" onFocus="SetTextIn(this,1);SetDiv('div_cadastro_produtos',1)"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!--///////////////////// Lado esquerdo - R$ Venda Outlet - R$ Venda Outlet/ /////////////////////////////////////////////////////////////////////////////////////////////-->
            <div class="row" style="height: 30px"></div>
            <div class="row">
                <div class="col-xl-7" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px; padding-left: 10px">

                    <div class="row" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">



                        <div class="col-md-5" style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-left: 15px; padding-top: 10px">
                            <div class="row">
                                <div class="col" style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                    R$ Venda Outlet
                                </div>
                            </div>
                            <div class="row">
                                <div class="col">
                                    <asp:TextBox ID="cs_venda_outlet" runat="server" CssClass="layouttexto" Style="width: 200px;" onBlur="SetTextIn(this,0);SetDiv('div_cadastro_produtos',0)" onFocus="SetTextIn(this,1);SetDiv('div_cadastro_produtos',1)"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-7" style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-left: 15px; padding-top: 10px">
                            <div class="row">
                                <div class="col" style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                    R$ Venda Outlet
                                </div>
                            </div>
                            <div class="row">
                                <div class="col">
                                    <asp:TextBox ID="cs_venda_ecommerce" runat="server" CssClass="layouttexto" Style="width: 200px;" onBlur="SetTextIn(this,0);SetDiv('div_cadastro_produtos',0)" onFocus="SetTextIn(this,1);SetDiv('div_cadastro_produtos',1)"></asp:TextBox>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
               
            </div>

        </div>
    </div>

    <!--/////////////////////////////////////////////////// Botão Alterar Preço //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////-->
    <div class="row" style="height: 30px"></div>
    <div class="row" style="width: 100%; height: 100%">

        <div class="col" align="center">

            <div id="botao_alterar_preco" style="width: 300px; height: 100%; cursor: pointer; display: block; visibility: visible">

                <asp:Button ID="cmd_alterar_preco" runat="server" Style="cursor: pointer; border-radius: 10px; border: solid; border-width: 1px" Text="Alterar Preço"
                    BackColor="blue" BorderStyle="Solid" BorderWidth="1px" ForeColor="White" Height="43px" Width="230px" OnClientClick="botao_confirmar(this)" UseSubmitBehavior="False" Visible="True" />
            </div>

            <div id="botao_gravar_aguardando" style="display: none; visibility: hidden">
                <img alt="" src="../Imagens/preloader.gif" /><span style="font-family: Arial; font-size: 18px; color: #007DC5">&nbspAguarde</span></div>

        </div>

    </div>


    <div class="row" style="width: 100%; height: 30px"></div>

    <!--/////////////////////////////////////////////////// Botão Log de Preços //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////-->
    <div class="row" style="width: 100%; height: 100%">

        <div class="col" align="center">

            <div id="botao_log_precos" style="width: 300px; height: 100%; cursor: pointer; display: block; visibility: visible">

                <asp:Button ID="cmd_deletar" runat="server" Style="cursor: pointer; border-radius: 10px; border: solid; border-width: 1px" Text="Log de Preços"
                    BackColor="blue" BorderStyle="Solid" BorderWidth="1px" ForeColor="White" Height="43px" Width="230px" OnClientClick="botao_confirmar_deletar(this)" UseSubmitBehavior="False" Visible="True  " />
            </div>

            <div id="botao_deletar_aguardando" style="display: none; visibility: visible">
                <img alt="" src="../Imagens/preloader.gif" /><span style="font-family: Arial; font-size: 18px; color: #007DC5">&nbspAguarde</span></div>

        </div>

    </div>
</div>
    <!--///////////////////////////////////////////////////Container 2 - Complemento / SAT //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////-->

    <div class="container-fluid" style="padding: 0px; margin: 0px; width: 100%; height: 100%">
    <div class="row" style="width: 100%; height: 50px"></div>


    <div class="row" style="width: 100%; height: 100%; padding: 0px; margin: 0px; background-color: transparent">



        <div class="row" style="width: 100%; height: 100%; color: #177CC0; padding-left: 20px; padding-top: 0px; font-family: Arial; font-size: 20px; font-weight: bold; margin-left: 0px">

            <div id="i_complemento_sat_on" name="i_cadastro_produtos_on" class="col" align="left" style="display: block; visibility: visible; font-size: 20px; color: red; margin-right: 20px; border-bottom: none; cursor: pointer" onclick="mostra_div_informacao('div_complemento_sat','i_complemento_sat_on','i_complemento_sat_off',0)"><span style="color: #177CC0; font-family: Arial; font-size: 20px; font-weight: bold;">Complemento / SAT</span>&nbsp;&nbsp;<i class="fa fa-toggle-on"></i></div>
            <div id="i_complemento_sat_off" name="i_cadastro_produtos_off" class="col" align="left" style="display: none; visibility: hidden; font-size: 20px; color: red; margin-right: 20px; border-bottom: solid; border-width: 1px; border-color: #767676; cursor: pointer" onclick="mostra_div_informacao('div_complemento_sat','i_complemento_sat_on','i_complemento_sat_off',1)"><span style="color: #177CC0; font-family: Arial; font-size: 20px; font-weight: bold;">Complemento / SAT</span>&nbsp;&nbsp;<i class="fa fa-toggle-off"></i></div>

        </div>

        <div class="row" style="width: 100%; height: 20px"></div>


        <div id="div_complemento_sat" name="complemento_sat" style="display: block; visibility: visible; width: 100%; height: 100%; background-color: transparent; margin-left: 20px; margin-right: 20px; border: solid; border-color: #177CC0; border-width: 1px; border-radius: 10px; padding: 0px 20px 20px 20px;">
            <div class="row" style="height: 20px"></div>

            <div class="row" style="width: 100%; padding: 0px; margin: 0px; background-color: transparent; height: 100%; padding: 0px; margin: 0px">

                <!--/////////////////////////////////////////////////// Lado Esquerdo -  Peso líquido - NCM - CEST /////////////////////////////////////////////////////////////////////////////////////////////-->
                <div class="col-xl-6" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

                    <div class="row" style="width: 100%; padding: 0px; margin: 0px; background-color: transparent; height: 100%; padding: 0px; margin: 0px">
                        <div class="col-md-4" style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">

                            <div class="row">
                                <div class="col" style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                    Peso Líquido 
                                </div>
                            </div>

                            <div class="row" style="padding: 0px; margin: 0px">
                                <div class="col" style="padding: 0px; margin: 0px">
                                    <asp:TextBox ID="cs_peso_liquido_sat" runat="server" CssClass="layouttexto"
                                        Style="width: 90%; padding: 0px; margin: 0px"
                                        onBlur="SetTextIn(this,0);SetDiv('div_complemento_sat',0)" onFocus="SetTextIn(this,1);SetDiv('div_complemento_sat',1)">
                                    </asp:TextBox>

                                </div>
                            </div>
                        </div>

                        <div class="col-md-4"
                            style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">


                            <div class="row">
                                <div class="col"
                                    style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                    NCM
                                </div>
                            </div>

                            <div class="row" style="padding: 0px; margin: 0px">
                                <div class="col" style="padding: 0px; margin: 0px">
                                    <asp:TextBox ID="cs_ncm_sat" runat="server" CssClass="layouttexto"
                                        Style="width: 80%; padding: 0px; margin: 0px"
                                        onBlur="SetTextIn(this,0);SetDiv('div_complemento_sat',0)" onFocus="SetTextIn(this,1);SetDiv('div_complemento_sat',1)">

                                    </asp:TextBox>
                                </div>
                            </div>

                        </div>

                        <div class="col-md-4"
                            style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">


                            <div class="row">
                                <div class="col"
                                    style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                    CEST
                                </div>
                            </div>

                            <div class="row" style="padding: 0px; margin: 0px">
                                <div class="col" style="padding: 0px; margin: 0px">
                                    <asp:TextBox ID="cs_cest_sat" runat="server" CssClass="layouttexto"
                                        Style="width: 80%; padding: 0px; margin: 0px"
                                        onBlur="SetTextIn(this,0);SetDiv('div_cadastro_produtos',0)" onFocus="SetTextIn(this,1);SetDiv('div_complemento_sat',1)">

                                    </asp:TextBox>
                                </div>
                            </div>

                        </div>

                    </div>
                </div>

                <!--///////////////////// lado direito -  Tipo de Produto /////////////////////////////////////////////////////////////////////////////////////////////-->
                <div class="col-xl-6" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

                    <div class="row" style="width: 100%; padding: 0px; margin: 0px; background-color: transparent; height: 100%; padding: 0px; margin: 0px">
                        <div class="col-md-auto" style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">

                            <div class="row">
                                <div class="col" style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                    Tipo de Produto
                                </div>
                            </div>

                            <div class="row" style="padding: 0px; margin: 0px">
                                <div class="col" style="padding: 0px; margin: 0px">
                                    <asp:DropDownList ID="cs_tipo_de_produto_sat" onBlur="SetTextIn(this,0);SetDiv('div_cadastro_produtos',0)" onFocus="SetTextIn(this,1);SetDiv('div_complemento_sat',1)" CssClass="layouttexto" runat="server">
                                        <asp:ListItem style="width: 100%;" Text="0 - Fabricação Propria" Value="1" />
                                        <asp:ListItem style="width: 100%;" Text="1 - Produto de Terceiros" Value="2" />
                                        
                                    </asp:DropDownList>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>

                <!--///////////////////// Lado esquerdo - CFOP de Venda SAT/ /////////////////////////////////////////////////////////////////////////////////////////////-->
                <div class="row" style="height: 30px"></div>
                <div class="row">
                    <div class="col-xl-12" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px; padding-left: 10px">

                        <div class="row" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">



                            <div class="col-md-12" style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-left: 15px; padding-top: 10px">
                                <div class="row">
                                    <div class="col" style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                        CFOP de Venda SAT
                                    </div>
                                </div>
                                <div class="row" style="padding: 0px; margin: 0px">
                                    <div class="col" style="padding: 0px; margin: 0px">
                                        <asp:DropDownList ID="cs_cfop_sat" onBlur="SetTextIn(this,0);SetDiv('div_cadastro_produtos',0)" onFocus="SetTextIn(this,1);SetDiv('div_cadastro_produtos',1)" CssClass="layouttexto" runat="server">
                                            <asp:ListItem style="width: 100%;" Text="5102 - Venda de mercadoria adquirida ou recebid de terceiros" Value="1" />
                                            

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
    
        <!--///////////////////////////////////////////////////Container 3 - SAT ICMS - COFINS - PIS //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////-->

    <div class="container-fluid" style="padding: 0px; margin: 0px; width: 100%; height: 100%">
    <div class="row" style="width: 100%; height: 50px"></div>


    <div class="row" style="width: 100%; height: 100%; padding: 0px; margin: 0px; background-color: transparent">



        <div class="row" style="width: 100%; height: 100%; color: #177CC0; padding-left: 20px; padding-top: 0px; font-family: Arial; font-size: 20px; font-weight: bold; margin-left: 0px">

            <div id="i_complemento_sat_icms_cofins_pis_on" name="i_complemento_sat_icms_cofins_pis_on" class="col" align="left" style="display: block; visibility: visible; font-size: 20px; color: red; margin-right: 20px; border-bottom: none; cursor: pointer" onclick="mostra_div_informacao('div_complemento_sat','i_complemento_sat_on','i_complemento_sat_off',0)"><span style="color: #177CC0; font-family: Arial; font-size: 20px; font-weight: bold;">SAT - ICMS, COFINS, PIS</span>&nbsp;&nbsp;<i class="fa fa-toggle-on"></i></div>
            <div id="i_complemento_sat_icms_confins_pis_off" name="i_complemento_sat_icms_cofins_pis_off" class="col" align="left" style="display: none; visibility: hidden; font-size: 20px; color: red; margin-right: 20px; border-bottom: solid; border-width: 1px; border-color: #767676; cursor: pointer" onclick="mostra_div_informacao('div_complemento_sat','i_complemento_sat_on','i_complemento_sat_off',1)"><span style="color: #177CC0; font-family: Arial; font-size: 20px; font-weight: bold;">SAT - ICMS, COFINS, PIS</span>&nbsp;&nbsp;<i class="fa fa-toggle-off"></i></div>

        </div>

        <div class="row" style="width: 100%; height: 20px"></div>


        <div id="div_complemento_sat_icms_cofins_pis" name="complemento_sat_icms_cofins_pis" style="display: block; visibility: visible; width: 100%; height: 100%; background-color: transparent; margin-left: 20px; margin-right: 20px; border: solid; border-color: #177CC0; border-width: 1px; border-radius: 10px; padding: 0px 20px 20px 20px;">
            <div class="row" style="height: 20px"></div>

            <div class="row" style="width: 100%; padding: 0px; margin: 0px; background-color: transparent; height: 100%; padding: 0px; margin: 0px">

                <!--/////////////////////////////////////////////////// Lado Esquerdo -  Peso líquido - NCM - CEST /////////////////////////////////////////////////////////////////////////////////////////////-->
                <div class="col-xl-6" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

                    <div class="row" style="width: 100%; padding: 0px; margin: 0px; background-color: transparent; height: 100%; padding: 0px; margin: 0px">
                        <div class="col-md-6" style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">

                            <div class="row">
                                <div class="col" style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                    Regime  
                                </div>
                            </div>

                            <div class="row" style="padding: 0px; margin: 0px">
                                <div class="col" style="padding: 0px; margin: 0px">
                                    <asp:TextBox ID="TextBox1" runat="server" CssClass="layouttexto"
                                        Style="width: 90%; padding: 0px; margin: 0px"
                                        onBlur="SetTextIn(this,0);SetDiv('div_complemento_sat',0)" onFocus="SetTextIn(this,1);SetDiv('div_complemento_sat',1)">
                                    </asp:TextBox>

                                </div>
                            </div>
                        </div>

                        <div class="col-md-6"
                            style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">


                            <div class="row">
                                <div class="col"
                                    style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                    NCM
                                </div>
                            </div>

                            <div class="row" style="padding: 0px; margin: 0px">
                                <div class="col" style="padding: 0px; margin: 0px">
                                    <asp:TextBox ID="TextBox2" runat="server" CssClass="layouttexto"
                                        Style="width: 80%; padding: 0px; margin: 0px"
                                        onBlur="SetTextIn(this,0);SetDiv('div_complemento_sat',0)" onFocus="SetTextIn(this,1);SetDiv('div_complemento_sat',1)">

                                    </asp:TextBox>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>

                <!--///////////////////// lado direito -  Tipo de Produto /////////////////////////////////////////////////////////////////////////////////////////////-->
                <div class="col-xl-6" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

                    <div class="row" style="width: 100%; padding: 0px; margin: 0px; background-color: transparent; height: 100%; padding: 0px; margin: 0px">
                        <div class="col-md-auto" style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">

                            <div class="row">
                                <div class="col" style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                    Tipo de Produto
                                </div>
                            </div>

                            <div class="row" style="padding: 0px; margin: 0px">
                                <div class="col" style="padding: 0px; margin: 0px">
                                    <asp:DropDownList ID="DropDownList1" onBlur="SetTextIn(this,0);SetDiv('div_cadastro_produtos',0)" onFocus="SetTextIn(this,1);SetDiv('div_complemento_sat',1)" CssClass="layouttexto" runat="server">
                                        <asp:ListItem style="width: 100%;" Text="0 - Fabricação Propria" Value="1" />
                                        <asp:ListItem style="width: 100%;" Text="1 - Produto de Terceiros" Value="2" />
                                        
                                    </asp:DropDownList>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>

                <!--///////////////////// Lado esquerdo - CFOP de Venda SAT/ /////////////////////////////////////////////////////////////////////////////////////////////-->
                <div class="row" style="height: 30px"></div>
                <div class="row">
                    <div class="col-xl-12" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px; padding-left: 10px">

                        <div class="row" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">



                            <div class="col-md-12" style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-left: 15px; padding-top: 10px">
                                <div class="row">
                                    <div class="col" style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                        CFOP de Venda SAT
                                    </div>
                                </div>
                                <div class="row" style="padding: 0px; margin: 0px">
                                    <div class="col" style="padding: 0px; margin: 0px">
                                        <asp:DropDownList ID="DropDownList2" onBlur="SetTextIn(this,0);SetDiv('div_cadastro_produtos',0)" onFocus="SetTextIn(this,1);SetDiv('div_cadastro_produtos',1)" CssClass="layouttexto" runat="server">
                                            <asp:ListItem style="width: 100%;" Text="5102 - Venda de mercadoria adquirida ou recebid de terceiros" Value="1" />
                                            

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

</asp:Content>
