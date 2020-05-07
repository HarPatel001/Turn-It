<html>
    <head>
	<title> query2 </title>

	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

	<link rel="stylesheet" href="style.css">
    </head>
    <body>
	<div class="container">
	    <div class="row">
		<div class="col-md-4 offset-md-4 form-div">
		    <form method="post" action="query2.controller.php">
			<h3 class="text-center" style="color:black; padding-bottom:5px">Update Dependent Info</h3>
			
			<div class="form-group">
			    <label id="label" for="essn"> ESSN</label> </br>
			    <input type="text" name="essn" placeholder=" Enter employee's ssn" class="form-control form-control-lg">
			</div>

			<div class="form-group">
			    <label id="label" for="oldname1"> Old Name </label> </br>
			    <input type="text" name="oldname1" placeholder=" Enter old name" class="form-control form-control-lg">
			</div>

			<div class="form-group">
			    <label id="label" for="newname1"> New Name </label> </br>
			    <input type="text" name="newname1" placeholder=" Enter new name" class="form-control form-control-lg"> </br>
			</div>
			
			<div class="form-group">
			    <input id="button" type="submit" newname1="submit" oldname1="submit"  essn="submit" class="btn btn-primary btn-block btn-lg">
			</div>
		    </form>
		</div>
	    </div>
	</div>
    </body>
</html>
