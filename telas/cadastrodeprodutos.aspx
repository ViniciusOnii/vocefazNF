<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/telas/Topo.Master" CodeBehind="cadastrodeprodutos.aspx.vb" Inherits="VoceFazNfe.cadastrodeprodutos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <script>


    function botao_confirmar(vbotao) {

        var vbotao = document.getElementById("botao_gravar");
        var vbotao_aguardo = document.getElementById("botao_gravar_aguardando");

        vbotao.style.display = "none";
        vbotao.style.visibility = "hidden";

        vbotao_aguardo.style.display = "block";
        vbotao_aguardo.style.visibility = "visible";

    }

    function botao_confirmar_deletar(vbotao) {

        var vbotao = document.getElementById("botao_deletar");
        var vbotao_aguardo = document.getElementById("botao_deletar_aguardando");

        vbotao.style.display = "none";
        vbotao.style.visibility = "hidden";

        vbotao_aguardo.style.display = "block";
        vbotao_aguardo.style.visibility = "visible";

    }

   



    </script>


    

    <div class="row" style="width: 100%; height: 210px; background-color: transparent"></div>
    <!--/////////////////////////////////////////////////// Painel Obrigatório   /////////////////////////////////////////////////////////////////////////////////////////////-->
     <asp:Panel ID="pnl_obrigatorio" runat="server" BackColor="Transparent" Height="100%" Visible="False" style="background-color:transparent">

     <div class="row" style="width:90%;height:80vh;background-color:transparent;margin-left:20px">

         <div style="width:80%;height:300px;margin:auto;background-color:transparent;border:solid;border-width:1px;border-color:black;border-radius:10px">

         
             <div class="row" style="font-family:Arial;font-size:20px;color:black">
                 <div class="col" align="center" style="padding-top:10px">Você deixou de preencher campos obrigatórios ou preencheu de forma errada.</div>
             </div>

             <div class="row" style="font-family:Arial;font-size:20px;color:black">
                 <div class="col" align="center" style="padding-top:10px">Esses campos estão marcados agora em vermelho.</div>
             </div>

             <div class="row" style="font-family:Arial;font-size:20px;color:black">
                 <div class="col" align="center" style="padding-top:10px">Volte e termine o preenchimento.</div>
             </div>

             <div class="row" style="padding-top:40px">
                 <div class="col" align="center">
                    <asp:Button ID="cmd_voltar_obrigatorio" runat="server" Text="Voltar" style="cursor:pointer;border-radius:10px;border:solid;border-width:1px" 
                     BackColor="#17479E" BorderStyle="Solid" BorderWidth="1px" ForeColor="White" Height="43px" Width="230px" UseSubmitBehavior="False" />
                 </div>
             </div>

         </div>

     </div>

 </asp:Panel>

