<?php
    $sql = "SELECT * FROM laptops";
    include "conexao.php";
    $resposta = "";
    if($resultado = mysqli_query($con,$sql)){
        while($lh = mysqli_fetch_assoc($resultado)){
            $resposta .= "<tr>";
            $resposta .= "<td>".$lh['id_laptop']."</td>";
            $resposta .= "<td>".$lh['fabricante']."</td>";
            $resposta .= "<td>".$lh['cpu']."</td>";
            $resposta .= "<td>".$lh['ram']."</td>";
            $resposta .= "<td>".$lh['hd']."</td>";
            $resposta .= "<td>".$lh['tela']."</td>";
            $resposta .= "<td>".$lh['preco']."</td>";
            $resposta .= "</tr>";
        }
        echo $resposta;
    }
?>