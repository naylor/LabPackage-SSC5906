<?php
require_once($_SERVER['DOCUMENT_ROOT'] . '/usp/Utils/session_start.php');

$_GET['idTest'] ;

date_default_timezone_set("America/Sao_Paulo");
$registeredTimestamp = date('Y-m-d H:i:s');

echo  $registeredTimestamp ;