<!--/////////////////////////////////////////////////// 2 Container dados Principais do Produto  /////////////////////////////////////////////////////////////////////////////////////////////-->
          <asp:Panel ID="pnl_principal" runat="server" BackColor="Transparent" Height="100%" Visible="True">
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

                <!--/////////////////////////////////////////////////// Lado Direito - botão Alterar Preço - Log de Preços   /////////////////////////////////////////////////////////////////////////////////////////////-->
                <div class="col-xl-5" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px; padding-left: 10px">

                    <div class="row" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">



                        <div class="col-6" style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-left: 15px; padding-top: 10px">
                            <div class="row">
                                <div class="col" style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                    <asp:Button ID="Button2" runat="server" Style="cursor: pointer; border-radius: 10px; border: solid; border-width: 1px" Text="Alterar Preço"
                                        BackColor="blue" BorderStyle="Solid" BorderWidth="1px" ForeColor="White" Height="43px" Width="230px" OnClientClick="botao_confirmar(this)" UseSubmitBehavior="False" Visible="True" />

                                </div>
                            </div>
                            <div class="row">
                                <div class="col">
                                    <div id="botao_logo_preco" style="display: none; visibility: hidden">
                                        <img alt="" src="../Imagens/preloader.gif" /><span style="font-family: Arial; font-size: 18px; color: #007DC5">&nbspAguarde</span>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-6" style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-left: 15px; padding-top: 10px">
                            <div class="row">
                                <div class="col" style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                    <asp:Button ID="cmd_log_preco" runat="server" Style="cursor: pointer; border-radius: 10px; border: solid; border-width: 1px" Text="Log de Preços"
                                        BackColor="blue" BorderStyle="Solid" BorderWidth="1px" ForeColor="White" Height="43px" Width="230px" OnClientClick="botao_confirmar_deletar(this)" UseSubmitBehavior="False" Visible="True  " />
                                </div>
                            </div>
                            <div class="row">
                                <div class="col">
                                    <div id="botao_log_preco" style="display: none; visibility: visible">
                                        <img alt="" src="../Imagens/preloader.gif" /><span style="font-family: Arial; font-size: 18px; color: #007DC5">&nbspAguarde</span>
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

    
    <!--///////////////////////////////////////////////////Container 2 - Complemento / SAT //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////-->

    <div class="container-fluid" style="padding: 0px; margin: 0px; width: 100%; height: 100%">
    <div class="row" style="width: 100%; height: 50px"></div>


    <div class="row" style="width: 100%; height: 100%; padding: 0px; margin: 0px; background-color: transparent">



        <div class="row" style="width: 100%; height: 100%; color: #177CC0; padding-left: 20px; padding-top: 0px; font-family: Arial; font-size: 20px; font-weight: bold; margin-left: 0px">

            <div id="i_complemento_sat_on" name="i_cadastro_produtos_on" class="col" align="left" style="display: none; visibility: hidden; font-size: 20px; color: red; margin-right: 20px; border-bottom: none; cursor: pointer" onclick="mostra_div_informacao('div_complemento_sat','i_complemento_sat_on','i_complemento_sat_off',0)"><span style="color: #177CC0; font-family: Arial; font-size: 20px; font-weight: bold;">Complemento / SAT</span>&nbsp;&nbsp;<i class="fa fa-toggle-on"></i></div>
            <div id="i_complemento_sat_off" name="i_cadastro_produtos_off" class="col" align="left" style="display: block; visibility: visible; font-size: 20px; color: red; margin-right: 20px; border-bottom: solid; border-width: 1px; border-color: #767676; cursor: pointer" onclick="mostra_div_informacao('div_complemento_sat','i_complemento_sat_on','i_complemento_sat_off',1)"><span style="color: #177CC0; font-family: Arial; font-size: 20px; font-weight: bold;">Complemento / SAT</span>&nbsp;&nbsp;<i class="fa fa-toggle-off"></i></div>

        </div>

        <div class="row" style="width: 100%; height: 20px"></div>


        <div id="div_complemento_sat" name="complemento_sat" style="display: none; visibility: hidden; width: 100%; height: 100%; background-color: transparent; margin-left: 20px; margin-right: 20px; border: solid; border-color: #177CC0; border-width: 1px; border-radius: 10px; padding: 0px 20px 20px 20px;">
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
    
    <!--///////////////////////////////////////////////////Container 3 - SAT ICMS - //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////-->

    <div class="container-fluid" style="padding: 0px; margin: 0px; width: 100%; height: 100%">
        <div class="row" style="width: 100%; height: 50px"></div>


        <div class="row" style="width: 100%; height: 100%; padding: 0px; margin: 0px; background-color: transparent">



            <div class="row" style="width: 100%; height: 100%; color: #177CC0; padding-left: 20px; padding-top: 0px; font-family: Arial; font-size: 20px; font-weight: bold; margin-left: 0px">

                <div id="i_complemento_sat_icms_on" name="i_complemento_sat_icms_on" class="col" align="left" style="display: none; visibility: hidden; font-size: 20px; color: red; margin-right: 20px; border-bottom: none; cursor: pointer" onclick="mostra_div_informacao('div_complemento_sat_icms','i_complemento_sat_icms_on','i_complemento_sat_icms_off',0)"><span style="color: #177CC0; font-family: Arial; font-size: 20px; font-weight: bold;">SAT - ICMS</span>&nbsp;&nbsp;<i class="fa fa-toggle-on"></i></div>
                <div id="i_complemento_sat_icms_off" name="i_complemento_sat_icms_off" class="col" align="left" style="display: block; visibility: visible; font-size: 20px; color: red; margin-right: 20px; border-bottom: solid; border-width: 1px; border-color: #767676; cursor: pointer" onclick="mostra_div_informacao('div_complemento_sat_icms','i_complemento_sat_icms_on','i_complemento_sat_icms_off',1)"><span style="color: #177CC0; font-family: Arial; font-size: 20px; font-weight: bold;">SAT - ICMS</span>&nbsp;&nbsp;<i class="fa fa-toggle-off"></i></div>

            </div>

            <div class="row" style="width: 100%; height: 20px"></div>


            <div id="div_complemento_sat_icms" name="div_complemento_sat_icms" style="display: none; visibility: hidden; width: 100%; height: 100%; background-color: transparent; margin-left: 20px; margin-right: 20px; border: solid; border-color: #177CC0; border-width: 1px; border-radius: 10px; padding: 0px 20px 20px 20px;">
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
                                        <asp:DropDownList ID="DropDownList5" onBlur="SetTextIn(this,0);SetDiv('div_cadastro_produtos',0)" onFocus="SetTextIn(this,1);SetDiv('div_complemento_sat',1)" CssClass="layouttexto" runat="server">
                                            <asp:ListItem style="width: 100%;" Text="0 - Fabricação Propria" Value="1" />
                                            <asp:ListItem style="width: 100%;" Text="1 - Produto de Terceiros" Value="2" />

                                        </asp:DropDownList>
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-6"
                                style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">


                                <div class="row">
                                    <div class="col"
                                        style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                        Situação Tributária 
                                    </div>
                                </div>

                                <div class="row" style="padding: 0px; margin: 0px">
                                    <div class="col" style="padding: 0px; margin: 0px">
                                        <asp:DropDownList ID="DropDownList4" onBlur="SetTextIn(this,0);SetDiv('div_cadastro_produtos',0)" onFocus="SetTextIn(this,1);SetDiv('div_complemento_sat',1)" CssClass="layouttexto" runat="server">
                                            <asp:ListItem style="width: 100%;" Text="00" Value="1" />
                                            <asp:ListItem style="width: 100%;" Text="20" Value="2" />
                                            <asp:ListItem style="width: 100%;" Text="40" Value="3" />
                                            <asp:ListItem style="width: 100%;" Text="41" Value="4" />
                                            <asp:ListItem style="width: 100%;" Text="50" Value="5" />
                                            <asp:ListItem style="width: 100%;" Text="51" Value="6" />
                                            <asp:ListItem style="width: 100%;" Text="60" Value="7" />
                                            <asp:ListItem style="width: 100%;" Text="90" Value="8" />
                                            <asp:ListItem style="width: 100%;" Text="102" Value="5" />
                                            <asp:ListItem style="width: 100%;" Text="300" Value="6" />
                                            <asp:ListItem style="width: 100%;" Text="400" Value="7" />
                                            <asp:ListItem style="width: 100%;" Text="500" Value="8" />
                                            <asp:ListItem style="width: 100%;" Text="900" Value="8" />
                                        </asp:DropDownList>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>

                    <!--///////////////////// lado direito -  Tipo de Produto /////////////////////////////////////////////////////////////////////////////////////////////-->
                    <div class="col-xl-6" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

                        <div class="row" style="width: 100%; padding: 0px; margin: 0px; background-color: transparent; height: 100%; padding: 0px; margin: 0px">
                            <div class="col-md-6" style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">

                                <div class="row">
                                    <div class="col" style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                        Origem
                                    </div>
                                </div>

                                <div class="row" style="padding: 0px; margin: 0px">
                                    <div class="col" style="padding: 0px; margin: 0px">
                                        <asp:DropDownList ID="DropDownList1" onBlur="SetTextIn(this,0);SetDiv('div_cadastro_produtos',0)" onFocus="SetTextIn(this,1);SetDiv('div_complemento_sat',1)" CssClass="layouttexto" runat="server">
                                            <asp:ListItem style="width: 100%;" Text="1" Value="1" />
                                            <asp:ListItem style="width: 100%;" Text="2" Value="2" />
                                            <asp:ListItem style="width: 100%;" Text="3" Value="3" />
                                            <asp:ListItem style="width: 100%;" Text="4" Value="4" />
                                            <asp:ListItem style="width: 100%;" Text="5" Value="5" />
                                            <asp:ListItem style="width: 100%;" Text="6" Value="6" />
                                            <asp:ListItem style="width: 100%;" Text="7" Value="7" />

                                        </asp:DropDownList>
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-6" style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">

                                <div class="row">
                                    <div class="col" style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                        Aliquota ICMS
                                    </div>
                                </div>

                                <div class="row" style="padding: 0px; margin: 0px">
                                    <div class="col" style="padding: 0px; margin: 0px">
                                        <asp:TextBox ID="TextBox1" runat="server" CssClass="layouttexto"
                                            Style="width: 80%; padding: 0px; margin: 0px"
                                            onBlur="SetTextIn(this,0);SetDiv('div_cadastro_produtos',0)" onFocus="SetTextIn(this,1);SetDiv('div_complemento_sat',1)">

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

    <!--///////////////////////////////////////////////////Container 3 - SAT COFINS - //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////-->

