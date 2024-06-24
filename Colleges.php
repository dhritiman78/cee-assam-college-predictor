<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
        body{
            background-color: #F6F6F6;
        }
        @media (min-width: 820px) {
            .headiv{
        width: 70%;
        margin: 75px auto;
        box-shadow: 0 .5rem 1rem rgba(0,0,0,.15);
        border-radius: 22px;
        padding: 5px 5px;
        overflow: auto;
    }
    .pref{
        width: 70%;
        margin: 75px auto;
        box-shadow: 0 .5rem 1rem rgba(0,0,0,.15);
        border-radius: 22px;
        padding: 5px 5px;
        overflow: auto;
    }
       }
       @media (max-width: 820px) {
        .headiv{
        width: 90%;
        margin: 75px auto;
        box-shadow: 0 .5rem 1rem rgba(0,0,0,.15);
        border-radius: 22px;
        padding: 5px 5px;
        overflow: auto;
    }
    td{
        padding: 13px 13px;
    }
    th{
        padding: 13px 13px;
    }
    .pref{
        width: 90%;
        margin: 75px auto;
        box-shadow: 0 .5rem 1rem rgba(0,0,0,.15);
        border-radius: 22px;
        padding: 5px 5px;
        overflow: auto;
    }
    }
    table {
            width: 100%;
        }
        th, td {
            padding: 13px;
            text-align: left;
        }
        th {
            background-color: #007BFF;
            color: #fff;
        }
        td {
            background-color: #f9f9f9;
        }
        table.dataTable thead th, table.dataTable thead td {
            padding: 10px 18px;
            border-bottom: 1px solid #e9ecef;
        }
    </style>
     <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.2/css/bootstrap.min.css">
     <link rel="stylesheet" href="https://cdn.datatables.net/1.10.21/css/dataTables.bootstrap4.min.css">
</head>
<body>
    <?php
    include "components/nav.php";
    include "components/dbconn.php";
    if ($_SERVER['REQUEST_METHOD']=="POST"){
        $rank = $_POST['rank'];
        $caste = $_POST['caste'];
        if($rank == '' || is_numeric($rank) == false || $rank == 0) {
            echo '<h1 style="text-align: center;">Invalid rank!<h1>';
            exit;
        }
        $round = $_POST['round'];
    }
    ?>
    <div class="headiv">
        <div style="margin: 3px 3px;"><h2>Your Details</h2></div>
        <hr>
        <div>
            <table>
                <thead>
                    <tr>
                    <th>Rank</th>
                    <th>Caste</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td><?php echo $rank;?></td>
                        <td><?php 
                            echo $caste;
                         ?></td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>
    <div class="pref">
        <div style="margin: 3px 3px;">
            <h2>Here is the list of predicted colleges and branch</h2>
            <hr>
        </div>
    <?php

    $sql1 = "SELECT * FROM `collegelist`  WHERE `$round` >= '$rank' AND `caste` = '$caste';";
    $res1 = mysqli_query($conn,$sql1);
    $numRow1 = mysqli_num_rows($res1);
    if($numRow1 == 0){
         echo '<div style="text-align: center;"><h3>
            No colleges found in this rank
            </h3></div>';
    }
    else{
        echo '<div class="container">
  <table id="myTable" class="table my-3">
    <thead>
        <tr>
        <th>College</th>
        <th>Branch (CR)</th>
        </tr>
    </thead>
    <tbody>';
         for ($k=1; $k <= $numRow1 ; $k++) { 
            $data1 = mysqli_fetch_assoc($res1);
    echo '<tr>
        <td>'.$data1['coll'].'</td>
        <td>'.$data1['branch'].' ('.$data1[$round].')</td>
        </tr>'; 
         }
         echo '</tbody>
</table>
</div>';
    }
    ?>
    </tbody>
</table>
</div>
    </div>
    <?php
    include 'components/footerbar.php';
    ?>
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script src="https://cdn.datatables.net/1.10.21/js/jquery.dataTables.min.js"></script>
    <script src="https://cdn.datatables.net/1.10.21/js/dataTables.bootstrap4.min.js"></script>
    <script>
        $(document).ready(function() {
            $('#myTable').DataTable({
                "paging": true,
                "searching": true,
                "ordering": true,
                "info": true
            });
        });
    </script>
</body>
</html>
