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
    $oldname1 = filter_input(INPUT_POST, 'oldname1');
    $whatcolumn = filter_input(INPUT_POST, 'whatcolumn');

    if($whatcolumn == 'price'){
        $query1 = "SELECT price
      FROM info
      WHERE  SUBSTRING(Price,2,5) < '$oldname1'";


        $statement1 = $conn->query($query1);
        $temp1 = $statement1->fetchColumn(0);
        //  $temp2 = $statement1->fetchColumn(1);
        if ($temp1 == NULL)
        {
            echo "No Record Available";
            die();
        }

        else
        {

            $query = "SELECT *
        FROM info
        WHERE SUBSTRING(Price,2,5) < '$oldname1'";

            echo "Filtered based on price < '$oldname1'";
            echo nl2br(" \n \n");

            $stmt = $conn->prepare($query);
            $stmt->execute(array(
                ':whatcolumn' => $whatcolumn
            ));
            $rows = $stmt->fetchAll(PDO::FETCH_ASSOC);
        }
    }
    else{
        $query1 = "SELECT price
      FROM INFO
      WHERE INFO.$whatcolumn = '$oldname1'";

        echo "Filtered based on '$whatcolumn' = '$oldname1'";
        echo nl2br(" \n \n");

        $statement1 = $conn->query($query1);
        $temp1 = $statement1->fetchColumn(0);
        //  $temp2 = $statement1->fetchColumn(1);
        if ($temp1 == NULL)
        {
            echo "No Record Available";
            die();
        }

        else
        {

            $query = "SELECT *
        FROM INFO
        WHERE INFO.$whatcolumn = '$oldname1'";

            $stmt = $conn->prepare($query);
            $stmt->execute(array(
                ':whatcolumn' => $whatcolumn
            ));
            $rows = $stmt->fetchAll(PDO::FETCH_ASSOC);
        }
    }
}
?>

<!DOCTYPE html>
<html lang = "en">
                 <head>
                      <title> Select </title>
                                  <link rel="stylesheet" href="style.css">
                                                             </head>
                                                                   <body>
                                                                        <table class="center">
<?php
                                                                                    echo '<tr class="heading">';
echo "<th>PID</th>";
echo "<th>PName</th>";
echo "<th>Color</th>";
echo "<th>Size</th>";
echo "<th>Type</th>";
echo "<th>Price</th>";
echo "<th>Quantity</th>";
echo '</tr>';
foreach ($rows as $row)
{


    echo '<tr>';
    echo "<td>".$row["PID"]."</td>";
    echo "<td>".$row["PName"]."</td>";
    echo "<td>".$row["Color"]."</td>";
    echo "<td>".$row["Size"]."</td>";
    echo "<td>".$row["Type"]."</td>";
    echo "<td>".$row["Price"]."</td>";
    echo "<td>".$row["Quantity"]."</td>";
    echo '</tr>';
    
}
?>
</table>
</body>
</html>
