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
    $userid = filter_input(INPUT_POST, 'userid');
    $oldname1 = filter_input(INPUT_POST, 'oldname1');
    $whatcolumn = filter_input(INPUT_POST, 'whatcolumn');
    $newname1 = filter_input(INPUT_POST, 'newname1');
    //$newname2 = filter_input(INPUT_POST, 'newname2');

    $query1 = "SELECT userinfo.userid
    FROM userinfo
  WHERE userinfo.userid = '$userid' and userinfo.$whatcolumn = '$oldname1'";


    $statement1 = $conn->query($query1);
    $temp1 = $statement1->fetchColumn(0);
    //  $temp2 = $statement1->fetchColumn(1);
    if ($temp1 != $userid)
    {
        echo "No Record Available";
        die();
    }

    else
    {

        $query = "UPDATE userinfo SET userinfo.$whatcolumn = '$newname1'
            WHERE userinfo.$whatcolumn = '$oldname1'";

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
