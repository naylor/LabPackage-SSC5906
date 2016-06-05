<?php

class Teste
{

    private $conexao;

    function __construct($conexao)
    {
        $this->conexao = $conexao;
    }

    public function getLastTestFirst()
    {
        $resultset = $this->conexao->query('select testfirst from testes order by id desc limit 1');

        if ($resultset->num_rows > 0) {
            return $resultset->fetch_assoc();
        } else {
            return array('testfirst' => 1);
        }
    }

    public function insertTest($studentName, $expes5, $expes6, $expoo, $semester)
    {

        $sql = "insert into tests(studentname, expes5, expes6, expoo, semester) values( ";
        $sql .= "'" . $studentName . "'," . $expes5 . "," . $expes6 . "," . $expoo . "," . $semester . ");";

        $this->conexao->query($sql);
        $this->areThereErrors($sql);

        return $this->conexao->insert_id;
    }

    public function insertAnswers($idTest, $Class, $ecma, $starttime, $endtime, $value)
    {
        $sql = "insert into answers( testid , testnumber, typeEC, starttime, endtime, answervalue ) values( ";
        $sql .= $idTest . ", '" . $Class . "' ,'" . $ecma . "', '" . $starttime . "', '" . $endtime . "', '" . $value . "');";

        $this->conexao->query($sql);

        $this->areThereErrors();
    }

    private function areThereErrors($sql)
    {

        if ($this->conexao->errno) {
            echo $sql . "<br>";
            echo $this->conexao->error . "<br>";
            var_dump($this->conexao->error_list);
            session_abort();
            die();
        }
    }

}