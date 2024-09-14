<?php
// Start the session
session_start();

// Check if the student name is set in the session, otherwise redirect or handle the case appropriately
if (!isset($_SESSION["name"])) {
    // Redirect to login page, or handle as appropriate for your application
    header("location: login.php");
    exit;
}

// Store the student name in a variable
$studentName = $_SESSION["first_name"] . ' ' . $_SESSION["middle_name"] . ' ' . $_SESSION["last_name"];
?>
<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link href="assets/css/bootstrap.min.css" rel="stylesheet">
    <title>Welcome | E-Entrance Exam</title>
    <style>
        body {
            background-color: #f8f9fa;
            font-family: 'Arial', sans-serif;
        }

        .container {
            padding-top: 30px;
        }

        .welcome-message {
            background: #ffffff;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            margin-bottom: 20px;
        }

        .form-control {
            border-radius: 0.25rem;
        }

        .btn-primary {
            background-color: #007bff;
            border-color: #007bff;
        }

        .invalid-feedback {
            display: none;
            width: 100%;
            margin-top: 0.25rem;
            font-size: 80%;
            color: #dc3545;
        }

        .form-check-input.is-invalid~.invalid-feedback {
            display: block;
        }

        .form-check-input.is-invalid {
            border-color: #dc3545;
            padding-right: calc(1.5em + 0.75rem);
            background-repeat: no-repeat;
            background-position: right calc(0.375em + 0.1875rem) center;
            background-size: calc(0.75em + 0.375rem) calc(0.75em + 0.375rem);
        }
    </style>
</head>

