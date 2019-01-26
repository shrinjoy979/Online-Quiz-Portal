<?php
	
	session_start();

	if(!isset($_SESSION['username'])){
		header('location:login.php');
	}

	$con=mysqli_connect('localhost','root');
	mysqli_select_db($con,'quizdbase');
?>
<!DOCTYPE html>
<html>
<head>
	<title></title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	<style type="text/css">
		.animateuse{
			animation: leelaanimate 0.5s infinite;
         }
         @keyframes leelaanimate{
         0% { color: red },
         10% { color: yellow },
         20%{ color: blue }
         40% {color: green },
         50% { color: pink }
         60% { color: orange },
         80% {  color: black },
         100% {  color: brown }
         }
	</style>
</head>
<body>
	<div class="container">
		<br><br><h2 class="text-center text-primary  animateuse">SHRINJOY WEBDEVELOPER QUIZ</h2><br>
		<h2 class="text-center text-success" style="text-transform: uppercase;"><?php echo $_SESSION['username'] ?>,<span style="color:black; text-transform: none;"> Welcome to Shrinjoy Quiz<span> </h2><br>
			
		<div class="col-lg-8 m-auto d-block">
			<div class="card"> 

				<h3 class="text-center card-header"> Welcome <?php echo $_SESSION['username']?>, you have to select only one out of 4.Best of Luck :) </h3>

			</div><br>

			<!----------------------- fetching question from database -------------------------------------->
			<form action="check.php" method="post">
				<?php
					for($i=1; $i<6; $i++){
					$q="select * from questions where qid=$i";
					$query=mysqli_query($con,$q);

					while($rows = mysqli_fetch_array($query)){
						?>
						
						<div class="card">
							<h4 class="card-header"><?php echo $rows['question'] ?></h4>

							<?php
								$q="select * from answers where ans_id=$i";
								$query=mysqli_query($con,$q);

								while($rows = mysqli_fetch_array($query)){
							?>

							<div class="card-body">
								<input type="radio" name="quizcheck[<?php echo $rows['ans_id'];?>]" value="<?php echo $rows['aid']; ?>">
								<?php echo $rows['answer']?>
							</div>

				<?php
					}
				}
				}
				?>

					<input type="submit" name="submit" value="submit" class="btn btn-success m-auto d-block"><br>
			</form>
						</div>
		</div>
		

		<div class="m-auto d-block">
			<br><a href="logout.php" class="btn btn-primary">LOGOUT</a>
		</div><br>

		<div>
			<br><h4 class="text-center"> Copyright ShrinjoySaha</h4>
		</div><br><br><br>
	</div>
</body>
</html>