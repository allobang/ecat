<?php


// var_dump($_POST['difficulty']); die();
session_start();
require_once ('connection.php'); // Using require_once to ensure the connection file is included only once

// Redirect if not logged in
if (empty($_SESSION['logged_in']) || !$_SESSION['logged_in']) {
    header("Location: login.php");
    exit;
}

$passageHTML = <<<HTML
    <div class="passage">
        <h2>Directions: Read the passages below and answer the questions that follow.</h2>
        <strong>Passage 1</strong>
        <p>Misconduct such as cheating and dishonesty is becoming a perennial problem in schools. In 
        a study conducted on April 29, 2004, ABC’s (American Broadcasting Corporation), Prime Time 
        had a segment on cheating of students in the education system. They tackled the issue of 
        cheating in colleges and high schools. They found that 75% of students admitted to cheating 
        on an exam or paper. Of the 12,000 college students, 75% admitted that they have cheated 
        on an exam or term project (Mujtaba and Preziosi, 2006). Students are using calculators, cell 
        phones, computers, and other devices to store and/or download relevant information to 
        complete the exam. One student was timed by Charlie Gibson to see how long it took her to 
        get the answer for one of the questions from another student using her cell phone’s text 
        messaging function. It took her less than 30 seconds, using one hand under the table, to ask the 
        question and receive the answer while the other hand seemed to be attempting to take the 
        test. Some students feel that they need to cheat since their counterparts are doing it. Others 
        feel that they need to cheat as the school system is simply a “dress rehearsal” for the “cut 
        throat” world of business. Many students feel that if senior business officers or religious leaders 
        cheat and politicians, including governors and presidents, lie, then they, too, have the right to 
        cheat and get ahead using tactics available to them. To minimize the incidents of cheating, the 
        writers suggest that teachers should involve their students in the learning process. Teachers 
        can provide learning activities that meet the learning needs and reinforce learning in the daily 
        activities of the students. In this case, students are evaluated according to their performance 
        and come up with honest outputs.</p>
        <p><strong>Source:</strong> Cavico, F. and Mujtaba, B. (2009). Making The Case For The Creation Of An 
        Academic Honesty And Integrity Culture In Higher Education: Reflections And Suggestions 
        For Reducing The Rise In Student Cheating. American Journal of Business Education, 2(5), 
        pp. 75-88.</p>
    </div>
HTML;


// Prepare and execute query to fetch quiz questions
$questions = fetchQuizQuestions();
$timerDurationMinutes = fetchTimerSetting();

// Insert a new player session if questions are available
if (!empty($questions)) {
    $sessionID = insertPlayerSession(count($questions));
    if ($sessionID) {
        initializeSessionVariables($sessionID, count($questions));
    } else {
        echo "Error preparing session insert statement.";
    }
} else {
    echo "No questions found for the specified grade.";
}

// Redirect or further process

// Functions used above for clarity and reusability
function fetchQuizQuestions()
{
    global $mysqli; // Ensure $mysqli is accessible within the function

    // Fetch specific questions by IDs in a defined order
    $stmt = $mysqli->prepare("SELECT * FROM quizquestions WHERE id IN (13,14,15) ORDER BY FIELD(id,13,14,15)");
    $stmt->execute();
    $result = $stmt->get_result();
    $specificQuestions = $result->fetch_all(MYSQLI_ASSOC);
    $stmt->close();

    // Fetch all questions except for the ABSTRACT REASONING and specific ones initially
    $stmt = $mysqli->prepare("SELECT * FROM quizquestions WHERE subject != 'ABSTRACT REASONING' AND id NOT IN (13,14,15) ORDER BY RAND()");
    $stmt->execute();
    $result = $stmt->get_result();
    $randomQuestions = $result->fetch_all(MYSQLI_ASSOC);
    $stmt->close();

    // Handle the grouping and shuffling for non-ABSTRACT REASONING questions
    $questionsBySubject = [];
    foreach ($randomQuestions as $question) {
        $questionsBySubject[$question['subject']][] = $question;
    }

    // Shuffle subjects except for ABSTRACT REASONING
    $subjects = array_keys($questionsBySubject);
    shuffle($subjects);

    // Insert the specific questions randomly within the "English" subject group, if it exists
    if (array_key_exists('English', $questionsBySubject)) {
        $insertPosition = rand(0, count($questionsBySubject['English']));
        array_splice($questionsBySubject['English'], $insertPosition, 0, $specificQuestions);
    }

    // Add ABSTRACT REASONING at the end explicitly
    $subjects[] = 'ABSTRACT REASONING';

    // Now fetch ABSTRACT REASONING questions separately
    $stmt = $mysqli->prepare("SELECT * FROM quizquestions WHERE subject = 'ABSTRACT REASONING' ORDER BY RAND()");
    $stmt->execute();
    $result = $stmt->get_result();
    $abstractReasoningQuestions = $result->fetch_all(MYSQLI_ASSOC);
    $stmt->close();

    // Add ABSTRACT REASONING questions to the questionsBySubject array
    $questionsBySubject['ABSTRACT REASONING'] = $abstractReasoningQuestions;

    // Rebuild the array to maintain the desired structure
    $shuffledQuestions = [];
    foreach ($subjects as $subject) {
        foreach ($questionsBySubject[$subject] as $question) {
            $shuffledQuestions[] = $question;
        }
    }

    return $shuffledQuestions;
}

