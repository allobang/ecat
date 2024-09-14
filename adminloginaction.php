<?php
session_start();
require 'connection.php'; // Include the database connection file

// Check if the form is submitted
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Retrieve the username and password from the form
    $username = $mysqli->real_escape_string($_POST['username']);
    $password = $_POST['password']; // Don't escape passwords; it will be hashed
    // Query to find the user
    $sql = "SELECT id, username, password FROM users WHERE username = '$username' AND role = 'admin'";
    $result = $mysqli->query($sql);

    if ($result->num_rows > 0) {
        $row = $result->fetch_assoc();

        // Verify the password
        if ($password === $row['password']) {
            // Password is correct, so start a new session
            $_SESSION['logged_in'] = true;
            $_SESSION['username'] = $row['username'];
            $_SESSION['id'] = $row['id'];
            // Redirect to the admin dashboard
            header("Location: index.php");
            exit;
        } else {
            // Password is not valid, redirect back with error
            header("Location: adminlogin.php?error=Invalid username or password.");
            exit;
        }
    } else {
        // No user found with the username
        header("Location: adminlogin.php?error=Invalid username or password.");
        exit;
    }
} else {
    // Not a POST request, redirect to the login page
    header("Location: login.php");
    exit;
}
$mysqli->close();
?>