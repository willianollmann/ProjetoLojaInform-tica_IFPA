<?php
    if(isset($_POST['campo_fab'])){
        $fabricante = $_POST['campo_fab'];
        $cpu = $_POST['campo_cpu'];
        $ram = $_POST['campo_ram'];
        $hd = $_POST['campo_hd'];
        $preco = $_POST['campo_preco'];
   
        $sql = "INSERT INTO desktop(fabricante,cpu,ram,hd,preco)VALUES('$fabricante','$cpu','$ram','$hd','$preco')";
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