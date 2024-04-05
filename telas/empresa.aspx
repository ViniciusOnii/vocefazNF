<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/telas/Topo.Master" CodeBehind="empresa.aspx.vb" Inherits="VoceFazNfe.empresa" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">



<script>

    function busca_cep_empresa(vcep) {

        var vendereco = document.getElementById('<%=cs_endereco.ClientID%>');
        var vcomplemento = document.getElementById('<%=cs_complemento.ClientID%>');
        var vbairro = document.getElementById('<%=cs_bairro.ClientID%>');
        var vmunicipio = document.getElementById('<%=cs_nomemunicipio.ClientID%>');
        var vuf = document.getElementById('<%=cs_uf.ClientID%>');
        var vibge = document.getElementById('<%=cs_codMunicipio.ClientID%>');
        
        if (vcep.value.length < 9) {
            return;
        }


        if (window.XMLHttpRequest) {    // code for IE7+, Firefox, Chrome, Opera, Safari
            xmlhttp = new XMLHttpRequest();
        }
        else {// code for IE6, IE5
            xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
        }

        xmlhttp.onreadystatechange = function () {

            if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
                const json = xmlhttp.responseText;

                const obj = JSON.parse(json);

                vendereco.value = "";
                vcomplemento.value = "";
                vbairro.value = "";
                vmunicipio.value = "";
                vuf.value = "";
                vibge.value = "";
          
                if (obj.erro) {
                    alert("Cep não encontrado.");
                    vcep.value = "";
                    return;
                }

                
                vendereco.value = (obj.logradouro);
                vcomplemento.value = (obj.complemento);
                vbairro.value = (obj.bairro);
                vmunicipio.value = (obj.localidade);
                vendereco.value = (obj.logradouro);
                vuf.value = (obj.uf);
                vibge.value = obj.ibge;

                vcodpais.value = "1058";
                vnomepais.value = "BRASIL";

           

            }
        }

        xmlhttp.open("GET", "https://viacep.com.br/ws/" + vcep.value + "/json", true);
        xmlhttp.send();


    }


    function botao_confirmar(vbotao) {

        var vbotao = document.getElementById("botao_gravar");
        var vbotao_aguardo = document.getElementById("botao_gravar_aguardando");

        vbotao.style.display = "none";
        vbotao.style.visibility = "hidden";

        vbotao_aguardo.style.display = "block";
        vbotao_aguardo.style.visibility = "visible";

    }


