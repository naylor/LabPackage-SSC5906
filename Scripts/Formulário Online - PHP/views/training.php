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
        <div class="col-md-6">
            <h3 class="text-center">ECMAScript 5</h3>
            <br>

            <h5>Declaração de uma classe em ES5</h5>
            <img src="../resources/imgs/classes5.png" height="150" width="300" alt="Classe ES 5">

            <br><br><br><br>

            <p class="text-justify">Na imagem acima está a declaração de uma classe escrita utilizando o EcmaScript 5.
                na primeira linha é possível observar que a função recebe 3 parâmetros (id, x e y). Na realidade esses
                três parâmetros iniciais estão fazendo o papel de um construtor para esta função. Observa-se também
                que temos uma função anônima e que a referência para esta função está na variável <i>Shape</i>. </p>
            <p class="text-justify">Logo após a declaração as duas próximas linhas são executadas quando a função é
                chamada. Na segunda linha temos a criação de um atributo, que fica vinculado ao escopo da função chamado
                de id e na terceira linha, a execução do método <i>move</i>.</p>

            <p class="text-justify">É uma boa prática de programação em JavaScript, colocar os métodos de uma
                determinada classe no <i>prototype</i> da classe, uma vez que essa declaração ficará disponível a toda
                instância dos objetos dessa classe</p>

        </div>

        <div class="col-md-6">
            <h3 class="text-center">ECMAScript 6</h3>
            <br>

            <h5>Declaração de uma classe em ES6</h5>
            <img src="../resources/imgs/classe6.png" height="180" width="300" alt="Classe ES 6">

            <br> <br>
            <p class="text-justify">Acima está a declaração da mesma classe utilizando o ECMAScript 6. Ambas as classes
                são similares, e é possível observar que houve uma mudança na declaração de ambas. Com o EcmaScript 6,
                pode-se verificar na primeira linha que agora a declaração da classe ocorre por meio da palavra
                reservada <i>class</i>. Logo após a declaração da classe, na segunda linha é possivel visualizar a
                declaração do construtor, o qual recebe os mesmos 3 parâmetros, (id, x, y). Em seguida nas linhas 3 e 4
                já é associado a atribuição da propriedade id e também da execução do método move, passando os dois
                parâmetros recebidos.</p>

            <p class="text-justify">Na linha 6 é possível visualizar a declaração do método move, que recebe os dois
                parâmetros(x e y) e faz a atribuição dos parâmetros na classe, utilizando o atribuito x e y para
                armazenar os parametros.</p>
        </div>
    </div>

    <div class="row">
        <div class="col-md-12">
            <h4 class="text-justify">Como pode ser observado as 2 classes acima executam as mesmas ações, no entanto,
                elas estão declaradas
                de maneira diferente. Desta forma, as próximas questões tem por objetivo verificar se, há uma maior
                facilidade de entendimento de leitura de ambos os métodos.</h4>
        </div>
    </div>

    <div class="row">
        <form action="/usp/processamento/processaresposta.php" method="post">
            <div class="col-md-4">
                <div class="checkbox">
                    <label>
                        <input type="checkbox" name="okEntendi" value="ok">Ok, entendi e vamos aos testes
                    </label>
                </div>
            </div>

            <div class="col-md-3">
                <input class="btn btn-primary" type="submit" value="Iniciar os testes">
            </div>
        </form>
    </div>


    <div class="row">
        <div class="col-md-12">
            <h5>Fonte: <a href="http://es6-features.org/#ClassDefinition">http://es6-features.org/#ClassDefinition</a>
            </h5>
        </div>
    </div>
</div>

<script type="text/javascript" src="../bower_components/jquery/dist/jquery.min.js"></script>
<script type="text/javascript" src="../bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
</body>
</html>