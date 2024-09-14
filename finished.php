<?php
session_start();

if (!isset($_SESSION['logged_in']) || $_SESSION['logged_in'] !== true) {
    header("Location: login.php");
    exit;
}

// Include the database connection file
include 'connection.php';

// Assuming there's a linking column named 'user_id' that connects student applications to player sessions
$sql = "SELECT 
    sa.lastname, 
    sa.firstname, 
    sa.course_first_preference,
    SUM(CASE WHEN qq.subject = 'English' THEN IF(aa.is_correct=1,1,0) ELSE 0 END) AS English,
    SUM(CASE WHEN qq.subject = 'Science' THEN IF(aa.is_correct=1,1,0) ELSE 0 END) AS Science,
    SUM(CASE WHEN qq.subject = 'Math' THEN IF(aa.is_correct=1,1,0) ELSE 0 END) AS Math,
    SUM(CASE WHEN qq.subject = 'Social Science' THEN IF(aa.is_correct=1,1,0) ELSE 0 END) AS Social_Science,
    SUM(CASE WHEN qq.subject = 'Filipino' THEN IF(aa.is_correct=1,1,0) ELSE 0 END) AS Filipino,
    SUM(CASE WHEN qq.subject = 'Abstract Reasoning' THEN IF(aa.is_correct=1,1,0) ELSE 0 END) AS Abstract_Reasoning,
    COALESCE(SUM(aa.is_correct),0) AS total_correct_answers
FROM student_applications sa
JOIN (
    SELECT ps.user_id, MAX(ps.session_id) AS latest_session_id
    FROM player_sessions ps
    GROUP BY ps.user_id
) latest_sessions ON sa.id = latest_sessions.user_id
JOIN player_sessions ps ON sa.id = ps.user_id AND ps.session_id = latest_sessions.latest_session_id
LEFT JOIN answer_attempts aa ON ps.session_id = aa.session_id
LEFT JOIN quizquestions qq ON aa.question_id = qq.id
GROUP BY sa.id
ORDER BY total_correct_answers DESC, sa.lastname, sa.firstname;
";


$result = $mysqli->query($sql);

$studentApplications = [];
if ($result->num_rows > 0) {
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
                        <h3>Test Results</h3>
                    </div>
                    <div class="box box-primary">
                        <div class="box-body">
                            <table width="100%" class="table table-hover" id="dataTables-example">
                                <thead>
                                    <tr>
                                        <th>Name</th>
                                        <th>English</th>
                                        <th>Science</th>
                                        <th>Math</th>
                                        <th>Social Science</th>
                                        <th>Filipino</th>
                                        <th>Abstract Reasoning</th>
                                        <th>Total</th>
                                        <th>Actions</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php foreach ($studentApplications as $application): ?>
                                        <tr>
                                            <td>
                                                <?= htmlspecialchars($application['lastname'] . ', ' . $application['firstname']) ?>
                                            </td>
                                            <td>
                                                <?= htmlspecialchars($application['English']) ?>
                                            </td>
                                            <td>
                                                <?= htmlspecialchars($application['Science']) ?>
                                            </td>
                                            <td>
                                                <?= htmlspecialchars($application['Math']) ?>
                                            </td>
                                            <td>
                                                <?= htmlspecialchars($application['Social_Science']) ?>
                                            </td>
                                            <td>
                                                <?= htmlspecialchars($application['Filipino']) ?>
                                            </td>
                                            <td>
                                                <?= htmlspecialchars($application['Abstract_Reasoning']) ?>
                                            </td>
                                            <td>
                                                <?= htmlspecialchars($application['total_correct_answers']) ?>
                                            </td>
                                            <td class="text-end">
                                                <a href="#" class="btn btn-primary btn-sm"><i class="fa fa-eye"></i>
                                                    View</a>
                                                <a href="#" class="btn btn-secondary btn-sm"><i class="fa fa-print"></i>
                                                    Print</a>
                                            </td>
                                        </tr>
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
</body>

</html>