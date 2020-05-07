<!DOCTYPE html>
<html lang="en">

    <head>
	<meta charset="UTF-8">
	<!--Bootstrap 4 css-->
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

	<link rel="stylesheet" href="style.css">
	<title>Register</title>
	
	<style>
	 body {
	     background: linear-gradient(rgba(0,0,50,0.5),rgba(0,0,50,0.5)),url(image.jpg);
	     background-size: cover;
	     background-position: center;
	 }
	 
	 label, p {
	     color: white;
	     font-weight: bold;
	 }
	 
	 a {
	     font-weight: bold;s
	 }
	</style>
    </head>

    <body>
	<div class="container">
	    <div class="row">
		<div class="col-md-4 offset-md-4 form-div">
		    <form action="signup.php" method="post">
			<h3 class="text-center">Register</h3>

			<div class="form-group">
			    <label for="firstname">First Name</label>
			    <input type="text" name="firstname" class="form-control form-control-lg">
			</div>
			<div class="form-group">
			    <label for="lastname">Last Name</label>
			    <input type="text" name="lastname" class="form-control form-control-lg">
			</div>
			<div class="form-group">
			    <label for="email">Email</label>
			    <input type="text" name="email" class="form-control form-control-lg">
			</div>
			<div class="form-group">
			    <label for="phone">Mobile No.</label>
			    <input type="text" name="phone" class="form-control form-control-lg">
			</div>
			<div class="form-group">
			    <label for="password">Password</label>
			    <input type="text" name="password" class="form-control form-control-lg">
			</div>
			<div class="form-group">
			    <label for="passwordConf">Confirm Password</label>
			    <input type="text" name="passwordConf" class="form-control form-control-lg">
			</div>
			<div class="form-group">
			    <button type="submit" name="signup-btn" class="btn btn-primary btn-block btn-lg">Sign Up</button>

			</div>
			<p class="text-center">Already a member?  <a href="login.php">Sign In</a></p>

		    </form>
		</div>

	    </div>
	</div>


    </body>

</html>
