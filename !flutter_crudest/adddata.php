<?php
include 'conn.php';
$nome = $_POST['nome'];
$patente = $_POST['patente'];
$idade = $_POST['idade'];
$sexo = $_POST['sexo'];

$conn->query("insert into patente(nome, patente, idade, sexo) values ('".$nome."','".$patente."','".$idade."','".$sexo."')");