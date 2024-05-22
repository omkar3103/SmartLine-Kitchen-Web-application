
<?php
$email = $_POST['email'];

$conn = new mysqli('localhost','root','','smartline');
if($conn->connect_error){
    echo "$conn->connect_error";
    die("Connection Failed : ". $conn->connect_error);
} else {
    $stmt = $conn->prepare("insert into email_offer(email) values(?)");
    $stmt->bind_param("s", $email);
    $execval = $stmt->execute();
    echo "<script> alert('We Contact you soon.');</script>"; 
    header("Location:index.html");
    
    $stmt->close();
    $conn->close();
}
?>