<?php
$servername = "127.0.0.1";
$username = "root";
$password = "";
$dbname = "salvaind_rnvsports";

$con = new mysqli($servername, $username, $password, $dbname, 3307);

if ($con->connect_error) {
    die("Connection failed: " . $con->connect_error);
}
?>