<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Topo.Master" CodeBehind="empresa.aspx.vb"
    Inherits="VoceFazNfe.empresa" %>
    <asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

        <link rel="stylesheet"
            href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@24,400,0,0" />






        <div class="container-fluid" style="padding:0px;margin:0px;width:100%;height:100%">


            <div class="row" style="width:100%;height:200px"></div>

            <div class="row" style="width:100%;height:100%;padding:0px;margin:0px;background-color:transparent">

                <!--/////////////////////////////////////////////////// Div com os dados Iniciais / Principais da Nota /////////////////////////////////////////////////////////////////////////////////////////////-->
                <div id="div_dados_iniciais" name="div_dados_iniciais"
                    style="display:block;visibility:visible;width:100%;height:100%;background-color:transparent;margin-left:20px;margin-right:20px;border:solid;border-color:#177CC0;border-width:1px;border-radius:10px;padding: 0 20px 20px 20px;">


                    <!--/////////////////////////////////////////////////// Linha CNPJ/RAZAO SOCIAL / NOME FANTASIA /////////////////////////////////////////////////////////////////////////////////////////////-->
                    <div class="row"
                        style="width:100%;padding:0px;margin:0px;background-color:transparent;height:100%;padding:0px;margin:0px">

                        <!--/////////////////////////////////////////////////// LINHA LADO ESQUERDO CNPJ/RAZAO SOCIAL /////////////////////////////////////////////////////////////////////////////////////////////-->
                        <div class="col-xl-8"
                            style="width:100%;height:100%;background-color:transparent;padding:0px;margin:0px">

                            <div class="row"
                                style="width:100%;height:100%;background-color:transparent;padding:0px;margin:0px">

                                <div class="col-md-4"
                                    style="width:100%;height:100%;background-color:transparent;padding:10px;">


                                    <div class="row">
                                        <div class="col"
                                            style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                            CNPJ
                                        </div>
                                    </div>

                                    <div class="row" style="padding:0px;margin:0px">
                                        <div class="col" style="padding:0px;margin:0px">
                                            <asp:TextBox ID="cs_emissao" runat="server" CssClass="layouttexto"
                                                style="width: 150px;padding:0px;margin:0px"
                                                placeholder="00.000.000/0000-00" onBlur="SetTextIn(this,0)"
                                                onFocus="SetTextIn(this,1)" onkeypress="return validarNumeros(event); ">

                                            </asp:TextBox>
                                        </div>
                                    </div>

                                </div>


                                <div class=" col-md-6"
                                    style="width:100%;height:100%;background-color:transparent; padding:10px;">
                                    <div class="row">
                                        <div class="col"
                                            style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                            Razão Social
                                        </div>
                                    </div>
                                    <div class="row" style="padding:0px;margin:0px">
                                        <div class="col-sm-12" style="padding:0px;margin:0px">
                                            <asp:TextBox ID="cs_razaosocial" runat="server" CssClass="layouttexto"
                                                style="width: 100%;" onBlur="SetTextIn(this,0)"
                                                onFocus="SetTextIn(this,1)">
                                            </asp:TextBox>
                                        </div>
                                    </div>
                                </div>


                            </div>

                        </div>

                        <!--/////////////////////////////////////////////////// LINHA LADO DIREITO NOME FANTASIA /////////////////////////////////////////////////////////////////////////////////////////////-->

                        <div class=" col-md-4"
                            style="width:100%;height:100%;background-color:transparent;padding:10px;">
                            <div class="row">
                                <div class="col"
                                    style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                    Nome Fantasia
                                </div>
                            </div>
                            <div class="row" style="padding:0px;margin:0px">
                                <div class="col-sm-12" style="padding:0px;margin:0px; background-color:transparent">
                                    <asp:TextBox ID="cs_nomefantasia" runat="server" CssClass="layouttexto"
                                        style="width: 100%;" onBlur="SetTextIn(this,0)" onFocus="SetTextIn(this,1)">
                                    </asp:TextBox>
                                </div>
                            </div>

                        </div>

                        <!--/////////////////////////////////////////////////// Div com os dados Iniciais / Inscrição Estadual/IEST/ CNAE Fiscal/ Codigo Regime Tributario /////////////////////////////////////////////////////////////////////////////////////////////-->



                        <div class="col-xl-8"
                            style="width:100%;height:100%;background-color:transparent;padding:0px;margin:0px">

                            <div class="row"
                                style="width:100%;height:100%;background-color:transparent;padding:0px;margin:0px">

                                <div class="col-md-4"
                                    style="width:100%;height:100%;background-color:transparent;padding:10px;">


                                    <div class="row">
                                        <div class="col"
                                            style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                            Inscrição Estadual </div>

                                    </div>

                                    <div class="input-group">
                                        <asp:TextBox ID="cs_inscricaoestadual" runat="server" CssClass="layouttexto"
                                            style="width: 150px" onBlur="SetTextIn(this,0)" onFocus="SetTextIn(this,1)">
                                        </asp:TextBox>


                                    </div>


                                </div>


                                <div class=" col-md-4"
                                    style="width:100%;height:100%;background-color:transparent; padding:10px;">
                                    <div class="row">
                                        <div class="col"
                                            style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                            IE do Substituto Tributário</div>
                                    </div>
                                    <div class="row">
                                        <div class="col"
                                            style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">

                                            <asp:TextBox ID="cs_IE" runat="server" CssClass="layouttexto"
                                                style="width: 40%;" onBlur="SetTextIn(this,0)"
                                                onFocus="SetTextIn(this,1)">
                                            </asp:TextBox>

                                        </div>
                                    </div>

                                </div>
                                <div class=" col-md-4"
                                    style="width:100%;height:100%;background-color:transparent; padding:10px;">
                                    <div class="row">
                                        <div class="col"
                                            style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                            CNAE Fiscal</div>
                                    </div>
                                    <div class="row">
                                        <div class="col">
                                            <asp:TextBox ID="cs_cnaeFiscal" runat="server" CssClass="layouttexto"
                                                style="width: 80px;" placeholder="00.00-0-00" onBlur="SetTextIn(this,0)"
                                                onFocus="SetTextIn(this,1)"></asp:TextBox>

                                        </div>
                                    </div>
                                </div>

                            </div>

                        </div>
                        <div class="col-md-4"
                            style="width:100%;height:100%;background-color:transparent; padding:10px;">
                            <div class="row">
                                <div class="col"
                                    style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                    Código Regime Tributário
                                </div>
                            </div>
                            <div class="row" style="padding:0px;margin:0px">
                                <div class="col" style="padding:0px;margin:0px; width:100%">
                                    <asp:DropDownList ID="cs_crTribrutario" runat="server">
                                        <asp:ListItem style="width: 100%;" Text="Simples Nacional" Value="1" />
                                        <asp:ListItem style="width: 100%;"
                                            Text="Simples Nacional, execesso sublimite de receita bruta" Value="2" />
                                        <asp:ListItem style="width: 100%;" Text="Regime normal" Value="3" />
                                    </asp:DropDownList>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>

        </div>


        <!--/////////////////////////////////////////////////// Div com os dados Iniciais / Regime Tributario  /////////////////////////////////////////////////////////////////////////////
                    


                            
        <!--/////////////////////////////////////////////////// Div com os dados Iniciais / Emitente/ 1 linha - CEP/Endereço/Número/Complemento   /////////////////////////////////////////////////////////////////////////////////////////////-->


        <div class="container-fluid" style="padding:0px;margin:0px;width:100%;height:100%">


            <div class="row" style="width:100%;height:50px"></div>

            <div class="row" style="width:100%;height:100%;padding:0px;margin:0px;background-color:transparent">


                <div id="div_dados_emitente" name="div_dados_emitente"
                    style="display:block;visibility:visible;width:100%;height:100%;background-color:transparent;margin-left:20px;margin-right:20px;border:solid;border-color:#177CC0;border-width:1px;border-radius:10px;padding: 0 20px 20px 20px;">



                    <div class="row"
                        style="width:100%;padding:0px;margin:0px;background-color:transparent;height:100%;padding:0px;margin:0px">


                        <div class="col-xl-8"
                            style="width:100%;height:100%;background-color:transparent;padding:0px;margin:0px">

                            <div class="row"
                                style="width:100%;height:100%;background-color:transparent;padding:0px;margin:0px">

                                <div class="col-md-4"
                                    style="width:100%;height:100%;background-color:transparent;padding:10px;">


                                    <div class="row">
                                        <div class="col"
                                            style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                            CEP </div>

                                    </div>

                                    <div class="input-group">
                                        <asp:TextBox ID="cs_cep" runat="server" CssClass="layouttexto"
                                            style="width: 150px" onBlur="SetTextIn(this,0)" onFocus="SetTextIn(this,1)">
                                        </asp:TextBox>
                                        <div class="input-group-append">
                                            <button class="material-symbols-outlined"><i
                                                    class="fa-solid fa-magnifying-glass"></i></button>
                                        </div>
                                    </div>

                                </div>


                                <div class=" col-md-6"
                                    style="width:100%;height:100%;background-color:transparent; padding:10px;">
                                    <div class="row">
                                        <div class="col"
                                            style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                            Endereço</div>
                                    </div>
                                    <div class="row">
                                        <div class="col"
                                            style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">

                                            <asp:TextBox ID="cs_endereco" runat="server" CssClass="layouttexto"
                                                style="width: 100%;" onBlur="SetTextIn(this,0)"
                                                onFocus="SetTextIn(this,1)"></asp:TextBox>

                                        </div>
                                    </div>

                                </div>
                                <div class=" col-md-2"
                                    style="width:100%;height:100%;background-color:transparent; padding:10px;">
                                    <div class="row">
                                        <div class="col"
                                            style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                            Número</div>
                                    </div>
                                    <div class="row">
                                        <div class="col">
                                            <asp:TextBox ID="cs_numero" runat="server" CssClass="layouttexto"
                                                style="width: 80px;" onBlur="SetTextIn(this,0)"
                                                onFocus="SetTextIn(this,1)"></asp:TextBox>
                                        </div>
                                    </div>
                                </div>

                            </div>

                        </div>
                        <div class=" col-md-4"
                            style="width:100%;height:100%;background-color:transparent; padding:10px;">
                            <div class="row">
                                <div class="col"
                                    style="font-family: Arial; font-size: 16px; color: #000000;  font-weight: bold;">
                                    Complemento</div>

                            </div>
                            <div class="row">
                                <div class="col">
                                    <asp:TextBox ID="cs_complemento" runat="server" CssClass="layouttexto"
                                        style="width:100%;" onBlur="SetTextIn(this,0)" onFocus="SetTextIn(this,1)">
                                    </asp:TextBox>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!--/////////////////////////////////////////////////// Div com os dados Emitente / Emitente 2 linha - Bairro/Nome do Municipio/ Codigo do Municipio/ Nome do País      /////////////////////////////////////////////////////////////////////////////////////////////-->

                    <div class="row"
                        style="width:100%;padding:0px;margin:0px;background-color:transparent;height:100%;padding:0px;margin:0px">


                        <div class="col-xl-8"
                            style="width:100%;height:100%;background-color:transparent;padding:0px;margin:0px">

                            <div class="row"
                                style="width:100%;height:100%;background-color:transparent;padding:0px;margin:0px">

                                <div class="col-md-4"
                                    style="width:100%;height:100%;background-color:transparent;padding:10px;">


                                    <div class="row">
                                        <div class="col"
                                            style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                            Bairro </div>

                                    </div>

                                    <div class="input-group">
                                        <asp:TextBox ID="cs_bairro" runat="server" CssClass="layouttexto"
                                            style="width: 200px" onBlur="SetTextIn(this,0)" onFocus="SetTextIn(this,1)">
                                        </asp:TextBox>


                                    </div>


                                </div>
                                <div class=" col-md-3"
                                    style="width:100%;height:100%;background-color:transparent; padding:2px;">
                                    <div class="row">
                                        <div class="col"
                                            style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                            Código do Município</div>
                                    </div>
                                    <div class="row">
                                        <div class="col">
                                            <asp:TextBox ID="cs_codMunicipio" runat="server" CssClass="layouttexto"
                                                style="width: 80px;" onBlur="SetTextIn(this,0)"
                                                onFocus="SetTextIn(this,1)"></asp:TextBox>
                                            <button class="material-symbols-outlined"><i
                                                    class="fa-solid fa-magnifying-glass"></i></button>
                                        </div>
                                    </div>
                                </div>


                                <div class=" col-md-4"
                                    style="width:100%;height:100%;background-color:transparent; padding:5px;">
                                    <div class="row">
                                        <div class="col"
                                            style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                            Nome do Município</div>
                                    </div>
                                    <div class="row">
                                        <div class="col"
                                            style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">

                                            <asp:TextBox ID="cs_nomeMunicipio" runat="server" CssClass="layouttexto"
                                                style="width: 100%;" onBlur="SetTextIn(this,0)"
                                                onFocus="SetTextIn(this,1)">
                                            </asp:TextBox>

                                        </div>
                                    </div>

                                </div>
                                

                            </div>

                        </div>
                        <div class=" col-sm-2"
                            style="width:100%;height:100%;background-color:transparent; padding:10px;">
                            <div class="row">
                                <div class="col"
                                    style="font-family: Arial; font-size: 16px; color: #000000;  font-weight: bold;">
                                    Nome do País</div>

                            </div>
                            <div class="row">
                                <div class="col">
                                    <asp:TextBox ID="cs_nomePais" runat="server" CssClass="layouttexto"
                                        style="width:40%;" onBlur="SetTextIn(this,0)" onFocus="SetTextIn(this,1)">
                                    </asp:TextBox>
                                </div>
                            </div>

                        </div>
                        <div class="col-sm-1"
                                    style="width:100%;height:100%;background-color:transparent;padding:10px;">


                                    <div class="row">
                                        <div class="col"
                                            style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                            Código do País </div>

                                    </div>

                                    <div class="input-group">
                                        <asp:TextBox ID="cs_codPais" runat="server" CssClass="layouttexto"
                                            style="width: 50px" onBlur="SetTextIn(this,0)" onFocus="SetTextIn(this,1)">
                                        </asp:TextBox>


                                    </div>


                                </div>
                        <div class=" col-sm-1"
                                    style="width:100%;height:100%;background-color:transparent; padding:11px;">
                                    <div class="row">
                                        <div class="col"
                                            style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                            UF</div>
                                    </div>
                                   
                                
                         <div class="row" style="padding:0px;margin:0px">
                                        <div class="col" style="padding:0px;margin:0px; width:100%">
                                            <asp:DropDownList ID="cs_uf" runat="server">
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
                    <!--/////////////////////////////////////////////////// Div com os dados Iniciais / Emitente 3 linha - Código do Pais/ Telfone/ UF /////////////////////////////////////////////////////////////////////////////////////////////-->
                    <div class="row"
                        style="width:100%;padding:0px;margin:0px;background-color:transparent;height:100%;padding:0px;margin:0px">


                        <div class="col-xl-8"
                            style="width:100%;height:100%;background-color:transparent;padding:0px;margin:0px">

                            <div class="row"
                                style="width:100%;height:100%;background-color:transparent;padding:0px;margin:0px">

                                


                                <div class=" col-md-4"
                                    style="width:100%;height:100%;background-color:transparent; padding:10px;">
                                    <div class="row">
                                        <div class="col"
                                            style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                            Telefone</div>
                                    </div>
                                    <div class="row">
                                        <div class="col"
                                            style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">

                                            <asp:TextBox ID="cs_telefone" runat="server" CssClass="layouttexto"
                                                style="width: 50%;" placeholder="(00)00000-0000" onBlur="SetTextIn(this,0)"
                                                onFocus="SetTextIn(this,1)">
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