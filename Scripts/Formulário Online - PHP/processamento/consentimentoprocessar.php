<?php
require_once($_SERVER['DOCUMENT_ROOT'] . '/usp/Utils/session_start.php');
$consentimento = ($_POST['consentimento'] === 'true' ? TRUE : FALSE);
$host = $_SERVER['HTTP_HOST'];

if ($consentimento === true) {
    $_SESSION['isStarted'] = 'true';

    $_SESSION['name'] = $_POST['name'];
    $_SESSION['semester'] = $_POST['semester'];
    $_SESSION['expes5'] = $_POST['expes5'];
    $_SESSION['expes6'] = $_POST['expes6'];
    $_SESSION['expoo'] = $_POST['expoo'];

    header('Location: http://' . $host . '/usp/views/training.php');
} else {
    header('Location: http://' . $host . '/usp/index.php');
}