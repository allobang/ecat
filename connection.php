<?php
// connection.php

// Database configuration
$host = 'localhost';
$username = 'root';
$password = '';
$database = 'entranceExam';

// Create a new mysqli connection instance
$mysqli = new mysqli($host, $username, $password, $database);

// Check connection
if ($mysqli->connect_error) {
    die("Connection failed: " . $mysqli->connect_error);
}
?>
