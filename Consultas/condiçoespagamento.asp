<!-- Inclui o arquivo de configuração ADO -->
<!--#include file="adovbs.inc"-->
<!--#include file="config.asp"-->

<%
     Dim tcondicoes
     Dim vflag_dados 
     
     ' Variável para controlar se houve registros selecionados, para voltar o ponteiro para o início dos dados
     vflag_dados=0
           
     ' Busca o Cupom na Base de Dados
     Set tcondicoes = Server.CreateObject("ADODB.Recordset")
     tcondicoes.CursorType = adOpenDynamic
     tcondicoes.LockType = adLockOptimistic

     ' Abre o recordset com os dados dos subgrupos ordenados pelo código do subgrupo
     tcondicoes.open "SELECT * FROM condicoesdepagamento ORDER BY codigo_condicoes_pagamento" ,erpDB

     ' Se houver registros, define a flag de dados como 1
     if Not tcondicoes.eof then vflag_dados=1
%>

<!-- Monta a seção para desktop -->
<div class="container-fluid">
    <div class="estilo_desktop">

        <!-- Cabeçalho com a descrição das colunas da consulta -->
        <div class="row" style="width:100%;height:30px;background-color:black;color:white;margin:0px;padding:0px;font-family:Arial">
            <div class="col-2" style="font-size:18px">Codigo</div>
            <div class="col-8" style="font-size:18px">Descrição</div>
            <div class="col-2" style="font-size:18px">Parcelas</div>
        </div>

        <div class="row" style="width:100%;height:40px"></div>

        <% 
            ' Inicializa a variável de controle de linha
            vlinha=1

            ' Loop para iterar sobre os registros do recordset
            Do while Not tcondicoes.eof
        %>
     
        <div id="linha_<%=vlinha %>" class="row" style="width:100%;height:30px;background-color:transparent;color:black;margin:0px;padding:0px;font-family:Arial;cursor:pointer" onmouseover="altera_fundo_linha(this,1)" onmouseout="altera_fundo_linha(this,0)">
            <div class="col-2" style="font-size:18px;cursor:pointer" ondblclick="resposta_consulta('<%=tcondicoes("codigo_condicoes_pagamento") %>')"><%=tcondicoes("codigo_condicoes_pagamento") %></div>
            <div class="col-8" style="font-size:18px;cursor:pointer" ondblclick="resposta_consulta('<%=tcondicoes("codigo_condicoes_pagamento") %>')"><%=tcondicoes("descricao_condicoes_pagamento") %></div>
            <div class="col-2" style="font-size:18px;cursor:pointer" ondblclick="resposta_consulta('<%=tcondicoes("codigo_condicoes_pagamento") %>')"><%=tcondicoes("parcelas_condicoes_pagamento") %></div>
        </div>

        <div class="row" style="width:100%;height:1px;background-color:black;padding:0px;margin:0px"></div>
        <div class="row" style="width:100%;height:10px;background-color:transparent"></div>

        <% 
            ' Incrementa o número da linha
            vlinha=vlinha+1

            ' Move para o próximo registro
            tcondicoes.MoveNext
        Loop
        %>

    </div>

    <!-- Verifica se há dados e retorna o ponteiro para o início do recordset -->
    <%if vflag_dados=1 then tcondicoes.MoveFirst %>

    <!-- Monta a seção para tablet -->
    <div class="estilo_tablet">

        <!-- Cabeçalho com a descrição das colunas da consulta -->
        <div class="row" style="width:100%;height:30px;background-color:black;color:white;margin:0px;padding:0px;font-family:Arial">
            <div class="col-2" style="font-size:18px">Codigo</div>
            <div class="col-8" style="font-size:18px">Descrição</div>
            <div class="col-2" style="font-size:18px">Parcelas</div>
        </div>

        <div class="row" style="width:100%;height:40px"></div>

        <% 
            ' Reset da variável de controle de linha
            vlinha=1

            ' Loop para iterar sobre os registros do recordset
            Do while Not tcondicoes.eof
        %>
     
        <div id="linha_<%=vlinha %>_tablet" class="row" style="width:100%;height:30px;background-color:transparent;color:black;margin:0px;padding:0px;font-family:Arial;cursor:pointer" onmouseover="altera_fundo_linha(this,1)" onmouseout="altera_fundo_linha(this,0)">
            <div class="col-2" style="font-size:18px;cursor:pointer" ondblclick="resposta_consulta('<%=tcondicoes("codigo_condicoes_pagamento") %>')"><%=tcondicoes("codigo_condicoes_pagamento") %></div>
            <div class="col-8" style="font-size:18px;cursor:pointer" ondblclick="resposta_consulta('<%=tcondicoes("codigo_condicoes_pagamento") %>')"><%=tcondicoes("descricao_condicoes_pagamento") %></div>
            <div class="col-2" style="font-size:18px;cursor:pointer" ondblclick="resposta_consulta('<%=tcondicoes("codigo_condicoes_pagamento") %>')"><%=tcondicoes("parcelas_condicoes_pagamento") %></div>
        </div>

        <div class="row" style="width:100%;height:1px;background-color:black;padding:0px;margin:0px"></div>
        <div class="row" style="width:100%;height:10px;background-color:transparent"></div>

        <% 
            ' Incrementa o número da linha
            vlinha=vlinha+1

            ' Move para o próximo registro
            tcondicoes.MoveNext
        Loop
        %>

    </div>

    <!-- Verifica se há dados e retorna o ponteiro para o início do recordset -->
    <%if vflag_dados=1 then tcondicoes.MoveFirst %>

    <!-- Monta a seção para mobile -->
    <div class="estilo_mobile">

        <!-- Cabeçalho com a descrição das colunas da consulta -->
        <div class="row" style="width:100%;height:30px;background-color:black;color:white;margin:0px;padding:0px;font-family:Arial">
            <div class="col-2" style="font-size:18px">Codigo</div>
        <div class="col-8" style="font-size:18px">Descrição</div>
        <div class="col-2" style="font-size:18px">Parcelas</div>
        </div>

        <div class="row" style="width:100%;height:40px"></div>

        <% 
            ' Reset da variável de controle de linha
            vlinha=1

            ' Loop para iterar sobre os registros do recordset
            Do while Not tcondicoes.eof
        %>
     
        <div id="linha_<%=vlinha %>_mobile" class="row" style="width:100%;height:30px;background-color:transparent;color:black;margin:0px;padding:0px;font-family:Arial;cursor:pointer" onmouseover="altera_fundo_linha(this,1)" onmouseout="altera_fundo_linha(this,0)">
            <div class="col-2" style="font-size:14px;cursor:pointer" ondblclick="resposta_consulta('<%=tcondicoes("codigo_condicoes_pagamento") %>')"><%=tcondicoes("codigo_condicoes_pagamento") %></div>
            <div class="col-8" style="font-size:14px;cursor:pointer" ondblclick="resposta_consulta('<%=tcondicoes("codigo_condicoes_pagamento") %>')"><%=tcondicoes("descricao_condicoes_pagamento") %></div>
            <div class="col-2" style="font-size:18px;cursor:pointer" ondblclick="resposta_consulta('<%=tcondicoes("codigo_condicoes_pagamento") %>')"><%=tcondicoes("parcelas_condicoes_pagamento") %></div>
        </div>

        <div class="row" style="width:100%;height:1px;background-color:black;padding:0px;margin:0px"></div>
        <div class="row" style="width:100%;height:10px;background-color:transparent"></div>

        <% 
            ' Incrementa o número da linha
            vlinha=vlinha+1

            ' Move para o próximo registro
            tcondicoes.MoveNext
        Loop
        %>

    </div>
</div>
