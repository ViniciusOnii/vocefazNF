<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/telas/Topo.Master" CodeBehind="subgrupo.aspx.vb" Inherits="VoceFazNfe.subgrupo" %>
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

    function resposta_consulta(vresposta) {

        var vcontrole = document.getElementById('<%=cs_codigo.ClientId%>');
            var vdescricao = document.getElementById('<%=cs_descricao.ClientId%>');

        vcontrole.value = vresposta;
        vdescricao.value = "";

        anima_consulta(0, 'subgrupo');

    }

    


</script>


      <div class="row" style="width:100%;height:200px"></div>


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
                          BackColor="#17479E" BorderStyle="Solid" BorderWidth="1px" ForeColor="White" Height="43px" Width="230px" UseSubmitBehavior="False" />
                      </div>
                  </div>


              </div>

          </div>

      </asp:Panel>


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
  


      <!--/////////////////////////////////////////////////// Area Principal do Programa //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////-->
      <asp:Panel ID="pnl_principal" runat="server" BackColor="Transparent" Height="100%" Visible="True">

        <div class="row" style="width: 100%; height: 100%;  padding-left:20px; padding-top: 0px; margin-left: 0px;">
            <span style="color: red; font-family: Arial; font-size: 20px; font-weight: bold;" >Cadastro de Sub-Grupos</span>
        </div>

        <div class="row"  style="width: 100%; height: 40px"></div>

         <div id="subgrupo_produtos" name="subgrupo_produtos" style="visibility:visible;width:90%;height:100%;background-color:transparent;margin-left:20px;margin-right:20px;border:solid;border-color:#177CC0;border-width:1px;border-radius:10px;padding: 0px 20px 20px 20px;">

           <div class="row" style="width:100%;padding:0px;margin:0px;background-color:transparent;height:100%;padding:0px;margin:0px">

                <div class="col" style="width:100%;height:100%;background-color:transparent;padding:0px;margin:0px">

                            <div class="row"  style="width: 100%; height: 20px"></div>

                            <div class="row">
                                <div class="col" style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold"> Sigla do Grupo &nbsp &nbsp <img alt="" src="../Imagens/ihelp.png"  style="width: 20px; height: 21px; cursor:pointer" onclick="anima_informacao(1,'grupo')" /> </div>
                            </div>

                            <div class="row" style="padding:0px;margin:0px">
                                <div class="col" style="padding:0px;margin:0px">
                                    <i class="fa fa-filter" style="color:orange;cursor:pointer;" onclick="anima_consulta_sub(1,'subgrupo')"></i> &nbsp
                                    <asp:TextBox ID="cs_codigo" runat="server" CssClass="layouttexto" style="width: 100px;padding:0px;margin:0px" onBlur="SetTextIn(this,0);SetDiv('subgrupo_produtos',0)" onFocus="SetTextIn(this,1);SetDiv('subgrupo_produtos',1)" MaxLength="3" AutoPostBack="True" ></asp:TextBox>
                                </div>
                            </div>

                 </div>

            </div>
        
           <div class="row"  style="width: 100%; height: 40px"></div>

           <div class="row" style="width:100%;padding:0px;margin:0px;background-color:transparent;height:100%;padding:0px;margin:0px">

                <div class="col" style="width:100%;height:100%;background-color:transparent;padding:0px;margin:0px">

                    
                            <div class="row">
                                <div class="col"
                                    style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold"> Descrição </div>
                            </div>

                            <div class="row" style="padding:0px;margin:0px">
                                <div class="col" style="padding:0px;margin:0px">
                                    <asp:TextBox ID="cs_descricao" runat="server" CssClass="layouttexto" style="width: 93%;" onBlur="SetTextIn(this,0);SetDiv('subgrupo_produtos',0)" onFocus="SetTextIn(this,1);SetDiv('subgrupo_produtos',1)" MaxLength="50" ></asp:TextBox>
                                </div>
                            </div>

                 </div>

            </div>
    



        </div>


        <div class="row" style="width:100%;height:50px"></div>


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



    </asp:Panel>





</asp:Content>
