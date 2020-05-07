<html>
    <head>
	<title> query4 </title>
	
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

	<link rel="stylesheet" href="style.css">
    </head>
    <body>

	<div class="container">
	    <div class="row">
		<div class="col-md-4 offset-md-4 form-div">
		    
		    <form method="post" action="query4.controller.php">
			<h3 class="text-center" style="color:black; padding-bottom:5px">Delete Product</h3>
			
			<div class="form-group">
			    <label id="label" for="productid"> Product Id </label> </br>
			    <input type="text" name="productid" placeholder=" Enter the Product Id" class="form-control form-control-lg"> </br>
			</div>
			
			<div class="form-group">
			    <input type="submit" value="Delete Data" class="btn btn-danger btn-block btn-lg">
			</div>
			
		    </form>
		</div>
	    </div>
	</div>

    </body>
</html>
