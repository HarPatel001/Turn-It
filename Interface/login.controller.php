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
    $password = filter_input(INPUT_POST, 'password');
    $email = filter_input(INPUT_POST, 'email');

    $query1 = "SELECT email, password
    FROM userinfo
    WHERE  email = '$email' and password= '$password' ";

    $statement1 = $conn->query($query1);
    $temp1 = $statement1->fetchColumn(0);
    $statement2 = $conn->query($query1);
    $temp2 = $statement2->fetchColumn(1);



    if($temp1 == $email AND $temp2 == $password)
    {
        header("location:user-homepage.php");

    }
    else{
        echo "please go back to login. Credentials are wrong";
    }
}
