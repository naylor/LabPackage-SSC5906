<?php
require_once($_SERVER['DOCUMENT_ROOT'] . '/usp/Utils/session_start.php');
require_once($_SERVER['DOCUMENT_ROOT'] . '/usp/Daos/Teste.class.php');
require_once($_SERVER['DOCUMENT_ROOT'] . '/usp/Utils/DBConnection.class.php');

$ok = isset($_POST['okEntendi']) ? $_POST['okEntendi'] : $_SESSION['okEntendi'];
if ($ok === 'ok') {

    $_SESSION['okEntendi'] = 'ok';
    date_default_timezone_set("America/Sao_Paulo");
    $conexao = DBConnection::getConnection();
    $dao = new Teste($conexao);

    $startingDate = date('Y-m-d H:i:s');
    $_SESSION['starttime'] = $startingDate;

    if (isset($_SESSION['numTest'])) {

        $startwith = $_SESSION['startedWith'] === 1 ? 'ES5' : 'ES6';
        $contrapartida = $startwith === 'ES5' ? 'ES6' : 'ES5';

        $valt1 = $_POST['valt1'];
        $valt2 = $_POST['valt2'];
        $st1 = $_POST['starttime'];
        $ft1 = $_POST['endtime'];
        $st2 = $ft1;
        $ft2 = $startingDate;


        switch ($_SESSION['numTest']) {
            case 1 :

                $dao->insertAnswers($_SESSION['testId'], 'C1', $startwith, $st1, $ft1, $valt1);
                $dao->insertAnswers($_SESSION['testId'], 'C1', $contrapartida, $st2, $ft2, $valt2);
                break;
            case 2 :
                $dao->insertAnswers($_SESSION['testId'], 'C2', $startwith, $st1, $ft1, $valt1);
                $dao->insertAnswers($_SESSION['testId'], 'C2', $contrapartida, $st2, $ft2, $valt2);
                break;
            case 3 :
                $dao->insertAnswers($_SESSION['testId'], 'C3', $startwith, $st1, $ft1, $valt1);
                $dao->insertAnswers($_SESSION['testId'], 'C3', $contrapartida, $st2, $ft2, $valt2);
                break;
        }

        $_SESSION['endtime'] = '';

        if ($_SESSION['numTest'] < 3)
            $_SESSION['numTest'] = $_SESSION['numTest'] + 1;
        else {
            unset($_SESSION['numTest']);
            unset($_SESSION['okEntendi']);

            unset( $_SESSION['isStarted'] );

            header('Location: http://' .$_SERVER['HTTP_HOST'].'/usp/index.php');

        }

    } else {
        $_SESSION['numTest'] = 1;


        $studentName = $_SESSION['name'];
        $tempoOO = $_SESSION['expoo'];
        $tempoES5 = $_SESSION['expes5'];
        $tempoES6 = $_SESSION['expes6'];
        $semester = $_SESSION['semester'];

        $lastTestFirst = $dao->getLastTestFirst();

        if ($lastTestFirst['testfirst'] == '1') {
            $lastTestFirst = 2;
        } else {
            $lastTestFirst = 1;
        }

        $id = $dao->insertTest($studentName, $tempoES5, $tempoES6, $tempoOO, $semester);

        $_SESSION['testId'] = $id;
        $_SESSION['startedWith'] = $lastTestFirst;
    }

    switch ($_SESSION['numTest']) {
        case 1 :
            if ($lastTestFirst = 1) {
                $_SESSION['img1'] = '/usp/resources/imgs/test1es5.png';
                $_SESSION['img2'] = '/usp/resources/imgs/test1es6.png';
            } else {
                $_SESSION['img1'] = '/usp/resources/imgs/test1es6.png';
                $_SESSION['img2'] = '/usp/resources/imgs/test1es5.png';
            }
            break;
        case 2 :
            if ($lastTestFirst = 1) {
                $_SESSION['img1'] = '/usp/resources/imgs/test2es5.png';
                $_SESSION['img2'] = '/usp/resources/imgs/test2es6.png';
            } else {
                $_SESSION['img1'] = '/usp/resources/imgs/test2es6.png';
                $_SESSION['img2'] = '/usp/resources/imgs/test2es5.png';
            }
            break;

        case 3 :
            if ($lastTestFirst = 1) {
                $_SESSION['img1'] = '/usp/resources/imgs/test3es5.png';
                $_SESSION['img2'] = '/usp/resources/imgs/test3es6.png';
            } else {
                $_SESSION['img1'] = '/usp/resources/imgs/test3es6.png';
                $_SESSION['img2'] = '/usp/resources/imgs/test3es5.png';
            }
            break;
    }

    header('Location: http://' . $_SERVER['HTTP_HOST'] . '/usp/views/classes.php');

} else {

    header('Location: http://' . $_SERVER['HTTP_HOST'] . '/usp/view/training.php');
}