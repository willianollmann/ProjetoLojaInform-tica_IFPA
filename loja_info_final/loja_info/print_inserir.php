<?php
    if(isset($_POST['campo_aba'])){
        $abastecimento = $_POST['campo_aba'];
        $categoria = $_POST['campo_cat'];
        $preco = $_POST['campo_preco'];
   
        $sql = "INSERT INTO prints(abastecimento, categoria ,preco)VALUES('$abastecimento','$categoria','$preco')";
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