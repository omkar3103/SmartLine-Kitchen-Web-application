<?php

$server = "localhost";
$user  = "root";
$pass = "";
$database = "smartline";

$conn = new mysqli("localhost","root","","smartline");
	if($conn->connect_error){
		die("Connection Failed!".$conn->connect_error);
	}
echo "Connected successfully";

session_start();



if(isset($_SESSION['username'])) {
    
}   


if(isset($_POST['submit'])) {
    $username = $_POST['username'];
    $password = ($_POST['password']);

    $sql = "SELECT * FROM login WHERE username = '$username' AND password = '$password'";
    $result = mysqli_query($conn, $sql);

    if(mysqli_num_rows($result) > 0) {
        $row = mysqli_fetch_assoc($result);
        $_SESSION['username'] = $row['username'];

        header("Location: admin_panel.php");
    } else {
         
        echo "Opps, Email or password is Wrong.";
        header("Location: admin_login.html");
    }
    
}



?>