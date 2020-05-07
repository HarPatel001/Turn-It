<html>
    <head>
	<title> Query1</title>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

	<link rel="stylesheet" href="style.css">
    </head>
    <body>
	<div class="container">
	    <div class="row">
		<div class="col-md-4 offset-md-4 form-div">
		    <form method="post" action="query1.controller.php">
			
			<h3 class="text-center" style="color:black; padding-bottom:5px">Insert Product</h3>
			
			<div class="form-group">
			    <label id="label" for="productid"> Productid </label>
			    <input type="text" name="productid" maxlength="7"       placeholder="ProductID " required class="form-control form-control-lg">
			</div>
			
			<div class="form-group">
			    <label id="label" for="pname"> PName </label>
			    <input type="text" name="pname" placeholder="Product Name" required class="form-control form-control-lg"> 
			</div>
			
			<div class="form-group">
			    <label id="label" for="color"> Color </label>
			    <input type="text" name="color" placeholder=" Color" required class="form-control form-control-lg"> 
			</div>

			<div class="form-group">
			    <label id="label" for="size"> Size </label>
			    <input type="text" name="size" placeholder="Size" required class="form-control form-control-lg">
			</div>
			
			<div class="form-group">
			    <label id="label" for="ptype"> PType </label>
			    <input type="text" name="ptype" placeholder=" Type of Clothing" required class="form-control form-control-lg">
			</div>
			
			<div class="form-group">
			    <label id="label" for="baseprice"> BasePrice </label>
			    <input type="text" name="baseprice" placeholder=" Base Price" required class="form-control form-control-lg"> 
			</div>
			
			<div class="form-group">
			    <label id="label" for="condition"> Condtion </label>
			    <input type="text" name="condition" placeholder=" Sellabe/Unsellable" required class="form-control form-control-lg">
			</div>
			
			<div class="form-group">
			    <input id="button" type="submit" productid="submit" pname="submit"
				   color="submit" size="submit" ptype="submit" baseprice="submit" condition="submit" class="btn btn-primary btn-block btn-lg">
			</div>
			
			<div class="form-group">
			    <input type="reset" value="Reset" class="btn btn-danger">
			</div>
		    </form>
		</div>
	    </div>
	</div>
    </body>
</html>