function insertPlayerSession($totalQuestions)
{
    global $mysqli; // Ensure $mysqli is accessible within the function
    $userID = $_SESSION['user_id'];
    $insertSessionSql = "INSERT INTO player_sessions (user_id, start_time, total_questions) VALUES (?, NOW(), ?)";
    $stmt = $mysqli->prepare($insertSessionSql);
    $stmt->bind_param("ii", $userID, $totalQuestions);
    $stmt->execute();
    $sessionID = $mysqli->insert_id;
    $stmt->close();
    return $sessionID;
}

function initializeSessionVariables($sessionID, $totalQuestions)
{
    $_SESSION['current_session_id'] = $sessionID;
    $_SESSION['total_questions'] = $totalQuestions;
    $_SESSION['quiz_score'] = 0;
    $_SESSION['correct_answers'] = 0;
    $_SESSION['incorrect_answers'] = 0;
    $_SESSION['answered_questions'] = 0;
}

function fetchTimerSetting()
{
    global $mysqli; // Ensure $mysqli is accessible within the function
    $query = "SELECT setting_value FROM quiz_settings WHERE setting_name = 'quiz_duration' ORDER BY updated_at DESC LIMIT 1";
    $result = $mysqli->query($query);

    if ($result && $row = $result->fetch_assoc()) {
        return $row['setting_value']; // Return the most recent timer duration in minutes
    } else {
        return 0; // Default value in case the setting is not found
    }
}
?>


<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Quiz</title>
    <link href="assets/css/bootstrap.min.css" rel="stylesheet">
    <!-- <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"> -->
</head>

<body>
    <div class="position-fixed top-0 end-0 p-3" style="z-index: 5">
        <div id="timer" class="bg-light p-2 rounded border">00:00:00</div>
    </div>

    <audio id="backgroundMusic" src="mathematricks.mp3" loop></audio>

    <?php if (!empty($questions)): ?>
        <?php foreach ($questions as $row): ?>

            <div class="container my-5">
                <!-- Check if the current question is ID 13 and include the passage -->
                <?php if ($row['id'] == 13): ?>
                    <div class="passage">
                        <!-- Your formatted passage text goes here, make sure not to use htmlspecialchars -->
                        <?php echo $passageHTML; ?>
                    </div>
                <?php endif; ?>

                <form action="process_answer.php" method="post" class="question-form">
                    <input type="hidden" name="question_id" value="<?= htmlspecialchars($row['id']); ?>">

                    <h4 class="mb-3">
                        <?= htmlspecialchars($row['question']) ?>
                    </h4>

                    <?php if (!empty($row['image_url'])): ?>
                        <div class="mb-3">
                            <img src="<?= htmlspecialchars($row['image_url']) ?>" alt="Question image" class="img-thumbnail">
                        </div>
                    <?php endif; ?>

                    <div class="mb-3">
                        <!-- Choice 1 -->
                        <!-- Check if the current question is of type ABSTRACT REASONING -->
<?php if ($row['subject'] == 'ABSTRACT REASONING'): ?>
    <!-- Hard-code the choices 1-8 for ABSTRACT REASONING -->
    <?php for ($i = 1; $i <= 8; $i++): ?>
        <div class="form-check">
            <input type="radio" id="choice<?= $i ?>-<?= $row['id']; ?>" name="answer"
                   value="<?= $i ?>" class="form-check-input">
            <label for="choice<?= $i ?>-<?= $row['id']; ?>" class="form-check-label">
                <?= $i ?>
            </label>
        </div>
    <?php endfor; ?>
