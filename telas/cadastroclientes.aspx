<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/telas/Topo.Master" CodeBehind="cadastroclientes.aspx.vb" Inherits="VoceFazNfe.cadastroclientes" %>

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


<!--/////////////////////////////////////////////////// Painel Obrigatório //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////-->
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
  


    

    <!--///////////////////////////////////////////////////  Container dados Principais do Produto  /////////////////////////////////////////////////////////////////////////////////////////////-->
     <asp:Panel ID="pnl_principal" runat="server" BackColor="Transparent" Height="100%" Visible="True">
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



                    <!--/////////////////////////////////////////////////// Lado Esquerdo -  regime Normal - MEI - SIMPLES NACIONAL /////////////////////////////////////////////////////////////////////////////////////////////-->
                    <div class="row" style="height: 20px"></div>

                    <div class="row" style="width: 100%; padding: 0px; margin: 0px; background-color: transparent; height: 100%; padding: 0px; margin: 0px">
                        <div class="col-xl-5" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

                            <div class="row" style="width: 100%; padding: 0px; margin: 0px; background-color: transparent; height: 100%; padding: 0px; margin: 0px">
                                
                                <div class="col-md-auto"
                                    style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">

                                    <div class="row" style="padding: 0px; margin: 0px">
                                        <div class="col" style="padding: 0px; margin: 0px">
                                            <asp:DropDownList ID="cs_regime_cliente" onBlur="SetTextIn(this,0);SetDiv('div_cadastro_clientes',0)" onFocus="SetTextIn(this,1);SetDiv('div_cadastro_clientes',1)" CssClass="layouttexto" runat="server">
                                                <asp:ListItem style="width: 100%;" Text="1-Regime Nacional" Value="1" />
                                                <asp:ListItem style="width: 100%;" Text="2 - Simples Nacional" Value="2" />
                                                <asp:ListItem style="width: 100%;" Text="3 - MEI" Value="3" />
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
    <!--/////////////////////////////////////////////////// Container  - Endereço do Destinatário da NF-e  /////////////////////////////////////////////////////////////////////////////////////////////-->


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
                                    Style="width: 150px" placeholder="00000-000" onBlur="SetTextIn(this,0);SetDiv('div_endereco_faturamento',0)" onFocus="SetTextIn(this,1);SetDiv('div_endereco_faturamento',1)">
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
                                        Style="width: 93%;" onBlur="SetTextIn(this,0);SetDiv('div_endereco_faturamento',0)" onFocus="SetTextIn(this,1);SetDiv('div_endereco_faturamento',1)">
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
                                        Style="width: 80px;" onBlur="SetTextIn(this,0);SetDiv('div_endereco_faturamento',0)" onFocus="SetTextIn(this,1);SetDiv('div_endereco_faturamento',1)">
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
                                Style="width: 100%;" onBlur="SetTextIn(this,0);SetDiv('div_endereco_faturamento',0)" onFocus="SetTextIn(this,1);SetDiv('div_endereco_faturamento',1)">
                            </asp:TextBox>
                        </div>
                    </div>
                </div>
            </div>

            <!--/////////////////////////////////////////////////// Div com os dados Iniciais / BAIRRO/ CODIGO DO MUNICIPIO/ /////////////////////////////////////////////////////////////////////////////////////////////-->
            <div class="row" style="height: 30px"></div>
            <div class="row">
                <div class="col-xl-5"
                    style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px; padding-left: 10px">

                    <div class="row"
                        style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

                        <div class="col-md-6"
                            style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">


                            <div class="row">
                                <div class="col"
                                    style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                    Bairro 
                                </div>
                            </div>

                            <div class="row" style="padding: 0px; margin: 0px">
                                <div class="col" style="padding: 0px; margin: 0px">
                                    <asp:TextBox ID="cs_endereco_faturamento_bairro" runat="server" CssClass="layouttexto"
                                        Style="width: 80%; padding: 0px; margin: 0px"
                                        onBlur="SetTextIn(this,0);SetDiv('div_endereco_faturamento',0)" onFocus="SetTextIn(this,1);SetDiv('div_endereco_faturamento',1)">

                                    </asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <div class="col-md-6" style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-top: 10px; padding-left: 20px;">
                            <div class="row">
                                <div class="col"
                                    style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                    Código do Município &nbsp &nbsp
                                    <img alt="" src="../Imagens/ihelp.png" style="width: 20px; height: 21px; cursor: pointer" onclick="anima_informacao(1,'codigomunicipio')" />
                                </div>
                            </div>
                            <div class="row">
                                <div class="col">
                                    <asp:TextBox ID="cs_endereco_faturamento_codigo_municipio" runat="server" CssClass="layouttexto"
                                        Style="width: 170px;" onBlur="SetTextIn(this,0);SetDiv('div_endereco_faturamento',0)" onFocus="SetTextIn(this,1);SetDiv('div_endereco_faturamento',1)"></asp:TextBox>
                                    <button class="material-symbols-outlined">
                                        <i
                                            class="fa-solid fa-magnifying-glass"></i>
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!--/////////////////////////////////////////////////// lado direito - Nome do municipio /////////////////////////////////////////////////////////////////////////////////////////////-->
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
                                    <asp:TextBox ID="cs_endereco_faturamento_nome_municipio" runat="server" CssClass="layouttexto"
                                        Style="width: 80%;" onBlur="SetTextIn(this,0);SetDiv('div_endereco_faturamento',0)" onFocus="SetTextIn(this,1);SetDiv('div_endereco_faturamento',1)">
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
                                    <asp:DropDownList ID="cs_endereco_faturamento_uf" onBlur="SetTextIn(this,0);SetDiv('div_endereco_faturamento',0)" onFocus="SetTextIn(this,1);SetDiv('div_endereco_faturamento',1)" CssClass="layouttexto" runat="server">
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
                                    Código do País 
                                </div>
                            </div>
                            <div class="row">
                                <div class="col">
                                    <asp:TextBox ID="cs_endereco_faturamento_codigo_pais" runat="server" CssClass="layouttexto" Style="width: 100px;" onBlur="SetTextIn(this,0);SetDiv('div_endereco_faturamento',0)" onFocus="SetTextIn(this,1);SetDiv('div_endereco_faturamento',1)"></asp:TextBox>
                                </div>
                            </div>
                        </div>

                    </div>

                </div>
            </div>

            <!--/////////////////////////////////////////////////// lado esquerdo - codigo do pais - nome do pais - img cliente  /////////////////////////////////////////////////////////////////////////////////////////////-->
            <div class="row" style="height: 30px"></div>
            <div class="row">
                <div class="col-xl-6"
                    style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px; padding-left: 10px">

                    <div class="row"
                        style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

                       
                        <div class="col-md-4" style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-left: 10px; padding-top: 10px">
                            <div class="row">
                                <div class="col"
                                    style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                    Nome do País
                                </div>
                            </div>
                            <div class="row" style="padding: 0px; margin: 0px">
                                <div class="col" style="padding: 0px; margin: 0px; background-color: transparent">
                                    <asp:TextBox ID="cs_endereco_faturamento_nome_pais" runat="server" CssClass="layouttexto"
                                        Style="width: 100px;" onBlur="SetTextIn(this,0);SetDiv('div_endereco_faturamento',0)" onFocus="SetTextIn(this,1);SetDiv('div_endereco_faturamento',1)">
                                    </asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <div class="col-md-4" style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">

                            <div class="row">
                                <div class="col" style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                    <asp:ImageButton runat="server" ID="cs_endereco_faturamento_icone_cliente" Height="50px" Widht="70px" ImageUrl="~/Imagens/icone_dados_cliente.png" Width="50px" Style="cursor: pointer" />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

                

    <!--///////////////////////////////////////////////////  Container Inscrição Estadual   /////////////////////////////////////////////////////////////////////////////////////////////-->
    
    <div class="container-fluid" style="padding: 0px; margin: 0px; width: 100%; height: 100%">
        <div class="row" style="width: 100%; height: 50px"></div>


        <div class="row" style="width: 100%; height: 100%; padding: 0px; margin: 0px; background-color: transparent">



            <div class="row" style="width: 100%; height: 100%; color: #177CC0; padding-left: 20px; padding-top: 0px; font-family: Arial; font-size: 20px; font-weight: bold; margin-left: 0px">

                 <div id="i_cadastro_cliente_inscricao_estadual_on" name="i_cadastro_cliente_inscricao_estadual_on" class="col" align="left" style="display: none; visibility: hidden; font-size: 20px; color: red; margin-right: 20px; border-bottom: none; cursor: pointer" onclick="mostra_div_informacao('div_cadastro_cliente_inscricao_estadual','i_cadastro_cliente_inscricao_estadual_on','i_cadastro_cliente_inscricao_estadual_off',0)"><span style="color: #177CC0; font-family: Arial; font-size: 20px; font-weight: bold;">Inscrição Estadual</span>&nbsp;&nbsp;<i class="fa fa-toggle-on"></i></div>
                 <div id="i_cadastro_cliente_inscricao_estadual_off" name="i_cadastro_cliente_inscricao_estadual_off" class="col" align="left" style="display: block; visibility: visible; font-size: 20px; color: red; margin-right: 20px; border-bottom: solid; border-width: 1px; border-color: #767676; cursor: pointer" onclick="mostra_div_informacao('div_cadastro_cliente_inscricao_estadual','i_cadastro_cliente_inscricao_estadual_on','i_cadastro_cliente_inscricao_estadual_off',1)"><span style="color: #177CC0; font-family: Arial; font-size: 20px; font-weight: bold;">Inscrição Estadual</span>&nbsp;&nbsp;<i class="fa fa-toggle-off"></i></div>

            </div>

            <div class="row" style="width: 100%; height: 20px"></div>


            <div id="div_cadastro_cliente_inscricao_estadual" name="div_cadastro_cliente_inscricao_estadual" style="display: none; visibility: hidden; width: 100%; height: 100%; background-color: transparent; margin-left: 20px; margin-right: 20px; border: solid; border-color: #177CC0; border-width: 1px; border-radius: 10px; padding: 0px 20px 20px 20px;">
                <div class="row" style="height: 20px"></div>

                <div class="row" style="width: 100%; padding: 0px; margin: 0px; background-color: transparent; height: 100%; padding: 0px; margin: 0px">

                    <!--/////////////////////////////////////////////////// Lado Esquerdo -  Código do Produto - Nome do Vendendor /////////////////////////////////////////////////////////////////////////////////////////////-->
                    <div class="col-xl-12" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

                        <div class="row" style="width: 100%; padding: 0px; margin: 0px; background-color: transparent; height: 100%; padding: 0px; margin: 0px">
                            <div class="col"
                                style="width: 50%; height: 100%; background-color: transparent; padding: 10px;">


                                <div class="row" style="padding: 0px; margin: 0px">
                                    <div class="col" style="padding: 0px; margin: 0px">
                                        <asp:RadioButton ID="cmd_inscricao_estadual_nao_possui" runat="server" Text="Não Possui" GroupName="inscricaoEstadualGroup"
                                            CssClass="layoutcheckbox" Style="padding: 10px 0px; margin: 0px; display: block; font-weight: bold;"
                                            AutoPostBack="True" OnCheckedChanged="RadioButton_CheckedChanged" />

                                        <asp:RadioButton ID="cmd_inscricao_estadual_isnto" runat="server" Text="Isento" GroupName="inscricaoEstadualGroup"
                                            CssClass="layoutcheckbox" Style="padding: 10px 0px; margin: 0px; display: block; font-weight: bold;"
                                            AutoPostBack="True" OnCheckedChanged="RadioButton_CheckedChanged" />

                                        <asp:RadioButton ID="cs_inscricao_estadual_possui" runat="server" Text="Possui (Informe o Número)" GroupName="inscricaoEstadualGroup"
                                            CssClass="layoutcheckbox" Style="padding: 10px 0px; margin: 0px; display: block; font-weight: bold;"
                                            AutoPostBack="True" OnCheckedChanged="RadioButton_CheckedChanged" />

                                        <asp:TextBox ID="cs_inscricao_estadual_numero" runat="server"  CssClass="layouttexto" Style="width: 300px; padding: 10px 0px; margin: 0px; display: block;"
                                            placeholder="Informe o número"  Enabled="False" onBlur="SetTextIn(this,0);SetDiv('i_cadastro_cliente_inscricao_estadual',0)" onFocus="SetTextIn(this,1);SetDiv('i_cadastro_cliente_inscricao_estadual',1)"/>
                                    </div>
                                </div>


                           

                        </div>
                    </div>
                   
                </div>
            </div>
        </div>
    </div>
