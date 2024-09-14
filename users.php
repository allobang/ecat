<?php
session_start();

if (!isset ($_SESSION['logged_in']) || $_SESSION['logged_in'] !== true) {
    header("Location: login.php");
    exit;
}

// Include the database connection file
include 'connection.php';

// Fetch student applications from the database
$sql = "SELECT lastname, firstname, course_first_preference, exam_pass_code FROM student_applications";
$result = $mysqli->query($sql);

$studentApplications = [];
if ($result->num_rows > 0) {
    // output data of each row
    while ($row = $result->fetch_assoc()) {
        $studentApplications[] = $row;
    }
} else {
    echo "0 results";
}
?>

<!doctype html>
<html lang="en">

<?php include 'layout/head.php'; ?>

<body>
    <div class="wrapper">
        <?php include 'layout/side.php'; ?>
        <div id="body" class="active">
            <?php include 'layout/nav.php'; ?>
            <div class="content">
                <div class="container">
                    <!-- title -->
                    <div class="page-title">
                        <h3>Student Applications
                        </h3>

                        <button type="button" class="btn btn-primary mb-2"
                            onclick="window.location.href='addStudent.php';">Add</button>
                    </div>
                    <div class="box box-primary">
                        <div class="box-body">
                            <table width="100%" class="table table-hover" id="dataTables-example">
                                <thead>
                                    <tr>
                                        <th>#</th> <!-- Added column for row numbers -->
                                        <th>Name</th>
                                        <th>Course First Preference</th>
                                        <th>Exam Pass Code</th>
                                        <th></th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php $rowNumber = 1; ?> <!-- Initialize row number -->
                                    <?php foreach ($studentApplications as $application): ?>
                                        <tr>
                                            <td>
                                                <?= $rowNumber ?>
                                            </td> <!-- Display row number -->
                                            <td>
                                                <?= htmlspecialchars($application['lastname'] . ', ' . $application['firstname']) ?>
                                            </td>
                                            <td>
                                                <?= htmlspecialchars($application['course_first_preference']) ?>
                                            </td>
                                            <td>
                                                <?= htmlspecialchars($application['exam_pass_code']) ?>
                                            </td>
                                            <td class="text-end">
                                                <!-- Optionally, you can add action buttons here -->
                                            </td>
                                        </tr>
                                        <?php $rowNumber++; ?> <!-- Increment row number -->
                                    <?php endforeach; ?>
                                </tbody>
                            </table>
                        </div>

                    </div>

                </div>
            </div>
        </div>
    </div>

    <?php include 'layout/foot.php'; ?>