<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/telas/Topo.Master" CodeBehind="subgrupo.aspx.vb" Inherits="VoceFazNfe.subgrupo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

      <div class="row" style="width:100%;height:200px"></div>


     <div class="row" style="width: 100%; height: 100%;  padding-left:20px; padding-top: 0px; margin-left: 0px;">
         <span style="color: #177CC0; font-family: Arial; font-size: 20px; font-weight: bold;" >Cadastro de Sub-Grupos</span>
       </div>

     <div class="row"  style="width: 100%; height: 20px"></div>

      <div id="grupo_sub_produtos" name="grupo_sub_produtos" style="visibility:visible;width:98%;height:100%;background-color:transparent;margin-left:20px;margin-right:20px;border:solid;border-color:#177CC0;border-width:1px;border-radius:10px;padding: 0px 20px 20px 20px;"    >
     <div class="row"
             style="width:100%;padding:0px;margin:0px;background-color:transparent;height:100%;padding:0px;margin:0px">

           
            <!--/////////////////////////////////////////////////// LINHA LADO ESQUERDO CPF/CNPJ/RAZAO SOCIAL /////////////////////////////////////////////////////////////////////////////////////////////-->
             <div class="col-xl-7"
                 style="width:100%;height:100%;background-color:transparent;padding:0px;margin:0px">

                 <div class="row"
                     style="width:100%;height:100%;background-color:transparent;padding:0px;margin:0px">

                     <div class="col-md-4"
                         style="width:100%;height:100%;background-color:transparent;padding:10px;">


                         <div class="row">
                             <div class="col"
                                 style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                 Código
                             </div>
                         </div>

                         <div class="row" style="padding:0px;margin:0px">
                             <div class="col" style="padding:0px;margin:0px">
                                 <asp:TextBox ID="cs_codigo_sub" runat="server" CssClass="layouttexto"
                                     style="width: 150px;padding:0px;margin:0px"
                                      onBlur="SetTextIn(this,0);SetDiv('grupo_sub_produtos',0)" onFocus="SetTextIn(this,1);SetDiv('grupo_sub_produtos',1)" >

                                 </asp:TextBox>
                             </div>
                         </div>

                     </div>


                     <div class=" col-md-8"
                         style="width:100%;height:100%;background-color:transparent; padding:10px;">

                         <div class="row">
                             <div class="col"
                                 style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                 Descrição
                             </div>
                         </div>
                         <div class="row" style="padding:0px;margin:0px">
                             <div class="col" style="padding:0px;margin:0px">
                                 <asp:TextBox ID="cs_descricao_sub" runat="server" CssClass="layouttexto"
                                     style="width: 93%;" onBlur="SetTextIn(this,0);SetDiv('grupo_sub_produtos',0)" onFocus="SetTextIn(this,1);SetDiv('grupo_sub_produtos',1)" >
                                 </asp:TextBox>
                             </div>
                         </div>
                     </div>
                 </div>
             </div>
     </div>
     </div>


     <div class="row" style="width:100%;height:50px"></div>

      
 <div  style="padding: 10px 20px;  border-radius:10px; margin: 0 10px; text-align:center;"> 

         <asp:Button  ID="cmd_gravar_sub" runat="server" Text="Gravar" CssClass="botao_cadastro" /> 

         <asp:Button ID="cmd_deletar_sub" runat="server" Text="Deletar" CssClass="botao_cadastro"  />

 </div>

 <hr/ >

</asp:Content>
