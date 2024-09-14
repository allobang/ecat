<?php
session_start();

if (!isset($_SESSION['logged_in']) || $_SESSION['logged_in'] !== true) {
    header("Location: login.php");
    exit;
}

// Include the database connection file for other operations if necessary
include 'connection.php';
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
                    <div class="page-title">
                        <h3>Test Results</h3>
                    </div>
                    <div class="box box-primary">
                        <div class="box-body">
                            <div class="row">
                                <div class="col">
                                    <input type="text" id="searchInput" class="form-control" placeholder="Search by name...">
                                </div>
                            </div>
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
                                    <!-- Data will be inserted here via JavaScript -->
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <?php include 'layout/foot.php'; ?>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script>
    $(document).ready(function() {
        var searchTimeout;

        function fetchData(searchQuery) {
            $.ajax({
                url: 'fetchData.php',
                type: 'get',
                data: {search: searchQuery},
                dataType: 'json',
                success: function(data) {
                    var html = '';
                    data.forEach(function(row) {
                        html += '<tr>' +
                                    '<td>' + row.lastname + ', ' + row.firstname + '</td>' +
                                    '<td>' + row.English + '</td>' +
                                    '<td>' + row.Science + '</td>' +
                                    '<td>' + row.Math + '</td>' +
                                    '<td>' + row.Social_Science + '</td>' +
                                    '<td>' + row.Filipino + '</td>' +
                                    '<td>' + row.Abstract_Reasoning + '</td>' +
                                    '<td>' + row.total_correct_answers + '</td>' +
                                    '<td class="text-end">' +
                                        '<a href="#" class="btn btn-primary btn-sm"><i class="fa fa-eye"></i> View</a>' +
                                        '<a href="#" class="btn btn-secondary btn-sm"><i class="fa fa-print"></i> Print</a>' +
                                    '</td>' +
                                '</tr>';
                    });
                    $('#dataTables-example tbody').html(html);
                }
            });
        }

        $('#searchInput').on('keyup', function() {
            clearTimeout(searchTimeout);
            var searchQuery = $(this).val();
            searchTimeout = setTimeout(function() {
                fetchData(searchQuery);
            }, 300); // Fetch data after a pause of 300 ms
        });
    });
    </script>
</body>
</html>
