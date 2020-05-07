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

    $productid = filter_input(INPUT_POST, 'productid');

    $tempquery = "SELECT productid FROM sold WHERE productid='$productid'";
    $statement = $conn->query($tempquery);
    $temp = $statement->fetchColumn(0);

    $tempquery2 = "SELECT productid FROM unsold WHERE productid='$productid'";
    $statement2 = $conn->query($tempquery2);
    $temp2 = $statement2->fetchColumn(0);
    //  echo $temp;
    if ($temp == $productid || $temp2 == $productid  )
    {
        echo "Can't delete it";

    }
    else
    {
        $tempquery1 = "SELECT productid FROM auctionplatform WHERE productid='$productid'";
        $statement1 = $conn->query($tempquery1);
        $temp1 = $statement1->fetchColumn(0);
        if ($temp1 == $productid)
        {
            //  echo $qas;
            $query1 = "DELETE FROM auctionplatform WHERE productid='$productid'";
            $query2 = "DELETE FROM sellable WHERE productid='$productid'";
            $query3 = "DELETE FROM product WHERE productid='$productid'";

            if (($conn->query($query1)) and ($conn->query($query2)) and ($conn->query($query3)))
            {
                echo "Record Deleted successfully";
            }

            //echo "Record not found";

        }
        else
        {
            echo "Error: Something's wrong, I can feel it";
        }
    }

    $conn = null;
}
?>
