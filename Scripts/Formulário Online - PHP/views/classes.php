<?php
require_once($_SERVER['DOCUMENT_ROOT'] . '/usp/Utils/session_start.php');
?>
<!doctype html>
<html>
<head>
    <title>Treinamento de Classes</title>
    <meta charset="UTF-8">
    <link rel="stylesheet" type="text/css" href="../bower_components/bootstrap/dist/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="../bower_components/bootstrap/dist/css/bootstrap-theme.min.css">
</head>
<body>
<div class="container">

    <div class="row">

        <div class="row">
            <div class="col-md-12">
                <h2 class="text-center bg-success text-success">Teste de avaliação de classes escritas utilizando ECMAScript - <?=$_SESSION['numTest']?></h2>
            </div>
        </div>

        <div class="col-md-6">
            <h3 class="text-center">Teste 1</h3>
            <br>

            <h5>Declaração da classe do teste 1</h5>
            <img src="<?=$_SESSION['img1']?>" width="80%" height="80%"/>
            <br>

        </div>

        <div class="col-md-6" id="divx">
            <h3 class="text-center">Teste 2</h3>
            <br>

            <h5>Declaração da classe do teste 2</h5>
            <img src="<?=$_SESSION['img2']?>" width="80%" height="80%"/>
            <br>
        </div>
    </div>
    <form action="/usp/processamento/processaresposta.php" method="post">
        <div class="row">
            <div class="col-md-6">
                <div class="col-md-10">
                    <div class="form-group">
                        <label for="txtAnswerES5" class="control-label">Qual o Valor apresentado no método</label>
                        <input type="number" name="valt1" id="txtAnswerES5" class="form-control">
                        <input type="hidden" name="starttime" id="starttime" value="<?=$_SESSION['starttime']?>"/>
                        <input type="hidden" name="endtime" id="endtime"/>
                    </div>
                </div>

                <div class="col-md-2">
                    <br>
                    <input type="button" value="Responder" class="btn btn-warning" onclick="openSecondColumn()"/>
                </div>
            </div>
            <div class="col-md-6" id="answer6">
                <div class="col-md-10">
                    <div class="form-group">
                        <label for="txtAnswerES6" class="control-label">Qual o Valor apresentado no método</label>
                        <input type="number" name="valt2" id="txtAnswerES6" class="form-control">
                    </div>
                </div>

                <div class="col-md-2">
                    <br>
                    <input type="submit" class="btn btn-primary btn-block" value="Next">
                </div>
            </div>

        </div>
    </form>

</div>

<script type="text/javascript" src="../bower_components/jquery/dist/jquery.min.js"></script>
<script type="text/javascript" src="../bower_components/bootstrap/dist/js/bootstrap.min.js"></script>

<script type="text/javascript">
    $().ready(function () {
        $('#divx').hide();
        $('#answer6').hide();
    });

    function openSecondColumn() {
        $.ajax({
            url: '/usp/processamento/timeregister.php',
            method: 'get'
        }).success(function(dados){
            console.log(dados);

            $('#endtime').attr('value', dados);

            $('#divx').show();
            $('#answer6').show();
        }).error(function(){
           alert('Aconteceu um erro na submissão da resposta, tente novamente');
        });

    }
</script>

</body>
</html>