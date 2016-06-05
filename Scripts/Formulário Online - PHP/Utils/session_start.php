<?php
session_start() ;
if ( strpos($_SERVER['REQUEST_URI'], '/index.php') === false || strpos($_SERVER['REQUEST_URI'], '/consentimentoprocessar.php') === false ) {
    if (! isset( $_SESSION['isStarted'] )) {
        header('Location: http://' .$_SERVER['HTTP_HOST'].'/usp/index.php');
    }
}