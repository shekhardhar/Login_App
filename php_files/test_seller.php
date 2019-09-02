<?php
$servername = "localhost:3331";
$username = "root";
$password = "root";
$dbname = "my_db";
// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
} 
//echo "Connected successfully";

$email = $_POST['email'];
$password = $_POST['password'];

$sql = "SELECT * FROM seller";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    while($row = $result->fetch_assoc()) {
    	if($row['email'] == $email and $row['password'] == $password){
    		header('Content-type: application/json');
    		echo json_encode($row);
    		break;
    	}
    }
}



?>