</script>


      <!--/////////////////////////////////////////////////// Painel de Mensagem //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////-->
      <asp:Panel ID="pnl_gravar" runat="server" BackColor="Transparent" Height="100%" Visible="False" style="background-color:transparent">

          <div class="row" style="width:100%;height:100px;background-color:transparent"></div>

          <div class="row" style="width:90%;height:80vh;background-color:transparent;margin-left:20px">

              <div style="width:80%;height:200px;margin:auto;background-color:transparent;border:solid;border-width:1px;border-color:black;border-radius:10px">

                  <div class="row" style="font-family:Arial;font-size:20px;color:black">
                      <div class="col" align="center" style="padding-top:40px">Dados da Empresa gravados com sucesso.</div>
                  </div>

                  <div class="row" style="padding-top:40px">
                      <div class="col" align="center">
                         <asp:Button ID="cmd_ok_gravar" runat="server" Text="Ok" style="cursor:pointer;border-radius:10px;border:solid;border-width:1px" 
                          BackColor="#17479E" BorderStyle="Solid" BorderWidth="1px" ForeColor="White" Height="43px" Width="230px" />
                      </div>
                  </div>


              </div>

          </div>

      </asp:Panel>


      <!--/////////////////////////////////////////////////// Painel Obrigatório //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////-->
      <asp:Panel ID="pnl_obrigatório" runat="server" BackColor="Transparent" Height="100%" Visible="False" style="background-color:transparent">

          <div class="row" style="width:100%;height:100px;background-color:transparent"></div>

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
                          BackColor="#17479E" BorderStyle="Solid" BorderWidth="1px" ForeColor="White" Height="43px" Width="230px" />
                      </div>
                  </div>


              </div>

          </div>

      </asp:Panel>
  


      <!--/////////////////////////////////////////////////// Area Principal do Programa //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////-->
      <asp:Panel ID="pnl_principal" runat="server" BackColor="Transparent" Height="100%" Visible="True">
 

      <div class="container-fluid" style="height:100%;padding:0px;margin:0px;width:100%;height:100%">


            <div class="row" style="width:100%;height:200px"></div>

            <div class="row" style="width:100%;height:100%;padding-left: 20px; padding-top: 0px;margin-left:0px">
                <div class="col" align="left" style="display:block;visibility:visible; font-size:20px;color:red;margin-right:20px;border-bottom:none;cursor:pointer"><span style="color: red;font-family: Arial; font-size: 24px; font-weight: bold;">Emitente da Nota Fiscal</span></div>
            </div>

            <div class="row" style="width:100%;height:40px"></div>



            <!--/////////////////////////////////////////////////// Dados Principais da Empresa - Emitente //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////-->
            <div class="row" style="width:100%;height:100%;padding:0px;margin:0px;background-color:transparent">

                <div class="row" style="width:100%;height:100%;padding-left: 20px; padding-top: 0px;margin-left:0px">
                    
                    <div id="i_empresa_dados_on" name="i_empresa_dados_on" class="col" align="left" style="display:block;visibility:visible; font-size:20px;color:red;margin-right:20px;border-bottom:none;cursor:pointer" onclick="mostra_div_informacao('div_empresa_dados','i_empresa_dados_on','i_empresa_dados_off',0)"><span style="color: #177CC0;font-family: Arial; font-size: 20px; font-weight: bold;">Dados Principais</span>&nbsp;&nbsp;<i class="fa fa-toggle-on"></i></div>
                    <div id="i_empresa_dados_off" name="i_empresa_dados_off" class="col" align="left" style="display:none;visibility:hidden; font-size:20px;color:red;margin-right:20px;border-bottom:solid;border-width:1px;border-color:#767676;cursor:pointer" onclick="mostra_div_informacao('div_empresa_dados','i_empresa_dados_on','i_empresa_dados_off',1)"><span style="color: #177CC0;font-family: Arial; font-size: 20px; font-weight: bold;">Dados Principais</span>&nbsp;&nbsp;<i class="fa fa-toggle-off"></i></div>
             
                </div>

                <div class="row" style="width:100%;height:20px"></div>
               
                <div id="div_empresa_dados" name="div_empresa_dados" style="display:block;visibility:visible;width:100%;height:100%;background-color:transparent;margin-left:20px;margin-right:20px;border:solid;border-color:#177CC0;border-width:1px;border-radius:10px;padding: 0px 20px 20px 20px;">
                                    
                     <div class="row" style="width:100%;padding:0px;margin:0px;background-color:transparent;height:100%;padding:0px;margin:0px">

                        <!--/////////////////////////////////////////////////// LINHA LADO ESQUERDO CNPJ/RAZAO SOCIAL /////////////////////////////////////////////////////////////////////////////////////////////-->
                        <div class="col-xl-7" style="width:100%;height:100%;background-color:transparent;padding:0px;margin:0px">

                            <div class="row" style="width:100%;height:100%;background-color:transparent;padding:0px;margin:0px">

                                <div class="col-md-4" style="width:100%;height:100%;background-color:transparent;padding:10px;">

                                    <div class="row" style="width:100%">
                                        <div class="col" style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">CNPJ</div>
                                    </div>

                                    <div class="row" style="width:100%;padding:0px;margin:0px">
                                        <div class="col" style="padding:0px;margin:0px">
                                            <asp:TextBox ID="cs_cnpj" runat="server" CssClass="layouttexto" style="width: 150px;padding:0px;margin:0px" ReadOnly placeholder="00.000.000/0000-00" onBlur="SetTextIn(this,0);SetDiv('div_empresa_dados',0)"
                                                onFocus="SetTextIn(this,1);SetDiv('div_empresa_dados',1)" onkeyup="formataCNPJ(this,event)" MaxLength="18" ></asp:TextBox>
                                        </div>
                                    </div>

                                </div>

                                <div class=" col-md-8" style="width:100%;height:100%;background-color:transparent; padding:10px;">
                                    
                                    <div class="row" style="width:100%;height:100%">
                                        <div class="col" style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">Razão Social</div>
                                    </div>

                                    <div class="row" style="width:100%;padding:0px;margin:0px">
                                        <div class="col" style="padding:0px;margin:0px">
                                            <asp:TextBox ID="cs_razaosocial" runat="server" ReadOnly CssClass="layouttexto"
                                                style="width: 93%;" onBlur="SetTextIn(this,0);SetDiv('div_empresa_dados',0)"
                                                onFocus="SetTextIn(this,1);SetDiv('div_empresa_dados',1)" MaxLength="60"></asp:TextBox>
                                        </div>
                                    </div>
                                </div>


                            </div>

                        </div>

                        <!--/////////////////////////////////////////////////// LINHA LADO DIREITO NOME FANTASIA /////////////////////////////////////////////////////////////////////////////////////////////-->
                        <div class="col-xl-5" style="width:100%;height:100%;background-color:transparent;padding:0px;margin:0px; padding-left:10px; padding-top:10px">
                            <div class="row">
                        <div class="col"
                           style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                            Nome Fantasia
                                </div>
                            </div>
                            <div class="row" style="padding:0px;margin:0px">
                                <div class="col" style="padding:0px;margin:0px; background-color:transparent">
                                    <asp:TextBox ID="cs_nomefantasia" runat="server" CssClass="layouttexto"
                                        style="width: 100%;" onBlur="SetTextIn(this,0);SetDiv('div_empresa_dados',0)"
                                                onFocus="SetTextIn(this,1);SetDiv('div_empresa_dados',1)" MaxLength="60"></asp:TextBox>
                                </div>
                            </div>
                         </div>   
                        
                      </div>

                    <!--/////////////////////////////////////////////////// Div com os dados Iniciais / Inscrição Estadual/ CNAE Fiscal/  /////////////////////////////////////////////////////////////////////////////////////////////-->
                    <div class="row" style="width:100%;height: 30px"></div>

                    <div class="row" style="width:100%;height:100%">

                        <div class="col-xl-12" style="width:100%;height:100%;background-color:transparent;padding:0px;margin:0px; padding-left:10px">

                            <div class="row" style="width:100%;height:100%;background-color:transparent;padding:0px;margin:0px">

                                <div class="col-xl-4" style="width:100%;height:100%;background-color:transparent;padding:10px;">
                                            <div class="row">
                                                <div class="col"
                                                    style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                                     Inscrição Estadual &nbsp &nbsp <img alt="" src="../Imagens/ihelp.png"  style="width: 20px; height: 21px; cursor:pointer" onclick="anima_informacao(1,'InscricaoEstadual')" />
                                                </div>
                                            </div>
                                    <div class="row" style="padding: 0px; margin: 0px">
                                        <div class="col" style="padding: 0px; margin: 0px; background-color: transparent">
                                            <asp:TextBox ID="cs_inscricaoestadual" runat="server" CssClass="layouttexto"
                                                Style="width:220px;" onBlur="SetTextIn(this,0);SetDiv('div_empresa_dados',0)"
                                                onFocus="SetTextIn(this,1);SetDiv('div_empresa_dados',1)" MaxLength="14"></asp:TextBox>
                                        </div>
                                    </div>
                                </div>  
                               
                                <div class="col-xl-3" style="width:100%;height:100%;background-color:transparent;padding:10px;">
                                             <div class="row">
                                                 <div class="col"
                                                     style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold; left: 0px; top: 0px;">
                                                      CNAE Fiscal &nbsp &nbsp <img alt="" src="../Imagens/ihelp.png"  style="width: 20px; height: 21px; cursor:pointer" onclick="anima_informacao(1,'CnaeFiscal')" />
                                                 </div>
                                             </div>
                                     <div class="row" style="padding: 0px; margin: 0px">
                                         <div class="col" style="padding: 0px; margin: 0px; background-color: transparent">
                                             <asp:TextBox ID="cs_cnaeFiscal" runat="server" CssClass="layouttexto"
                                                 Style="width: 150px;" onBlur="SetTextIn(this,0);SetDiv('div_empresa_dados',0)"
                                                onFocus="SetTextIn(this,1);SetDiv('div_empresa_dados',1)" MaxLength="7"></asp:TextBox>
                                         </div>
                                     </div>
                                 </div>
                            

                                <div class="col-xl-5" style="width:100%;height:100%;background-color:transparent;padding:10px;">
                                       
                                     <div class="row">
                                            <div class="col"
                                                style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                                Código Regime Tributário
                                            </div>
                                      </div>

                                      <div class="row" style="padding: 0px; margin: 0px">

                                            <div class="col" style="padding: 0px; margin: 0px; background-color: transparent">
                                                <asp:DropDownList ID="cmb_regime_tributario" runat="server" CssClass="layouttexto" onBlur="SetDiv('div_empresa_dados',0)"
                                                onFocus="SetDiv('div_empresa_dados',1)">
                                                    <asp:ListItem style="width: 200px;" Text="Simples Nacional" Value="1" />
                                                    <asp:ListItem style="width: 200px;" Text="Simples Nacional, execesso sublimite de receita bruta" Value="2" />
                                                    <asp:ListItem style="width: 200px;" Text="Regime normal" Value="3" />
                                                </asp:DropDownList>
                                            </div>

                                     </div>
                                  </div>
                            
                            </div>
                            
                       </div>
                    </div>


                    <!--/////////////////////////////////////////////////// Div com os dados Iniciais / Inscrição Municipal  /////////////////////////////////////////////////////////////////////////////////////////////-->
                    <div class="row" style="width:100%;height: 30px"></div>

                    <div class="row" style="width:100%;height:100%">

                        <div class="col-xl-12" style="width:100%;height:100%;background-color:transparent;padding:0px;margin:0px; padding-left:10px">

                            <div class="row" style="width:100%;height:100%;background-color:transparent;padding:0px;margin:0px">

                                <div class="col-xl-6" style="width:100%;height:100%;background-color:transparent;padding:10px;">

                                            <div class="row">
                                                <div class="col" style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                                     Inscrição Municipal &nbsp &nbsp <img alt="" src="../Imagens/ihelp.png"  style="width: 20px; height: 21px; cursor:pointer" onclick="anima_informacao(1,'InscricaoMunicipal')" />
                                                </div>
                                            </div>

                                            <div class="row" style="padding: 0px; margin: 0px">
                                                <div class="col" style="padding: 0px; margin: 0px; background-color: transparent">
                                                    <asp:TextBox ID="cs_im" runat="server" CssClass="layouttexto"
                                                        Style="width:80%;" onBlur="SetTextIn(this,0);SetDiv('div_empresa_dados',0)"
                                                        onFocus="SetTextIn(this,1);SetDiv('div_empresa_dados',1)" MaxLength="15"></asp:TextBox>
                                                </div>
                                            </div>

                                </div>  
                               
                                
                                <div class="col-xl-6" style="width:100%;height:100%;background-color:transparent;padding:10px;">

                                       <div class="row">
                                        <div class="col"
                                            style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                            Telefone
                                        </div>
                                    </div>
                                    <div class="row" style="padding: 0px; margin: 0px">
                                        <div class="col" style="padding: 0px; margin: 0px; background-color: transparent">
                                            <asp:TextBox ID="cs_telefone" runat="server" CssClass="layouttexto" MaxLength="20" placeholder="(xx) xxxx-xxxx"
                                                Style="width: 166px;" onBlur="SetTextIn(this,0);SetDiv('div_empresa_endereco',0)"
                                                onFocus="SetTextIn(this,1);SetDiv('div_empresa_endereco',1)" onkeyup="formataTelefone(this,event);"></asp:TextBox>
                                           
                                        </div>
                                    </div>


                                </div>

                            </div>
                            
                       </div>
                    </div>

                    
                    <!--/////////////////////////////////////////////////// Div com os dados Iniciais / Nome Contato - E-mail  /////////////////////////////////////////////////////////////////////////////////////////////-->
                    <div class="row" style="width:100%;height: 30px"></div>

                    <div class="row" style="width:100%;height:100%">

                        <div class="col-xl-12" style="width:100%;height:100%;background-color:transparent;padding:0px;margin:0px; padding-left:10px">

                            <div class="row" style="width:100%;height:100%;background-color:transparent;padding:0px;margin:0px">

                                <div class="col-xl-6" style="width:100%;height:100%;background-color:transparent;padding:10px;">
                                            <div class="row">
                                                <div class="col" style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                                     Nome Contato
                                                </div>
                                            </div>
                                    <div class="row" style="padding: 0px; margin: 0px">
                                        <div class="col" style="padding: 0px; margin: 0px; background-color: transparent">
                                            <asp:TextBox ID="cs_contato" runat="server" CssClass="layouttexto"
                                                Style="width:95%;" onBlur="SetTextIn(this,0);SetDiv('div_empresa_dados',0)"
                                                onFocus="SetTextIn(this,1);SetDiv('div_empresa_dados',1)" MaxLength="100"></asp:TextBox>
                                        </div>
                                    </div>
                                </div>  
                               
                                <div class="col-xl-6" style="width:100%;height:100%;background-color:transparent;padding:10px;">
                                             <div class="row">
                                                 <div class="col"
                                                     style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                                      E-mail
                                                 </div>
                                             </div>
                                     <div class="row" style="padding: 0px; margin: 0px">
                                         <div class="col" style="padding: 0px; margin: 0px; background-color: transparent">
                                             <asp:TextBox ID="cs_email" runat="server" CssClass="layouttexto"
                                                 Style="width: 95%;" onBlur="SetTextIn(this,0);SetDiv('div_empresa_dados',0)"
                                                onFocus="SetTextIn(this,1);SetDiv('div_empresa_dados',1)" MaxLength="50"></asp:TextBox>
                                         </div>
                                     </div>
                                 </div>
                            

                            </div>
                            
                       </div>
                    </div>


                   
                 </div>

           </div>
      


            <!--/////////////////////////////////////////////////// Endereco do emitente   /////////////////////////////////////////////////////////////////////////////////////////////-->
            <div class="container-fluid" style="padding:0px;margin:0px;width:100%;height:100%">

                <div class="row" style="width:100%;height:50px"></div>

                <div class="row" style="width:100%;height:100%;padding:0px;margin:0px;background-color:transparent">


                <div class="row" style="width:100%;height:100%;color: #177CC0; padding-left: 20px; padding-top: 0px; font-family: Arial; font-size: 20px; font-weight: bold;margin-left:0px">
                    
                    <div id="i_empresa_endereco_on" name="i_empresa_endereco_on" class="col" align="left" style="display:none;visibility:hidden; font-size:20px;color:red;margin-right:20px;border-bottom:none;cursor:pointer" onclick="mostra_div_informacao('div_empresa_endereco','i_empresa_endereco_on','i_empresa_endereco_off',0)"><span style="color: #177CC0;font-family: Arial; font-size: 20px; font-weight: bold;">Endereço</span>&nbsp;&nbsp;<i class="fa fa-toggle-on"></i></div>
                    <div id="i_empresa_endereco_off" name="i_empresa_endereco_off" class="col" align="left" style="display:block;visibility:visible; font-size:20px;color:red;margin-right:20px;border-bottom:solid;border-color:#767676;border-width:1px;cursor:pointer" onclick="mostra_div_informacao('div_empresa_endereco','i_empresa_endereco_on','i_empresa_endereco_off',1)"><span style="color: #177CC0;font-family: Arial; font-size: 20px; font-weight: bold;">Endereço</span>&nbsp;&nbsp;<i class="fa fa-toggle-off"></i></div>
                    
                    
                </div>

                <div class="row" style="width:100%;height:20px"></div>


                <!--/////////////////////////////////////////////////// Div com os dados Iniciais / Principais da Nota /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////-->
                <div id="div_empresa_endereco" name="div_empresa_endereco" style="display:none;visibility: hidden;width:100%;height:100%;background-color:transparent;margin-left:20px;margin-right:20px;border:solid;border-color:#177CC0;border-width:1px;border-radius:10px;padding: 0px 20px 20px 20px;">

                 <div class="row" style="width:100%;padding:0px;margin:0px;background-color:transparent;height:100%;padding:0px;margin:0px">

                     <!--/////////////////////////////////////////////////// LINHA LADO DIREITO - CEP/ENDEREÇO/ NÚMERO /////////////////////////////////////////////////////////////////////////////////////////////-->
                     <div class="col-xl-7" style="width:100%;height:100%;background-color:transparent;padding:0px;margin:0px">

                         <div class="row"
                             style="width:100%;height:100%;background-color:transparent;padding:0px;margin:0px">

                             <div class="col-md-4"
                                 style="width:100%;height:100%;background-color:transparent;padding:10px;">


                                  <div class="row" style="width:100%;height:100%">
                                            <div class="col"
                                                style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                                CEP </div>

                                        </div>

                                        <div class="input-group">
                                            <asp:TextBox ID="cs_cep"  runat="server" CssClass="layouttexto" MaxLength="9" 
                                                style="width: 150px" placeholder="00000-000" onBlur="SetTextIn(this,0);SetDiv('div_empresa_endereco',0);busca_cep_empresa(this)"
                                                onFocus="SetTextIn(this,1);SetDiv('div_empresa_endereco',1)" onkeyup="formataCEP(this,event);">
                                            </asp:TextBox>
                                        </div>

                             </div>


                             <div class=" col-md-6" style="width:100%;height:100%;background-color:transparent; padding:10px;">
                                 <div class="row" style="width:100%;height:100%">
                                     <div class="col"
                                         style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                         Endereço
                                     </div>
                                 </div>
                                 <div class="row" style="padding:0px;margin:0px">
                                     <div class="col" style="padding:0px;margin:0px">
                                         <asp:TextBox ID="cs_endereco" runat="server" CssClass="layouttexto" MaxLength="60"
                                             style="width: 93%;" onBlur="SetTextIn(this,0);SetDiv('div_empresa_endereco',0)"
                                                onFocus="SetTextIn(this,1);SetDiv('div_empresa_endereco',1)">
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
                                                <asp:TextBox ID="cs_numero" runat="server" CssClass="layouttexto" MaxLength="60"
                                                    Style="width: 80px;" onBlur="SetTextIn(this,0);SetDiv('div_empresa_endereco',0)"
                                                onFocus="SetTextIn(this,1);SetDiv('div_empresa_endereco',1)">
                                                </asp:TextBox>
                                            </div>
                                        </div>
                                    </div>

                         </div>

                     </div>

                     <!--/////////////////////////////////////////////////// LINHA LADO DIREITO COMPLEMENTO /////////////////////////////////////////////////////////////////////////////////////////////-->
                     <div class="col-xl-5" style="width:100%;height:100%;background-color:transparent;padding:0px;margin:0px; padding-left:10px; padding-top:10px">
                         <div class="row">
                     <div class="col"
                        style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                         Complemento
                             </div>
                         </div>
                         <div class="row" style="padding:0px;margin:0px">
                             <div class="col" style="padding:0px;margin:0px; background-color:transparent">
                                 <asp:TextBox ID="cs_complemento" runat="server" CssClass="layouttexto" MaxLength="60"
                                     style="width: 100%;" onBlur="SetTextIn(this,0);SetDiv('div_empresa_endereco',0)"
                                                onFocus="SetTextIn(this,1);SetDiv('div_empresa_endereco',1)">
                                 </asp:TextBox>
                             </div>
                         </div>
                      </div>   
                     </div>
                 
                     <!--/////////////////////////////////////////////////// Div com os dados Iniciais / BAIRRO/ CODIGO DO MUNICIPIO/ NOME DO MUNICIPIO  /////////////////////////////////////////////////////////////////////////////////////////////-->
                 <div class="row" style="width:100%;height: 30px"></div>

                 <div class="row" style="width:100%;height:100%">
                     <div class="col-xl-3"
                         style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px; padding-left: 10px">

                         <div class="row"
                             style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px">

                             <div class="col" style="width: 100%; height: 100%; background-color: transparent; padding: 10px; padding-top:20px">
                                 <div class="row">
                                     <div class="col"
                                         style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                         Bairro
                                     </div>
                                 </div>
                                 <div class="row" style="padding: 0px; margin: 0px">
                                     <div class="col" style="padding: 0px; margin: 0px; background-color: transparent">
                                         <asp:TextBox ID="cs_bairro" runat="server" CssClass="layouttexto" MaxLength="60"
                                             Style="width: 280px;" onBlur="SetTextIn(this,0);SetDiv('div_empresa_endereco',0)"
                                                onFocus="SetTextIn(this,1);SetDiv('div_empresa_endereco',1)">
                                         </asp:TextBox> 
                                     </div>
                                 </div>
                             </div>
                         
                         </div>
                     </div>
                      <!--/////////////////////////////////////////////////// LINHA LADO DIREITO NOME PAIS /////////////////////////////////////////////////////////////////////////////////////////////-->
                     <div class="col-xl-9" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px; padding-left: 10px; padding-top: 10px; padding-left: 20px">
                         <div class="row">
                             <div class="col-md-4" style="width: 100%; height: 100%; background-color: transparent; padding: 4px; padding-left: 10px">
                                 <div class="row">
                                     <div class="col"
                                         style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                         Código do Município &nbsp &nbsp <img alt="" src="../Imagens/ihelp.png"  style="width: 20px; height: 21px; cursor:pointer" onclick="anima_informacao(1,'CodigoIBGE')" />
                                     </div>
                                 </div>
                                 <div class="row">
                                     <div class="col">
                                         <asp:TextBox ID="cs_codMunicipio" runat="server" CssClass="layouttexto" MaxLength="7"
                                             Style="width: 170px;" onBlur="SetTextIn(this,0);SetDiv('div_empresa_endereco',0)"
                                                onFocus="SetTextIn(this,1);SetDiv('div_empresa_endereco',1)"></asp:TextBox>
                           
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
                                             Style="width: 80%;" onBlur="SetTextIn(this,0);SetDiv('div_empresa_endereco',0)"
                                                onFocus="SetTextIn(this,1);SetDiv('div_empresa_endereco',1)">
                                         </asp:TextBox>
                                     </div>
                                 </div>
                             </div>

                             <div class="col-md-2" style="width: 100%; height: 100%; background-color: transparent; padding: 0px; margin: 0px; padding-left: 10px; padding-top: 10px; padding-left:20px">
                         <div class="row">
                             <div class="col"
                                 style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                 UF 
                             </div>
                         </div>
                         <div class="row">
                                    <div class="col">
                                        <asp:DropDownList ID="cs_uf" runat="server" CssClass="layouttexto" onBlur="SetDiv('div_empresa_endereco',0)"
                                                onFocus="SetDiv('div_empresa_endereco',1)">
                            
                            <asp:ListItem style="width: 100%;" Text="AC" Value="AC" />
                            <asp:ListItem style="width: 100%;" Text="AL" Value="AL" />
                            <asp:ListItem style="width: 100%;" Text="AP" Value="AP" />
                            <asp:ListItem style="width: 100%;" Text="AM" Value="AM" />
                            <asp:ListItem style="width: 100%;" Text="BA" Value="BA" />
                            <asp:ListItem style="width: 100%;" Text="CE" Value="CE" />
                            <asp:ListItem style="width: 100%;" Text="DF" Value="DF" />
                            <asp:ListItem style="width: 100%;" Text="ES" Value="ES" />
                            <asp:ListItem style="width: 100%;" Text="GO" Value="GO" />
                            <asp:ListItem style="width: 100%;" Text="MA" Value="MA" />
                            <asp:ListItem style="width: 100%;" Text="MT" Value="MT" />
                            <asp:ListItem style="width: 100%;" Text="MS" Value="MS" />
                            <asp:ListItem style="width: 100%;" Text="MG" Value="MG" />
                            <asp:ListItem style="width: 100%;" Text="PA" Value="PA" />
                            <asp:ListItem style="width: 100%;" Text="PB" Value="PB" />
                            <asp:ListItem style="width: 100%;" Text="PR" Value="PR" />
                            <asp:ListItem style="width: 100%;" Text="PE" Value="PE" />
                            <asp:ListItem style="width: 100%;" Text="PI" Value="PI" />
                            <asp:ListItem style="width: 100%;" Text="RJ" Value="RJ" />
                            <asp:ListItem style="width: 100%;" Text="RN" Value="RN" />
                            <asp:ListItem style="width: 100%;" Text="RS" Value="RS" />
                            <asp:ListItem style="width: 100%;" Text="RO" Value="RO" />
                            <asp:ListItem style="width: 100%;" Text="RR" Value="RR" />
                            <asp:ListItem style="width: 100%;" Text="SC" Value="SC" />
                            <asp:ListItem style="width: 100%;" Text="SE" Value="SE" />
                            <asp:ListItem style="width: 100%;" Text="SP" Value="SP" />
                            <asp:ListItem style="width: 100%;" Text="TO" Value="TO" />
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



            <!--/////////////////////////////////////////////////// I.E. do Substituto Tributario   ////////////////////////////////////////////////////////////////////////////////////-->
            <div class="container-fluid" style="padding:0px;margin:0px;width:100%;height:100%">

                <div class="row" style="width:100%;height:50px"></div>

                <div class="row" style="width:100%;height:100%;padding:0px;margin:0px;background-color:transparent">


                <div class="row" style="width:100%;height:100%;color: #177CC0; padding-left: 20px; padding-top: 0px; font-family: Arial; font-size: 20px; font-weight: bold;margin-left:0px">
                    
                    <div id="i_empresa_ie_on" name="i_empresa_ie_on" class="col" align="left" style="display:none;visibility:hidden; font-size:20px;color:red;margin-right:20px;border-bottom:none;cursor:pointer" onclick="mostra_div_informacao('div_empresa_ie','i_empresa_ie_on','i_empresa_ie_off',0)"><span style="color: #177CC0;font-family: Arial; font-size: 20px; font-weight: bold;">Inscrição Substituto Tributário</span>&nbsp;&nbsp;<i class="fa fa-toggle-on"></i>&nbsp;&nbsp; <img alt="" src="../Imagens/ihelp.png"  style="width: 20px; height: 21px; cursor:pointer" onclick="anima_informacao(1,'InscricaoSubstituto')" /></div>
                    <div id="i_empresa_ie_off" name="i_empresa_ie_off" class="col" align="left" style="display:block;visibility:visible; font-size:20px;color:red;margin-right:20px;border-bottom:solid;border-color:#767676;border-width:1px;cursor:pointer" onclick="mostra_div_informacao('div_empresa_ie','i_empresa_ie_on','i_empresa_ie_off',1)"><span style="color: #177CC0;font-family: Arial; font-size: 20px; font-weight: bold;">Inscrição Substituto Tributário</span>&nbsp;&nbsp;<i class="fa fa-toggle-off"></i> &nbsp;&nbsp; <img alt="" src="../Imagens/ihelp.png"  style="width: 20px; height: 21px; cursor:pointer" onclick="anima_informacao(1,'InscricaoSubstituto')" /></div>
                    
                    
                </div>

                <div class="row" style="width:100%;height:20px"></div>


                <!--/////////////////////////////////////////////////// Div com os dados Iniciais / Principais da Nota /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////-->
                <div id="div_empresa_ie" name="div_empresa_ie" style="display:none;visibility:hidden;width:100%;height:100%;background-color:transparent;margin-left:20px;margin-right:20px;border:solid;border-color:#177CC0;border-width:1px;border-radius:10px;padding: 0px 20px 20px 20px;">

                 

                    <div class="row" style="width:100%;padding:0px;margin:0px;background-color:transparent;height:100%;padding:0px;margin:0px">

                        <div class="col-xl-4" style="width:100%;height:100%;background-color:transparent;padding:0px;margin:0px">

                             <!--/////////////////////////////////////////////////// IE ST -  AC /////////////////////////////////////////////////////////////////////////////////////////////-->
                             <div class="row" style="width:100%;height:100%;background-color:transparent;padding:0px;margin:0px">

                                  <div class=" col-md-12" style="width:100%;height:100%;background-color:transparent; padding:10px;">
                                     <div class="row" style="width:100%;height:100%">
                                         <div class="col" style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">Inscrição AC</div>
                                     </div>

                                     <div class="row" style="padding:0px;margin:0px">
                                         <div class="col" style="padding:0px;margin:0px">
                                             <asp:TextBox ID="cs_iest_ac" runat="server" CssClass="layouttexto"
                                                 style="width: 40%;" onBlur="SetTextIn(this,0);SetDiv('div_empresa_ie',0)"
                                                    onFocus="SetTextIn(this,1);SetDiv('div_empresa_ie',1)" MaxLength="14"></asp:TextBox>
                                         </div>
                                     </div>
                                 </div> 

                             </div>

                        </div>


                        <div class="col-xl-4" style="width:100%;height:100%;background-color:transparent;padding:0px;margin:0px">

                             <!--/////////////////////////////////////////////////// IE ST -  AL /////////////////////////////////////////////////////////////////////////////////////////////-->
                             <div class="row" style="width:100%;height:100%;background-color:transparent;padding:0px;margin:0px">

                                  <div class=" col-md-12" style="width:100%;height:100%;background-color:transparent; padding:10px;">
                                     <div class="row" style="width:100%;height:100%">
                                         <div class="col" style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">Inscrição AL</div>
                                     </div>

                                     <div class="row" style="padding:0px;margin:0px">
                                         <div class="col" style="padding:0px;margin:0px">
                                             <asp:TextBox ID="cs_iest_al" runat="server" CssClass="layouttexto"
                                                 style="width: 40%;" onBlur="SetTextIn(this,0);SetDiv('div_empresa_ie',0)"
                                                    onFocus="SetTextIn(this,1);SetDiv('div_empresa_ie',1)" MaxLength="14"></asp:TextBox>
                                         </div>
                                     </div>
                                 </div> 

                             </div>

                        </div>


                        <div class="col-xl-4" style="width:100%;height:100%;background-color:transparent;padding:0px;margin:0px">

                              <!--/////////////////////////////////////////////////// IE ST -  AP /////////////////////////////////////////////////////////////////////////////////////////////-->
                             <div class="row" style="width:100%;height:100%;background-color:transparent;padding:0px;margin:0px">

                                  <div class=" col-md-12" style="width:100%;height:100%;background-color:transparent; padding:10px;">
                                     <div class="row" style="width:100%;height:100%">
                                         <div class="col" style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">Inscrição AP</div>
                                     </div>

                                     <div class="row" style="padding:0px;margin:0px">
                                         <div class="col" style="padding:0px;margin:0px">
                                             <asp:TextBox ID="cs_iest_ap" runat="server" CssClass="layouttexto"
                                                 style="width: 40%;" onBlur="SetTextIn(this,0);SetDiv('div_empresa_ie',0)"
                                                    onFocus="SetTextIn(this,1);SetDiv('div_empresa_ie',1)" MaxLength="14"></asp:TextBox>
                                         </div>
                                     </div>
                                 </div> 

                             </div>

                        </div>

                    </div>


                    <div class="row" style="width:100%;padding:0px;margin:0px;background-color:transparent;height:100%;padding:0px;margin:0px">

                        <div class="col-xl-4" style="width:100%;height:100%;background-color:transparent;padding:0px;margin:0px">
                            <!--/////////////////////////////////////////////////// IE ST - AM /////////////////////////////////////////////////////////////////////////////////////////////-->
                             <div class="row" style="width:100%;height:100%;background-color:transparent;padding:0px;margin:0px">

                                  <div class=" col-md-12" style="width:100%;height:100%;background-color:transparent; padding:10px;">
                                     <div class="row" style="width:100%;height:100%">
                                         <div class="col" style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">Inscrição AM</div>
                                     </div>

                                     <div class="row" style="padding:0px;margin:0px">
                                         <div class="col" style="padding:0px;margin:0px">
                                             <asp:TextBox ID="cs_iest_am" runat="server" CssClass="layouttexto"
                                                 style="width: 40%;" onBlur="SetTextIn(this,0);SetDiv('div_empresa_ie',0)"
                                                    onFocus="SetTextIn(this,1);SetDiv('div_empresa_ie',1)" MaxLength="14"></asp:TextBox>
                                         </div>
                                     </div>
                                 </div> 

                             </div>
                        </div>


                        <div class="col-xl-4" style="width:100%;height:100%;background-color:transparent;padding:0px;margin:0px">
                            <!--/////////////////////////////////////////////////// IE ST - BA /////////////////////////////////////////////////////////////////////////////////////////////-->
                             <div class="row" style="width:100%;height:100%;background-color:transparent;padding:0px;margin:0px">

                                  <div class=" col-md-12" style="width:100%;height:100%;background-color:transparent; padding:10px;">
                                     <div class="row" style="width:100%;height:100%">
                                         <div class="col" style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">Inscrição BA</div>
                                     </div>

                                     <div class="row" style="padding:0px;margin:0px">
                                         <div class="col" style="padding:0px;margin:0px">
                                             <asp:TextBox ID="cs_iest_ba" runat="server" CssClass="layouttexto"
                                                 style="width: 40%;" onBlur="SetTextIn(this,0);SetDiv('div_empresa_ie',0)"
                                                    onFocus="SetTextIn(this,1);SetDiv('div_empresa_ie',1)" MaxLength="14"></asp:TextBox>
                                         </div>
                                     </div>
                                 </div> 

                             </div>
                        </div>

                        <div class="col-xl-4" style="width:100%;height:100%;background-color:transparent;padding:0px;margin:0px">
                              <!--/////////////////////////////////////////////////// IE ST - CE /////////////////////////////////////////////////////////////////////////////////////////////-->
                             <div class="row" style="width:100%;height:100%;background-color:transparent;padding:0px;margin:0px">

                                  <div class=" col-md-12" style="width:100%;height:100%;background-color:transparent; padding:10px;">
                                     <div class="row" style="width:100%;height:100%">
                                         <div class="col" style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">Inscrição CE</div>
                                     </div>

                                     <div class="row" style="padding:0px;margin:0px">
                                         <div class="col" style="padding:0px;margin:0px">
                                             <asp:TextBox ID="cs_iest_ce" runat="server" CssClass="layouttexto"
                                                 style="width: 40%;" onBlur="SetTextIn(this,0);SetDiv('div_empresa_ie',0)"
                                                    onFocus="SetTextIn(this,1);SetDiv('div_empresa_ie',1)" MaxLength="14"></asp:TextBox>
                                         </div>
                                     </div>
                                 </div> 

                             </div>

                        </div>


                    </div>



                    <div class="row" style="width:100%;padding:0px;margin:0px;background-color:transparent;height:100%;padding:0px;margin:0px">

                        <div class="col-xl-4" style="width:100%;height:100%;background-color:transparent;padding:0px;margin:0px">
                            <!--/////////////////////////////////////////////////// IE ST - DF /////////////////////////////////////////////////////////////////////////////////////////////-->
                            <div class="row" style="width:100%;height:100%;background-color:transparent;padding:0px;margin:0px">

                              <div class=" col-md-12" style="width:100%;height:100%;background-color:transparent; padding:10px;">
                                 <div class="row" style="width:100%;height:100%">
                                     <div class="col" style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">Inscrição DF</div>
                                 </div>

                                 <div class="row" style="padding:0px;margin:0px">
                                     <div class="col" style="padding:0px;margin:0px">
                                         <asp:TextBox ID="cs_iest_df" runat="server" CssClass="layouttexto"
                                             style="width: 40%;" onBlur="SetTextIn(this,0);SetDiv('div_empresa_ie',0)"
                                                onFocus="SetTextIn(this,1);SetDiv('div_empresa_ie',1)" MaxLength="14"></asp:TextBox>
                                     </div>
                                 </div>
                             </div> 

                         </div>
                        </div>

                        <div class="col-xl-4" style="width:100%;height:100%;background-color:transparent;padding:0px;margin:0px">
                            <!--/////////////////////////////////////////////////// IE ST - ES /////////////////////////////////////////////////////////////////////////////////////////////-->
                           <div class="row" style="width:100%;height:100%;background-color:transparent;padding:0px;margin:0px">

                              <div class=" col-md-12" style="width:100%;height:100%;background-color:transparent; padding:10px;">
                                 <div class="row" style="width:100%;height:100%">
                                     <div class="col" style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">Inscrição ES</div>
                                 </div>

                                 <div class="row" style="padding:0px;margin:0px">
                                     <div class="col" style="padding:0px;margin:0px">
                                         <asp:TextBox ID="cs_iest_es" runat="server" CssClass="layouttexto"
                                             style="width: 40%;" onBlur="SetTextIn(this,0);SetDiv('div_empresa_ie',0)"
                                                onFocus="SetTextIn(this,1);SetDiv('div_empresa_ie',1)" MaxLength="14"></asp:TextBox>
                                     </div>
                                 </div>
                             </div> 

                         </div>
                        </div>


                        <div class="col-xl-4" style="width:100%;height:100%;background-color:transparent;padding:0px;margin:0px">
                            <!--/////////////////////////////////////////////////// IE ST - GO /////////////////////////////////////////////////////////////////////////////////////////////-->
                            <div class="row" style="width:100%;height:100%;background-color:transparent;padding:0px;margin:0px">

                              <div class=" col-md-12" style="width:100%;height:100%;background-color:transparent; padding:10px;">
                                 <div class="row" style="width:100%;height:100%">
                                     <div class="col" style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">Inscrição GO</div>
                                 </div>

                                 <div class="row" style="padding:0px;margin:0px">
                                     <div class="col" style="padding:0px;margin:0px">
                                         <asp:TextBox ID="cs_iest_go" runat="server" CssClass="layouttexto"
                                             style="width: 40%;" onBlur="SetTextIn(this,0);SetDiv('div_empresa_ie',0)"
                                                onFocus="SetTextIn(this,1);SetDiv('div_empresa_ie',1)" MaxLength="14"></asp:TextBox>
                                     </div>
                                 </div>
                             </div> 

                         </div>
                        </div>


                    </div>


                    <div class="row" style="width:100%;padding:0px;margin:0px;background-color:transparent;height:100%;padding:0px;margin:0px">

                        <div class="col-xl-4" style="width:100%;height:100%;background-color:transparent;padding:0px;margin:0px">

                              <!--/////////////////////////////////////////////////// IE ST - MA /////////////////////////////////////////////////////////////////////////////////////////////-->
                              <div class="row" style="width:100%;height:100%;background-color:transparent;padding:0px;margin:0px">

                              <div class=" col-md-12" style="width:100%;height:100%;background-color:transparent; padding:10px;">
                                 <div class="row" style="width:100%;height:100%">
                                     <div class="col" style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">Inscrição MA</div>
                                 </div>

                                 <div class="row" style="padding:0px;margin:0px">
                                     <div class="col" style="padding:0px;margin:0px">
                                         <asp:TextBox ID="cs_iest_ma" runat="server" CssClass="layouttexto"
                                             style="width: 40%;" onBlur="SetTextIn(this,0);SetDiv('div_empresa_ie',0)"
                                                onFocus="SetTextIn(this,1);SetDiv('div_empresa_ie',1)" MaxLength="14"></asp:TextBox>
                                     </div>
                                 </div>
                             </div> 

                         </div>
                        </div>


                         <div class="col-xl-4" style="width:100%;height:100%;background-color:transparent;padding:0px;margin:0px">
                              <!--/////////////////////////////////////////////////// IE ST - MT /////////////////////////////////////////////////////////////////////////////////////////////-->
                              <div class="row" style="width:100%;height:100%;background-color:transparent;padding:0px;margin:0px">

                              <div class=" col-md-12" style="width:100%;height:100%;background-color:transparent; padding:10px;">
                                 <div class="row" style="width:100%;height:100%">
                                     <div class="col" style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">Inscrição MT</div>
                                 </div>

                                 <div class="row" style="padding:0px;margin:0px">
                                     <div class="col" style="padding:0px;margin:0px">
                                         <asp:TextBox ID="cs_iest_mt" runat="server" CssClass="layouttexto"
                                             style="width: 40%;" onBlur="SetTextIn(this,0);SetDiv('div_empresa_ie',0)"
                                                onFocus="SetTextIn(this,1);SetDiv('div_empresa_ie',1)" MaxLength="14"></asp:TextBox>
                                     </div>
                                 </div>
                             </div> 

                         </div>
                        </div>


                         <div class="col-xl-4" style="width:100%;height:100%;background-color:transparent;padding:0px;margin:0px">
                               <!--/////////////////////////////////////////////////// IE ST - MS /////////////////////////////////////////////////////////////////////////////////////////////-->
                              <div class="row" style="width:100%;height:100%;background-color:transparent;padding:0px;margin:0px">

                              <div class=" col-md-12" style="width:100%;height:100%;background-color:transparent; padding:10px;">
                                 <div class="row" style="width:100%;height:100%">
                                     <div class="col" style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">Inscrição MS</div>
                                 </div>

                                 <div class="row" style="padding:0px;margin:0px">
                                     <div class="col" style="padding:0px;margin:0px">
                                         <asp:TextBox ID="cs_iest_ms" runat="server" CssClass="layouttexto"
                                             style="width: 40%;" onBlur="SetTextIn(this,0);SetDiv('div_empresa_ie',0)"
                                                onFocus="SetTextIn(this,1);SetDiv('div_empresa_ie',1)" MaxLength="14"></asp:TextBox>
                                     </div>
                                 </div>
                             </div> 

                         </div>
                        </div>

                    </div>    


                    <div class="row" style="width:100%;padding:0px;margin:0px;background-color:transparent;height:100%;padding:0px;margin:0px">

                        <div class="col-xl-4" style="width:100%;height:100%;background-color:transparent;padding:0px;margin:0px">


                            <!--/////////////////////////////////////////////////// IE ST - MG /////////////////////////////////////////////////////////////////////////////////////////////-->
                             <div class="row" style="width:100%;height:100%;background-color:transparent;padding:0px;margin:0px">

                                  <div class=" col-md-12" style="width:100%;height:100%;background-color:transparent; padding:10px;">
                                     <div class="row" style="width:100%;height:100%">
                                         <div class="col" style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">Inscrição MG</div>
                                     </div>

                                     <div class="row" style="padding:0px;margin:0px">
                                         <div class="col" style="padding:0px;margin:0px">
                                             <asp:TextBox ID="cs_iest_mg" runat="server" CssClass="layouttexto"
                                                 style="width: 40%;" onBlur="SetTextIn(this,0);SetDiv('div_empresa_ie',0)"
                                                    onFocus="SetTextIn(this,1);SetDiv('div_empresa_ie',1)" MaxLength="14"></asp:TextBox>
                                         </div>
                                     </div>
                                 </div> 

                             </div>

                        </div>
                 

                        <div class="col-xl-4" style="width:100%;height:100%;background-color:transparent;padding:0px;margin:0px">

                            <!--/////////////////////////////////////////////////// IE ST - PA /////////////////////////////////////////////////////////////////////////////////////////////-->
                             <div class="row" style="width:100%;height:100%;background-color:transparent;padding:0px;margin:0px">

                                  <div class=" col-md-12" style="width:100%;height:100%;background-color:transparent; padding:10px;">
                                     <div class="row" style="width:100%;height:100%">
                                         <div class="col" style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">Inscrição PA</div>
                                     </div>

                                     <div class="row" style="padding:0px;margin:0px">
                                         <div class="col" style="padding:0px;margin:0px">
                                             <asp:TextBox ID="cs_iest_pa" runat="server" CssClass="layouttexto"
                                                 style="width: 40%;" onBlur="SetTextIn(this,0);SetDiv('div_empresa_ie',0)"
                                                    onFocus="SetTextIn(this,1);SetDiv('div_empresa_ie',1)" MaxLength="14"></asp:TextBox>
                                         </div>
                                     </div>
                                 </div> 

                             </div>

                        </div>
                        

                        <div class="col-xl-4" style="width:100%;height:100%;background-color:transparent;padding:0px;margin:0px">

                            <!--/////////////////////////////////////////////////// IE ST - PB /////////////////////////////////////////////////////////////////////////////////////////////-->
                             <div class="row" style="width:100%;height:100%;background-color:transparent;padding:0px;margin:0px">

                                  <div class=" col-md-12" style="width:100%;height:100%;background-color:transparent; padding:10px;">
                                     <div class="row" style="width:100%;height:100%">
                                         <div class="col" style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">Inscrição PB</div>
                                     </div>

                                     <div class="row" style="padding:0px;margin:0px">
                                         <div class="col" style="padding:0px;margin:0px">
                                             <asp:TextBox ID="cs_iest_pb" runat="server" CssClass="layouttexto"
                                                 style="width: 40%;" onBlur="SetTextIn(this,0);SetDiv('div_empresa_ie',0)"
                                                    onFocus="SetTextIn(this,1);SetDiv('div_empresa_ie',1)" MaxLength="14"></asp:TextBox>
                                         </div>
                                     </div>
                                 </div> 

                             </div>

                        </div>


                    </div>




                     <div class="row" style="width:100%;padding:0px;margin:0px;background-color:transparent;height:100%;padding:0px;margin:0px">

                        <div class="col-xl-4" style="width:100%;height:100%;background-color:transparent;padding:0px;margin:0px">


                            <!--/////////////////////////////////////////////////// IE ST - PR /////////////////////////////////////////////////////////////////////////////////////////////-->
                                 <div class="row" style="width:100%;height:100%;background-color:transparent;padding:0px;margin:0px">

                                      <div class=" col-md-12" style="width:100%;height:100%;background-color:transparent; padding:10px;">
                                         <div class="row" style="width:100%;height:100%">
                                             <div class="col" style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">Inscrição PR</div>
                                         </div>

                                         <div class="row" style="padding:0px;margin:0px">
                                             <div class="col" style="padding:0px;margin:0px">
                                                 <asp:TextBox ID="cs_iest_pr" runat="server" CssClass="layouttexto"
                                                     style="width: 40%;" onBlur="SetTextIn(this,0);SetDiv('div_empresa_ie',0)"
                                                        onFocus="SetTextIn(this,1);SetDiv('div_empresa_ie',1)" MaxLength="14"></asp:TextBox>
                                             </div>
                                         </div>
                                     </div> 

                                 </div>

                        </div>
                 

                        <div class="col-xl-4" style="width:100%;height:100%;background-color:transparent;padding:0px;margin:0px">

                             <!--/////////////////////////////////////////////////// IE ST - PE /////////////////////////////////////////////////////////////////////////////////////////////-->
                                 <div class="row" style="width:100%;height:100%;background-color:transparent;padding:0px;margin:0px">

                                      <div class=" col-md-12" style="width:100%;height:100%;background-color:transparent; padding:10px;">
                                         <div class="row" style="width:100%;height:100%">
                                             <div class="col" style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">Inscrição PE</div>
                                         </div>

                                         <div class="row" style="padding:0px;margin:0px">
                                             <div class="col" style="padding:0px;margin:0px">
                                                 <asp:TextBox ID="cs_iest_pe" runat="server" CssClass="layouttexto"
                                                     style="width: 40%;" onBlur="SetTextIn(this,0);SetDiv('div_empresa_ie',0)"
                                                        onFocus="SetTextIn(this,1);SetDiv('div_empresa_ie',1)" MaxLength="14"></asp:TextBox>
                                             </div>
                                         </div>
                                     </div> 

                                 </div>

                        </div>
                        

                        <div class="col-xl-4" style="width:100%;height:100%;background-color:transparent;padding:0px;margin:0px">

                               <!--/////////////////////////////////////////////////// IE ST - PI /////////////////////////////////////////////////////////////////////////////////////////////-->
                                 <div class="row" style="width:100%;height:100%;background-color:transparent;padding:0px;margin:0px">

                                      <div class=" col-md-12" style="width:100%;height:100%;background-color:transparent; padding:10px;">
                                         <div class="row" style="width:100%;height:100%">
                                             <div class="col" style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">Inscrição PI</div>
                                         </div>

                                         <div class="row" style="padding:0px;margin:0px">
                                             <div class="col" style="padding:0px;margin:0px">
                                                 <asp:TextBox ID="cs_iest_pi" runat="server" CssClass="layouttexto"
                                                     style="width: 40%;" onBlur="SetTextIn(this,0);SetDiv('div_empresa_ie',0)"
                                                        onFocus="SetTextIn(this,1);SetDiv('div_empresa_ie',1)" MaxLength="14"></asp:TextBox>
                                             </div>
                                         </div>
                                     </div> 

                                 </div>

                        </div>


                    </div>



                    <div class="row" style="width:100%;padding:0px;margin:0px;background-color:transparent;height:100%;padding:0px;margin:0px">

                        <div class="col-xl-4" style="width:100%;height:100%;background-color:transparent;padding:0px;margin:0px">


                            <!--/////////////////////////////////////////////////// IE ST - RJ /////////////////////////////////////////////////////////////////////////////////////////////-->
                             <div class="row" style="width:100%;height:100%;background-color:transparent;padding:0px;margin:0px">

                                  <div class=" col-md-12" style="width:100%;height:100%;background-color:transparent; padding:10px;">
                                     <div class="row" style="width:100%;height:100%">
                                         <div class="col" style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">Inscrição RJ</div>
                                     </div>

                                     <div class="row" style="padding:0px;margin:0px">
                                         <div class="col" style="padding:0px;margin:0px">
                                             <asp:TextBox ID="cs_iest_rj" runat="server" CssClass="layouttexto"
                                                 style="width: 40%;" onBlur="SetTextIn(this,0);SetDiv('div_empresa_ie',0)"
                                                    onFocus="SetTextIn(this,1);SetDiv('div_empresa_ie',1)" MaxLength="14"></asp:TextBox>
                                         </div>
                                     </div>
                                 </div> 

                         </div>


                        </div>
                 

                        <div class="col-xl-4" style="width:100%;height:100%;background-color:transparent;padding:0px;margin:0px">

                             <!--/////////////////////////////////////////////////// IE ST - RN /////////////////////////////////////////////////////////////////////////////////////////////-->
                                 <div class="row" style="width:100%;height:100%;background-color:transparent;padding:0px;margin:0px">

                                      <div class=" col-md-12" style="width:100%;height:100%;background-color:transparent; padding:10px;">
                                         <div class="row" style="width:100%;height:100%">
                                             <div class="col" style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">Inscrição RN</div>
                                         </div>

                                         <div class="row" style="padding:0px;margin:0px">
                                             <div class="col" style="padding:0px;margin:0px">
                                                 <asp:TextBox ID="cs_iest_rn" runat="server" CssClass="layouttexto"
                                                     style="width: 40%;" onBlur="SetTextIn(this,0);SetDiv('div_empresa_ie',0)"
                                                        onFocus="SetTextIn(this,1);SetDiv('div_empresa_ie',1)" MaxLength="14"></asp:TextBox>
                                             </div>
                                         </div>
                                     </div> 

                                 </div>

                        </div>
                        

                        <div class="col-xl-4" style="width:100%;height:100%;background-color:transparent;padding:0px;margin:0px">

                                  <!--/////////////////////////////////////////////////// IE ST - RS /////////////////////////////////////////////////////////////////////////////////////////////-->
                                 <div class="row" style="width:100%;height:100%;background-color:transparent;padding:0px;margin:0px">

                                      <div class=" col-md-12" style="width:100%;height:100%;background-color:transparent; padding:10px;">
                                         <div class="row" style="width:100%;height:100%">
                                             <div class="col" style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">Inscrição RS</div>
                                         </div>

                                         <div class="row" style="padding:0px;margin:0px">
                                             <div class="col" style="padding:0px;margin:0px">
                                                 <asp:TextBox ID="cs_iest_rs" runat="server" CssClass="layouttexto"
                                                     style="width: 40%;" onBlur="SetTextIn(this,0);SetDiv('div_empresa_ie',0)"
                                                        onFocus="SetTextIn(this,1);SetDiv('div_empresa_ie',1)" MaxLength="14"></asp:TextBox>
                                             </div>
                                         </div>
                                     </div> 

                                 </div>


                        </div>


                    </div>



                     <div class="row" style="width:100%;padding:0px;margin:0px;background-color:transparent;height:100%;padding:0px;margin:0px">

                        <div class="col-xl-4" style="width:100%;height:100%;background-color:transparent;padding:0px;margin:0px">

                             <!--/////////////////////////////////////////////////// IE ST - RO /////////////////////////////////////////////////////////////////////////////////////////////-->
                             <div class="row" style="width:100%;height:100%;background-color:transparent;padding:0px;margin:0px">

                                  <div class=" col-md-12" style="width:100%;height:100%;background-color:transparent; padding:10px;">
                                     <div class="row" style="width:100%;height:100%">
                                         <div class="col" style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">Inscrição RO</div>
                                     </div>

                                     <div class="row" style="padding:0px;margin:0px">
                                         <div class="col" style="padding:0px;margin:0px">
                                             <asp:TextBox ID="cs_iest_ro" runat="server" CssClass="layouttexto"
                                                 style="width: 40%;" onBlur="SetTextIn(this,0);SetDiv('div_empresa_ie',0)"
                                                    onFocus="SetTextIn(this,1);SetDiv('div_empresa_ie',1)" MaxLength="14"></asp:TextBox>
                                         </div>
                                     </div>
                                 </div> 

                             </div>
                      


                        </div>
                 

                        <div class="col-xl-4" style="width:100%;height:100%;background-color:transparent;padding:0px;margin:0px">

                             <!--/////////////////////////////////////////////////// IE ST - RR /////////////////////////////////////////////////////////////////////////////////////////////-->
                             <div class="row" style="width:100%;height:100%;background-color:transparent;padding:0px;margin:0px">

                                  <div class=" col-md-12" style="width:100%;height:100%;background-color:transparent; padding:10px;">
                                     <div class="row" style="width:100%;height:100%">
                                         <div class="col" style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold; left: 0px; top: 0px;">Inscrição RR</div>
                                     </div>

                                     <div class="row" style="padding:0px;margin:0px">
                                         <div class="col" style="padding:0px;margin:0px">
                                             <asp:TextBox ID="cs_iest_rr" runat="server" CssClass="layouttexto"
                                                 style="width: 40%;" onBlur="SetTextIn(this,0);SetDiv('div_empresa_ie',0)"
                                                    onFocus="SetTextIn(this,1);SetDiv('div_empresa_ie',1)" MaxLength="14"></asp:TextBox>
                                         </div>
                                     </div>
                                 </div> 

                             </div>

                        </div>
                        

                        <div class="col-xl-4" style="width:100%;height:100%;background-color:transparent;padding:0px;margin:0px">

                                
                             <!--/////////////////////////////////////////////////// IE ST - SC /////////////////////////////////////////////////////////////////////////////////////////////-->
                             <div class="row" style="width:100%;height:100%;background-color:transparent;padding:0px;margin:0px">

                                  <div class=" col-md-12" style="width:100%;height:100%;background-color:transparent; padding:10px;">
                                     <div class="row" style="width:100%;height:100%">
                                         <div class="col" style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">Inscrição SC</div>
                                     </div>

                                     <div class="row" style="padding:0px;margin:0px">
                                         <div class="col" style="padding:0px;margin:0px">
                                             <asp:TextBox ID="cs_iest_sc" runat="server" CssClass="layouttexto"
                                                 style="width: 40%;" onBlur="SetTextIn(this,0);SetDiv('div_empresa_ie',0)"
                                                    onFocus="SetTextIn(this,1);SetDiv('div_empresa_ie',1)" MaxLength="14"></asp:TextBox>
                                         </div>
                                     </div>
                                 </div> 

                             </div>

                        </div>


                    </div>




                     <div class="row" style="width:100%;padding:0px;margin:0px;background-color:transparent;height:100%;padding:0px;margin:0px">

                        <div class="col-xl-4" style="width:100%;height:100%;background-color:transparent;padding:0px;margin:0px">

                             <!--/////////////////////////////////////////////////// IE ST - SP /////////////////////////////////////////////////////////////////////////////////////////////-->
                             <div class="row" style="width:100%;height:100%;background-color:transparent;padding:0px;margin:0px">

                                  <div class=" col-md-12" style="width:100%;height:100%;background-color:transparent; padding:10px;">
                                     <div class="row" style="width:100%;height:100%">
                                         <div class="col" style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">Inscrição SP</div>
                                     </div>

                                     <div class="row" style="padding:0px;margin:0px">
                                         <div class="col" style="padding:0px;margin:0px">
                                             <asp:TextBox ID="cs_iest_sp" runat="server" CssClass="layouttexto"
                                                 style="width: 40%;" onBlur="SetTextIn(this,0);SetDiv('div_empresa_ie',0)"
                                                    onFocus="SetTextIn(this,1);SetDiv('div_empresa_ie',1)" MaxLength="14"></asp:TextBox>
                                         </div>
                                     </div>
                                 </div> 

                             </div>

                        </div>
                 

                        <div class="col-xl-4" style="width:100%;height:100%;background-color:transparent;padding:0px;margin:0px">

                             <!--/////////////////////////////////////////////////// IE ST - SE /////////////////////////////////////////////////////////////////////////////////////////////-->
                             <div class="row" style="width:100%;height:100%;background-color:transparent;padding:0px;margin:0px">

                                  <div class=" col-md-12" style="width:100%;height:100%;background-color:transparent; padding:10px;">
                                     <div class="row" style="width:100%;height:100%">
                                         <div class="col" style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">Inscrição SE</div>
                                     </div>

                                     <div class="row" style="padding:0px;margin:0px">
                                         <div class="col" style="padding:0px;margin:0px">
                                             <asp:TextBox ID="cs_iest_se" runat="server" CssClass="layouttexto"
                                                 style="width: 40%;" onBlur="SetTextIn(this,0);SetDiv('div_empresa_ie',0)"
                                                    onFocus="SetTextIn(this,1);SetDiv('div_empresa_ie',1)" MaxLength="14"></asp:TextBox>
                                         </div>
                                     </div>
                                 </div> 

                             </div>

                        </div>
                        

                        <div class="col-xl-4" style="width:100%;height:100%;background-color:transparent;padding:0px;margin:0px">

                                
                             <!--/////////////////////////////////////////////////// IE ST - TO /////////////////////////////////////////////////////////////////////////////////////////////-->
                             <div class="row" style="width:100%;height:100%;background-color:transparent;padding:0px;margin:0px">

                       
                                 <div class=" col-md-12" style="width:100%;height:100%;background-color:transparent; padding:10px;">
                                     <div class="row" style="width:100%;height:100%">
                                         <div class="col" style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">Inscrição TO</div>
                                     </div>

                                     <div class="row" style="padding:0px;margin:0px">
                                         <div class="col" style="padding:0px;margin:0px">
                                             <asp:TextBox ID="cs_iest_to" runat="server" CssClass="layouttexto"
                                                 style="width: 40%;" onBlur="SetTextIn(this,0);SetDiv('div_empresa_ie',0)"
                                                    onFocus="SetTextIn(this,1);SetDiv('div_empresa_ie',1)" MaxLength="14"></asp:TextBox>
                                         </div>
                                     </div>
                                 </div> 

                             </div>


                        </div>


                    </div>


                 
               
            </div>
          
           </div>
  
        </div>



            <!--/////////////////////////////////////////////////// Logotipo da empresa   ////////////////////////////////////////////////////////////////////////////////////-->
            <div class="container-fluid" style="padding:0px;margin:0px;width:100%;height:100%">

                <div class="row" style="width:100%;height:50px"></div>

                <div class="row" style="width:100%;height:100%;padding:0px;margin:0px;background-color:transparent">

                <div class="row" style="width:100%;height:100%;color: #177CC0; padding-left: 20px; padding-top: 0px; font-family: Arial; font-size: 20px; font-weight: bold;margin-left:0px">
                    
                    <div id="i_logotipo_on" name="i_empresa_ie_on" class="col" align="left" style="display:none;visibility:hidden; font-size:20px;color:red;margin-right:20px;border-bottom:none;cursor:pointer" onclick="mostra_div_informacao('div_logotipo','i_logotipo_on','i_logotipo_off',0)"><span style="color: #177CC0;font-family: Arial; font-size: 20px; font-weight: bold;">LogoTipo da Empresa</span>&nbsp;&nbsp;<i class="fa fa-toggle-on"></i></div>
                    <div id="i_logotipo_off" name="i_empresa_ie_off" class="col" align="left" style="display:block;visibility:visible; font-size:20px;color:red;margin-right:20px;border-bottom:solid;border-color:#767676;border-width:1px;cursor:pointer" onclick="mostra_div_informacao('div_logotipo','i_logotipo_on','i_logotipo_off',1)"><span style="color: #177CC0;font-family: Arial; font-size: 20px; font-weight: bold;">LogoTipo da Empresa</span>&nbsp;&nbsp;<i class="fa fa-toggle-off"></i></div>
                    
                </div>


                <div class="row" style="width:100%;height:20px"></div>


                <!--/////////////////////////////////////////////////// Logotipo da empresa /////////////////////////////////////////////////////////////////////////////////////////////-->
                <div id="div_logotipo" name="div_logotipo" style="display:none;visibility:hidden;width:100%;height:100%;background-color:transparent;margin-left:20px;margin-right:20px;border:solid;border-color:#177CC0;border-width:1px;border-radius:10px;padding: 0px 20px 20px 20px;">

                     
                    <div class="row" style="width:100%;height: 30px"></div>

                    <div class="row" style="width:100%;height:100%">

                        <div class="col-xl-2" style="width:100%;height:100%;background-color:transparent;padding:0px;margin:0px; padding-left:10px;padding-top:30px">
                            <asp:Image ID="img_logo" runat="server"  style="width:200px;height:200px;padding-left:10px;" />
                        </div>


                        <div class="col-xl-6" style="width:100%;height:100%;background-color:transparent;padding:0px;margin:0px; padding-left:10px">

                            <div class="row">
                                 <div class="col" style="font-family: Arial; font-size: 16px; color: #000000; font-weight: normal;padding-top:30px">
                                     Selecione uma imagem para LogoTipo da Empresa
                                 </div>
                            </div>

                             <div class="row">
                                 <div class="col" style="font-family: Arial; font-size: 16px; color: #000000; font-weight: normal">
                                     Formato da Imagem: BMP
                                 </div>
                            </div>


                             <div class="row">
                                 <div class="col" style="font-family: Arial; font-size: 16px; color: #000000; font-weight: normal">
                                     Tamanho Máximo: 500 Kbytes
                                 </div>
                            </div>

                            <div class="row">
                                 <div class="col" style="font-family: Arial; font-size: 16px; color: #000000; font-weight: normal">
                                     Tamanho sugerido: 200px por 200px
                                 </div>
                            </div>

                            <div class="row" style="width:100px;height:20px"></div>

                            <div class="row">
                                 <div class="col" style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                     <asp:FileUpload ID="file_logo"  runat="server" Width="100%" style="color:red" />
                                 </div>
                            </div>

                            <div class="row" style="width:100px;height:10px"></div>

                            <div class="row">
                                 <div class="col" style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                     <asp:Button ID="cmd_carregar_logo" runat="server" Text="Carregar Arquivo" />
                                  </div>
                            </div>


                            <div class="row">
                                 <div class="col" style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                     <asp:Label ID="lblmsg" runat="server" Text="Label" ForeColor="Red" Visible="False"></asp:Label>
                                 </div>
                            </div>
                                     
   
                        </div>


                        <div class="col-xl-4" style="width:100%;height:100%;background-color:transparent;padding:0px;margin:0px; padding-left:10px">
                            
                        </div>

                        
                    </div>

               
                 </div>
          
                   </div>
  
                </div>


          <!--/////////////////////////////////////////////////// Certificado Digital A1   ////////////////////////////////////////////////////////////////////////////////////-->
            <div class="container-fluid" style="padding:0px;margin:0px;width:100%;height:100%">

                <div class="row" style="width:100%;height:50px"></div>

                <div class="row" style="width:100%;height:100%;padding:0px;margin:0px;background-color:transparent">


                        <div class="row" style="width:100%;height:100%;color: #177CC0; padding-left: 20px; padding-top: 0px; font-family: Arial; font-size: 20px; font-weight: bold;margin-left:0px">
                    
                            <div id="i_a1_on" name="i_a1_on" class="col" align="left" style="display:none;visibility:hidden; font-size:20px;color:red;margin-right:20px;border-bottom:none;cursor:pointer" onclick="mostra_div_informacao('div_a1','i_a1_on','i_a1_off',0)"><span style="color: #177CC0;font-family: Arial; font-size: 20px; font-weight: bold;">Certificado Digital A1</span>&nbsp;&nbsp;<i class="fa fa-toggle-on"></i>&nbsp;&nbsp; <img alt="" src="../Imagens/ihelp.png"  style="width: 20px; height: 21px; cursor:pointer" onclick="anima_informacao(1,'CertificadoDigital')" /></div>
                            <div id="i_a1_off" name="i_a1_off" class="col" align="left" style="display:block;visibility:visible; font-size:20px;color:red;margin-right:20px;border-bottom:solid;border-color:#767676;border-width:1px;cursor:pointer" onclick="mostra_div_informacao('div_a1','i_a1_on','i_a1_off',1)"><span style="color: #177CC0;font-family: Arial; font-size: 20px; font-weight: bold;">Certificado Digital A1</span>&nbsp;&nbsp;<i class="fa fa-toggle-off"></i> &nbsp;&nbsp; <img alt="" src="../Imagens/ihelp.png"  style="width: 20px; height: 21px; cursor:pointer" onclick="anima_informacao(1,'CertificadoDigital')" /></div>
                    
                    
                        </div>

                        <div class="row" style="width:100%;height:20px"></div>


                        <!--/////////////////////////////////////////////////// Logotipo da empresa //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////-->
                        <div id="div_a1" name="div_a1" style="display:none;visibility:hidden;width:100%;height:100%;background-color:transparent;margin-left:20px;margin-right:20px;border:solid;border-color:#177CC0;border-width:1px;border-radius:10px;padding: 0px 20px 20px 20px;">

                     
                            <div class="row" style="width:100%;height: 30px"></div>

                    
                            <div class="row" style="width:100%;">


                                <div class="col-xl-4" align="left">

                                    <div class="row" style="width:100%;">
                                        <div class="col" style="width:100%;font-family:Arial;font-size:20px;color:black">Selecione o arquivo do Certificado</div>
                                    </div>

                                    <div class="row" style="width:100%;padding-top:20px;padding-bottom:40px">
                                         <div class="col" style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                             <asp:FileUpload ID="filecertificado"  runat="server" Width="100%" style="color:red" />
                                         </div>
                                    </div>

                            
                                </div>


                                <div class="col-xl-4" align="left">

                                    <div class="row" style="width:100%;">
                                        <div class="col" style="width:100%;font-family:Arial;font-size:20px;color:black">Informe a Senha do Certificado</div>
                                    </div>

                                    <div class="row" style="width:100%;padding-top:20px;padding-bottom:40px">
                                         <div class="col" style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                              <asp:TextBox ID="cs_senha_certificado" runat="server" CssClass="layouttexto" style="width: 100%;padding:0px;margin:0px" onBlur="SetTextIn(this,0);SetDiv('div_a1',0)"
                                                onFocus="SetTextIn(this,1);SetDiv('div_a1',1)" ></asp:TextBox>
                                         </div>
                                    </div>



                                </div>


                                <div class="col-xl-4" align="left">


                                    <asp:Label ID="lbl_certificado" runat="server" Text=""></asp:Label>



                                </div>


                            </div>


               
                         </div>
          


                </div>
  
          </div>


           <!--/////////////////////////////////////////////////// Parametros Gerais de Nota Fiscal - Emissão   ////////////////////////////////////////////////////////////////////////////////////-->
            <div class="container-fluid" style="padding:0px;margin:0px;width:100%;height:100%">

                <div class="row" style="width:100%;height:50px"></div>

                <div class="row" style="width:100%;height:100%;padding:0px;margin:0px;background-color:transparent">


                        <div class="row" style="width:100%;height:100%;color: #177CC0; padding-left: 20px; padding-top: 0px; font-family: Arial; font-size: 20px; font-weight: bold;margin-left:0px">
                    
                            <div id="i_parametros_on" name="i_a1_on" class="col" align="left" style="display:none;visibility:hidden; font-size:20px;color:red;margin-right:20px;border-bottom:none;cursor:pointer" onclick="mostra_div_informacao('div_parametros','i_parametros_on','i_parametros_off',0)"><span style="color: #177CC0;font-family: Arial; font-size: 20px; font-weight: bold;">Parâmetros Gerais de Emissão</span>&nbsp;&nbsp;<i class="fa fa-toggle-on"></i></div>
                            <div id="i_parametros_off" name="i_a1_off" class="col" align="left" style="display:block;visibility:visible; font-size:20px;color:red;margin-right:20px;border-bottom:solid;border-color:#767676;border-width:1px;cursor:pointer" onclick="mostra_div_informacao('div_parametros','i_parametros_on','i_parametros_off',1)"><span style="color: #177CC0;font-family: Arial; font-size: 20px; font-weight: bold;">Parâmetros Gerais de Emissão</span>&nbsp;&nbsp;<i class="fa fa-toggle-off"></i></div>
                    
                    
                        </div>

                        <div class="row" style="width:100%;height:20px"></div>


                        <!--/////////////////////////////////////////////////// Logotipo da empresa //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////-->
                        <div id="div_parametros" name="div_parametros" style="display:none;visibility:hidden;width:100%;height:100%;background-color:transparent;margin-left:20px;margin-right:20px;border:solid;border-color:#177CC0;border-width:1px;border-radius:10px;padding: 0px 20px 20px 20px;">

                     
                            <div class="row" style="width:100%;height: 30px"></div>

                    
                            <div class="row" style="width:100%;">


                                <div class="col-xl-4" align="left">

                                    <div class="row" style="width:100%;">
                                        <div class="col" style="width:100%;font-family:Arial;font-size:20px;color:black">Selecione o Ambiente de Emissão &nbsp &nbsp <img alt="" src="../Imagens/ihelp.png"  style="width: 20px; height: 21px; cursor:pointer" onclick="anima_informacao(1,'Ambiente')" /></div>
                                    </div>

                                    <div class="row" style="width:100%;padding-top:20px;padding-bottom:40px">
                                         <div class="col" style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                             <asp:DropDownList ID="cmb_ambiente" runat="server" CssClass="layouttexto" onBlur="SetDiv('div_parametros',0)"
                                                onFocus="SetDiv('div_parametros',1)">
                                                    <asp:ListItem style="width: 200px;" Text="Produção" Value="1" />
                                                    <asp:ListItem style="width: 200px;" Text="Homologação" Value="2" />
                                                    <asp:ListItem style="width: 200px;" Text="Contigência Amb Nac NA" Value="3" />
                                                    <asp:ListItem style="width: 200px;" Text="Contigência Amb Nac RS" Value="4" />
                                                </asp:DropDownList>
                                         </div>
                                    </div>

                            
                                </div>


                                <div class="col-xl-4" align="left">

                                    <div class="row" style="width:100%;">
                                        <div class="col" style="width:100%;font-family:Arial;font-size:20px;color:black">Série e Sequência de Nota &nbsp &nbsp <img alt="" src="../Imagens/ihelp.png"  style="width: 20px; height: 21px; cursor:pointer" onclick="anima_informacao(1,'SerieNota')" /></div>
                                    </div>

                                    <div class="row" style="width:100%;padding-top:20px;padding-bottom:10px">

                                         <div class="col-3" style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                              <asp:TextBox ID="cs_serie1" runat="server" CssClass="layouttexto" MaxLength="3" style="width: 100%;padding:0px;margin:0px" onBlur="SetTextIn(this,0);SetDiv('div_a1',0)"
                                                onFocus="SetTextIn(this,1);SetDiv('div_a1',1)" ></asp:TextBox>
                                         </div>

                                        <div class="col-9" style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                              <asp:TextBox ID="cs_nota1" runat="server" CssClass="layouttexto" MaxLength="10" style="width: 100%;padding:0px;margin:0px" onBlur="SetTextIn(this,0);SetDiv('div_a1',0)"
                                                onFocus="SetTextIn(this,1);SetDiv('div_a1',1)" ></asp:TextBox>
                                         </div>


                                    </div>

                                    <div class="row" style="width:100%;padding-top:20px;padding-bottom:10px">

                                                     <div class="col-3" style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                                          <asp:TextBox ID="cs_serie2" runat="server" CssClass="layouttexto" MaxLength="3" style="width: 100%;padding:0px;margin:0px" onBlur="SetTextIn(this,0);SetDiv('div_a1',0)"
                                                            onFocus="SetTextIn(this,1);SetDiv('div_a1',1)" ></asp:TextBox>
                                                     </div>

                                                    <div class="col-9" style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                                          <asp:TextBox ID="cs_nota2" runat="server" CssClass="layouttexto" MaxLength="10" style="width: 100%;padding:0px;margin:0px" onBlur="SetTextIn(this,0);SetDiv('div_a1',0)"
                                                            onFocus="SetTextIn(this,1);SetDiv('div_a1',1)" ></asp:TextBox>
                                                     </div>


                                                </div>

                                    <div class="row" style="width:100%;padding-top:20px;padding-bottom:10px">

                                                     <div class="col-3" style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                                          <asp:TextBox ID="cs_serie3" runat="server" CssClass="layouttexto" MaxLength="3" style="width: 100%;padding:0px;margin:0px" onBlur="SetTextIn(this,0);SetDiv('div_a1',0)"
                                                            onFocus="SetTextIn(this,1);SetDiv('div_a1',1)" ></asp:TextBox>
                                                     </div>

                                                    <div class="col-9" style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                                          <asp:TextBox ID="cs_nota3" runat="server" CssClass="layouttexto" MaxLength="10" style="width: 100%;padding:0px;margin:0px" onBlur="SetTextIn(this,0);SetDiv('div_a1',0)"
                                                            onFocus="SetTextIn(this,1);SetDiv('div_a1',1)" ></asp:TextBox>
                                                     </div>


                                                </div>

                                    <div class="row" style="width:100%;padding-top:20px;padding-bottom:10px">

                                                     <div class="col-3" style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                                          <asp:TextBox ID="cs_serie4" runat="server" CssClass="layouttexto" MaxLength="3" style="width: 100%;padding:0px;margin:0px" onBlur="SetTextIn(this,0);SetDiv('div_a1',0)"
                                                            onFocus="SetTextIn(this,1);SetDiv('div_a1',1)" ></asp:TextBox>
                                                     </div>

                                                    <div class="col-9" style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                                          <asp:TextBox ID="cs_nota4" runat="server" CssClass="layouttexto" MaxLength="10" style="width: 100%;padding:0px;margin:0px" onBlur="SetTextIn(this,0);SetDiv('div_a1',0)"
                                                            onFocus="SetTextIn(this,1);SetDiv('div_a1',1)" ></asp:TextBox>
                                                     </div>


                                                </div>

                                    <div class="row" style="width:100%;padding-top:20px;padding-bottom:10px">

                                                     <div class="col-3" style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                                          <asp:TextBox ID="cs_serie5" runat="server" CssClass="layouttexto" MaxLength="3" style="width: 100%;padding:0px;margin:0px" onBlur="SetTextIn(this,0);SetDiv('div_a1',0)"
                                                            onFocus="SetTextIn(this,1);SetDiv('div_a1',1)" ></asp:TextBox>
                                                     </div>

                                                    <div class="col-9" style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                                          <asp:TextBox ID="cs_nota5" runat="server" CssClass="layouttexto" MaxLength="10" style="width: 100%;padding:0px;margin:0px" onBlur="SetTextIn(this,0);SetDiv('div_a1',0)"
                                                            onFocus="SetTextIn(this,1);SetDiv('div_a1',1)" ></asp:TextBox>
                                                     </div>


                                                </div>

                                </div>


                                <div class="col-xl-4" align="left">


                                </div>

                            </div>

                         </div>
          
                </div>
  
          </div>

      </div> 


      <div class="container-fluid" style="padding:0px;margin:0px;width:100%;height:100%">

          <div class="row" style="width:100%;height:40px"></div>


          <div class="row" style="width:100%;height:100%">

              <div class="col" align="center">

                  <div id="botao_gravar" style="width:300px;height:100%;cursor:pointer;display:block;visibility:visible">

                      <asp:Button ID="Button1" runat="server" style="cursor:pointer;border-radius:10px;border:solid;border-width:1px" Text="Confirmar Dados" 
                          BackColor="#17479E" BorderStyle="Solid" BorderWidth="1px" ForeColor="White" Height="43px" Width="230px" OnClientClick="botao_confirmar(this)" />
                  </div>

                  <div id="botao_gravar_aguardando" style="display:none;visibility:hidden"><img alt="" src="../Imagens/preloader.gif" /><span style="font-family:Arial;font-size:18px;color:#007DC5">&nbspAguarde</span></div>

              </div>

          </div>

          <div class="row" style="width:100%;height:80px;"></div>


      </div>

        </asp:Panel>
  


</asp:Content>
