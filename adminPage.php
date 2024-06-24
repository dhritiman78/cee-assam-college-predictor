<?php
session_start();
if ($_SESSION['loggedin'] == false) {
    header("location: adminLogin.php");
    exit;
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Page</title>
    <style>
        body {
            background-color: #F6F6F6;
            font-family: 'Arial', sans-serif;
            margin: 0;
            padding: 0;
        }
        .headiv, .pref {
            background-color: white;
            box-shadow: 0 .5rem 1rem rgba(0,0,0,.15);
            border-radius: 22px;
            margin: 20px auto;
            padding: 20px;
            overflow: hidden;
            width: 90%;
            max-width: 800px;
            text-align: center;
        }
        .headiv h2, .pref h2 {
            margin: 0 0 20px;
            font-size: 24px;
        }
        .formbox {
            margin: 15px 0;
            display: flex;
            flex-direction: column;
            align-items: center;
        }
        .formbox label {
            font-weight: bold;
            font-size: 16px;
            margin-bottom: 5px;
        }
        .formbox select, .formbox input[type="text"], .formbox input[type="submit"] {
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 16px;
            width: 100%;
            max-width: 300px;
            box-sizing: border-box;
            margin-bottom: 10px;
        }
        .formbox input[type="submit"] {
            background-color: #006dff;
            color: white;
            border: none;
            cursor: pointer;
            transition: background-color 0.3s;
        }
        .formbox input[type="submit"]:hover {
            background-color: #0056cc;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }
        th, td {
            padding: 15px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }
        th {
            background-color: #f2f2f2;
        }
        .container {
            overflow-x: auto;
        }
        @media (max-width: 820px) {
            .headiv, .pref {
                width: 95%;
            }
            th, td {
                font-size: 14px;
                padding: 10px;
            }
        }
    </style>
</head>
<body>
    <?php include "components/nav.php"; ?>
    <?php require "components/dbconn.php"; ?>
    <?php
    if ($_SERVER['REQUEST_METHOD'] == "POST") {
        $_SESSION['coll'] = $_POST['coll'];
        $_SESSION['caste'] = $_POST['caste'];
        $_SESSION['round'] = $_POST['round'];
    }
    ?>
    <div class="headiv">
        <h2>Welcome to the admin page</h2>
    </div>
    <div class="pref">
        <h2>Select the following</h2>
        <hr>
        <form action="adminPage.php" method="post">
            <div class="formbox">
                <label for="round">Round no. :</label>
                <select id="round" name="round">
                    <option value="r1" <?php if (isset($_SESSION['round']) && $_SESSION['round'] == 'r1') echo 'selected'; ?>>Round 1</option>
                    <option value="r2" <?php if (isset($_SESSION['round']) && $_SESSION['round'] == 'r2') echo 'selected'; ?>>Round 2</option>
                    <option value="r3" <?php if (isset($_SESSION['round']) && $_SESSION['round'] == 'r3') echo 'selected'; ?>>Round 3</option>
                    <option value="r4" <?php if (isset($_SESSION['round']) && $_SESSION['round'] == 'r4') echo 'selected'; ?>>Round 4</option>
                    <option value="r5" <?php if (isset($_SESSION['round']) && $_SESSION['round'] == 'r5') echo 'selected'; ?>>Round 5</option>
                </select>
            </div>
            <div class="formbox">
                <label for="coll">College:</label>
                <select id="coll" name="coll">
                    <option value="Assam Engineering College" <?php if (isset($_SESSION['coll']) && $_SESSION['coll'] == 'Assam Engineering College') echo 'selected'; ?>>Assam Engineering College</option>
                    <option value="Jorhat Engineering College" <?php if (isset($_SESSION['coll']) && $_SESSION['coll'] == 'Jorhat Engineering College') echo 'selected'; ?>>Jorhat Engineering College</option>
                    <option value="Jorhat Institute of Science and Technology" <?php if (isset($_SESSION['coll']) && $_SESSION['coll'] == 'Jorhat Institute of Science and Technology') echo 'selected'; ?>>Jorhat Institute of Science and Technology</option>
                    <option value="Barak Valley Engineering College" <?php if (isset($_SESSION['coll']) && $_SESSION['coll'] == 'Barak Valley Engineering College') echo 'selected'; ?>>Barak Valley Engineering College</option>
                    <option value="Bineswar Brahma Engineering College" <?php if (isset($_SESSION['coll']) && $_SESSION['coll'] == 'Bineswar Brahma Engineering College') echo 'selected'; ?>>Bineswar Brahma Engineering College</option>
                    <option value="Dhemaji Engineering College" <?php if (isset($_SESSION['coll']) && $_SESSION['coll'] == 'Dhemaji Engineering College') echo 'selected'; ?>>Dhemaji Engineering College</option>
                    <option value="Golaghat Engineering College" <?php if (isset($_SESSION['coll']) && $_SESSION['coll'] == 'Golaghat Engineering College') echo 'selected'; ?>>Golaghat Engineering College</option>
                </select>
            </div>
            <div class="formbox">
                <label for="caste">Caste:</label>
                <select id="caste" name="caste">
                    <option value="UR" <?php if (isset($_SESSION['caste']) && $_SESSION['caste'] == 'UR') echo 'selected'; ?>>UR</option>
                    <option value="EWS" <?php if (isset($_SESSION['caste']) && $_SESSION['caste'] == 'EWS') echo 'selected'; ?>>EWS</option>
                    <option value="OBC/MOBC" <?php if (isset($_SESSION['caste']) && $_SESSION['caste'] == 'OBC/MOBC') echo 'selected'; ?>>OBC/MOBC</option>
                    <option value="SC" <?php if (isset($_SESSION['caste']) && $_SESSION['caste'] == 'SC') echo 'selected'; ?>>SC</option>
                    <option value="ST(H)" <?php if (isset($_SESSION['caste']) && $_SESSION['caste'] == 'ST(H)') echo 'selected'; ?>>ST(H)</option>
                    <option value="ST(P)" <?php if (isset($_SESSION['caste']) && $_SESSION['caste'] == 'ST(P)') echo 'selected'; ?>>ST(P)</option>
                </select>
            </div>
            <div class="formbox">
                <input type="submit" value="Apply">
            </div>
        </form>
        <?php
        if (isset($_SESSION['coll']) && isset($_SESSION['caste'])) {
            $coll = $_SESSION['coll'];
            $caste = $_SESSION['caste'];
            $round = $_SESSION['round'];
            $sql1 = "SELECT * FROM `collegelist` WHERE `coll` = '$coll' AND `caste` = '$caste';";
            $res1 = mysqli_query($conn, $sql1);
            $numRow1 = mysqli_num_rows($res1);
            if ($numRow1 > 0) {
                echo '<hr>
                <div style="margin: 3px 3px;">
                    <h2 style="color: blue;">' . $coll . '</h2>
                    <h2>(For <span style="color: red;">' . $caste . '</span> and <span style="color: red;">';
                    switch ($round) {
                        case 'r1': echo 'Round 1'; break;
                        case 'r2': echo 'Round 2'; break;
                        case 'r3': echo 'Round 3'; break;
                        case 'r4': echo 'Round 4'; break;
                        default: echo 'Round 5'; break;
                    }
                    echo '</span>)</h2>
                    <hr>
                </div>
                <div class="container">
                    <table>
                        <thead>
                            <tr>
                                <th>Branch</th>
                                <th>Cut off rank</th>
                            </tr>
                        </thead>
                        <tbody id="workingarea">';
                        while ($data1 = mysqli_fetch_assoc($res1)) {
                            echo '<tr>
                                <form action="components/adminUpdate.php" method="post">
                                    <td>' . $data1['branch'] . '<input type="text" style="display: none;" name="sl" value="' . $data1['Sl no.'] . '"></td>
                                    <td><input type="text" id="workingarea'.$data1['Sl no.'].'" name="crank" value="' . $data1[$round] . '" style="width: 100%; padding: 10px; box-sizing: border-box;">
                                    <input type="submit" value="Update" style="padding: 10px 20px; margin-left: 10px; margin-top: 4px;"></td>
                                </form>
                            </tr>';
                        }
                        echo '</tbody>
                    </table>
                </div>';
            }
        }
        ?>
    </div>
</body>
</html>
