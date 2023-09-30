<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Topo.Master" CodeBehind="empresa.aspx.vb" Inherits="VoceFazNfe.empresa" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


 
   <div class="container-fluid" style="padding:0px;margin:0px;width:100%;height:100%">


        <div class="row" style="width:100%;height:200px"></div>

        <div class="row" style="width:100%;height:100%;padding:0px;margin:0px;background-color:transparent">

            <!--/////////////////////////////////////////////////// Div com os dados Iniciais / Principais da Nota /////////////////////////////////////////////////////////////////////////////////////////////-->
            <div id="div_dados_iniciais" name="div_dados_iniciais" style="display:block;visibility:visible;width:100%;height:100%;background-color:transparent;margin-left:20px;margin-right:20px;border:solid;border-color:#177CC0;border-width:1px;border-radius:10px;padding-left:20px;padding-right:20px;padding-bottom:20px">

                <div class="row">

                    <div class="col-xl-6" style="padding-top:20px;background-color:transparent">


                        <div class="row">

                            <div class="col-md-6" style="background-color:transparent;height:100%;padding-top:10px">
                                                             
                                <div class="row"><div class="col" style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">Data da Emissão</div></div>
                                
                                <div class="row">
                                    <div class="col" style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">
                                        <asp:TextBox CssClass="layouttexto" ID="cs_emissao" runat="server" TextMode="Date"></asp:TextBox>
                                    </div>
                                </div>
                                

                            </div>

                            <div class="col-md-6" style="background-color:transparent;height:100%;padding-top:10px">

                            
                                <div class="row"><div class="col" style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">Tipo de Emissão</div></div>
                                 <div class="row">
                                    <div class="col" style="font-family: Arial; font-size: 16px; color: #000000; font-weight: bold">

                                        <asp:TextBox ID="cs_tipo" runat="server" CssClass="layouttexto" onblur="SetTextIn(this,0)" onfocus="SetTextIn(this,1)" ></asp:TextBox>

                                    </div>
                                </div>

                            </div>

                        </div>


                    </div>
                    
                    
                    <div class="col-xl-6" style="padding-top:20px;background-color:transparent">


                         <div class="row">

                            <div class="col-md-6" style="background-color:transparent;height:100%;padding-top:10px">
                                                             

                            </div>

                            <div class="col-md-6" style="background-color:transparent;height:100%;padding-top:10px">

                            
                            </div>

                        </div>

                 
                    </div>

                    
                </div>                        




            </div>



        </div>

    </div>

    <asp:TextBox class="layouttexto" ID="TextBox1" runat="server" onmouseOver="SetTextIn(this,1)"></asp:TextBox>
    <asp:Button ID="Button1" runat="server" Text="Button" />

</asp:Content>
