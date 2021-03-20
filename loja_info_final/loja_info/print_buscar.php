<?php
    $sql = "SELECT * FROM prints";
    include "conexao.php";
    $resposta = "";
    if($resultado = mysqli_query($con,$sql)){
        while($lh = mysqli_fetch_assoc($resultado)){
            $resposta .= "<tr>";
            $resposta .= "<td>".$lh['id_print']."</td>";
            $resposta .= "<td>".$lh['abastecimento']."</td>";
            $resposta .= "<td>".$lh['categoria']."</td>";
            $resposta .= "<td>".$lh['preco']."</td>";
            $resposta .= "</tr>";
        }
        echo $resposta;
    }
?>