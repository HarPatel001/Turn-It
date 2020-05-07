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
    $pname = filter_input(INPUT_POST, 'pname');
    $color = filter_input(INPUT_POST, 'color');
    $size = filter_input(INPUT_POST, 'size');
    $ptype = filter_input(INPUT_POST, 'ptype');
    $baseprice = filter_input(INPUT_POST, 'baseprice');
    $condition = filter_input(INPUT_POST, 'condition');

    if($condition == "sellable")
    {

        $query1 = "INSERT INTO product (productid,pname,color,size,ptype,baseprice)
                  values ('$productid','$pname','$color','$size','$ptype','$baseprice')";
        $query2 = "INSERT INTO sellable (productid)
                  values ('$productid')";


        if ($conn->query($query1) and $conn->query($query2) )
        {
            echo "New record is inserted sucessfully";
        }
        else
        {
            echo "Error: Something's wrong, I can feel it";
        }
    }

    else if($condition == "unsellable")
    {

        $query1 = "INSERT INTO product (productid,pname,color,size,ptype,baseprice)
                  values ('$productid','$pname','$color','$size','$ptype','$baseprice')";

        $query2 = "INSERT INTO unsellable (productid)
                  values ('$productid')";

        if ($conn->query($query1) and $conn->query($query2) )
        {
            echo "New record is inserted sucessfully";
        }
        else
        {
            echo "Error: Something's wrong, I can feel it";
        }
    }


    // if ($conn->query($query1) and $conn->query($query2) )
    // {
    //     echo "New record is inserted sucessfully";
    // }
    // else
    // {
    //     echo "Error: Something's wrong, I can feel it";
    // }
}
?>
