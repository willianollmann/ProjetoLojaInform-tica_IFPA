<?php
    $sql = "SELECT * FROM laptop";
    include "conexao.php";
    $resposta = "<option value='#'>Selecione...</option>";
    if($resultado = mysqli_query($con,$sql)){
        while($lh = mysqli_fetch_assoc($resultado)){
            $resposta .= "<option value='".$lh['id']."'>".$lh['fabricante']." ".$lh['cpu']."</option>";
        }
        echo $resposta;
    }
?>