</div>

    <!--///////////////////////////////////////////////////  Container Documentação   /////////////////////////////////////////////////////////////////////////////////////////////-->
<div class="container-fluid" style="padding: 0px; margin: 0px; width: 100%; height: 100%">
    <div class="row" style="width: 100%; height: 50px"></div>


    <div class="row" style="width: 100%; height: 100%; padding: 0px; margin: 0px; background-color: transparent">



        <div class="row" style="width: 100%; height: 100%; color: #177CC0; padding-left: 20px; padding-top: 0px; font-family: Arial; font-size: 20px; font-weight: bold; margin-left: 0px">

            <div id="i_cadastro_cliente_documentacao_on" name="i_cadastro_cliente_documentacao_on" class="col" align="left" style="display: none; visibility: hidden; font-size: 20px; color: red; margin-right: 20px; border-bottom: none; cursor: pointer" onclick="mostra_div_informacao('div_cadastro_cliente_documentacao','i_cadastro_cliente_documentacao_on','i_cadastro_cliente_documentacao_off',0)"><span style="color: #177CC0; font-family: Arial; font-size: 20px; font-weight: bold;">Documentação</span>&nbsp;&nbsp;<i class="fa fa-toggle-on"></i></div>
            <div id="i_cadastro_cliente_documentacao_off" name="i_cadastro_cliente_documentacao_off" class="col" align="left" style="display: block; visibility: visible; font-size: 20px; color: red; margin-right: 20px; border-bottom: solid; border-width: 1px; border-color: #767676; cursor: pointer" onclick="mostra_div_informacao('div_cadastro_cliente_documentacao','i_cadastro_cliente_documentacao_on','i_cadastro_cliente_documentacao_off',1)"><span style="color: #177CC0; font-family: Arial; font-size: 20px; font-weight: bold;">Documentação</span>&nbsp;&nbsp;<i class="fa fa-toggle-off"></i></div>

        </div>
        
        <div class="row" style="width: 100%; height: 20px"></div>


        <div id="div_cadastro_cliente_documentacao" name="div_cadastro_cliente_documentacao" style="display: none; visibility: hidden; width: 100%; height: 100%; background-color: transparent; margin-left: 20px; margin-right: 20px; border: solid; border-color: #177CC0; border-width: 1px; border-radius: 10px; padding: 0px 20px 20px 20px;">
            <div class="row" style="height: 20px"></div>

            <div class="row" style="width: 100%; padding: 0px; margin: 0px; background-color: transparent; height: 100%; padding: 0px; margin: 0px">

                <!--/////////////////////////////////////////////////// Lado Esquerdo -  CPNJ - CPF /////////////////////////////////////////////////////////////////////////////////////////////-->
                <div class="col-xl-6" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

                    <div class="row" style="width: 100%; padding: 0px; margin: 0px; background-color: transparent; height: 100%; padding: 0px; margin: 0px">
                        <div class="col-md-6"
                            style="width: 50%; height: 100%; background-color: transparent; padding: 10px;">


                            <div class="row">
                                <div class="col"
                                    style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                    CNPJ 
                                </div>
                            </div>

                            <div class="row" style="padding: 0px; margin: 0px">
                                <div class="col" style="padding: 0px; margin: 0px">
                                    <asp:TextBox ID="cs_documentacao_cliente_cnpj" runat="server" CssClass="layouttexto"
                                        Style="width: 80%; padding: 0px; margin: 0px"
                                        onBlur="SetTextIn(this,0);SetDiv('div_cadastro_cliente_documentacao',0)" onFocus="SetTextIn(this,1);SetDiv('div_cadastro_cliente_documentacao',1)">

                                    </asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <div class="col-md-6"
                            style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">


                            <div class="row">
                                <div class="col"
                                    style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                    CPF
                                </div>
                            </div>

                            <div class="row" style="padding: 0px; margin: 0px">
                                <div class="col" style="padding: 0px; margin: 0px">
                                    <asp:TextBox ID="cs_documentacao_cliente_cpf" runat="server" CssClass="layouttexto"
                                        Style="width: 80%; padding: 0px; margin: 0px"
                                        onBlur="SetTextIn(this,0);SetDiv('div_cadastro_cliente_documentacao',0)" onFocus="SetTextIn(this,1);SetDiv('div_cadastro_cliente_documentacao',1)">

                                    </asp:TextBox>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
                 <!--/////////////////////////////////////////////////// Lado Esquerdo -  insc.municipal - inscricao suframa /////////////////////////////////////////////////////////////////////////////////////////////-->

                <div class="col-xl-6" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

                    <div class="row" style="width: 100%; padding: 0px; margin: 0px; background-color: transparent; height: 100%; padding: 0px; margin: 0px">
                        <div class="col-md-6" style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">
                            <div class="row">
                                <div class="col"
                                    style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                    Insc. Municipal(CCM)
                                </div>
                            </div>

                            <div class="row" style="padding: 0px; margin: 0px">
                                <div class="col" style="padding: 0px; margin: 0px">
                                    <asp:TextBox ID="cs_documentacao_cliente_isc_municipal" runat="server" CssClass="layouttexto"
                                        Style="width: 90%; padding: 0px; margin: 0px"
                                        onBlur="SetTextIn(this,0);SetDiv('div_cadastro_cliente_documentacao',0)" onFocus="SetTextIn(this,1);SetDiv('div_cadastro_cliente_documentacao',1)">

                                    </asp:TextBox>
                                </div>
                                </div>
                            </div>

                        <div class="col-md-6"
                            style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">


                            <div class="row">
                                <div class="col"
                                    style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                   Inscrição na SUFRAMA 
                                </div>
                            </div>

                            <div class="row" style="padding: 0px; margin: 0px">
                                <div class="col" style="padding: 0px; margin: 0px">
                                    <asp:TextBox ID="cs_documentacao_cliente_suframa" runat="server" CssClass="layouttexto"
                                        Style="width: 90%; padding: 0px; margin: 0px"
                                        onBlur="SetTextIn(this,0);SetDiv('div_cadastro_cliente_documentacao',0)" onFocus="SetTextIn(this,1);SetDiv('div_cadastro_cliente_documentacao',1)">

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

            <div id="i_cadastro_transportadora_fone_contato_on" name="i_cadastro_transportadora_fone_contato_on" class="col" align="left" style="display: none; visibility: hidden; font-size: 20px; color: red; margin-right: 20px; border-bottom: none; cursor: pointer" onclick="mostra_div_informacao('div_cadastro_transportadora_fone_contato','i_cadastro_transportadora_fone_contato_on','i_cadastro_transportadora_fone_contato_off',0)"><span style="color: #177CC0; font-family: Arial; font-size: 20px; font-weight: bold;">Fone / Contato</span>&nbsp;&nbsp;<i class="fa fa-toggle-on"></i></div>
            <div id="i_cadastro_transportadora_fone_contato_off" name="i_cadastro_transportadora_fone_contato_off" class="col" align="left" style="display: block; visibility: visible; font-size: 20px; color: red; margin-right: 20px; border-bottom: solid; border-width: 1px; border-color: #767676; cursor: pointer" onclick="mostra_div_informacao('div_cadastro_transportadora_fone_contato','i_cadastro_transportadora_fone_contato_on','i_cadastro_transportadora_fone_contato_off',1)"><span style="color: #177CC0; font-family: Arial; font-size: 20px; font-weight: bold;">Fone / Contato</span>&nbsp;&nbsp;<i class="fa fa-toggle-off"></i></div>

        </div>

        <div class="row" style="width: 100%; height: 20px"></div>


        <div id="div_cadastro_transportadora_fone_contato" name="div_cadastro_transportadora_fone_contato" style="display: none; visibility: hidden; width: 100%; height: 100%; background-color: transparent; margin-left: 20px; margin-right: 20px; border: solid; border-color: #177CC0; border-width: 1px; border-radius: 10px; padding: 0px 20px 20px 20px;">
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
                    <asp:TextBox ID="cs_transportadora_telefone" runat="server" CssClass="layouttexto"
                        Style="width: 80%; padding: 0px; margin: 0px"
                        onBlur="SetTextIn(this,0);SetDiv('div_cadastro_transportadora_fone_contato',0)" onFocus="SetTextIn(this,1);SetDiv('div_cadastro_transportadora_fone_contato',1)">

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
                    <asp:TextBox ID="cs_transportadora_ramal" runat="server" CssClass="layouttexto"
                        Style="width: 200px; padding: 0px; margin: 0px"
                        onBlur="SetTextIn(this,0);SetDiv('div_cadastro_transportadora_fone_contato',0)" onFocus="SetTextIn(this,1);SetDiv('div_cadastro_transportadora_fone_contato',1)">

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
                    <asp:TextBox ID="cs_transportadora_fax" runat="server" CssClass="layouttexto"
                        Style="width: 200px; padding: 0px; margin: 0px"
                        onBlur="SetTextIn(this,0);SetDiv('div_cadastro_transportadora_fone_contato',0)" onFocus="SetTextIn(this,1);SetDiv('div_cadastro_transportadora_fone_contato',1)">

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
                                    <asp:TextBox ID="cs_transportadora_contato" runat="server" CssClass="layouttexto"
                                        Style="width: 90%; padding: 0px; margin: 0px"
                                        onBlur="SetTextIn(this,0);SetDiv('div_cadastro_transportadora_fone_contato',0)" onFocus="SetTextIn(this,1);SetDiv('div_cadastro_transportadora_fone_contato',1)">

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
                                    <asp:TextBox ID="cs_transportadora_site" runat="server" CssClass="layouttexto"
                                        Style="width: 90%; padding: 0px; margin: 0px"
                                        onBlur="SetTextIn(this,0);SetDiv('div_cadastro_transportadora_fone_contato',0)" onFocus="SetTextIn(this,1);SetDiv('div_cadastro_transportadora_fone_contato ',1)">

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
                                    <asp:TextBox ID="cs_transportadora_email" runat="server" CssClass="layouttexto"
                                        Style="width: 35%; padding: 0px; margin: 0px"
                                        onBlur="SetTextIn(this,0);SetDiv('div_cadastro_transportadora_fone_contato',0)" onFocus="SetTextIn(this,1);SetDiv('div_cadastro_transportadora_fone_contato ',1)">

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


     <!--/////////////////////////////////////////////////// Container  - Endereço de Cobrança da NF-e  /////////////////////////////////////////////////////////////////////////////////////////////-->


 <div class="container-fluid" style="padding: 0px; margin: 0px; width: 97%; height: 100%">


     <div class="row" style="width: 100%; height: 50px"></div>

     <div class="row" style="width: 100%; height: 100%; display: block; padding-left: 20px; padding-top: 0px; margin-left: 0px;">

         <div id="i_endereco_cobranca_on" name="i_endereco_cobranca_on" class="col" align="left" style="display: none; visibility: hidden; font-size: 20px; color: red; margin-right: 20px; border-bottom: none; cursor: pointer" onclick="mostra_div_informacao('div_endereco_cobranca','i_endereco_cobranca_on','i_endereco_cobranca_off',0)"><span style="color: #177CC0; font-family: Arial; font-size: 20px; font-weight: bold;">Endereço de Cobrança</span>&nbsp;&nbsp;<i class="fa fa-toggle-on"></i></div>
         <div id="i_endereco_cobranca_off" name="i_endereco_cobranca_off" class="col" align="left" style="display: block; visibility: visible; font-size: 20px; color: red; margin-right: 20px; border-bottom: solid; border-color: #767676; border-width: 1px; cursor: pointer" onclick="mostra_div_informacao('div_endereco_cobranca','i_endereco_cobranca_on','i_endereco_cobranca_off',1)"><span style="color: #177CC0; font-family: Arial; font-size: 20px; font-weight: bold;">Endereço de Cobrança</span>&nbsp;&nbsp;<i class="fa fa-toggle-off"></i></div>


     </div>

     <div class="row" style="width: 100%; height: 20px"></div>

     <!--/////////////////////////////////////////////////// Div com os dados endereço cobranca /////////////////////////////////////////////////////////////////////////////////////////////-->
     <div id="div_endereco_cobranca" name="div_endereco_cobranca"
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
                             <asp:TextBox ID="cs_cliente_endereco_cobranca_cep" runat="server" CssClass="layouttexto"
                                 Style="width: 150px" placeholder="00000-000" onBlur="SetTextIn(this,0);SetDiv('div_endereco_cobranca',0)" onFocus="SetTextIn(this,1);SetDiv('div_endereco_cobranca',1)">
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
                                 <asp:TextBox ID="cs_cliente_endereco_cobrança" runat="server" CssClass="layouttexto"
                                     Style="width: 93%;" onBlur="SetTextIn(this,0);SetDiv('div_endereco_cobranca',0)" onFocus="SetTextIn(this,1);SetDiv('div_endereco_cobranca',1)">
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
                                 <asp:TextBox ID="cs_cliente_numero_endereco_cobranca" runat="server" CssClass="layouttexto"
                                     Style="width: 80px;" onBlur="SetTextIn(this,0);SetDiv('div_endereco_cobranca',0)" onFocus="SetTextIn(this,1);SetDiv('div_endereco_cobranca',1)">
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
                         <asp:TextBox ID="cs_complemento_endereco_cobranca" runat="server" CssClass="layouttexto"
                             Style="width: 100%;" onBlur="SetTextIn(this,0);SetDiv('div_endereco_cobranca',0)" onFocus="SetTextIn(this,1);SetDiv('div_endereco_cobranca',1)">
                         </asp:TextBox>
                     </div>
                 </div>
             </div>
         </div>

         <!--/////////////////////////////////////////////////// Div com os dados Iniciais / BAIRRO/ CODIGO DO MUNICIPIO/ /////////////////////////////////////////////////////////////////////////////////////////////-->
         <div class="row" style="height: 30px"></div>
         <div class="row">
             <div class="col-xl-5"
                 style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px; padding-left: 10px">

                 <div class="row"
                     style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

                     <div class="col-md-6"
                         style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">


                         <div class="row">
                             <div class="col"
                                 style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                 Bairro 
                             </div>
                         </div>

                         <div class="row" style="padding: 0px; margin: 0px">
                             <div class="col" style="padding: 0px; margin: 0px">
                                 <asp:TextBox ID="cs_cliente_bairro_endereco_cobranca" runat="server" CssClass="layouttexto"
                                     Style="width: 80%; padding: 0px; margin: 0px"
                                     onBlur="SetTextIn(this,0);SetDiv('div_endereco_cobranca',0)" onFocus="SetTextIn(this,1);SetDiv('div_endereco_cobranca',1)">

                                 </asp:TextBox>
                             </div>
                         </div>
                     </div>

                     <div class="col-md-6" style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-top: 10px; padding-left: 20px;">
                         <div class="row">
                             <div class="col"
                                 style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                 Código do Município &nbsp &nbsp
                                 <img alt="" src="../Imagens/ihelp.png" style="width: 20px; height: 21px; cursor: pointer" onclick="anima_informacao(1,'codigomunicipio')" />
                             </div>
                         </div>
                         <div class="row">
                             <div class="col">
                                 <asp:TextBox ID="cs_cliente_codigo_municipio_endereco_cobranca" runat="server" CssClass="layouttexto"
                                     Style="width: 170px;" onBlur="SetTextIn(this,0);SetDiv('div_endereco_cobranca',0)" onFocus="SetTextIn(this,1);SetDiv('div_endereco_cobranca',1)"></asp:TextBox>
                                 <button class="material-symbols-outlined">
                                     <i
                                         class="fa-solid fa-magnifying-glass"></i>
                                 </button>
                             </div>
                         </div>
                     </div>
                 </div>
             </div>
             <!--/////////////////////////////////////////////////// lado direito - Nome do municipio /////////////////////////////////////////////////////////////////////////////////////////////-->
             <div class="col-xl-7" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px; padding-left: 10px; padding-top: 10px; padding-left: 20px">
                 <div class="row">
                     

                     

                     <div class="col-md-2" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px; padding-left: 10px; padding-top: 10px; padding-left: 20px">
                         <div class="row">
                             <div class="col"
                                 style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                 UF 
                             </div>
                         </div>
                         <div class="row">
                             <div class="col">
                                 <asp:DropDownList ID="cs_cliente_uf_endereco_cobranca" onBlur="SetTextIn(this,0);SetDiv('div_endereco_cobranca',0)" onFocus="SetTextIn(this,1);SetDiv('div_endereco_cobranca',1)" CssClass="layouttexto" runat="server">
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

                     <div class="col-md-10" style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">

                         <div class="row">
                             <div class="col" style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                 <asp:ImageButton runat="server" ID="cs_cliente_img_endereco_cobranca" Height="50px" Widht="70px" ImageUrl="~/Imagens/icone_dados_cliente.png" Width="50px" Style="cursor: pointer" />
                             </div>
                         </div>
                     </div>
                 </div>
             </div>
         </div>

     </div>
 </div>

    
     <!--/////////////////////////////////////////////////// Container  - Endereço de Entrega da NF-e  /////////////////////////////////////////////////////////////////////////////////////////////-->


 <div class="container-fluid" style="padding: 0px; margin: 0px; width: 97%; height: 100%">


     <div class="row" style="width: 100%; height: 50px"></div>

     <div class="row" style="width: 100%; height: 100%; display: block; padding-left: 20px; padding-top: 0px; margin-left: 0px;">

         <div id="i_endereco_entrega_on" name="i_endereco_entrega_on" class="col" align="left" style="display: none; visibility: hidden; font-size: 20px; color: red; margin-right: 20px; border-bottom: none; cursor: pointer" onclick="mostra_div_informacao('div_endereco_entrega','i_endereco_entrega_on','i_endereco_entrega_off',0)"><span style="color: #177CC0; font-family: Arial; font-size: 20px; font-weight: bold;">Endereço de Entrega</span>&nbsp;&nbsp;<i class="fa fa-toggle-on"></i></div>
         <div id="i_endereco_entrega_off" name="i_endereco_entrega_off" class="col" align="left" style="display: block; visibility: visible; font-size: 20px; color: red; margin-right: 20px; border-bottom: solid; border-color: #767676; border-width: 1px; cursor: pointer" onclick="mostra_div_informacao('div_endereco_entrega','i_endereco_entrega_on','i_endereco_entrega_off',1)"><span style="color: #177CC0; font-family: Arial; font-size: 20px; font-weight: bold;">Endereço de Entrega</span>&nbsp;&nbsp;<i class="fa fa-toggle-off"></i></div>


     </div>

     <div class="row" style="width: 100%; height: 20px"></div>

     <!--/////////////////////////////////////////////////// Div com os dados endereço cobranca /////////////////////////////////////////////////////////////////////////////////////////////-->
     <div id="div_endereco_entrega" name="div_endereco_entrega"
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
                             <asp:TextBox ID="cs_cliente_endereco_entrega_cep" runat="server" CssClass="layouttexto"
                                 Style="width: 150px" placeholder="00000-000" onBlur="SetTextIn(this,0);SetDiv('div_endereco_entrega',0)" onFocus="SetTextIn(this,1);SetDiv('div_endereco_entrega',1)">
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
                                 <asp:TextBox ID="cs_cliente_endereco_entrega" runat="server" CssClass="layouttexto"
                                     Style="width: 93%;" onBlur="SetTextIn(this,0);SetDiv('div_endereco_entrega',0)" onFocus="SetTextIn(this,1);SetDiv('div_endereco_entrega',1)">
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
                                 <asp:TextBox ID="cs_cliente_endereco_entrega_numero" runat="server" CssClass="layouttexto"
                                     Style="width: 80px;" onBlur="SetTextIn(this,0);SetDiv('div_endereco_entrega',0)" onFocus="SetTextIn(this,1);SetDiv('div_endereco_entrega',1)">
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
                         <asp:TextBox ID="cs_cliente_endereco_entrega_complemento" runat="server" CssClass="layouttexto"
                             Style="width: 100%;" onBlur="SetTextIn(this,0);SetDiv('div_endereco_entrega',0)" onFocus="SetTextIn(this,1);SetDiv('div_endereco_entrega',1)">
                         </asp:TextBox>
                     </div>
                 </div>
             </div>
         </div>

         <!--/////////////////////////////////////////////////// Div com os dados Iniciais / BAIRRO/ CODIGO DO MUNICIPIO/ /////////////////////////////////////////////////////////////////////////////////////////////-->
         <div class="row" style="height: 30px"></div>
         <div class="row">
             <div class="col-xl-5"
                 style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px; padding-left: 10px">

                 <div class="row"
                     style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

                     <div class="col-md-6"
                         style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">


                         <div class="row">
                             <div class="col"
                                 style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                 Bairro 
                             </div>
                         </div>

                         <div class="row" style="padding: 0px; margin: 0px">
                             <div class="col" style="padding: 0px; margin: 0px">
                                 <asp:TextBox ID="cs_cliente_endereco_entrega_bairro" runat="server" CssClass="layouttexto"
                                     Style="width: 80%; padding: 0px; margin: 0px"
                                     onBlur="SetTextIn(this,0);SetDiv('div_endereco_entrega',0)" onFocus="SetTextIn(this,1);SetDiv('div_endereco_entrega',1)">

                                 </asp:TextBox>
                             </div>
                         </div>
                     </div>

                     <div class="col-md-6" style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-top: 10px; padding-left: 20px;">
                         <div class="row">
                             <div class="col"
                                 style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                 Código do Município &nbsp &nbsp
                                 <img alt="" src="../Imagens/ihelp.png" style="width: 20px; height: 21px; cursor: pointer" onclick="anima_informacao(1,'codigomunicipio')" />
                             </div>
                         </div>
                         <div class="row">
                             <div class="col">
                                 <asp:TextBox ID="cs_cliente_endereco_entrega_codigo_municipio" runat="server" CssClass="layouttexto"
                                     Style="width: 170px;" onBlur="SetTextIn(this,0);SetDiv('div_endereco_entrega',0)" onFocus="SetTextIn(this,1);SetDiv('div_endereco_entrega',1)"></asp:TextBox>
                                 <button class="material-symbols-outlined">
                                     <i
                                         class="fa-solid fa-magnifying-glass"></i>
                                 </button>
                             </div>
                         </div>
                     </div>
                 </div>
             </div>
             <!--/////////////////////////////////////////////////// lado direito - Nome do municipio /////////////////////////////////////////////////////////////////////////////////////////////-->
             <div class="col-xl-7" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px; padding-left: 10px; padding-top: 10px; padding-left: 20px">
                 <div class="row">
                     

                     

                     <div class="col-md-2" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px; padding-left: 10px; padding-top: 10px; padding-left: 20px">
                         <div class="row">
                             <div class="col"
                                 style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                 UF 
                             </div>
                         </div>
                         <div class="row">
                             <div class="col">
                                 <asp:DropDownList ID="cs_cliente_endereco_entrega_uf" onBlur="SetTextIn(this,0);SetDiv('div_endereco_entrega',0)" onFocus="SetTextIn(this,1);SetDiv('div_endereco_entrega',1)" CssClass="layouttexto" runat="server">
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

                     <div class="col-md-10" style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">

                         <div class="row">
                             <div class="col" style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                 <asp:ImageButton runat="server" ID="cs_cliente_endereco_entrega_img" Height="50px" Widht="70px" ImageUrl="~/Imagens/icone_dados_cliente.png" Width="50px" Style="cursor: pointer" />
                             </div>
                         </div>
                     </div>
                 </div>
             </div>
         </div>

     </div>
 </div>

   <!--///////////////////////////////////////////////////  Container avisos   /////////////////////////////////////////////////////////////////////////////////////////////-->
