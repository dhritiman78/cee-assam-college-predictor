<?php
session_start();
     if($_SESSION['loggedin'] == false){
         header("location: adminLogin.php");
         exit;
    }
require "dbconn.php";
 if ($_SERVER['REQUEST_METHOD']=="POST"){
        $crank = $_POST['crank'];
        $sl = $_POST['sl'];
        $round = $_SESSION['round'];
    }
    $sql2 = "UPDATE `collegelist` SET `$round` = '$crank' WHERE `collegelist`.`Sl no.` = $sl;";
    $res2 = mysqli_query($conn,$sql2);
    if($res2){
        echo '<script>
        if (confirm("Successfully updated!")) {
        window.location.href = "../adminPage.php#workingarea'.$sl.'";
        }
        </script>';
    }
    else{
         echo '<script>
         if (confirm("Something went wrong!")) {
        window.location.href = "../adminPage.php#workingarea'.$sl.'";
        }
        </script>';
    }
?>