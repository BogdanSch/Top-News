<?php
include_once "dbconnect.php";

try {
    $conn->query("SET NAMES utf8mb4");
    $conn->query("SET CHARACTER SET utf8mb4");
    if (!$conn->query("CREATE TABLE IF NOT EXISTS News_Table (id INT NOT NULL AUTO_INCREMENT, article_author VARCHAR (100), article_date DATETIME, article_title VARCHAR(100), article_content TEXT, article_type VARCHAR(100), PRIMARY KEY (id))")) {
        throw new Exception('Error creation table GBookTable: [' . $conn->error . ']');
    }
    if (!$conn->query("CREATE TABLE  IF NOT EXISTS Users (user_id INT NOT NULL AUTO_INCREMENT, log VARCHAR(255), pas  VARCHAR(255), PRIMARY KEY (user_id))")) {
        throw new Exception('Error creation table  Users: [' . $conn->error . ']');
    }
    // if (!$conn->query("INSERT INTO Users (log, pas) VALUES ('pit', '123')")) {
    //     throw new Exception('Error creation table  Users: [' . $conn->error . ']');
    // }
    // if (!$conn->query("INSERT INTO Users (log, pas) VALUES ('admin', 'admin')")) {
    //     throw new Exception('Error creation table  Users: [' . $conn->error . ']');
    // }
    if (!$conn->query("INSERT INTO News_Table (article_author, article_date, article_title, article_content, article_type) VALUES ('admin', NOW(), 'How to become a programmer', 'Some content here', 'programmer')")) {
        throw new Exception('Error creation table  Users: [' . $conn->error . ']');
    }
    echo " Users and GBookTable tables created successfully";
    $conn->close();

} catch (Exception $e) {
    echo $e->getMessage();
}