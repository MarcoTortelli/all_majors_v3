<?php
include 'conn.php';

$sql = $conn->query("select * from patente");
$res = array();
while ($row = $sql->fetch_assoc()) {
    $res[] = $row;
}
echo json_encode($res);
