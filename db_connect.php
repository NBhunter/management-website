<?php 
$conn= new mysqli('localhost','root','','tonybedv_db')or die("Could not connect to mysql".mysqli_error($con));
 mysqli_set_charset($conn, 'UTF8');