<div class="container-fluid" style="padding: 0px; margin: 0px; width: 100%; height: 100%">
    <div class="row" style="width: 100%; height: 50px"></div>

    <div class="row" style="width: 100%; height: 100%; padding: 0px; margin: 0px; background-color: transparent">
        <div class="row" style="width: 100%; height: 100%; color: #177CC0; padding-left: 20px; padding-top: 0px; font-family: Arial; font-size: 20px; font-weight: bold; margin-left: 0px">
            <div id="i_cadastro_cliente_avisos_on" name="i_cadastro_cliente_avisos_on" class="col" align="left" style="display: none; visibility: hidden; font-size: 20px; color: red; margin-right: 20px; border-bottom: none; cursor: pointer" onclick="mostra_div_informacao('div_cadastro_cliente_avisos','i_cadastro_cliente_avisos_on','i_cadastro_cliente_avisos_off',0)">
                <span style="color: #177CC0; font-family: Arial; font-size: 20px; font-weight: bold;">Avisos</span>&nbsp;&nbsp;<i class="fa fa-toggle-on"></i>
            </div>
            <div id="i_cadastro_cliente_avisos_off" name="i_cadastro_cliente_avisos_off" class="col" align="left" style="display: block; visibility: visible; font-size: 20px; color: red; margin-right: 20px; border-bottom: solid; border-width: 1px; border-color: #767676; cursor: pointer" onclick="mostra_div_informacao('div_cadastro_cliente_avisos','i_cadastro_cliente_avisos_on','i_cadastro_cliente_avisos_off',1)">
                <span style="color: #177CC0; font-family: Arial; font-size: 20px; font-weight: bold;">Avisos</span>&nbsp;&nbsp;<i class="fa fa-toggle-off"></i>
            </div>
        </div>
        
        <div class="row" style="width: 100%; height: 20px"></div>

        <div id="div_cadastro_cliente_avisos" name="div_cadastro_cliente_avisos" style="display: none; visibility: hidden; width: 100%; height: 100%; background-color: transparent; margin-left: 20px; margin-right: 20px; border: solid; border-color: #177CC0; border-width: 1px; border-radius: 10px; padding: 0px 20px 20px 20px;">
            <div class="row" style="height: 20px"></div>

            <div class="row" style="width: 100%; padding: 0px; margin: 0px; background-color: transparent; height: 100%; padding: 0px; margin: 0px">
                <!--/////////////////////////////////////////////////// Lado Esquerdo -  CPNJ - CPF /////////////////////////////////////////////////////////////////////////////////////////////-->
                <div class="col-xl-12" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">
                    <div class="row" style="width: 100%; padding: 0px; margin: 0px; background-color: transparent; height: 100%; padding: 0px; margin: 0px">
                        <div class="col-md-12" style="width: 50%; height: 100%; background-color: transparent; padding: 10px;">
                            <div class="row" style="padding: 0px; margin: 0px">
                                <div class="col" style="padding: 0px; margin: 0px">
                                    <textarea id="myTextArea" runat="server" class="layouttexto" rows="4" cols="50"
                                        style="width: 50%; padding: 0px; margin: 0px; border: 1px solid #000000;"
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
</div>

    <!--/////////////////////////////////////////////////// Container  - Complemento  /////////////////////////////////////////////////////////////////////////////////////////////-->


    <div class="container-fluid" style="padding: 0px; margin: 0px; width: 97%; height: 100%">


        <div class="row" style="width: 100%; height: 50px"></div>

        <div class="row" style="width: 100%; height: 100%; display: block; padding-left: 20px; padding-top: 0px; margin-left: 0px;">

            <div id="i_cadastro_cliente_dados_complemento_on" name="i_cadastro_cliente_dados_complemento_on" class="col" align="left" style="display: none; visibility: hidden; font-size: 20px; color: red; margin-right: 20px; border-bottom: none; cursor: pointer" onclick="mostra_div_informacao('div_cadastro_cliente_dados_complemento','i_cadastro_cliente_dados_complemento_on','i_cadastro_cliente_dados_complemento_off',0)"><span style="color: #177CC0; font-family: Arial; font-size: 20px; font-weight: bold;">Complemento</span>&nbsp;&nbsp;<i class="fa fa-toggle-on"></i></div>
            <div id="i_cadastro_cliente_dados_complemento_off" name="i_cadastro_cliente_dados_complemento_off" class="col" align="left" style="display: block; visibility: visible; font-size: 20px; color: red; margin-right: 20px; border-bottom: solid; border-color: #767676; border-width: 1px; cursor: pointer" onclick="mostra_div_informacao('div_cadastro_cliente_dados_complemento','i_cadastro_cliente_dados_complemento_on','i_cadastro_cliente_dados_complemento_off',1)"><span style="color: #177CC0; font-family: Arial; font-size: 20px; font-weight: bold;">Complemento</span>&nbsp;&nbsp;<i class="fa fa-toggle-off"></i></div>


        </div>

        <div class="row" style="width: 100%; height: 20px"></div>

        <!--/////////////////////////////////////////////////// Div com os dados Complemento /////////////////////////////////////////////////////////////////////////////////////////////-->
        <div id="div_cadastro_cliente_dados_complemento" name="div_cadastro_cliente_dados_complemento"
            style="display: none; visibility: hidden; width: 100%; height: 100%; background-color: transparent; margin-left: 20px; margin-right: 20px; border: solid; border-color: #177CC0; border-width: 1px; border-radius: 10px; padding: 0px 20px 20px 20px;">



            <div class="row"
                style="width: 100%; padding: 0px; margin: 0px; background-color: transparent; height: 100%; padding: 0px; margin: 0px">

                <!--/////////////////////////////////////////////////// lado esquerdo vendendor - região /////////////////////////////////////////////////////////////////////////////////////////////-->
                <div class="col-xl-6" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px; padding-left: 10px">

                    <div class="row" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">



                        <div class="col-md-6" style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-left: 15px; padding-top: 10px">
                            <div class="row">
                                <div class="col" style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                    Vendedor
                                </div>
                            </div>
                            <div class="input-group">

                                <div class="row" style="padding: 0px; margin: 0px">
                                    <div class="col" style="padding: 0px; margin: 0px">
                                        <asp:TextBox ID="cs_cadastro_cliente_vendedor0" runat="server" CssClass="layouttexto"
                                            Style="width: 10%;" onBlur="SetTextIn(this,0);SetDiv('div_cadastro_cliente_dados_complemento',0)" onFocus="SetTextIn(this,1);SetDiv('div_cadastro_cliente_dados_complemento',1)">
                                        </asp:TextBox>

                                        <asp:TextBox ID="cs_cadastro_cliente_vendedor1" runat="server" CssClass="layouttexto"
                                            Style="width: 270px" onBlur="SetTextIn(this,0);SetDiv('div_cadastro_cliente_dados_complemento',0)" onFocus="SetTextIn(this,1);SetDiv('div_cadastro_cliente_dados_complemento',1)">
                                        </asp:TextBox>



                                        <button class="material-symbols-outlined">
                                            <i class="fa-solid fa-magnifying-glass"></i>
                                        </button>

                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6" style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-left: 15px; padding-top: 10px">
                            <div class="row">
                                <div class="col" style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                   Região
                                </div>
                            </div>
                            <div class="input-group">

                                <div class="row" style="padding: 0px; margin: 0px">
                                    <div class="col" style="padding: 0px; margin: 0px">
                                        <asp:TextBox ID="cs_cadastro_cliente_regiao0" runat="server" CssClass="layouttexto"
                                            Style="width: 10%;" onBlur="SetTextIn(this,0);SetDiv('div_cadastro_cliente_dados_complemento',0)" onFocus="SetTextIn(this,1);SetDiv('div_cadastro_cliente_dados_complemento',1)">
                                        </asp:TextBox>

                                        <asp:TextBox ID="cs_cadastro_cliente_regiao1" runat="server" CssClass="layouttexto"
                                            Style="width: 270px" onBlur="SetTextIn(this,0);SetDiv('div_cadastro_cliente_dados_complemento',0)" onFocus="SetTextIn(this,1);SetDiv('div_cadastro_cliente_dados_complemento',1)">
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
                <!--/////////////////////////////////////////////////// Lado Direito - Complemento da Descrição /////////////////////////////////////////////////////////////////////////////////////////////-->
                <div class="col-xl-6" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px; padding-left: 10px">

                    <div class="row" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">



                        <div class="col-md-6" style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-left: 15px; padding-top: 10px">
                            <div class="row">
                                <div class="col" style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                    Familía do Cliente
                                </div>
                            </div>
                            <div class="input-group">

                                <div class="row" style="padding: 0px; margin: 0px">
                                    <div class="col" style="padding: 0px; margin: 0px">
                                        <asp:TextBox ID="cs_cadastro_cliente_familia_cliente0" runat="server" CssClass="layouttexto"
                                            Style="width: 10%;" onBlur="SetTextIn(this,0);SetDiv('div_cadastro_cliente_dados_complemento',0)" onFocus="SetTextIn(this,1);SetDiv('div_cadastro_cliente_dados_complemento',1)">
                                        </asp:TextBox>

                                        <asp:TextBox ID="cs_cadastro_cliente_familia_cliente1" runat="server" CssClass="layouttexto"
                                            Style="width: 270px" onBlur="SetTextIn(this,0);SetDiv('div_cadastro_cliente_dados_complemento',0)" onFocus="SetTextIn(this,1);SetDiv('div_cadastro_cliente_dados_complemento',1)">
                                        </asp:TextBox>



                                        <button class="material-symbols-outlined">
                                            <i class="fa-solid fa-magnifying-glass"></i>
                                        </button>

                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6" style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-left: 15px; padding-top: 10px">
                            <div class="row">
                                <div class="col" style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                    Data de nascimento
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

            <!--/////////////////////////////////////////////////// lado esquerdo E-mail - Site /////////////////////////////////////////////////////////////////////////////////////////////-->
            <div class="row" style="height: 30px"></div>
            <div class="row" style="width: 100%; padding: 0px; margin: 0px; background-color: transparent; height: 100%; padding: 0px; margin: 0px; padding-left: 10px"">
                <div class="col-xl-6" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

                    <div class="row" style="width: 100%; padding: 0px; margin: 0px; background-color: transparent; height: 100%; padding: 0px; margin: 0px">
                        <div class="col-md-6" style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">

                            <div class="row">
                                <div class="col"
                                    style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                    Representante
                                </div>
                            </div>

                            <div class="input-group">

                                <div class="row" style="padding: 0px; margin: 0px">
                                    <div class="col" style="padding: 0px; margin: 0px">
                                        <asp:TextBox ID="cs_cadastro_cliente_representante0" runat="server" CssClass="layouttexto"
                                            Style="width: 10%;" onBlur="SetTextIn(this,0);SetDiv('div_cadastro_cliente_dados_complemento',0)" onFocus="SetTextIn(this,1);SetDiv('div_cadastro_cliente_dados_complemento',1)">
                                        </asp:TextBox>

                                        <asp:TextBox ID="cs_cadastro_cliente_representante1" runat="server" CssClass="layouttexto"
                                            Style="width: 270px" onBlur="SetTextIn(this,0);SetDiv('div_cadastro_cliente_dados_complemento',0)" onFocus="SetTextIn(this,1);SetDiv('div_cadastro_cliente_dados_complemento',1)">
                                        </asp:TextBox>



                                        <button class="material-symbols-outlined">
                                            <i class="fa-solid fa-magnifying-glass"></i>
                                        </button>

                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-md-6" style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">

                            <div class="row">
                                <div class="col"
                                    style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                    Email
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
                <!--/////////////////////////////////////////////////// lado direito - Email para envio de NF-e /////////////////////////////////////////////////////////////////////////////////////////////-->
                <div class="col-xl-6" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

                    <div class="row" style="width: 100%; padding: 0px; margin: 0px; background-color: transparent; height: 100%; padding: 0px; margin: 0px">
                        <div class="col-md-6" style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">

                            <div class="row">
                                <div class="col"
                                    style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                    E-mail para envio da NF-e
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

                        <div class="col-md-6" style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">

                            <div class="row">
                                <div class="col"
                                    style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                    Instagram
                                </div>
                            </div>

                            <div class="row" style="padding: 0px; margin: 0px">
                                <div class="col" style="padding: 0px; margin: 0px">
                                    <asp:TextBox ID="cs_cadastro_cliente_instagram" runat="server" CssClass="layouttexto"
                                        Style="width: 80%; padding: 0px; margin: 0px"
                                        onBlur="SetTextIn(this,0);SetDiv('div_cadastro_cliente_dados_complemento',0)" onFocus="SetTextIn(this,1);SetDiv('div_cadastro_cliente_dados_complemento',1)">

                                    </asp:TextBox>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

      

     <!--///////////////////////////////////////////////////  Container - Referencias Comerciais  /////////////////////////////////////////////////////////////////////////////////////////////-->
 <div class="container-fluid" style="padding: 0px; margin: 0px; width: 100%; height: 100%">
     <div class="row" style="width: 100%; height: 50px"></div>


     <div class="row" style="width: 100%; height: 100%; padding: 0px; margin: 0px; background-color: transparent">



         <div class="row" style="width: 100%; height: 100%; color: #177CC0; padding-left: 20px; padding-top: 0px; font-family: Arial; font-size: 20px; font-weight: bold; margin-left: 0px">

             <div id="i_cadastro_cliente_referencias_comerciais_on" name="i_cadastro_fone_referencias_comerciais_on" class="col" align="left" style="display: none; visibility: hidden; font-size: 20px; color: red; margin-right: 20px; border-bottom: none; cursor: pointer" onclick="mostra_div_informacao('div_cadastro_cliente_referencias_comerciais','i_cadastro_cliente_referencias_comerciais_on','i_cadastro_cliente_referencias_comerciais_off',0)"><span style="color: #177CC0; font-family: Arial; font-size: 20px; font-weight: bold;">Referências Comerciais</span>&nbsp;&nbsp;<i class="fa fa-toggle-on"></i></div>
             <div id="i_cadastro_cliente_referencias_comerciais_off" name="i_cadastro_fone_referencias_comerciais_off" class="col" align="left" style="display: block; visibility: visible; font-size: 20px; color: red; margin-right: 20px; border-bottom: solid; border-width: 1px; border-color: #767676; cursor: pointer" onclick="mostra_div_informacao('div_cadastro_cliente_referencias_comerciais','i_cadastro_cliente_referencias_comerciais_on','i_cadastro_cliente_referencias_comerciais_off',1)"><span style="color: #177CC0; font-family: Arial; font-size: 20px; font-weight: bold;">Referências Comerciais</span>&nbsp;&nbsp;<i class="fa fa-toggle-off"></i></div>

         </div>

         <div class="row" style="width: 100%; height: 20px"></div>


         <div id="div_cadastro_cliente_referencias_comerciais" name="div_cadastro_cliente_referencias_comerciais" style="display: none; visibility: hidden; width: 100%; height: 100%; background-color: transparent; margin-left: 20px; margin-right: 20px; border: solid; border-color: #177CC0; border-width: 1px; border-radius: 10px; padding: 0px 20px 20px 20px;">
             <div class="row" style="height: 20px"></div>

             <div class="row" style="width: 100%; padding: 0px; margin: 0px; background-color: transparent; height: 100%; padding: 0px; margin: 0px">
                 <!--/////////////////////////////////////////////////// Lado Esquerdo -  Empresa - ddd Telefone /////////////////////////////////////////////////////////////////////////////////////////////-->
                 <div class="col-xl-6" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

                     <div class="row" style="width: 100%; padding: 0px; margin: 0px; background-color: transparent; height: 100%; padding: 0px; margin: 0px">
                         <div class="col-md-6" style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">

                             <div class="row">
                                 <div class="col"
                                     style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                     Empresa
                                 </div>
                             </div>

                             <div class="row" style="padding: 0px; margin: 0px">
                                 <div class="col" style="padding: 0px; margin: 0px">
                                     <asp:TextBox ID="cs_cadastro_cliente_empresa" runat="server" CssClass="layouttexto"
                                         Style="width: 80%; padding: 0px; margin: 0px"
                                         onBlur="SetTextIn(this,0);SetDiv('div_cadastro_cliente_referencias_comerciais',0)" onFocus="SetTextIn(this,1);SetDiv('div_cadastro_cliente_referencias_comerciais',1)">

                                     </asp:TextBox>
                                 </div>
                             </div>
                         </div>

                         <div class="col-md-6"
                             style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">


                             <div class="row">
                                 <div class="col"
                                     style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                     (ddd) Telefone 
                                 </div>
                             </div>

                             <div class="row" style="padding: 0px; margin: 0px">
                                 <div class="col" style="padding: 0px; margin: 0px">
                                     <asp:TextBox ID="cs_cadastro_cliente_telefone" runat="server" CssClass="layouttexto"
                                         Style="width: 200px; padding: 0px; margin: 0px"
                                         onBlur="SetTextIn(this,0);SetDiv('div_cadastro_cliente_referencias_comerciais',0)" onFocus="SetTextIn(this,1);SetDiv('div_cadastro_cliente_referencias_comerciais',1)">

                                     </asp:TextBox>
                                 </div>
                             </div>
                         </div>
                     </div>
                 </div>

                 <!--/////////////////////////////////////////////////// lado direito - Cliente - data ult.compra /////////////////////////////////////////////////////////////////////////////////////////////-->

                 <div class="col-xl-6" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

                     <div class="row" style="width: 100%; padding: 0px; margin: 0px; background-color: transparent; height: 100%; padding: 0px; margin: 0px">
                         <div class="col-md-6" style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">
                             <div class="row">
                                 <div class="col"
                                     style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                     Cliente Desde
                                 </div>
                             </div>

                             <div class="row" style="padding: 0px; margin: 0px">
                                 <div class="col" style="padding: 0px; margin: 0px">
                                     <asp:TextBox ID="cs_cadastro_cliente_desde" runat="server" CssClass="layouttexto"
                                         Style="width: 90%; padding: 0px; margin: 0px"
                                         onBlur="SetTextIn(this,0);SetDiv('div_cadastro_cliente_referencias_comerciais',0)" onFocus="SetTextIn(this,1);SetDiv('div_cadastro_cliente_referencias_comerciais',1)">

                                     </asp:TextBox>
                                 </div>
                             </div>
                         </div>

                         <div class="col-md-6" style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">

                             <div class="row">
                                 <div class="col"
                                     style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                     Data Ult. Compra
                                 </div>
                             </div>

                             <div class="row" style="padding: 0px; margin: 0px">
                                 <div class="col" style="padding: 0px; margin: 0px">
                                     <asp:TextBox ID="cs_cadastro_cliente_data_ult_compra" runat="server" CssClass="layouttexto"
                                         Style="width: 90%; padding: 0px; margin: 0px"
                                         onBlur="SetTextIn(this,0);SetDiv('div_cadastro_cliente_referencias_comerciais',0)" onFocus="SetTextIn(this,1);SetDiv('div_cadastro_cliente_referencias_comerciais ',1)">

                                     </asp:TextBox>
                                 </div>
                             </div>
                         </div>
                     </div>
                 </div>
             </div>


             <!--/////////////////////////////////////////////////// Lado Esquerdo -  R$ ult.Compra - R$ Valor Médio  ////////////////////////////////////////////////////////////////////////////////////////////-->
             <div class="row" style="width: 100%; padding: 0px; margin: 0px; background-color: transparent; height: 100%; padding: 0px; margin: 0px">
                 <div class="col-xl-6" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

                     <div class="row" style="width: 100%; padding: 0px; margin: 0px; background-color: transparent; height: 100%; padding: 0px; margin: 0px">
                         <div class="col-md-6" style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">

                             <div class="row">
                                 <div class="col"
                                     style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                     R$ Ult Compra
                                 </div>
                             </div>

                             <div class="row" style="padding: 0px; margin: 0px">
                                 <div class="col" style="padding: 0px; margin: 0px">
                                     <asp:TextBox ID="cs_cadastro_cliente_rs_ult_compra" runat="server" CssClass="layouttexto"
                                         Style="width: 30%; padding: 0px; margin: 0px"
                                         onBlur="SetTextIn(this,0);SetDiv('div_cadastro_cliente_referencias_comerciais',0)" onFocus="SetTextIn(this,1);SetDiv('div_cadastro_cliente_referencias_comerciais ',1)">

                                     </asp:TextBox>
                                 </div>
                             </div>
                         </div>

                          <div class="col-md-6" style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">

                              <div class="row">
                                  <div class="col"
                                      style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                      R$ Valor Médio
                                  </div>
                              </div>

                              <div class="row" style="padding: 0px; margin: 0px">
                                  <div class="col" style="padding: 0px; margin: 0px">
                                      <asp:TextBox ID="cs_cadastro_cliente_rs_valor_medio" runat="server" CssClass="layouttexto"
                                          Style="width: 30%; padding: 0px; margin: 0px"
                                          onBlur="SetTextIn(this,0);SetDiv('div_cadastro_cliente_referencias_comerciais',0)" onFocus="SetTextIn(this,1);SetDiv('div_cadastro_cliente_referencias_comerciais ',1)">

                                      </asp:TextBox>
                                  </div>
                              </div>
                          </div>
                     </div>
                 </div>

                  <!--/////////////////////////////////////////////////// Lado direito - Contato - Observações ////////////////////////////////////////////////////////////////////////////////////////////-->
                 <div class="col-xl-6" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

                     <div class="row" style="width: 100%; padding: 0px; margin: 0px; background-color: transparent; height: 100%; padding: 0px; margin: 0px">
                         <div class="col-md-6" style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">

                             <div class="row">
                                 <div class="col"
                                     style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                     Contato
                                 </div>
                             </div>

                             <div class="row" style="padding: 0px; margin: 0px">
                                 <div class="col" style="padding: 0px; margin: 0px">
                                     <asp:TextBox ID="cs_cadastro_cliente_contato" runat="server" CssClass="layouttexto"
                                         Style="width: 30%; padding: 0px; margin: 0px"
                                         onBlur="SetTextIn(this,0);SetDiv('div_cadastro_cliente_referencias_comerciais',0)" onFocus="SetTextIn(this,1);SetDiv('div_cadastro_cliente_referencias_comerciais ',1)">

                                     </asp:TextBox>
                                 </div>
                             </div>
                         </div>

                         <div class="col-md-6" style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">

                             <div class="row">
                                 <div class="col"
                                     style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                     Obersvações
                                 </div>
                             </div>

                             <div class="row" style="padding: 0px; margin: 0px">
                                 <div class="col" style="padding: 0px; margin: 0px">
                                     <asp:TextBox ID="cs_cadastro_cliente_obersvacoes" runat="server" CssClass="layouttexto"
                                         Style="width: 30%; padding: 0px; margin: 0px"
                                         onBlur="SetTextIn(this,0);SetDiv('div_cadastro_cliente_referencias_comerciais',0)" onFocus="SetTextIn(this,1);SetDiv('div_cadastro_cliente_referencias_comerciais ',1)">

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

                 <asp:Button ID="cmd_deletar" runat="server" style="cursor:pointer;border-radius:10px;border:solid;border-width:1px" Text="Deletar" 
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
