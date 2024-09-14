<?php
// Start the session
session_start();

// Check if the student name is set in the session, otherwise redirect or handle the case appropriately
if(!isset($_SESSION["name"])) {
    // Redirect to login page, or handle as appropriate for your application
    header("location: login.php");
    exit;
}

// Store the student name in a variable
$studentName = $_SESSION["name"];
?>
<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <title>Welcome | E-Entrance Exam</title>
    <style>
        .vh-100 {
            height: 100vh;
        }
        .welcome-message {
            display: flex;
            justify-content: center;
            align-items: center;
            flex-direction: column;
            text-align: center;
        }
    </style>
</head>
<body>

<div class="container-fluid vh-100">
    <div class="row vh-100">
        <div class="col-12 welcome-message">
            <!-- Display the student's name dynamically -->
            <h1 class="display-4">Welcome, <?php echo htmlspecialchars($studentName); ?>!</h1>
            <p class="lead">You are now ready to take the entrance exam.</p>
            <a href="exam.php" class="btn btn-primary btn-lg" role="button">Take Exam</a>
        </div>
    </div>
</div>

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.2/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
