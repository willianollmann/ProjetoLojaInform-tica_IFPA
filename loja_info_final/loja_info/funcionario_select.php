<?php
    $sql = "SELECT * FROM funcionarios";
    include "conexao.php";
    $resposta = "<option value='#'>Selecione...</option>";
    if($resultado = mysqli_query($con,$sql)){
        while($lh = mysqli_fetch_assoc($resultado)){
            $resposta .= "<option value='".$lh['id']."'>".$lh['nome']." ".$lh['sobrenome']."</option>";
        }
        echo $resposta;
    }
?>