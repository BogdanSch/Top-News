<?php
require_once "config.php";

try {
    $conn = new mysqli(SERVERNAME, USERNAME, PASSWORD, DBNAME);
    $conn->set_charset("utf8mb4");
    if ($conn->connect_error) {
        throw new Exception("Connection failed: " . $conn->connect_error);
    }
} catch (Exception $e) {
    echo $e->getMessage();
}