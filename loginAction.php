<?php
// Start a new session
session_start();

// Include your database connection file
require_once 'connection.php';

// Check if the form is submitted
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Get the passcode from the form
    $passcode = $mysqli->real_escape_string($_POST['password']);

    // Prepare a SQL query to find the applicant with the matching passcode
    $sql = "SELECT id, lastname, firstname, middlename FROM student_applications WHERE exam_pass_code = ?";

    // Prepare statement
    if ($stmt = $mysqli->prepare($sql)) {
        // Bind variables to the prepared statement as parameters
        $stmt->bind_param("s", $param_passcode);

        // Set parameters
        $param_passcode = $passcode;

        // Attempt to execute the prepared statement
        if ($stmt->execute()) {
            // Store result
            $stmt->store_result();

            // Check if passcode exists, if yes then verify passcode
            if ($stmt->num_rows == 1) {
                // Bind result variables
                $stmt->bind_result($id, $lastname, $firstname,$middlename);

                if ($stmt->fetch()) {
                    // Passcode is correct, so start a new session
                    session_start();
                    // Store data in session variables
                    $_SESSION["logged_in"] = true;
                    $_SESSION["user_id"] = $id;
                    $_SESSION["first_name"] = $firstname;
                    $_SESSION["last_name"] = $lastname;
                    $_SESSION["middle_name"] = $middlename;
                    $_SESSION["name"] = $_SESSION["first_name"] . ' ' . $_SESSION["middle_name"] . ' ' . $_SESSION["last_name"];
                    // Redirect user to exam page
                    header("location: ready.php");
                }
            } else {
                // Display an error message if passcode doesn't exist
                echo "No account found with that passcode.";
            }
        } else {
            echo "Oops! Something went wrong. Please try again later.";
        }

        // Close statement
        $stmt->close();
    }
}

// Close connection
$mysqli->close();
?>
