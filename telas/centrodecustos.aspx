<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/telas/Topo.Master" CodeBehind="centrodecustos.aspx.vb" Inherits="VoceFazNfe.centrodecustos" %>
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

            <div id="i_cadastro_centro_custo_on" name="i_cadastro_centro_custo_on" class="col" align="left" style="display: block; visibility: visible; font-size: 20px; color: red; margin-right: 20px; border-bottom: none; cursor: pointer" onclick="mostra_div_informacao('div_cadastro_centro_custo','i_cadastro_centro_custo_on','i_cadastro_centro_custo_off',0)"><span style="color: #177CC0; font-family: Arial; font-size: 20px; font-weight: bold;">Cadasto de Centro de Custo Gerencial</span>&nbsp;&nbsp;<i class="fa fa-toggle-on"></i></div>
            <div id="i_cadastro_centro_custo_off" name="i_cadastro_centro_custo_off" class="col" align="left" style="display: none; visibility: hidden; font-size: 20px; color: red; margin-right: 20px; border-bottom: solid; border-width: 1px; border-color: #767676; cursor: pointer" onclick="mostra_div_informacao('div_cadastro_centro_custo','i_cadastro_centro_custo_on','i_cadastro_centro_custo_off',1)"><span style="color: #177CC0; font-family: Arial; font-size: 20px; font-weight: bold;">Cadastro de Centro de Custo Gerencial</span>&nbsp;&nbsp;<i class="fa fa-toggle-off"></i></div>

        </div>
        
        <div class="row" style="width: 100%; height: 20px"></div>


        <div id="div_cadastro_centro_custo" name="div_cadastro_centro_custo" style="display: block; visibility: visible; width: 100%; height: 100%; background-color: transparent; margin-left: 20px; margin-right: 20px; border: solid; border-color: #177CC0; border-width: 1px; border-radius: 10px; padding: 0px 20px 20px 20px;">
            <div class="row" style="height: 20px"></div>

            <div class="row" style="width: 100%; padding: 0px; margin: 0px; background-color: transparent; height: 100%; padding: 0px; margin: 0px">

                <!--/////////////////////////////////////////////////// Lado Esquerdo -  Código do Produto - Nome do Vendendor /////////////////////////////////////////////////////////////////////////////////////////////-->
                <div class="col-xl-7" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

                    <div class="row" style="width: 100%; padding: 0px; margin: 0px; background-color: transparent; height: 100%; padding: 0px; margin: 0px">
                        <div class="col-md-4"
                            style="width: 50%; height: 100%; background-color: transparent; padding: 10px;">


                            <div class="row">
                                <div class="col"
                                    style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                    Conta 
                                </div>
                            </div>

                            <div class="row" style="padding: 0px; margin: 0px">
                                <div class="col" style="padding: 0px; margin: 0px">
                                    <asp:TextBox ID="cs_codigo_vendedor_representante" runat="server" CssClass="layouttexto"
                                        Style="width: 200px; padding: 0px; margin: 0px"
                                        onBlur="SetTextIn(this,0);SetDiv('div_cadastro_centro_custo',0)" onFocus="SetTextIn(this,1);SetDiv('div_cadastro_centro_custo',1)">

                                    </asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <div class="col-md-4"
                            style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">


                            <div class="row">
                                <div class="col"
                                    style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                    C Custo
                                </div>
                            </div>

                            <div class="row" style="padding: 0px; margin: 0px">
                                <div class="col" style="padding: 0px; margin: 0px">
                                    <asp:TextBox ID="cs_nome_vendedor_vendedor" runat="server" CssClass="layouttexto"
                                        Style="width: 200px; padding: 0px; margin: 0px"
                                        onBlur="SetTextIn(this,0);SetDiv('div_cadastro_centro_custo',0)" onFocus="SetTextIn(this,1);SetDiv('div_cadastro_centro_custo',1)">

                                    </asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <div class="col-md-4" style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">
                            <div class="row">
                                <div class="col"
                                    style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                    Descrição
                                </div>
                            </div>

                            <div class="row" style="padding: 0px; margin: 0px">
                                <div class="col" style="padding: 0px; margin: 0px">
                                    <asp:TextBox ID="TextBox4" runat="server" CssClass="layouttexto"
                                        Style="width: 100%; padding: 0px; margin: 0px"
                                        onBlur="SetTextIn(this,0);SetDiv('div_cadastro_centro_custo',0)" onFocus="SetTextIn(this,1);SetDiv('div_cadastro_centro_custo',1)">

                                    </asp:TextBox>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
                 <!--/////////////////////////////////////////////////// Lado Esquerdo -  Apelido - Código do Pessoa -Tipo /////////////////////////////////////////////////////////////////////////////////////////////-->

                <div class="col-xl-5" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

                    <div class="row" style="width: 100%; padding: 0px; margin: 0px; background-color: transparent; height: 100%; padding: 0px; margin: 0px">
                       

                        <div class="col-md-6"
                            style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">


                            <div class="row">
                                <div class="col"
                                    style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                    Tipo 
                                </div>
                            </div>

                            <div class="row" style="padding: 0px; margin: 0px">
                                <div class="col" style="padding: 0px; margin: 0px">
                                    <asp:DropDownList ID="cs_pessoa_vendedor_representante" onBlur="SetTextIn(this,0);SetDiv('div_cadastro_centro_custo',0)" onFocus="SetTextIn(this,1);SetDiv('div_cadastro_centro_custo',1)" CssClass="layouttexto" runat="server">
                                        <asp:ListItem style="width: 100%;" Text="Receita" Value="1" />
                                        <asp:ListItem style="width: 100%;" Text="Categoria" Value="2" />

                                    </asp:DropDownList>
                                </div>
                            </div>
                        </div>

                        <div class="col-md-6"
                            style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">


                            <div class="row">
                                <div class="col"
                                    style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                    Categoria
                                </div>
                            </div>

                            <div class="row" style="padding: 0px; margin: 0px">
                                <div class="col" style="padding: 0px; margin: 0px">
                                    <asp:DropDownList ID="cs_tipo_vendedor_representante" onBlur="SetTextIn(this,0);SetDiv('div_cadastro_centro_custo',0)" onFocus="SetTextIn(this,1);SetDiv('div_cadastro_centro_custo',1)" CssClass="layouttexto" runat="server">
                                        <asp:ListItem style="width: 100%;" Text="Analítica" Value="1" />
                                        <asp:ListItem style="width: 100%;" Text="Sintética" Value="2" />

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



    <!--///////////////////////////////////////////////////  Container Conta Totalizadora  /////////////////////////////////////////////////////////////////////////////////////////////-->
    <div class="container-fluid" style="padding: 0px; margin: 0px; width: 100%; height: 100%">
        <div class="row" style="width: 100%; height: 50px"></div>


        <div class="row" style="width: 100%; height: 100%; padding: 0px; margin: 0px; background-color: transparent">



            <div class="row" style="width: 100%; height: 100%; color: #177CC0; padding-left: 20px; padding-top: 0px; font-family: Arial; font-size: 20px; font-weight: bold; margin-left: 0px">

                <div id="i_cadastro_conta_totalizadora_on" name="i_cadastro_conta_totalizadora_on" class="col" align="left" style="display: block; visibility: visible; font-size: 20px; color: red; margin-right: 20px; border-bottom: none; cursor: pointer" onclick="mostra_div_informacao('div_cadastro_conta_totalizadora','i_cadastro_conta_totalizadora_on','i_cadastro_conta_totalizadora_off',0)"><span style="color: #177CC0; font-family: Arial; font-size: 20px; font-weight: bold;">Conta Totalizadora</span>&nbsp;&nbsp;<i class="fa fa-toggle-on"></i></div>
                <div id="i_cadastro_conta_totalizadora_off" name="i_cadastro_conta_totalizadora_off" class="col" align="left" style="display: none; visibility: hidden; font-size: 20px; color: red; margin-right: 20px; border-bottom: solid; border-width: 1px; border-color: #767676; cursor: pointer" onclick="mostra_div_informacao('div_cadastro_conta_totalizadora','i_cadastro_conta_totalizadora_on','i_cadastro_centro_custo_off',1)"><span style="color: #177CC0; font-family: Arial; font-size: 20px; font-weight: bold;">Conta Totalizadora</span>&nbsp;&nbsp;<i class="fa fa-toggle-off"></i></div>

            </div>

            <div class="row" style="width: 100%; height: 20px"></div>


            <div id="div_cadastro_conta_totalizadora" name="div_cadastro_conta_totalizadora" style="display: block; visibility: visible; width: 100%; height: 100%; background-color: transparent; margin-left: 20px; margin-right: 20px; border: solid; border-color: #177CC0; border-width: 1px; border-radius: 10px; padding: 0px 20px 20px 20px;">
                <div class="row" style="height: 20px"></div>

                <div class="row" style="width: 100%; padding: 0px; margin: 0px; background-color: transparent; height: 100%; padding: 0px; margin: 0px">

                    <!--/////////////////////////////////////////////////// Lado Esquerdo -  Código do Produto - Nome do Vendendor /////////////////////////////////////////////////////////////////////////////////////////////-->
                    <div class="col-xl-12" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

                        <div class="row" style="width: 100%; padding: 0px; margin: 0px; background-color: transparent; height: 100%; padding: 0px; margin: 0px">
                            <div class="col-md-4"
                                style="width: 50%; height: 100%; background-color: transparent; padding: 10px;">


                                <div class="row">
                                    <div class="col"
                                        style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                        Conta 
                                    </div>
                                </div>

                                <div class="row" style="padding: 0px; margin: 0px">
                                    <div class="col" style="padding: 0px; margin: 0px">
                                        <asp:TextBox ID="TextBox1" runat="server" CssClass="layouttexto"
                                            Style="width: 200px; padding: 0px; margin: 0px"
                                            onBlur="SetTextIn(this,0);SetDiv('div_cadastro_conta_totalizadora',0)" onFocus="SetTextIn(this,1);SetDiv('div_cadastro_conta_totalizadora',1)">

                                        </asp:TextBox>
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-4"
                                style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">


                                <div class="row">
                                    <div class="col"
                                        style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                        C Custo
                                    </div>
                                </div>

                                <div class="row" style="padding: 0px; margin: 0px">
                                    <div class="col" style="padding: 0px; margin: 0px">
                                        <asp:TextBox ID="TextBox2" runat="server" CssClass="layouttexto"
                                            Style="width: 200px; padding: 0px; margin: 0px"
                                            onBlur="SetTextIn(this,0);SetDiv('div_cadastro_conta_totalizadora',0)" onFocus="SetTextIn(this,1);SetDiv('div_cadastro_conta_totalizadora',1)">

                                        </asp:TextBox>
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-4"
                                style="width: 100%; height: 100%; background-color: transparent; padding: 10px;">


                                <div class="row">
                                    <div class="col"
                                        style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                        Descrição
                                    </div>
                                </div>

                                <div class="row" style="padding: 0px; margin: 0px">
                                    <div class="col" style="padding: 0px; margin: 0px">
                                        <asp:TextBox ID="TextBox3" runat="server" CssClass="layouttexto"
                                            Style="width: 100%; padding: 0px; margin: 0px"
                                            onBlur="SetTextIn(this,0);SetDiv('div_cadastro_conta_totalizadora',0)" onFocus="SetTextIn(this,1);SetDiv('div_cadastro_conta_totalizadora',1)">

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
    <div class="row" style="width: 100%; height: 100%">

        <div class="col" align="center">

            <div id="botao_gravar" style="width: 300px; height: 100%; cursor: pointer; display: block; visibility: visible">

                <asp:Button ID="cmd_gravar" runat="server" Style="cursor: pointer; border-radius: 10px; border: solid; border-width: 1px" Text="Gravar"
                    BackColor="green" BorderStyle="Solid" BorderWidth="1px" ForeColor="White" Height="43px" Width="230px" OnClientClick="botao_confirmar(this)" UseSubmitBehavior="False" Visible="False" />
            </div>

            <div id="botao_gravar_aguardando" style="display: none; visibility: hidden">
                <img alt="" src="../Imagens/preloader.gif" /><span style="font-family: Arial; font-size: 18px; color: #007DC5">&nbspAguarde</span></div>

        </div>

    </div>


    <div class="row" style="width: 100%; height: 30px"></div>

    <!--/////////////////////////////////////////////////// Botão Deletar //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////-->
    <div class="row" style="width: 100%; height: 100%">

        <div class="col" align="center">

            <div id="botao_deletar" style="width: 300px; height: 100%; cursor: pointer; display: block; visibility: visible">

                <asp:Button ID="cmd_deletar" runat="server" Style="cursor: pointer; border-radius: 10px; border: solid; border-width: 1px" Text="Deletar"
                    BackColor="red" BorderStyle="Solid" BorderWidth="1px" ForeColor="White" Height="43px" Width="230px" OnClientClick="botao_confirmar_deletar(this)" UseSubmitBehavior="False" Visible="False" />
            </div>

            <div id="botao_deletar_aguardando" style="display: none; visibility: hidden">
                <img alt="" src="../Imagens/preloader.gif" /><span style="font-family: Arial; font-size: 18px; color: #007DC5">&nbspAguarde</span></div>

        </div>

    </div>



    <div class="row" style="width: 100%; height: 30px"></div>

    <!--/////////////////////////////////////////////////// Botão Limpar //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////-->
    <div class="row" style="width: 100%; height: 100%">

        <div class="col" align="center">

            <div id="botao_limpar" style="width: 300px; height: 100%; cursor: pointer; display: block; visibility: visible">

                <asp:Button ID="cmd_limpar" runat="server" Style="cursor: pointer; border-radius: 10px; border: solid; border-width: 1px" Text="Limpar"
                    BackColor="gray" BorderStyle="Solid" BorderWidth="1px" ForeColor="White" Height="43px" Width="230px" UseSubmitBehavior="False" />
            </div>

        </div>

    </div>


    <div class="row" style="width: 100%; height: 30px"></div>

    <!--/////////////////////////////////////////////////// Botão Imprimir //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////-->
    <div class="row" style="width: 100%; height: 100%">

        <div class="col" align="center">

            <div id="botao_imprimir" style="width: 300px; height: 100%; cursor: pointer; display: block; visibility: visible">

                <asp:Button ID="cmd_imprimir" runat="server" Style="cursor: pointer; border-radius: 10px; border: solid; border-width: 1px" Text="Imprimir"
                    BackColor="#17479E" BorderStyle="Solid" BorderWidth="1px" ForeColor="White" Height="43px" Width="230px" UseSubmitBehavior="False" OnClientClick="window.open('../relatorios/relgrupo.asp', '_blank')" />
            </div>

        </div>

    </div>

 </asp:Panel> 
</asp:Content>
