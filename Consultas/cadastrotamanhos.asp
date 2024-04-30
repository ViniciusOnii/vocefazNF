<!-- Inclui o arquivo de configuração ADO -->
<!--#include file="adovbs.inc"-->
<!--#include file="config.asp"-->

<%
     Dim ttamanhos
     Dim vflag_dados 
     
     ' Variável para controlar se houve registros selecionados, para voltar o ponteiro para o início dos dados
     vflag_dados=0
           
     ' Busca o Cupom na Base de Dados
     Set tunidade = Server.CreateObject("ADODB.Recordset")
     ttamanhos.CursorType = adOpenDynamic
     ttamanhos.LockType = adLockOptimistic

     ' Abre o recordset com os dados dos subgrupos ordenados pelo código do subgrupo
     ttamanhos.open "SELECT * FROM local_estoque ORDER BY codigo_local_estoque" ,erpDB

     ' Se houver registros, define a flag de dados como 1
     if Not ttamanhos.eof then vflag_dados=1
%>

<!-- Monta a seção para desktop -->
<div class="container-fluid">
    <div class="estilo_desktop">

        <!-- Cabeçalho com a descrição das colunas da consulta -->
        <div class="row" style="width:100%;height:30px;background-color:black;color:white;margin:0px;padding:0px;font-family:Arial">
            <div class="col-2" style="font-size:18px">Unidade</div>
            <div class="col-10" style="font-size:18px">Descrição</div>
        </div>

        <div class="row" style="width:100%;height:40px"></div>

        <% 
            ' Inicializa a variável de controle de linha
            vlinha=1

            ' Loop para iterar sobre os registros do recordset
            Do while Not ttamanhos.eof
        %>
     
        <div id="linha_<%=vlinha %>" class="row" style="width:100%;height:30px;background-color:transparent;color:black;margin:0px;padding:0px;font-family:Arial;cursor:pointer" onmouseover="altera_fundo_linha(this,1)" onmouseout="altera_fundo_linha(this,0)">
            <div class="col-2" style="font-size:18px;cursor:pointer" ondblclick="resposta_consulta('<%=ttamanhos("codigo_tamanhos") %>')"><%=ttamanhos("codigo_tamanhos") %></div>
            <div class="col-10" style="font-size:18px;cursor:pointer" ondblclick="resposta_consulta('<%=ttamanhos("codigo_tamanhos") %>')"><%=ttamanhos("descricao_tamanhos") %></div>
        </div>

        <div class="row" style="width:100%;height:1px;background-color:black;padding:0px;margin:0px"></div>
        <div class="row" style="width:100%;height:10px;background-color:transparent"></div>

        <% 
            ' Incrementa o número da linha
            vlinha=vlinha+1

            ' Move para o próximo registro
            ttamanhos.MoveNext
        Loop
        %>

    </div>

    <!-- Verifica se há dados e retorna o ponteiro para o início do recordset -->
    <%if vflag_dados=1 then ttamanhos.MoveFirst %>

    <!-- Monta a seção para tablet -->
    <div class="estilo_tablet">

        <!-- Cabeçalho com a descrição das colunas da consulta -->
        <div class="row" style="width:100%;height:30px;background-color:black;color:white;margin:0px;padding:0px;font-family:Arial">
            <div class="col-2" style="font-size:18px">Unidade</div>
            <div class="col-10" style="font-size:18px">Descrição</div>
        </div>

        <div class="row" style="width:100%;height:40px"></div>

        <% 
            ' Reset da variável de controle de linha
            vlinha=1

            ' Loop para iterar sobre os registros do recordset
            Do while Not ttamanhos.eof
        %>
     
        <div id="linha_<%=vlinha %>_tablet" class="row" style="width:100%;height:30px;background-color:transparent;color:black;margin:0px;padding:0px;font-family:Arial;cursor:pointer" onmouseover="altera_fundo_linha(this,1)" onmouseout="altera_fundo_linha(this,0)">
            <div class="col-2" style="font-size:18px;cursor:pointer" ondblclick="resposta_consulta('<%=ttamanhos("codigo_tamanhos") %>')"><%=ttamanhos("codigo_tamanhos") %></div>
            <div class="col-10" style="font-size:18px;cursor:pointer" ondblclick="resposta_consulta('<%=ttamanhos("codigo_tamanhos") %>')"><%=ttamanhos("descricao_tamanhos") %></div>
        </div>

        <div class="row" style="width:100%;height:1px;background-color:black;padding:0px;margin:0px"></div>
        <div class="row" style="width:100%;height:10px;background-color:transparent"></div>

        <% 
            ' Incrementa o número da linha
            vlinha=vlinha+1

            ' Move para o próximo registro
            ttamanhos.MoveNext
        Loop
        %>

    </div>

    <!-- Verifica se há dados e retorna o ponteiro para o início do recordset -->
    <%if vflag_dados=1 then ttamanhos.MoveFirst %>

    <!-- Monta a seção para mobile -->
    <div class="estilo_mobile">

        <!-- Cabeçalho com a descrição das colunas da consulta -->
        <div class="row" style="width:100%;height:30px;background-color:black;color:white;margin:0px;padding:0px;font-family:Arial">
            <div class="col-2" style="font-size:14px">Unidade</div>
            <div class="col-10" style="font-size:14px">Descrição</div>
        </div>

        <div class="row" style="width:100%;height:40px"></div>

        <% 
            ' Reset da variável de controle de linha
            vlinha=1

            ' Loop para iterar sobre os registros do recordset
            Do while Not ttamanhos.eof
        %>
     
        <div id="linha_<%=vlinha %>_mobile" class="row" style="width:100%;height:30px;background-color:transparent;color:black;margin:0px;padding:0px;font-family:Arial;cursor:pointer" onmouseover="altera_fundo_linha(this,1)" onmouseout="altera_fundo_linha(this,0)">
            <div class="col-2" style="font-size:14px;cursor:pointer" ondblclick="resposta_consulta('<%=ttamanhos("codigo_tamanhos") %>')"><%=ttamanhos("codigo_tamanhos") %></div>
            <div class="col-10" style="font-size:14px;cursor:pointer" ondblclick="resposta_consulta('<%=ttamanhos("codigo_tamanhos") %>')"><%=ttamanhos("descricao_tamanhos") %></div>
        </div>

        <div class="row" style="width:100%;height:1px;background-color:black;padding:0px;margin:0px"></div>
        <div class="row" style="width:100%;height:10px;background-color:transparent"></div>

        <% 
            ' Incrementa o número da linha
            vlinha=vlinha+1

            ' Move para o próximo registro
            ttamanhos.MoveNext
        Loop
        %>

    </div>
</div>
