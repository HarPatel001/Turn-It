<!DOCTYPE html>
<html lang="en">

    <head>
	<meta charset="UTF-8">
	<!--Bootstrap 4 css-->
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

	<link rel="stylesheet" href="style.css">
	<title>TURNIT</title>

	<style>
	 body {
	     background: linear-gradient(rgba(0,0,50,0.5),rgba(0,0,50,0.5)),url(image.jpg);
	     background-size: cover;
	     background-position: center;
	 }

	 p {
	     color: white;
	 }

	 a {
	     font-weight: bold;s
	 }
	</style>
    </head>

    <body>
	
	<div class="container">
	    <div class="row">
		<div class="col-md-4 offset-md-4 form-div login">
		    <form action="login.controller.php" method="post">
			<h3 class="text-center">Customer Login</h3>


			<div class="form-group">
			    <label for="email"><span>Email</span></label>
			    <input type="text" name="email" class="form-control form-control-lg">
			</div>

			<div class="form-group">
			    <label for="password"><span>Password</span></label>
			    <input type="text" name="password" class="form-control form-control-lg">
			</div>

			<div class="form-group">
			    <button type="submit" name="login-btn" class="btn btn-primary btn-block btn-lg">Login</button>

			</div>
			<p class="text-center"><span>Not yet a member? </span>  <a href="signup.php">Sign Up</a></p>

		    </form>
		</div>

		<div class="col-md-4 offset-md-4 form-div login">
		    <form action="emp-login.controller.php" method="post">
			<h3 class="text-center">Employee Login</h3>


			<div class="form-group">
			    <label for="username"><span>Username</span></label>
			    <input type="text" name="username" class="form-control form-control-lg">
			</div>

			<div class="form-group">
			    <label for="password-emp"><span>Password</span></label>
			    <input type="text" name="password-emp" class="form-control form-control-lg">
			</div>

			<div class="form-group">
			    <button type="submit" name="login-btn-emp" class="btn btn-primary btn-block btn-lg">Login</button>

			</div>


		    </form>
		</div>

	    </div>
	</div>


    </body>

</html>
