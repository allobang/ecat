<?php
include 'connection.php';

$search = isset($_GET['search']) ? $_GET['search'] : '';

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
LEFT JOIN quizquestions qq ON aa.question_id = qq.id AND aa.is_correct = 1
WHERE sa.lastname LIKE CONCAT('%', ?, '%') OR sa.firstname LIKE CONCAT('%', ?, '%')
GROUP BY sa.id
ORDER BY sa.lastname, sa.firstname;";

$stmt = $mysqli->prepare($sql);
$stmt->bind_param("ss", $search, $search);  // Bind the $search variable to both parameters
$stmt->execute();
$result = $stmt->get_result();
$studentApplications = [];

if ($result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
        $studentApplications[] = $row;
    }
    echo json_encode($studentApplications);
} else {
    echo json_encode([]);
}
?>
