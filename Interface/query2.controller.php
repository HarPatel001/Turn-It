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
    $essn = filter_input(INPUT_POST, 'essn');
    $oldname1 = filter_input(INPUT_POST, 'oldname1');
    //  $oldname2 = filter_input(INPUT_POST, 'oldname2');
    $newname1 = filter_input(INPUT_POST, 'newname1');
    //$newname2 = filter_input(INPUT_POST, 'newname2');

    $query1 = "SELECT E.ssn,D.name, D.essn
  FROM employee AS E, dependent AS D
  WHERE D.name = '$oldname1' AND D.essn = E.ssn";


    $statement1 = $conn->query($query1);
    $temp1 = $statement1->fetchColumn(0);
    //  $temp2 = $statement1->fetchColumn(1);
    if ($temp1 != $essn)
    {
        echo "No Record Available";
        die();
    }

    else
    {

        $query = "UPDATE dependent SET dependent.name = '$newname1'
            WHERE dependent.name = '$oldname1'";

        if ($conn->query($query))
        {

            echo nl2br("Record updated sucessfully. \n $oldname1 has been updated to $newname1");

        }
        else
        {
            echo "Error: Something's wrong, I can feel it";
        }
    }
}
?>