<?php else: ?>
    <!-- For other subjects, display choices stored in the database -->
    <?php for ($i = 1; $i <= 4; $i++): ?>
        <div class="form-check">
            <input type="radio" id="choice<?= $i ?>-<?= $row['id']; ?>" name="answer"
                   value="<?= htmlspecialchars($row['choice' . $i]) ?>" class="form-check-input">
            <label for="choice<?= $i ?>-<?= $row['id']; ?>" class="form-check-label">
                <?= htmlspecialchars($row['choice' . $i]) ?>
            </label>
        </div>
    <?php endfor; ?>
<?php endif; ?>
                    </div>

                    <button type="submit" class="btn btn-primary submit-btn">Submit</button>
                </form>
            </div>
        <?php endforeach; ?>
    <?php endif; ?>



    <!-- Finish Quiz Button -->
    <div class="text-center mt-4">
        <button id="finishQuizBtn" class="btn btn-success btn-lg">Finish Quiz</button>
    </div>


    <!-- Additional scripts and HTML go here -->

    <!-- end of body -->
    <script>
        document.addEventListener('DOMContentLoaded', function () {
            var timerDurationInSeconds = <?php echo $timerDurationMinutes * 60; ?>; // Convert minutes to seconds
            initializeTimer(timerDurationInSeconds);
            // Handle form submissions
            document.querySelectorAll('.question-form').forEach(form => {
                form.addEventListener('submit', function (event) {
                    event.preventDefault(); // Prevent default form submission
                    submitForm(form); // Submit the form data
                });
            });

            // Handle "Finish Quiz" button click
            document.getElementById('finishQuizBtn').addEventListener('click', function () {
                finishQuiz(); // Manually finish the quiz
            });
        });

        function initializeTimer(duration) {
            let timeRemaining = duration;
            const timerDisplay = document.getElementById('timer');
            updateTimerDisplay(timeRemaining);

            const timer = setInterval(() => {
                timeRemaining--;
                updateTimerDisplay(timeRemaining);

                if (timeRemaining < 0) {
                    clearInterval(timer);
                    finishQuiz(true); // Finish the quiz due to time up
                }
            }, 1000);
        }

        function updateTimerDisplay(time) {
            const hours = Math.floor(time / 3600);
            time %= 3600; // Update time to remaining seconds after extracting hours
            const minutes = Math.floor(time / 60);
            const seconds = time % 60;
            document.getElementById('timer').textContent =
                `${hours < 10 ? '0' : ''}${hours}:` +
                `${minutes < 10 ? '0' : ''}${minutes}:` +
                `${seconds < 10 ? '0' : ''}${seconds}`;
        }


        function submitForm(form) {
            const submitButton = form.querySelector('.submit-btn');
            submitButton.disabled = true; // Disable the submit button to prevent multiple submissions

            const formData = new FormData(form);
            fetch('check_answer.php', {
                method: 'POST',
                body: formData
            })
                .then(response => response.json())
                .then(data => {
                    console.log(data);
                    // Update UI based on the response
                })
                .catch(error => console.error('Error:', error));
        }

        function finishQuiz(timeUp = false) {
            fetch('check_answer.php', {
                method: 'POST',
                headers: { 'Content-Type': 'application/x-www-form-urlencoded' },
                body: `quiz_finished=true&time_up=${timeUp}`
            })
                .then(response => response.json())
                .then(data => {
                    console.log("Quiz finished.", data);
                    window.location.href = 'finish.php'; // Redirect to result.php
                })
                .catch(error => console.error('Error:', error));
        }
    </script>
    <script>
        function disableButton(button) {
            button.disabled = true; // Disable the button
            button.innerText = 'Submitted'; // Optional: change button text     }
        }
    </script>
    <script>
        document.addEventListener('DOMContentLoaded', function () {
            var audio = document.getElementById("backgroundMusic");
            // Start with audio muted
            audio.muted = true;
        });

        function toggleSound() {
            var audio = document.getElementById("backgroundMusic");
            var icon = document.querySelector('#icon-button i');
            if (audio.muted) {
                audio.muted = false;
                audio.play(); // Play audio if it was not playing
                icon.classList.remove('fa-volume-mute');
                icon.classList.add('fa-volume-up');
            } else {
                audio.muted = true;
                icon.classList.remove('fa-volume-up');
                icon.classList.add('fa-volume-mute');
            }
        }
    </script>
    <script src="assets/js/jquery-3.5.1.slim.min.js"></script>
    <script src="assets/js/popper.min.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>
</body>

</html>