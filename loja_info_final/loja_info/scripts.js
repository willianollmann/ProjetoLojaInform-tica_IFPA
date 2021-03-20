$(document).ready(function(){

    $('#conteudo').on('submit','#formCliente',function(e){
        e.preventDefault();
        var formulario = $(this).serialize();
        $.ajax({
            type: "post",
            url: "ins_cliente.php",
            data: formulario,
            dataType: "text",
            success: function (response) {
                if(response == "ok"){
                    $('#formCliente').each(function(){
                        this.reset();
                    });
                    alert("O Cliente foi inserido com sucesso!");
                }else{
                    alert(response);
                }
            }
        });
    });

    
    $('#conteudo').on('click','#btn_bscCliente',function(e){
        e.preventDefault();
        $.ajax({
            type: "post",
            url: "busca_cliente.php",
            data: "buscar",
            dataType: "text",
            success: function (response) {
                $('#tblCliente').html(response);
            }
        });
    });

    $('#conteudo').on('focus','#cmpNm',function(e){
        e.preventDefault();
        $.ajax({
            type: "post",
            url: "cliente_select.php",
            data: "buscar",
            dataType: "text",
            success: function (response) {
                $('#cmpNm').html(response);
            }
        });
    });


    ////Animais
    $('#conteudo').on('submit','#formDesktop',function(e){
        e.preventDefault();
        var formulario = $(this).serialize();
        $.ajax({
            type: "post",
            url: "desktop_inserir.php",
            data: formulario,
            dataType: "text",
            success: function (response) {
                if(response == "ok"){
                    $('#formDesktop').each(function(){
                        this.reset();
                    });
                    alert("O Desktop foi inserido com sucesso!");
                }else{
                    alert(response);
                }
            }
        });
    });

    $('#conteudo').on('click','#btn_bsc_Desktop',function(e){
        e.preventDefault();
        $.ajax({
            type: "post",
            url: "desktop_buscar.php",
            data: "buscar",
            dataType: "text",
            success: function (response) {
                $('#tbl_Desktop').html(response);
            }
        });
    });

    $('#conteudo').on('focus','#cmpAnimal',function(e){
        e.preventDefault();
        $.ajax({
            type: "post",
            url: "desktop_select.php",
            data: "buscar",
            dataType: "text",
            success: function (response) {
                $('#cmpAnimal').html(response);
            }
        });
    });

////laptop

    $('#conteudo').on('submit','#formLaptop',function(e){
        e.preventDefault();
        var formulario = $(this).serialize();
        $.ajax({
            type: "post",
            url: "laptop_inserir.php",
            data: formulario,
            dataType: "text",
            success: function (response) {
                if(response == "ok"){
                    $('#formLaptop').each(function(){
                        this.reset();
                    });
                    alert("O Laptop foi inserido com sucesso!");
                }else{
                    alert(response);
                }
            }
        });
    });

    $('#conteudo').on('click','#btn_bsc_Laptop',function(e){
        e.preventDefault();
        $.ajax({
            type: "post",
            url: "laptop_buscar.php",
            data: "buscar",
            dataType: "text",
            success: function (response) {
                $('#tbl_Laptop').html(response);
            }
        });
    });

    $('#conteudo').on('focus','#cmpAnimal',function(e){
        e.preventDefault();
        $.ajax({
            type: "post",
            url: "desktop_select.php",
            data: "buscar",
            dataType: "text",
            success: function (response) {
                $('#cmpAnimal').html(response);
            }
        });
    });

    ///Print

    $('#conteudo').on('submit','#formPrint',function(e){
        e.preventDefault();
        var formulario = $(this).serialize();
        $.ajax({
            type: "post",
            url: "print_inserir.php",
            data: formulario,
            dataType: "text",
            success: function (response) {
                if(response == "ok"){
                    console.log(response)
                    $('#formPrint').each(function(){
                        this.reset();
                    });
                    alert("A impressora foi inserida com sucesso!");
                }else{
                    alert(response);
                }
            }
        });
    });

    $('#conteudo').on('click','#btn_bsc_Print',function(e){
        e.preventDefault();
        $.ajax({
            type: "post",
            url: "print_buscar.php",
            data: "buscar",
            dataType: "text",
            success: function (response) {
                $('#tbl_Print').html(response);
            }
        });
    });

    $('#conteudo').on('focus','#cmpPrint',function(e){
        e.preventDefault();
        $.ajax({
            type: "post",
            url: "print_select.php",
            data: "buscar",
            dataType: "text",
            success: function (response) {
                $('#cmpPrint').html(response);
            }
        });
    });

        ////Funcionario
        $('#conteudo').on('submit','#formFuncionario',function(e){
            e.preventDefault();
            var formulario = $(this).serialize();
            $.ajax({
                type: "post",
                url: "ins_funcionario.php",
                data: formulario,
                dataType: "text",
                success: function (response) {
                    if(response == "ok"){
                        $('#formFuncionario').each(function(){
                            this.reset();
                        });
                        alert("O Funcionario foi inserido com sucesso!");
                    }else{
                        alert(response);
                    }
                }
            });
        });
    
        $('#conteudo').on('click','#btn_bscFuncionario',function(e){
            e.preventDefault();
            $.ajax({
                type: "post",
                url: "busca_funcionario.php",
                data: "buscar",
                dataType: "text",
                success: function (response) {
                    $('#tblFuncionario').html(response);
                }
            });
        });

        $('#conteudo').on('focus','#cmpFuncionario',function(e){
            e.preventDefault();
            $.ajax({
                type: "post",
                url: "funcionario_select.php",
                data: "buscar",
                dataType: "text",
                success: function (response) {
                    $('#cmpFuncionario').html(response);
                }
            });
        });

        ///VENDA
        $('#conteudo').on('submit','#formVenda',function(e){
            e.preventDefault();
            var venda = $(this).serialize();
            $.ajax({
                type: "post",
                url: "ins_venda.php",
                data: venda,
                dataType: "text",
                success: function (response) {
                    if(response == "ok"){
                        $('#formVenda').each(function(){
                            this.reset();
                        });
                        alert("A venda foi inserida com sucesso!");
                    }else{
                        alert(response);
                    }
                }
            });
        });

        $('#conteudo').on('click','#btn_bscVenda',function(e){
            e.preventDefault();
            $.ajax({
                type: "post",
                url: "busca_venda.php",
                data: "buscar",
                dataType: "text",
                success: function (response) {
                    $('#tblVenda').html(response);
                }
            });
        });


});