<?php
$host = "localhost";
$dbusername = "root";
$dbpassword = "";
$dbname = "turnit";
// Create connection
$conn = new PDO('mysql:host=' . $host . ';dbname=' . $dbname, $dbusername, $dbpassword);
// Check connection
if (!$conn)
{
    die("Connection failed");
}

else
{
    $password1 = filter_input(INPUT_POST, 'password-emp');
    $username = filter_input(INPUT_POST, 'username');

    $query1 = "SELECT username, password
    FROM employee
    WHERE  username = '$username' and password= '$password1' ";

    $statement1 = $conn->query($query1);
    $temp1 = $statement1->fetchColumn(0);
    $statement2 = $conn->query($query1);
    $temp2 = $statement2->fetchColumn(1);
 


    if($temp1 == $username AND $temp2 == $password1)
    {
      header("location:homepage.php");
    }
    else{
      echo "please go back to login. Credentials are wrong";
    }
}
