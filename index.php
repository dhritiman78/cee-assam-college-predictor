<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
        body {
            background-color: #F6F6F6;
            font-family: 'Arial', sans-serif;
            margin: 0;
            padding: 0;
            height: 100vh;
        }
        .maindiv {
            background-color: white;
            box-shadow: 0 .5rem 1rem rgba(0,0,0,.15);
            width: 95%;
            max-width: 600px;
            margin: 20px auto;
            padding: 20px;
            border-radius: 22px;
            text-align: center;
        }
        .maindiv h3 {
            margin: 0 0 20px;
            font-size: 24px;
        }
        .formbox {
            display: flex;
            flex-direction: column;
            margin: 10px 0;
        }
        .formbox label {
            margin-bottom: 5px;
            font-weight: bold;
            font-size: 16px;
        }
        .formbox input, .formbox select {
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 16px;
            width: 100%;
            box-sizing: border-box;
        }
        .formbox input[type="submit"] {
            background-color: #198754;
            color: white;
            border: none;
            cursor: pointer;
            transition: background-color 0.3s;
        }
        .formbox input[type="submit"]:hover {
            background-color: #157a43;
        }
        @media (min-width: 820px) {
            .maindiv {
                width: 50%;
            }
        }
        h1 {
            font-size: 28px;
            margin-bottom: 20px;
        }
    </style>
</head>
<body>
    <?php include "components/nav.php"; ?>
    <div class="maindiv">
    Click <a href="cutoffs.php">here </a> to see the cut offs for the year 2023 till Round 5
    </div>
    <div class="maindiv">
        <h1>Enter your CEE 2024 rank and caste</h1>
        <h3>Enter here</h3>
        <hr>
        <form action="Colleges.php" method="post">
            <div class="formbox">
                <label for="rank">Enter your rank</label>
                <input type="text" name="rank" id="rank" placeholder="Enter your rank">
            </div>
            <div class="formbox">
                <label for="caste">Choose your caste:</label>
                <select id="caste" name="caste">
                    <option value="UR">UR</option>
                    <option value="EWS">EWS</option>
                    <option value="OBC/MOBC">OBC/MOBC</option>
                    <option value="SC">SC</option>
                    <option value="ST(P)">ST(P)</option>
                    <option value="ST(H)">ST(H)</option>
                </select>
            </div>
            <div class="formbox">
                <label for="round">Round no. :</label>
                <select id="round" name="round">
                    <option value="r1">Round 1</option>
                    <option value="r2">Round 2</option>
                    <option value="r3">Round 3</option>
                    <option value="r4">Round 4</option>
                    <option value="r5">Round 5</option>
                </select>
            </div>
            <div class="formbox">
                <input type="submit" value="Predict">
            </div>
        </form>
    </div>
    <?php
    include 'components/footerbar.php';
    ?>
</body>
</html>
