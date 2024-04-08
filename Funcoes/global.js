


    function mostra_div_informacao(vdiv,vcontroleon,vcontroleoff,vmodo) {

        var vdivdados=document.getElementById(vdiv);
        var vdivon=document.getElementById(vcontroleon);
        var vdivoff=document.getElementById(vcontroleoff);


        if (vmodo==0) {

            vdivdados.style.display = "none";
            vdivdados.style.visibility="hidden";

            vdivon.style.display = "none";
            vdivon.style.visibility="hidden";

            vdivoff.style.display="block";
            vdivoff.style.visibility="visible";

            
        }



        if (vmodo==1) {

            vdivdados.style.display = "block";
            vdivdados.style.visibility="visible";

            vdivoff.style.display = "none";
            vdivoff.style.visibility="hidden";

            vdivon.style.display="block";
            vdivon.style.visibility="visible";

            
        }



    
    }

    function SetTextIn(vcontrole,vmodo) {

        if (vmodo==0) vcontrole.style.background = "transparent";

        if (vmodo==1) vcontrole.style.background = "#D2E9FF";
 
    }
    
    function seleciona_menu_nfe(vcontrole) {

        var vdados_iniciais=document.getElementById("menu_dados_iniciais");
        var vdados_destinatario=document.getElementById("menu_dados_destinatario");
        var vdados_itens_nota=document.getElementById("menu_itens_nota");
        var vdados_totais_nota=document.getElementById("menu_totais_nota");
        var vdados_informacoes_complementares=document.getElementById("menu_informacoes_complementares");

        var vdiv_dados_iniciais=document.getElementById("div_dados_iniciais");
        var vdiv_dados_destinatario=document.getElementById("div_dados_destinatario");
        var vdiv_itens_nota=document.getElementById("div_itens_nota");
        var vdiv_totais_nota=document.getElementById("div_totais_nota");
        var vdiv_informacoes_complementares=document.getElementById("div_informacoes_complementares");


        vdados_iniciais.style.color="#000000";
        vdados_destinatario.style.color="#000000";
        vdados_itens_nota.style.color="#000000";
        vdados_totais_nota.style.color="#000000";
        vdados_informacoes_complementares.style.color="#000000";

        vdiv_dados_iniciais.style.display = "none";
        vdiv_dados_iniciais.style.visibility="hidden";

        vdiv_dados_destinatario.style.display = "none";
        vdiv_dados_destinatario.style.visibility="hidden";

        vdiv_itens_nota.style.display = "none";
        vdiv_itens_nota.style.visibility="hidden";

        vdiv_totais_nota.style.display = "none";
        vdiv_totais_nota.style.visibility="hidden";

        vdiv_informacoes_complementares.style.display = "none";
        vdiv_informacoes_complementares.style.visibility="hidden";

        
        vcontrole.style.color="#177CC0";


        if (vcontrole.id=="menu_dados_iniciais") {
            vdiv_dados_iniciais.style.display = "block";
            vdiv_dados_iniciais.style.visibility="visible";
        }


        if (vcontrole.id=="menu_dados_destinatario") {
            vdiv_dados_destinatario.style.display = "block";
            vdiv_dados_destinatario.style.visibility="visible";
        }


        if (vcontrole.id=="menu_itens_nota") {
            vdiv_itens_nota.style.display = "block";
            vdiv_itens_nota.style.visibility="visible";
        }



        if (vcontrole.id=="menu_totais_nota") {
            vdiv_totais_nota.style.display = "block";
            vdiv_totais_nota.style.visibility="visible";
        }


        if (vcontrole.id=="menu_informacoes_complementares") {
            vdiv_informacoes_complementares.style.display = "block";
            vdiv_informacoes_complementares.style.visibility="visible";
        }
    }

    function muda_foco_menu_nfe(vcontrole,vmodo) {

     
        if (vcontrole.style.color!='rgb(23, 124, 192)') {

            if (vmodo == 1) {
               vcontrole.style.color = "red";
            }
            else {
                vcontrole.style.color = "#000000";
            }

        }

    }

    function SetDiv(vcontrole,vmodo) {

        var vdiv = document.getElementById(vcontrole);

        if (vmodo == 1) {
            vdiv.style.borderWidth = "3px";
            vdiv.style.backgroundColor = "#f1f1f1";
        }
        else {
            vdiv.style.borderWidth = "1px";
            vdiv.style.backgroundColor = "transparent";
        }
        
        

    }


    function anima_informacao(vmodo, vchave) {

        var vdiv = document.getElementById("div_informacao");
        var vdiv_dados = document.getElementById("div_dados_informacao");

        ///////// Habilita o menu //////////////////////////////////////
        if (vmodo == 1) {

            vdiv.style.width = "0px";
            vdiv.style.height = "100vh"
            vdiv.style.visibility = "visible";
            vdiv.style.display = "block";

            vdiv.style.top = "0px";
            vdiv.style.left = "0px";


            if (window.XMLHttpRequest) {    // code for IE7+, Firefox, Chrome, Opera, Safari
                xmlhttp = new XMLHttpRequest();
            }
            else {// code for IE6, IE5
                xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
            }

            xmlhttp.onreadystatechange = function () {

                if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {

                    const vretorno = xmlhttp.responseText;

                   
                    vdiv_dados.innerHTML = vretorno

                }
                else {
                    
                }
              
            }

        
            xmlhttp.open("GET", "../Help/" + vchave + ".html", true);
            xmlhttp.send();

            $("#div_informacao").animate({ width: '400px' }, {
                duration: 100, easing: "linear", done: function () {

                }
            });
        }


        ///////// Desabilita o menu //////////////////////////////////////
        if (vmodo == 0) {

            vdiv.style.width = "400px";

            $("#div_informacao").animate({ width: '0px' }, {
                duration: 100, easing: "linear", done: function () {

                    vdiv.style.visible = "hidden";
                    vdiv.style.display = "none";
                }
            });


        }

    }


