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
                    <div class="row" style="width:100%;padding:0px;margin:0px;background-color:transparent;height:100%;padding:0px;margin:0px">

                        <!--/////////////////////////////////////////////////// LINHA LADO ESQUERDO CNPJ/RAZAO SOCIAL /////////////////////////////////////////////////////////////////////////////////////////////-->
                        <div class="col-xl-8" style="width:100%;height:100%;background-color:transparent;padding:0px;margin:0px">

                              <div class="row" style="width:100%;height:100%;background-color:transparent;padding:0px;margin:0px">

                                  <div class="col-md-4" style="width:100%;height:100%;background-color:transparent;padding:0px;margin:0px">


                                         <div class="row" style="padding:0px;margin:0px">
                                             <div class="col" style="padding:0px;margin:0px";font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                                 CNPJ
                                             </div>
                                         </div>

                                         <div class="row" style="padding:0px;margin:0px">
                                             <div class="col" style="padding:0px;margin:0px">
                                                 <asp:TextBox ID="TextBox1" runat="server" CssClass="layouttexto" style="width: 150px;padding:0px;margin:0px"
                                                     placeholder="00.000.000/0000-00" onkeypress="return validarNumeros(event);">
                                                 </asp:TextBox>
                                             </div>
                                         </div>

                                  </div>
                                  

                                  <div class="col-md-8" style="width:100%;height:100%;background-color:red"></div>


                              </div>

                        </div>

                        <!--/////////////////////////////////////////////////// LINHA LADO DIREITO NOME FANTASIA /////////////////////////////////////////////////////////////////////////////////////////////-->
                        <div class="col-xl-4" style="width:100%;height:100%;background-color:transparent"></div>


                 </div>





                    <div class="row">

                        <div class="col-xl-6" style="padding-top:20px;background-color:transparent">

                            <div class="row">

                                <div class="col-md-6" style="background-color:transparent;height:100%;padding-top:10px">

                                    <div class="row">
                                        <div class="col"
                                            style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                            CNPJ
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="col">
                                            <asp:TextBox ID="cs_emissao" runat="server" CssClass="layouttexto" style="width: 150px"
                                                placeholder="00.000.000/0000-00" onkeypress="return validarNumeros(event);">
                                            </asp:TextBox>
                                        </div>
                                    </div>



                                </div>

                                <div class="col-md-6" style="background-color:transparent;height:100%;padding-top:10px">


                                    <div class="row">
                                        <div class="col"
                                            style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                            Razão Social</div>
                                    </div>
                                    <div class="row">
                                        <div class="col"
                                            style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">

                                            <asp:TextBox ID="cs_razaosocial" runat="server" CssClass="form-control"
                                                placeholder="Informe a Razão Social"></asp:TextBox>

                                        </div>
                                    </div>

                                </div>

                            </div>


                        </div>

                        <div class="col-md-6" style="background-color: transparent; height: 100%; padding-top: 30px">
                            <div class="row">
                                <div class="col"
                                    style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">Nome
                                    Fantasia:</div>
                            </div>
                            <div class="row">
                                <div class="col">
                                    <asp:TextBox ID="cs_nomefantasia" runat="server" CssClass="form-control"
                                        placeholder="Informe o nome fantasia"></asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <div class="col-md-6" style="background-color: transparent; height: 100%; padding-top: 30px">
                            <div class="row">

                                <div class="col"
                                    style="font-family: Arial; font-size: 16px; color: #000000;  font-weight: bold;">
                                    Inscrição Estadual:
                                </div>
                            </div>
                            <div class="row">
                                <div class="col">
                                    <asp:TextBox ID="cs_IE" runat="server" CssClass="layouttexto" onBlur="SetTextIn(this,0)" onFocus="SetTextIn(this,1)"
                                        placeholder="Informe a Inscrição Estadual"></asp:TextBox>
                                </div>

                            </div>

                        </div>

                        <div class="col-md-6" style="background-color: transparent; height: 100%; padding-top: 30px">
                            <div class="row">
                                <div class="col"
                                    style="font-family: Arial; font-size: 16px; color: #000000;  font-weight: bold;">
                                    IEST:</div>

                            </div>
                            <div class="row">
                                <div class="col">
                                    <asp:TextBox ID="cs_IEST" runat="server" CssClass="form-control"
                                        placeholder="Informe o IEST"></asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <div class="col-md-6" style="background-color: transparent; height: 100%; padding-top: 30px">
                            <div class="row">
                                <div class="col"
                                    style="font-family: Arial; font-size: 16px; color: #000000;  font-weight: bold;">
                                    CNAE Fiscal:</div>
                            </div>
                            <div class="row">
                                <div class="col">
                                    <asp:TextBox ID="cs_CNAE" runat="server" CssClass="form-control"
                                        placeholder="Informe o CNA Fiscal"></asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <div class="col-md-6" style="background-color: transparent; height: 100%; padding-top: 30px">
                            <div class="col"
                                style="font-family: Arial; font-size: 16px; color: #000000; padding-left:2px;  font-weight: bold;">
                                CRT</div>


                            <asp:DropDownList ID="ddlOpcoes" runat="server">
                                <asp:ListItem Text="Simples Nacional" Value="1" />
                                <asp:ListItem Text="Simples Nacional, execesso sublimite de receita bruta" Value="2" />
                                <asp:ListItem Text="Regime normal" Value="3" />
                            </asp:DropDownList>

                        </div>

                    </div>

                </div>
            </div>
        </div>


        <!--/////////////////////////////////////////////////// Div com os dados Iniciais / Endereço do Emitente  /////////////////////////////////////////////////////////////////////////////////////////////-->
        <div class="container-fluid" style="padding:0px;margin:0px;width:100%;height:100%">


            <div class="row" style="width:30%;height:30px"></div>

            <div class="row" style="width:100%;height:100%;padding:0px;margin:0px;background-color:transparent">



                <div id="div_endereço_emitente" name="div_endereço_emitente"
                    style="display:block;visibility:visible;width:100%;height:100%;background-color:transparent;margin-left:20px;margin-right:20px;border:solid;border-color:#177CC0;border-width:1px;border-radius:10px;padding: 0 20px 20px 20px;">

                    <div class="row">

                        <div class="col-xl-6" style="padding-top:20px;background-color:transparent">


                            <div class="row">

                                <div class="col-md-6" style="background-color:transparent;height:100%;padding-top:10px">

                                    <div class="row">
                                        <div class="col"
                                            style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                            CEP: </div>

                                    </div>

                                    <div class="input-group">
                                        <asp:TextBox ID="cs_cep" runat="server" CssClass="form-control"
                                            placeholder="Informe seu CEP"></asp:TextBox>
                                        <div class="input-group-append">
                                            <button class="material-symbols-outlined"><i
                                                    class="fa-solid fa-magnifying-glass"></i></button>
                                        </div>
                                    </div>



                                </div>

                                <div class="col-md-6" style="background-color:transparent;height:100%;padding-top:10px">


                                    <div class="row">
                                        <div class="col"
                                            style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                            Endereço:</div>
                                    </div>
                                    <div class="row">
                                        <div class="col"
                                            style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">

                                            <asp:TextBox ID="cs_endereco" runat="server" CssClass="form-control"
                                                placeholder="Informe o Endereço"></asp:TextBox>

                                        </div>
                                    </div>

                                </div>

                            </div>


                        </div>

                        <div class="col-md-6" style="background-color: transparent; height: 100%; padding-top: 30px">
                            <div class="row">
                                <div class="col"
                                    style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                    Número:</div>
                            </div>
                            <div class="row">
                                <div class="col">
                                    <asp:TextBox ID="cs_numero" runat="server" CssClass="layouttexto"
                                        placeholder="Informe o número"></asp:TextBox>
                                </div>
                            </div>
                        </div>



                        <div class="col-md-6" style="background-color: transparent; height: 100%; padding-top: 30px">
                            <div class="row">

                                <div class="col"
                                    style="font-family: Arial; font-size: 16px; color: #000000;  font-weight: bold;">
                                    Bairro:
                                </div>
                            </div>
                            <div class="row">
                                <div class="col">
                                    <asp:TextBox ID="cs_bairro" runat="server" CssClass="form-control"
                                        placeholder="Informe o Bairro"></asp:TextBox>
                                </div>

                            </div>

                        </div>

                        <div class="col-md-6" style="background-color: transparent; height: 100%; padding-top: 30px">
                            <div class="row">
                                <div class="col"
                                    style="font-family: Arial; font-size: 16px; color: #000000;  font-weight: bold;">
                                    Complemento:</div>

                            </div>
                            <div class="row">
                                <div class="col">
                                    <asp:TextBox ID="cs_complemento" runat="server" CssClass="form-control"
                                        placeholder="Informe o Complemento"></asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <div class="col-md-6" style="background-color: transparent; height: 100%; padding-top: 30px">
                            <div class="row">
                                <div class="col"
                                    style="font-family: Arial; font-size: 16px; color: #000000;  font-weight: bold;">
                                    Código do Município:</div>
                            </div>
                            <div class="row">
                                <div class="col">
                                    <asp:TextBox ID="cs_codigoMunicipio" runat="server" CssClass="form-control"
                                        placeholder="Informe o Código do Município"></asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <div class="col-md-6" style="background-color: transparent; height: 100%; padding-top: 30px">
                            <div class="row">
                                <div class="col"
                                    style="font-family: Arial; font-size: 16px; color: #000000;  font-weight: bold;">
                                    Nome do Município:</div>
                            </div>
                            <div class="row">
                                <div class="col">
                                    <asp:TextBox ID="cs_nomeMunicipio" runat="server" CssClass="form-control"
                                        placeholder="Informe o nome do Municipio"></asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <div class="col-md-6" style="background-color: transparent; height: 100%; padding-top: 30px">
                            <div class="row">
                                <div class="col"
                                    style="font-family: Arial; font-size: 16px; color: #000000;  font-weight: bold;">
                                    Código do País:</div>
                            </div>
                            <div class="row">
                                <div class="col">
                                    <asp:TextBox ID="cs_codigoPais" runat="server" CssClass="form-control"
                                        placeholder="Informe o código do País"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6" style="background-color: transparent; height: 100%; padding-top: 30px">
                            <div class="row">
                                <div class="col"
                                    style="font-family: Arial; font-size: 16px; color: #000000;  font-weight: bold;">
                                    Nome do País:</div>
                            </div>
                            <div class="row">
                                <div class="col">
                                    <asp:TextBox ID="cs_nomePais" runat="server" CssClass="form-control"></asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <div class="col-md-6" style="background-color: transparent; height: 100%; padding-top: 30px">
                            <div class="row">
                                <div class="col"
                                    style="font-family: Arial; font-size: 16px; color: #000000;  font-weight: bold;">
                                    Telefone:</div>
                            </div>
                            <div class="row">
                                <div class="col">
                                    <asp:TextBox ID="cs_telefone" runat="server" CssClass="form-control"
                                        placeholder="Informe seu telefone"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>







    </asp:Content>