<div class="container-fluid" style="padding: 0px; margin: 0px; width: 100%; height: 100%">
    <div class="row" style="width: 100%; height: 50px"></div>


    <div class="row" style="width: 100%; height: 100%; padding: 0px; margin: 0px; background-color: transparent">



        <div class="row" style="width: 100%; height: 100%; color: #177CC0; padding-left: 20px; padding-top: 0px; font-family: Arial; font-size: 20px; font-weight: bold; margin-left: 0px">

            <div id="i_complemento_sat_cofins_on" name="i_complemento_sat_cofins_on" class="col" align="left" style="display: none; visibility: hidden; font-size: 20px; color: red; margin-right: 20px; border-bottom: none; cursor: pointer" onclick="mostra_div_informacao('div_complemento_sat_cofins','i_complemento_sat_cofins_on','i_complemento_sat_cofins_off',0)"><span style="color: #177CC0; font-family: Arial; font-size: 20px; font-weight: bold;">SAT - ICMS</span>&nbsp;&nbsp;<i class="fa fa-toggle-on"></i></div>
            <div id="i_complemento_sat_cofins_off" name="i_complemento_sat_cofins_off" class="col" align="left" style="display: block; visibility: visible; font-size: 20px; color: red; margin-right: 20px; border-bottom: solid; border-width: 1px; border-color: #767676; cursor: pointer" onclick="mostra_div_informacao('div_complemento_sat_cofins','i_complemento_sat_cofins_on','i_complemento_sat_cofins_off',1)"><span style="color: #177CC0; font-family: Arial; font-size: 20px; font-weight: bold;">SAT - ICMS</span>&nbsp;&nbsp;<i class="fa fa-toggle-off"></i></div>

        </div>

        <div class="row" style="width: 100%; height: 20px"></div>


        <div id="div_complemento_sat_cofins" name="div_complemento_sat_cofins" style="display: none; visibility: hidden; width: 100%; height: 100%; background-color: transparent; margin-left: 20px; margin-right: 20px; border: solid; border-color: #177CC0; border-width: 1px; border-radius: 10px; padding: 0px 20px 20px 20px;">
            <div class="row" style="height: 20px"></div>

            <div class="row" style="width: 100%; padding: 0px; margin: 0px; background-color: transparent; height: 100%; padding: 0px; margin: 0px">

                <!--/////////////////////////////////////////////////// Lado Esquerdo -  Peso líquido - NCM - CEST /////////////////////////////////////////////////////////////////////////////////////////////-->
                <div class="col-xl-6" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

                    <div class="row" style="width: 100%; padding: 0px; margin: 0px; background-color: transparent; height: 100%; padding: 0px; margin: 0px">
                        <div class="col-md-4" style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">

                            <div class="row">
                                <div class="col" style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                    Situação Tributária   
                                </div>
                            </div>

                            <div class="row" style="padding: 0px; margin: 0px">
                                <div class="col" style="padding: 0px; margin: 0px">
                                    <asp:DropDownList ID="DropDownList2" onBlur="SetTextIn(this,0);SetDiv('div_cadastro_produtos',0)" onFocus="SetTextIn(this,1);SetDiv('div_complemento_sat',1)" CssClass="layouttexto" runat="server">
                                        <asp:ListItem style="width: 100%;" Text="1" Value="1" />
                                        <asp:ListItem style="width: 100%;" Text="2" Value="2" />
                                        <asp:ListItem style="width: 100%;" Text="3" Value="3" />
                                        <asp:ListItem style="width: 100%;" Text="4" Value="4" />
                                        <asp:ListItem style="width: 100%;" Text="5" Value="5" />
                                        <asp:ListItem style="width: 100%;" Text="6 " Value="6" />
                                        <asp:ListItem style="width: 100%;" Text="7 " Value="7" />
                                        <asp:ListItem style="width: 100%;" Text="8" Value="8" />
                                        <asp:ListItem style="width: 100%;" Text= "9" Value="9" />
                                        <asp:ListItem style="width: 100%;" Text="49" Value="10" />
                                        <asp:ListItem style="width: 100%;" Text="99" Value="11" />
                                    </asp:DropDownList>
                                </div>
                            </div>
                        </div>

                        <div class="col-md-4"
                            style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">


                            <div class="row">
                                <div class="col"
                                    style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                    Alíquota COFINS (%)
                                </div>
                            </div>

                            <div class="row" style="padding: 0px; margin: 0px">
                                <div class="col" style="padding: 0px; margin: 0px">
                                    <asp:TextBox ID="TextBox2" runat="server" CssClass="layouttexto"
                                        Style="width: 80%; padding: 0px; margin: 0px"
                                        onBlur="SetTextIn(this,0);SetDiv('div_cadastro_produtos',0)" onFocus="SetTextIn(this,1);SetDiv('div_complemento_sat',1)">

                                    </asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <div class="col-md-4" style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">

                            <div class="row">
                                <div class="col" style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                    Aliquota do COFINS (em $)
                                </div>
                            </div>

                            <div class="row" style="padding: 0px; margin: 0px">
                                <div class="col" style="padding: 0px; margin: 0px">
                                    <asp:TextBox ID="TextBox5" runat="server" CssClass="layouttexto"
                                        Style="width: 80%; padding: 0px; margin: 0px"
                                        onBlur="SetTextIn(this,0);SetDiv('div_cadastro_produtos',0)" onFocus="SetTextIn(this,1);SetDiv('div_complemento_sat',1)">

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

        <!--///////////////////////////////////////////////////Container 3 - SAT pis - //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////-->

