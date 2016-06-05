<?php

class DBConnection
{

    public static function getConnection()
    {
        $conexao = mysqli_connect('localhost', 'root', 'root', 'eseusp');
        if ($conexao !== null || mysqli_err($conexao) === 0) {
            return $conexao;
        } else
            return null;
    }

    public static function getMessageError($conexao) {
        return mysqli_error( $conexao );
    }
}