<body>
    <div class="container">
        <div class="row">
            <div class="col-md-8 offset-md-2">
                <div class="welcome-message">
                    <h1 class="display-4">Welcome, <?php echo htmlspecialchars($studentName); ?>!</h1>
                    <p class="lead">Please complete your profile below.</p>
                </div>
                <form method="post" action="updateStudent.php" class="needs-validation" novalidate>
    <div class="container p-4 bg-white shadow rounded">
        <script>
            (function () {
                'use strict';
                window.addEventListener('load', function () {
                    var forms = document.getElementsByClassName('needs-validation');
                    Array.prototype.filter.call(forms, function (form) {
                        form.addEventListener('submit', function (event) {
                            if (!form.checkValidity()) {
                                event.preventDefault();
                                event.stopPropagation();
                            }
                            form.classList.add('was-validated');
                        }, false);
                    });
                }, false);
            })();
        </script>

        <div class="row">
            <div class="col-md-4">
                <div class="form-group">
                    <label for="firstname">First Name</label>
                    <input type="text" class="form-control" id="firstname" name="firstname" placeholder="Enter first name" required value="<?php echo htmlspecialchars($_SESSION['first_name']); ?>">
                    <div class="invalid-feedback">First name is required.</div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="form-group">
                    <label for="middlename">Middle Name</label>
                    <input type="text" class="form-control" id="middlename" name="middlename" placeholder="Enter middle name" required pattern="[A-Za-z]+" value="<?php echo htmlspecialchars($_SESSION['middle_name']); ?>">
                    <div class="invalid-feedback">Middle name should contain only letters and is required.</div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="form-group">
                    <label for="lastname">Last Name</label>
                    <input type="text" class="form-control" id="lastname" name="lastname" placeholder="Enter last name" required value="<?php echo htmlspecialchars($_SESSION['last_name']); ?>">
                    <div class="invalid-feedback">Last name is required.</div>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-md-6">
                <div class="form-group">
                    <label for="course_first_preference">1st Course Preference</label>
                    <select class="form-control" id="course_first_preference" name="course_first_preference" required>
                        <option value="">Select your first course preference</option>
                        <option value="B.S. in Agriculture">B.S. in Agriculture</option>
                        <option value="B.S. in Information Technology">B.S. in Information Technology</option>
                        <option value="Bachelor of Secondary Education">Bachelor of Secondary Education</option>
                        <option value="B.S. in Fisheries">B.S. in Fisheries</option>
                        <option value="B.S. in Agri-Business">B.S. in Agri-Business</option>
                        <option value="B.S. in Criminology">B.S. in Criminology</option>
                    </select>
                    <div class="invalid-feedback">Please select your first course preference.</div>
                </div>
            </div>
            <div class="col-md-6">
                <div class="form-group">
                    <label for="course_second_preference">2nd Course Preference</label>
                    <select class="form-control" id="course_second_preference" name="course_second_preference" required>
                        <option value="">Select your second course preference</option>
                        <option value="B.S. in Agriculture">B.S. in Agriculture</option>
                        <option value="B.S. in Information Technology">B.S. in Information Technology</option>
                        <option value="Bachelor of Secondary Education">Bachelor of Secondary Education</option>
                        <option value="B.S. in Fisheries">B.S. in Fisheries</option>
                        <option value="B.S. in Agri-Business">B.S. in Agri-Business</option>
                        <option value="B.S. in Criminology">B.S. in Criminology</option>
                    </select>
                    <div class="invalid-feedback">Please select your second course preference.</div>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-md-6">
                <div class="form-group">
                    <label for="track_strand_taken">Track/Strand Taken</label>
                    <input type="text" class="form-control" id="track_strand_taken" name="track_strand_taken" placeholder="Enter track or strand" required>
                    <div class="invalid-feedback">Please enter the track or strand taken.</div>
                </div>
            </div>
            <div class="col-md-6">
                <div class="form-group">
                    <label for="school_last_attended">School Last Attended</label>
                    <input type="text" class="form-control" id="school_last_attended" name="school_last_attended" placeholder="Enter last attended school" required>
                    <div class="invalid-feedback">School last attended is required.</div>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-md-12">
                <div class="form-group">
                    <label for="school_address">School Address</label>
                    <textarea class="form-control" id="school_address" name="school_address" placeholder="Enter school address" required></textarea>
                    <div class="invalid-feedback">School address is required.</div>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-md-4">
                <div class="form-group">
                    <label for="enrollment_status">Enrollment Status</label>
                    <select class="form-control" id="enrollment_status" name="enrollment_status" required>
                        <option value="">Select your enrollment status</option>
                        <option value="Freshman">Freshman</option>
                        <option value="Transferee">Transferee</option>
                        <option value="Second Course">Second Course</option>
                    </select>
                    <div class="invalid-feedback">Please select an enrollment status.</div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="form-group">
                    <label for="zip_code">Zip Code</label>
                    <input type="text" class="form-control" id="zip_code" name="zip_code" placeholder="Enter zip code" required pattern="^\d{4,5}$">
                    <div class="invalid-feedback">Please enter a valid zip code (4-5 digits).</div>
                </div>
            </div>
            <div class="col-md-4">
                <div the="form-group">
                    <label for="birthday">Birthday</label>
                    <input type="date" class="form-control" id="birthday" name="birthday" required>
                    <div class="invalid-feedback">Birthday is required.</div>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-md-4">
                <div class="form-group">
                    <label for="sex">Sex</label>
                    <select class="form-control" id="sex" name="sex" required>
                        <option value="">Choose...</option>
                        <option value="Male">Male</option>
                        <option value="Female">Female</option>
                        <option value="Other">Other</option>
                    </select>
                    <div class="invalid-feedback">Please select a sex.</div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="form-group">
                    <label for="contact_number">Contact Number</label>
                    <input type="tel" class="form-control" id="contact_number" name="contact_number" placeholder="Enter contact number" required pattern="^\+?\d{10,15}$">
                    <div class="invalid-feedback">Please enter a valid contact number (10-15 digits).</div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="form-group">
                    <label for="email_address">Email Address</label>
                    <input type="email" class="form-control" id="email_address" name="email_address" placeholder="Enter email address" required>
                    <div class="invalid-feedback">Please enter a valid email address.</div>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-md-12">
                <div class="form-group">
                    <label for="home_address">Home Address</label>
                    <textarea class="form-control" id="home_address" name="home_address" placeholder="Enter home address" required></textarea>
                    <div class="invalid-feedback">Home address is required.</div>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-md-6">
                <div class="form-group">
                    <label for="GWA">GWA</label>
                    <input type="number" class="form-control" id="GWA" name="GWA" placeholder="Enter GWA" required step="0.1" min="75" max="100">
                    <div class="invalid-feedback">Please enter a valid GWA between 75 and 100.</div>
                </div>
            </div>
        </div>
        <button type="submit" class="btn btn-primary">Submit</button>
        <div class="mt-4">
            <a href="clientLogout.php" class="text-primary">Log Out</a>
        </div>
    </div>
</form>

            </div>
        </div>
    </div>

    <script src="assets/js/jquery-3.5.1.slim.min.js"></script>
    <script src="assets/js/popper.min.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>
</body>

</html>