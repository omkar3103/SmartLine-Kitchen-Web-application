<?php
	$name = $_POST['name'];
	$phone = $_POST['phone'];
	$email = $_POST['email'];
	$message = $_POST['message'];
	

	$conn = new mysqli('localhost','root','','smartline');
	if($conn->connect_error){
		echo "$conn->connect_error";
		die("Connection Failed : ". $conn->connect_error);
	} else {
		$stmt = $conn->prepare("insert into feedback(name, phone, email, message) values(?, ?, ?, ?)");
		$stmt->bind_param("siss", $name, $phone, $email, $message);
		$execval = $stmt->execute(); 
        header("Location:index.html");
		
        
		$stmt->close();
		$conn->close();
	}
?>