<?php
    $sql = "SELECT * FROM print";
    include "conexao.php";
    $resposta = "<option value='#'>Selecione...</option>";
    if($resultado = mysqli_query($con,$sql)){
        while($lh = mysqli_fetch_assoc($resultado)){
            $resposta .= "<option value='".$lh['id']."'>".$lh['abastecimento']." ".$lh['categoria']."</option>";
        }
        echo $resposta;
    }
?>