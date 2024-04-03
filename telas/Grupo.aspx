<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/telas/Topo.Master" CodeBehind="Grupo.aspx.vb" Inherits="VoceFazNfe.Grupo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <div class="row" style="width:100%;height:200px"></div>


        <div class="row" style="width: 100%; height: 100%;  padding-left:20px; padding-top: 0px; margin-left: 0px;">
            <span style="color: #177CC0; font-family: Arial; font-size: 20px; font-weight: bold;" >Cadastro de Grupos</span>
          </div>

        <div class="row"  style="width: 100%; height: 20px"></div>

         <div id="grupo_produtos" name="grupo_produtos" style="visibility:visible;width:98%;height:100%;background-color:transparent;margin-left:20px;margin-right:20px;border:solid;border-color:#177CC0;border-width:1px;border-radius:10px;padding: 0px 20px 20px 20px;"    >
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
                                    <asp:TextBox ID="cs_codigo" runat="server" CssClass="layouttexto"
                                        style="width: 150px;padding:0px;margin:0px"
                                         onBlur="SetTextIn(this,0);SetDiv('grupo_produtos',0)" onFocus="SetTextIn(this,1);SetDiv('grupo_produtos',1)" >

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
                                    <asp:TextBox ID="cs_descricao" runat="server" CssClass="layouttexto"
                                        style="width: 93%;" onBlur="SetTextIn(this,0);SetDiv('grupo_produtos',0)" onFocus="SetTextIn(this,1);SetDiv('grupo_produtos',1)" >
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

            <asp:Button  ID="cmd_gravar" runat="server" Text="Gravar" CssClass="botao_cadastro" /> 

            <asp:Button ID="cmd_deletar" runat="server" Text="Deletar" CssClass="botao_cadastro"  />

    </div>

    <hr/ >

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="grupo_codigo" DataSourceID="SqlDataSource1" Width="565px">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True">
                <HeaderStyle Width="150px" />
            </asp:CommandField>
            <asp:BoundField DataField="grupo_codigo" FooterText="Código" HeaderText="Código" ReadOnly="True" SortExpression="grupo_codigo">
                <ControlStyle Width="90px" />
                <HeaderStyle Width="100px" />
            </asp:BoundField>
            <asp:BoundField DataField="grupo_descricao" FooterText="Descrição" HeaderText="Descrição" SortExpression="grupo_descricao" />
        </Columns>
        <FooterStyle BackColor="White" ForeColor="#000066" />
        <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
        <RowStyle ForeColor="#000066" />
        <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#007DBB" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#00547E" />
    </asp:GridView>


    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:VoceFazNfe.My.MySettings.vconexaobase %>" DeleteCommand="DELETE FROM [grupo] WHERE [grupo_codigo] = @grupo_codigo" InsertCommand="INSERT INTO [grupo] ([grupo_codigo], [grupo_descricao]) VALUES (@grupo_codigo, @grupo_descricao)" SelectCommand="SELECT [grupo_codigo], [grupo_descricao] FROM [grupo]" UpdateCommand="UPDATE [grupo] SET [grupo_descricao] = @grupo_descricao WHERE [grupo_codigo] = @grupo_codigo">
         <DeleteParameters>
             <asp:Parameter Name="grupo_codigo" Type="String" />
         </DeleteParameters>
         <InsertParameters>
             <asp:Parameter Name="grupo_codigo" Type="String" />
             <asp:Parameter Name="grupo_descricao" Type="String" />
         </InsertParameters>
         <UpdateParameters>
             <asp:Parameter Name="grupo_descricao" Type="String" />
             <asp:Parameter Name="grupo_codigo" Type="String" />
         </UpdateParameters>
     </asp:SqlDataSource>
</asp:Content>

