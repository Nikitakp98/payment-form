<?php

$name = $_POST['name'];
$phoneno = $_POST['phoneno'];
$email = $_POST['email'];
$gender = $_POST['gender'];
$amount = $_POST['amount'];
$gst = $_POST['gst'];
$totalamount = $_POST['totalamount'];

$conn = new mysqli('localhost','root','','reso');
if($conn->connect_error)
{
	die('Connection Failed : ' .$conn->connect_error);
}
else
{
	$stmt = $conn->prepare("insert into resodetail(name,phoneno,email,gender,amount,gst,totalamount)values(?,?,?,?,?,?,?)");
	$stmt->bind_param("sissisi",$name, $phoneno, $email, $gender,$amount, $gst, $totalamount);
	$stmt->execute();
	echo "Submitted Successfully..";
	$stmt->close();
	$conn->close();
}

?>