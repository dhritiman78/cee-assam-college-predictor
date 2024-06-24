<?php
session_start();
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <!--<meta name="viewport" content="width=device-width, initial-scale=1.0">-->
    <title>College Cutoffs</title>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-color: #f8f9fa;
        }
        .container {
            margin-top: 20px;
        }
        .formbox {
            margin-bottom: 20px;
        }
        h3 {
            color: #dc3545;
        }
    </style>
</head>
<body>
    <?php
    include 'components/dbconn.php';
    include 'components/nav.php';
    ?>
    <div class="container">
        <div class="card">
            <div class="card-header">
                <h4>Select College for the cut off's of 2023</h4>
            </div>
            <div class="card-body">
                <form action="cutoffs.php" method="post">
                    <div class="form-group formbox">
                        <label for="coll">College:</label>
                        <select id="coll" name="coll" class="form-control">
                        <?php
                        if ($_SERVER['REQUEST_METHOD'] == "POST" && isset($_POST['coll'])) {
            $_SESSION['college'] = $_POST['coll'];
            $coll = $_SESSION['college'];
        } else {
            $coll = "Assam Engineering College";
        }
                        $colleges = array(
                            "Assam Engineering College",
                            "Jorhat Engineering College",
                            "Jorhat Institute of Science and Technology",
                            "Barak Valley Engineering College",
                            "Bineswar Brahma Engineering College",
                            "Dhemaji Engineering College",
                            "Golaghat Engineering College"
                        );
                        foreach ($colleges as $college) {
                            $selected = ($_SESSION['college'] ?? '') === $college ? 'selected="selected"' : '';
                            echo '<option value="' . htmlspecialchars($college) . '" ' . $selected . '>' . htmlspecialchars($college) . '</option>';
                        }
                        ?>
                    </select>

                    </div>
                    <button type="submit" class="btn btn-primary">Submit</button>
                </form>
            </div>
        </div>
        <!--<div>-->
        <!--    *Some cutoff ranks have been adjusted due to the unavailability of required data, based on approximations from differences in other caste categories.-->
        <!--</div>-->
        <?php
        $sql1 = "SELECT * FROM `collegelist` WHERE `coll` = '$coll' ORDER BY `branch` ASC;";
        $res1 = mysqli_query($conn, $sql1);
        $numRow1 = mysqli_num_rows($res1);

        if ($numRow1 == 0) {
            echo '<div class="text-center mt-4"><h3>No colleges found for the selected option</h3></div>';
        } else {
            echo '<div class="container mt-4">
                    <table id="myTable" class="table table-bordered table-striped">
                        <thead class="thead-dark">
                            <tr>
                                <th>Branch</th>
                                <th>Caste</th>
                                <th>Round 1</th>
                                <th>Round 2</th>
                                <th>Round 3</th>
                                <th>Round 4</th>
                                <th>Round 5</th>
                            </tr>
                        </thead>
                        <tbody>';
            while ($data1 = mysqli_fetch_assoc($res1)) {
                echo '<tr>
                        <td>' . $data1['branch'] . '</td>
                        <td>' . $data1['caste'] . '</td>
                        <td>' . $data1['r1'] . '</td>
                        <td>' . $data1['r2'] . '</td>
                        <td>' . $data1['r3'] . '</td>
                        <td>' . $data1['r4'] . '</td>
                        <td>' . $data1['r5'] . '</td>
                    </tr>';
            }
            echo '</tbody>
                </table>
            </div>';
        }
        ?>
    </div>
    <?php
    include 'components/footerbar.php';
    ?>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
