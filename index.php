<?php
session_start();

if (!isset($_SESSION['logged_in']) || $_SESSION['logged_in'] !== true) {
    header("Location: login.php");
    exit;
}

// Rest of your index.php code...
?>

<!doctype html>
<!-- 
* Bootstrap Simple Admin Template
* Version: 2.1
* Author: Alexis Luna
* Website: https://github.com/alexis-luna/bootstrap-simple-admin-template
-->
<html lang="en">

<?php include 'layout/head.php'; ?>

<body>
        <div class="wrapper">
            <?php include 'layout/side.php'; ?>
            <div id="body" class="active">
                <?php include 'layout/nav.php'; ?>
                <div class="content">
                    <div class="container text-center">
                        <h1 class="display-4">Welcome, ADMIN!</h1>
                    </div>
                </div>
            </div>
    </div>
    <?php include 'layout/foot.php'; ?>