<div class="container-fluid" style="padding: 0px; margin: 0px; width: 100%; height: 100%">
    <div class="row" style="width: 100%; height: 50px"></div>


    <div class="row" style="width: 100%; height: 100%; padding: 0px; margin: 0px; background-color: transparent">



        <div class="row" style="width: 100%; height: 100%; color: #177CC0; padding-left: 20px; padding-top: 0px; font-family: Arial; font-size: 20px; font-weight: bold; margin-left: 0px">

            <div id="i_complemento_sat_pis_on" name="i_complemento_sat_pis_on" class="col" align="left" style="display: none; visibility: hidden; font-size: 20px; color: red; margin-right: 20px; border-bottom: none; cursor: pointer" onclick="mostra_div_informacao('div_complemento_sat_pis','i_complemento_sat_pis_on','i_complemento_sat_pis_off',0)"><span style="color: #177CC0; font-family: Arial; font-size: 20px; font-weight: bold;">SAT - PIS</span>&nbsp;&nbsp;<i class="fa fa-toggle-on"></i></div>
            <div id="i_complemento_sat_pis_off" name="i_complemento_sat_pis_off" class="col" align="left" style="display: block; visibility: visible; font-size: 20px; color: red; margin-right: 20px; border-bottom: solid; border-width: 1px; border-color: #767676; cursor: pointer" onclick="mostra_div_informacao('div_complemento_sat_pis','i_complemento_sat_pis_on','i_complemento_sat_pis_off',1)"><span style="color: #177CC0; font-family: Arial; font-size: 20px; font-weight: bold;">SAT - PIS</span>&nbsp;&nbsp;<i class="fa fa-toggle-off"></i></div>

        </div>

        <div class="row" style="width: 100%; height: 20px"></div>


        <div id="div_complemento_sat_pis" name="div_complemento_sat_pis" style="display: none; visibility: hidden; width: 100%; height: 100%; background-color: transparent; margin-left: 20px; margin-right: 20px; border: solid; border-color: #177CC0; border-width: 1px; border-radius: 10px; padding: 0px 20px 20px 20px;">
            <div class="row" style="height: 20px"></div>

            <div class="row" style="width: 100%; padding: 0px; margin: 0px; background-color: transparent; height: 100%; padding: 0px; margin: 0px">

                <!--/////////////////////////////////////////////////// Lado Esquerdo -  Peso líquido - NCM - CEST /////////////////////////////////////////////////////////////////////////////////////////////-->
                <div class="col-xl-6" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

                    <div class="row" style="width: 100%; padding: 0px; margin: 0px; background-color: transparent; height: 100%; padding: 0px; margin: 0px">
                        <div class="col-md-4" style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">

                            <div class="row">
                                <div class="col" style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                    Situação Tributária   
                                </div>
                            </div>

                            <div class="row" style="padding: 0px; margin: 0px">
                                <div class="col" style="padding: 0px; margin: 0px">
                                    <asp:DropDownList ID="DropDownList3" onBlur="SetTextIn(this,0);SetDiv('div_cadastro_produtos',0)" onFocus="SetTextIn(this,1);SetDiv('div_complemento_sat',1)" CssClass="layouttexto" runat="server">
                                        <asp:ListItem style="width: 100%;" Text="1" Value="1" />
                                        <asp:ListItem style="width: 100%;" Text="2" Value="2" />
                                        <asp:ListItem style="width: 100%;" Text="3" Value="3" />
                                        <asp:ListItem style="width: 100%;" Text="4" Value="4" />
                                        <asp:ListItem style="width: 100%;" Text="5" Value="5" />
                                        <asp:ListItem style="width: 100%;" Text="6 " Value="6" />
                                        <asp:ListItem style="width: 100%;" Text="7 " Value="7" />
                                        <asp:ListItem style="width: 100%;" Text="8" Value="8" />
                                        <asp:ListItem style="width: 100%;" Text= "9" Value="9" />
                                        <asp:ListItem style="width: 100%;" Text="49" Value="10" />
                                        <asp:ListItem style="width: 100%;" Text="99" Value="11" />
                                    </asp:DropDownList>
                                </div>
                            </div>
                        </div>

                        <div class="col-md-4"
                            style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">


                            <div class="row">
                                <div class="col"
                                    style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                    Alíquota PIS (%)
                                </div>
                            </div>

                            <div class="row" style="padding: 0px; margin: 0px">
                                <div class="col" style="padding: 0px; margin: 0px">
                                    <asp:TextBox ID="TextBox7" runat="server" CssClass="layouttexto"
                                        Style="width: 80%; padding: 0px; margin: 0px"
                                        onBlur="SetTextIn(this,0);SetDiv('div_cadastro_produtos',0)" onFocus="SetTextIn(this,1);SetDiv('div_complemento_sat',1)">

                                    </asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <div class="col-md-4" style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">

                            <div class="row">
                                <div class="col" style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                    Aliquota do PIS (em reais)
                                </div>
                            </div>

                            <div class="row" style="padding: 0px; margin: 0px">
                                <div class="col" style="padding: 0px; margin: 0px">
                                    <asp:TextBox ID="TextBox8" runat="server" CssClass="layouttexto"
                                        Style="width: 80%; padding: 0px; margin: 0px"
                                        onBlur="SetTextIn(this,0);SetDiv('div_cadastro_produtos',0)" onFocus="SetTextIn(this,1);SetDiv('div_complemento_sat',1)">

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

     <!--/////////////////////////////////////////////////// Botão Gravar //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////-->
 <div class="row" style="width:100%;height:100%">

       <div class="col" align="center">

           <div id="botao_gravar" style="width:300px;height:100%;cursor:pointer;display:block;visibility:visible">

               <asp:Button ID="cmd_gravar" runat="server" style="cursor:pointer;border-radius:10px;border:solid;border-width:1px" Text="Gravar" 
                   BackColor="green" BorderStyle="Solid" BorderWidth="1px" ForeColor="White" Height="43px" Width="230px" OnClientClick="botao_confirmar(this)" UseSubmitBehavior="False" Visible="False" />
           </div>

           <div id="botao_gravar_aguardando" style="display:none;visibility:hidden"><img alt="" src="../Imagens/preloader.gif" /><span style="font-family:Arial;font-size:18px;color:#007DC5">&nbspAguarde</span></div>

       </div>

   </div>


 <div class="row" style="width:100%;height:30px"></div>

 <!--/////////////////////////////////////////////////// Botão Deletar //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////--> 
 <div class="row" style="width:100%;height:100%">

       <div class="col" align="center">

           <div id="botao_deletar" style="width:300px;height:100%;cursor:pointer;display:block;visibility:visible">

               <asp:Button ID="Button1" runat="server" style="cursor:pointer;border-radius:10px;border:solid;border-width:1px" Text="Deletar" 
                   BackColor="red" BorderStyle="Solid" BorderWidth="1px" ForeColor="White" Height="43px" Width="230px" OnClientClick="botao_confirmar_deletar(this)" UseSubmitBehavior="False" Visible="False" />
           </div>

           <div id="botao_deletar_aguardando" style="display:none;visibility:hidden"><img alt="" src="../Imagens/preloader.gif" /><span style="font-family:Arial;font-size:18px;color:#007DC5">&nbspAguarde</span></div>

       </div>

   </div>


 
 <div class="row" style="width:100%;height:30px"></div>
 
 <!--/////////////////////////////////////////////////// Botão Limpar //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////--> 
 <div class="row" style="width:100%;height:100%">

       <div class="col" align="center">

           <div id="botao_limpar" style="width:300px;height:100%;cursor:pointer;display:block;visibility:visible">

               <asp:Button ID="cmd_limpar" runat="server" style="cursor:pointer;border-radius:10px;border:solid;border-width:1px" Text="Limpar" 
                   BackColor="gray" BorderStyle="Solid" BorderWidth="1px" ForeColor="White" Height="43px" Width="230px"  UseSubmitBehavior="False" />
           </div>

       </div>

   </div>


 <div class="row" style="width:100%;height:30px"></div>
 
 <!--/////////////////////////////////////////////////// Botão Imprimir //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////--> 
 <div class="row" style="width:100%;height:100%">

       <div class="col" align="center">

           <div id="botao_imprimir" style="width:300px;height:100%;cursor:pointer;display:block;visibility:visible">

               <asp:Button ID="cmd_imprimir" runat="server" style="cursor:pointer;border-radius:10px;border:solid;border-width:1px" Text="Imprimir" 
                   BackColor="#17479E" BorderStyle="Solid" BorderWidth="1px" ForeColor="White" Height="43px" Width="230px"  UseSubmitBehavior="False" OnClientClick ="window.open('../relatorios/relgrupo.asp', '_blank')" />
           </div>

       </div>
   </div>



 </asp:Panel>
</asp:Content>
