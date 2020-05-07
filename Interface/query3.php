<html>
    <head>
	<title> Filter Auction Products </title>

	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

	<link rel="stylesheet" href="style.css">
    </head>
    <body>

	<div class="container">
	    <div class="row">
		<div class="col-md-4 offset-md-4 form-div">
		    <form method="post" action="query3.controller.php">
			<h3 class="text-center" style="color:black; padding-bottom:5px">Filter Products</h3>
			
			<div class="form-group">
			    <label id="label" for="whatcolumn"> Choose Column </label> </br>
			    <input type="text" name="whatcolumn" placeholder=" What column to choose?" class="form-control form-control-lg">
			</div>

			<div class="form-group">
			    <label id="label" for="oldname1"> Data to filter </label> </br>
			    <input type="text" name="oldname1" placeholder=" Enter the data" class="form-control form-control-lg">
			</div>
			
			<div class="form-group">
			    <input id="button" type="submit"   whatcolumn="submit" oldname1="submit" class="btn btn-primary btn-block btn-lg">
			</div>
		    </form>
		</div>
	    </div>
	</div>
    </body>
</html>
