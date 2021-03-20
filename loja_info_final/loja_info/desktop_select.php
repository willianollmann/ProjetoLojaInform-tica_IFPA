<?php
    $sql = "SELECT * FROM desktops";
    include "conexao.php";
    $resposta = "<option value='#'>Selecione...</option>";
    if($resultado = mysqli_query($con,$sql)){
        while($lh = mysqli_fetch_assoc($resultado)){
            $resposta .= "<option value='".$lh['id']."'>".$lh['fabricante']." ".$lh['cpu']." ".$lh['ram']." ".$lh['hd']."</option>";
        }
        echo $resposta;
    }
?>