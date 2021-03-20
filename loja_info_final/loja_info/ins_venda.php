<?php
    if(isset($_POST['campo_nome'])){
        $cliente = $_POST['campo_nome'];
        $funcionario = $_POST['campo_funcionario'];
        $desktop = $_POST['campo_desktop'];
        $data = $_POST['campo_dataVenda'];
        $preco = $_POST['campo_preco'];

   
        $sql = "INSERT INTO vendas(cliente, funcionario, desktop, data, preco)VALUES('$cliente','$funcionario','$desktop','$data','$preco')";
        include "conexao.php";
        if (mysqli_query($con, $sql)) {
            mysqli_close($con);
            echo "ok";
        }else{
            echo "Erro: " . $sql . "<br>" . mysqli_error($con);
        }

    }else{
        echo "erro";
    }
?>