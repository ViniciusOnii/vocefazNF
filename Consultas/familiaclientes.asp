
<!--#include file="adovbs.inc"-->
<!--#include file="config.asp"-->
    

    <%
         Dim tfamilia
         Dim vflag_dados 


         vflag_dados=0    /// Variavel para controlar se houve registros selecionados, assim podemos voltar o ponteiro para o inicio dos dados
         
           
         ////// Busca o Cupom na Base de Dados ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	     Set tfamilia = Server.CreateObject("ADODB.Recordset")
		 tfamilia.CursorType = adOpenDynamic
		 tfamilia.LockType = adLockOptimistic

         tfamilia.open "SELECT * FROM familiaclientes ORDER BY codigo_familia" ,erpDB


         if Not tgrupo.eof then vflag_dados=1
				  
     %>




        <!-- ////////////////////////////////////////// Monta a seção para desktop /////////////////////////////////////////////////////////////////////////////////////// -->
        <div class="container-fluid">

            <div class="estilo_desktop">

                     <!-- Cabeçalho com a descrição das colunas da consulta -->
                     <div class="row" style="width:100%;height:30px;background-color:black;color:white;margin:0px;padding:0px;font-family:Arial">
                         <div class="col-2" style="font-size:18px">Código Comprador</div>
                         <div class="col-10" style="font-size:18px">Nome Completo</div>
                     </div>

                     <div class="row" style="width:100%;height:40px"></div>


                     <% 

                         vlinha=1

                         Do while Not tfamilia.eof

                     %>
         
                     <div id="linha_<%=vlinha %>" class="row" style="width:100%;height:30px;background-color:transparent;color:black;margin:0px;padding:0px;font-family:Arial;cursor:pointer" onmouseover="altera_fundo_linha(this,1)" onmouseout="altera_fundo_linha(this,0)">

                         <div class="col-2" style="font-size:18px;cursor:pointer" ondblclick="resposta_consulta('<%=tfamilia("codigo_familia") %>')"><%=tfamilia("codigo_familia") %></div>

                         <div class="col-10" style="font-size:18px;cursor:pointer" ondblclick="resposta_consulta('<%=tfamilia("codigo_familia") %>')"><%=tfamilia("descricao_familia") %></div>

                     </div>

                     <div class="row" style="width:100%;height:1px;background-color:black;padding:0px;margin:0px"></div>

                     <div class="row" style="width:100%;height:10px;background-color:transparent"></div>

                     <% 
                         vlinha=vlinha+1

                         tfamilia.MoveNext
                        Loop

                      %>

            </div>


            <%if vflag_dados=1 then tfamilia.MoveFirst %>
            <div class="estilo_tablet">

                     <!-- Cabeçalho com a descrição das colunas da consulta -->
                     <div class="row" style="width:100%;height:30px;background-color:black;color:white;margin:0px;padding:0px;font-family:Arial">
                         <div class="col-2" style="font-size:18px">Código Comprador</div>
                            <div class="col-10" style="font-size:18px">Nome Completo</div>
                     </div>

                     <div class="row" style="width:100%;height:40px"></div>


                     <% 

                         vlinha=1

                         Do while Not tfamilia.eof

                     %>
         
                     <div id="linha_<%=vlinha %>_tablet" class="row" style="width:100%;height:30px;background-color:transparent;color:black;margin:0px;padding:0px;font-family:Arial;cursor:pointer" onmouseover="altera_fundo_linha(this,1)" onmouseout="altera_fundo_linha(this,0)">

                         <div class="col-2" style="font-size:18px;cursor:pointer" ondblclick="resposta_consulta('<%=tfamilia("codigo_familia") %>')"><%=tfamilia("codigo_familia") %></div>

                         <div class="col-10" style="font-size:18px;cursor:pointer" ondblclick="resposta_consulta('<%=tfamilia("codigo_familia") %>')"><%=tfamilia("descricao_familia") %></div>

                     </div>

                     <div class="row" style="width:100%;height:1px;background-color:black;padding:0px;margin:0px"></div>

                     <div class="row" style="width:100%;height:10px;background-color:transparent"></div>

                     <% 
                         vlinha=vlinha+1

                         tfamilia.MoveNext
                        Loop

                   
                      %>

            </div>


             <%if vflag_dados=1 then tfamilia.MoveFirst %>
            <div class="estilo_mobile">

                     <!-- Cabeçalho com a descrição das colunas da consulta -->
                     <div class="row" style="width:100%;height:30px;background-color:black;color:white;margin:0px;padding:0px;font-family:Arial">
                         <div class="col-2" style="font-size:18px">Código Comprador</div>
                         <div class="col-10" style="font-size:18px">Nome Completo</div>
                     </div>

                     <div class="row" style="width:100%;height:40px"></div>


                     <% 

                         vlinha=1

                         Do while Not tfamilia.eof

                     %>
         
                     <div id="linha_<%=vlinha %>_mobile" class="row" style="width:100%;height:30px;background-color:transparent;color:black;margin:0px;padding:0px;font-family:Arial;cursor:pointer" onmouseover="altera_fundo_linha(this,1)" onmouseout="altera_fundo_linha(this,0)">

                         <div class="col-2" style="font-size:14px;cursor:pointer" ondblclick="resposta_consulta('<%=tfamilia("codigo_familia") %>')"><%=tfamilia("codigo_familia") %></div>

                         <div class="col-10" style="font-size:14px;cursor:pointer" ondblclick="resposta_consulta('<%=tfamilia("codigo_familia") %>')"><%=tfamilia("descricao_familia") %></div>

                     </div>

                     <div class="row" style="width:100%;height:1px;background-color:black;padding:0px;margin:0px"></div>

                     <div class="row" style="width:100%;height:10px;background-color:transparent"></div>

                     <% 
                         vlinha=vlinha+1

                         tfamilia.MoveNext
                        Loop

                   
                      %>

            </div>


     </div>
     
      
        
     

