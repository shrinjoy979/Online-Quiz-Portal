<!DOCTYPE html>
<html>
<head>
	<title></title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>
<body>
	<div class="container">
		<br><h1 class="text-center text-success">Welcome to Quiz world</h1><br>
		<div class="row">

			<div class="col-lg-6 col-md-6 col-10">
				<div class="card">
					<h2 class="card-header">Login Form</h2>
					<form action="validation.php" method="post">

						<div class="form-group">
							<label> Username </label>
							<input type="text" name="user" class="form-control" autocomplete="off">
						</div>

						<div class="form-group">
							<label> Password</label>
							<input type="password" name="password" class="form-control" autocomplete="off">
						</div>
						
						<button type="submit" class="btn btn-primary"> Login</button>
					</form>
				</div>
			</div>

			<div class="col-lg-6 col-md-6 col-10">
				<div class="card">
					<h2 class="card-header">Signin Form</h2>
					<form action="registration.php" method="post">

						<div class="form-group">
							<label> Username </label>
							<input type="text" name="user" class="form-control" autocomplete="off">
						</div>

						<div class="form-group">
							<label> Password</label>
							<input type="password" name="password" class="form-control" autocomplete="off">
						</div>
						
						<button type="submit" class="btn btn-primary"> Signin</button>
					</form>
				</div>
			</div>

		</div>
	</div>
</body>
</html>