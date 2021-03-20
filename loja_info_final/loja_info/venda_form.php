<div>
    <h1>INSERIR VENDA</h1>
    <form id="formVenda" method="post">
        <table>
            <tr>
                <td>Cliente: </td><td>
                    <select type="text" name="campo_nome" id="cmpNm">
                        <option value="#">Selecione...</option>
                    </select>
                </td>
            </tr>
            <tr>
                <td>Funcionário: </td><td>
                    <select type="text" name="campo_funcionario" id="cmpFuncionario">
                            <option value="#">Selecione...</option>
                    </select>
                </td>   
            </tr>
            <tr>
                <td>Equipamento: </td><td>
                <select name="campo_desktop" id="cmpAnimal" >
                        <option value="">Selecione...</option>
                </select>
                </td>   
            </tr>
            <tr>
                <td>Data da venda: </td><td><input type="text" name="campo_dataVenda" id="cmpDv"></td>                
            </tr>
            <tr>
                <td>Preço: </td><td><input type="text" name="campo_preco" id="cmpPrc"></td>
            </tr>
            <tr>
                <td><input type="submit" value="SALVAR"></td><td></td>
            </tr>
        </table>
    </form>
</div>