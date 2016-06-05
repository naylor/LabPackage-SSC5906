<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <title>Experimentação das Classes JavaScript</title>
    <link rel="stylesheet" type="text/css" href="bower_components/bootstrap/dist/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="bower_components/bootstrap/dist/css/bootstrap-theme.min.css">
</head>

<body class="bg-success">
<div class="container bg-success">
    <div class="row">
        <div class="col-md-12">
            <h1 class="text-info text-center">Termo de Consentimento e Descrição do experimento</h1>
        </div>

        <div class="col-md-12">
            <p class="text-justify">Este é um convite especial para você participar voluntariamente do estudo:
                “Estudo de comparação do ECMAScript 5 e 6”. Por favor, leia com atenção as informações abaixo antes
                de dar seu consentimento para participar do estudo.
            </p>

            <h4 class="text-uppercase text-center">OBJETIVO E BENEFÍCIOS DO ESTUDO</h4>

            <p class="text-justify">O objetivo do estudo é verificar se as alterações propostas pela nova versão do
                ECMAScript 6, realmente irão facilitar o entendimento de códigos JavaScript em relação a versão 5.</p>


            <h4 class="text-uppercase text-center">PROCEDIMENTOS</h4>

            <p class="text-justify">O procedimento envolve o acesso a um site, em que o sujeito deverá analisar códigos
                escritos em JavaScript e dar o seu parecer sobre qual foi o código, em que ele considerou ser mais fácil
                o entendimento.</p>

            <h4 class="text-uppercase text-center">PARTICIPAÇÃO VOLUNTÁRIA</h4>
            <p class="text-justify">Sua participação neste estudo é <b class="text-uppercase">voluntária</b> e você terá
                plena e total liberdade para
                desistir do estudo a qualquer momento, sem que isso acarrete qualquer prejuízo.</p>

            <h4 class="text-uppercase text-center">GARANTIA DE SIGILO E PRIVACIDADE</h4>
            <p class="text-justify">As informações relacionadas ao estudo são confidenciais e qualquer informação
                divulgada em relatório ou publicação será feita sob forma codificada, para que a confidencialidade seja
                mantida. O pesquisador garante que seu nome não será divulgado sob hipótese alguma.</p>

            <br>

            <p class="text-justify">Diante do exposto acima, declaro que fui esclarecido sobre os objetivos,
                procedimentos e benefícios do presente estudo. Participo de livre e espontânea vontade do estudo em
                questão. Foi-me assegurado o direito de abandonar o estudo a qualquer momento, se eu assim o desejar.
                Declaro também não possuir nenhum grau de dependência profissional ou educacional com os pesquisadores
                envolvidos nesse projeto (ou seja, os pesquisadores desse projeto não podem me prejudicar de modo algum
                no trabalho ou nos estudos), não me sentindo pressionado de nenhum modo a participar dessa pesquisa.</p>

        </div>
    </div>

    <form action="processamento/consentimentoprocessar.php" method="post">

        <div class="row">
            <div class="col-md-6">
                <div class="form-group">
                    <label class="control-label" for="txtNome">Nome do Participante</label>
                    <input type="text" class="form-control" id="txtNome" name="name" required>
                </div>
            </div>

            <div class="col-md-3">
                <div class="form-group">
                    <label class="control-label" for="txtSemestre">Semestre que está cursando</label>
                    <input type="text" class="form-control" id="txtSemestre" name="semester" required>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-md-5">
                <div class="checkbox">
                    <label class="control-label">
                        <input type="checkbox" id="chkConsentimento" class="checkbox" name="consentimento" value="true"
                               onclick="openDadosPesquisa()">Concordo em participar do estudo descrito acima
                    </label>
                </div>
            </div>
        </div>

        <div id="information">
            <div class="row">
                <div class="col-md-12">
                    <h4>Dados da pesquisa:</h4>
                </div>
            </div>

            <div class="row">
                <div class="col-md-4">
                    <div class="form-group">
                        <label class="control-label" for="txtExperienciaES5">Qual a sua experiência com ES5?</label>
                        <input type="number" name="expes5" id="txtExperienciaES5" required>
                    </div>
                </div>

                <div class="col-md-4">
                    <div class="form-group">
                        <label class="control-label" for="txtExperienciaES6">Qual a sua experiência com ES6?</label>
                        <input type="number" name="expes6" id="txtExperienciaES6" required>
                    </div>
                </div>

                <div class="col-md-4">
                    <div class="form-group">
                        <label class="control-label" for="txtExperienciaOO">Qual a sua experiência com O.O.?</label>
                        <input type="number" name="expoo" id="txtExperienciaOO" required>
                    </div>
                </div>

            </div>

        </div>

        <div class="row">
            <div class="col-md-3 col-md-offset-5">
                <input type="submit" class="btn btn-primary btn-block" value="Enviar">
            </div>
        </div>
    </form>
</div>

<script type="text/javascript" src="bower_components/jquery/dist/jquery.min.js"></script>
<script type="text/javascript" src="bower_components/bootstrap/dist/js/bootstrap.min.js"></script>

<script type="text/javascript">
    function openDadosPesquisa() {
        if ($('#chkConsentimento').prop('checked')) {
            $('#information').show();
        } else {
            $('#information').hide();
        }
    }

    $().ready(function(){
       $('#information').hide();
    });
</script>

</body>

</html>