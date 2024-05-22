<?php
	$name = $_POST['name'];
	$phone = $_POST['phone'];
	$date = date('Y-m-d',strtotime($_POST['date']));
	$time = $_POST['time'];
	$email = $_POST['email'];
	$address = $_POST['address'];
	

	$conn = new mysqli('localhost','root','','smartline');
	if($conn->connect_error){
		echo "$conn->connect_error";
		die("Connection Failed : ". $conn->connect_error);
	} else {
		$stmt = $conn->prepare("insert into book_kitchen(name, phone, date, time, email, address) values(?, ?, ?, ?, ?,?)");
		$stmt->bind_param("sissss", $name, $phone, $date, $time, $email, $address);
		$execval = $stmt->execute();
        echo "<script> alert('We Contact you soon.');</script>"; 
		header("Location:index.html");
        
		$stmt->close();
		$conn->close();
	}
?>