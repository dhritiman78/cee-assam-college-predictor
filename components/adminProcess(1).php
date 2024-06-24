<?php
 if($_SERVER['REQUEST_METHOD']="POST"){
        $pass1 = $_POST['pass'];
    }
    if($pass1 == "r2Vz*$5QCA8Vh"){
        session_start();
        $_SESSION['loggedin'] = true;
    }
    else{
        echo '<script>if (confirm("Incorrect Password!")) {
        window.location.href = "../admin.php";
        }</script>';
    }
    if($_SESSION['loggedin'] == true){
         header("location: ../adminPage.php");
    }
    ?>