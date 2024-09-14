<?php
// Start the session
session_start();

// Include the database connection file
require_once 'connection.php';
// Check if the student is logged in, otherwise redirect to the login page
if (!isset($_SESSION["user_id"])) {
    header("location: login.php");
    exit;
}

// Check if the form was submitted via POST
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Retrieve input values from form
    $firstname = $mysqli->real_escape_string($_POST['firstname']);
    $middlename = $mysqli->real_escape_string($_POST['middlename']);
    $lastname = $mysqli->real_escape_string($_POST['lastname']);
    $course_first_preference = $mysqli->real_escape_string($_POST['course_first_preference']);
    $course_second_preference = $mysqli->real_escape_string($_POST['course_second_preference']);
    $track_strand_taken = $mysqli->real_escape_string($_POST['track_strand_taken']);
    $enrollment_status = $mysqli->real_escape_string($_POST['enrollment_status']);
    $school_last_attended = $mysqli->real_escape_string($_POST['school_last_attended']);
    $school_address = $mysqli->real_escape_string($_POST['school_address']);
    $zip_code = $mysqli->real_escape_string($_POST['zip_code']);
    $sex = $mysqli->real_escape_string($_POST['sex']);
    $birthday = $mysqli->real_escape_string($_POST['birthday']);
    $email_address = $mysqli->real_escape_string($_POST['email_address']);
    $contact_number = $mysqli->real_escape_string($_POST['contact_number']);
    $home_address = $mysqli->real_escape_string($_POST['home_address']);
    $GWA = $mysqli->real_escape_string($_POST['GWA']);

    // Prepare an update statement
    $sql = "UPDATE student_applications SET 
                firstname = ?,
                middlename = ?,
                lastname = ?,
                course_first_preference = ?,
                course_second_preference = ?,
                track_strand_taken = ?,
                enrollment_status = ?,
                school_last_attended = ?,
                school_address = ?,
                zip_code = ?,
                sex = ?,
                birthday = ?,
                email_address = ?,
                contact_number = ?,
                home_address = ?,
                GWA = ?
            WHERE id = ?";

    $stmt = $mysqli->prepare($sql);

    // Bind parameters to the prepared statement as strings
    $stmt->bind_param("sssssssssssssssssi", $firstname, $middlename, $lastname, $course_first_preference, 
        $course_second_preference, $track_strand_taken, $enrollment_status, $school_last_attended, 
        $school_address, $zip_code, $sex, $birthday, $email_address, $contact_number, $home_address, $GWA, $_SESSION["user_id"]);

    // Execute the prepared statement
    if ($stmt->execute()) {
        // Redirect to ready.php if the update was successful
        header("location: ready.php");
        exit;
    } else {
        // Handle errors here
        echo "Error updating record: " . $mysqli->error;
    }

    // Close statement and connection
    $stmt->close();
}

// Close the database connection
$mysqli->close();
?>
