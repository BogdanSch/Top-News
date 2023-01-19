<?php
require_once "config.php";

try {
    $conn = new mysqli(SERVERNAME, USERNAME, PASSWORD);
    if ($conn->connect_error) {
        throw new Exception("Connection failed: " . $conn->connect_error);
    }
    $sql = "CREATE DATABASE IF NOT EXISTS " . DBNAME . " CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci";
    if (!$conn->query($sql)) {
        throw new Exception('Error creating database: [' . $conn->error . ']');
    } else {
        echo "Database created successfully";
    }
    $conn->close();
} catch (Exception $e) {
    echo $e->getMessage();
}
