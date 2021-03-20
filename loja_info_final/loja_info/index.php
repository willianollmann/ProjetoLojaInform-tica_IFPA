<!DOCTYPE html>
<html lang="pt">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <style>
        table,th,td{
            border: 1px solid black; 
        }
      ul{
            list-style:none;
        }
        .menu a{
            text-decoration:none;
            font-size:21px;
            color: whitesmoke;
            font-family: 'Courier New', Courier, monospace;
        }
        a:hover{background:rgba(135, 206, 235, 0.9);
            font-weight:bold;
        }

        a:visited:hover{color:black;
        }
        
    </style>
    <title>LOJA DE INFORMÁTICA</title>
    <script src="jquery-3.5.1.min.js"></script>
    <script src="scripts.js"></script>
</head>
<body>

    <div style="width:80vw;height:98vh;margin: auto auto;">
        <div style="width:80vw;height:20vh;background:rgba(135, 206, 235, 0.9);float:left">
          <h1 style="text-align: center; padding-top: 35px; font-family: Arial, Helvetica, sans-serif;">PROJETO DE LOJA DE INFORMÁTICA</h1>
        </div>

        <div class="menu" style="width:15vw;height:70vh;background: rgb(51, 51, 51);float:left">
            <ul>
                <li><a href="index.php?p=cc">Cadastrar cliente</a></li>
                <li><a href="index.php?p=vc">Ver clientes</a></li>
                <li><a href="index.php?p=cf">Cadastrar funcionário</a></li>
                <li><a href="index.php?p=vf">Ver funcionários</a></li>
                <li><a href="index.php?p=fd">Cadastrar Desktop</a></li>
                <li><a href="index.php?p=cd">Consultar Desktop</a></li>
                <li><a href="index.php?p=fl">Cadastrar Laptop</a></li>
                <li><a href="index.php?p=cl">Consultar Laptop</a></li>
                <li><a href="index.php?p=fp">Cadastrar Impressora</a></li>
                <li><a href="index.php?p=cp">Consultar Impressora</a></li>
                <li><a href="index.php?p=rv">Realizar venda</a></li>
                <li><a href="index.php?p=vv">Ver vendas</a></li>
            </ul>
        </div>
        <div id="conteudo" style="width:65vw;height:70vh;background: rgba(240, 248, 255);float:right">
            <?php
                if(isset($_GET['p'])){
                    $pagina = $_GET['p'];
                }else{
                    $pagina = 'cc';
                }
                if($pagina == 'cc'){
                    include "cliente_form.html";
                }elseif($pagina == 'vc'){
                    include "cliente_ver.php";
                }elseif($pagina == 'cf'){
                    include "funcionario_form.html";
                }elseif($pagina == 'vf'){
                    include "funcionario_ver.php";
                }elseif($pagina == 'fd'){
                    include "desktop_form.html";
                }elseif($pagina == 'cd'){
                    include "desktop_cons.php";
                }elseif($pagina == 'fl'){
                    include "laptop_form.html";
                }elseif($pagina == 'cl'){
                    include "laptop_cons.php";
                }elseif($pagina == 'fp'){
                    include "print_form.html";
                }elseif($pagina == 'cp'){
                    include "print_cons.php";
                }elseif($pagina == 'rv'){
                    include "venda_form.html";
                }elseif($pagina == 'vv'){
                    include "venda_ver.php";
                }
            ?>
        </div>
        <div style="width:80vw;height:8vh;background:rgba(135, 206, 235, 0.9);float:right">

        </div>
    </div>
</body>
</html>