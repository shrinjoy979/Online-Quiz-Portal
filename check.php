<?php
	
	ini_set('display_errors', 'Off');
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
			<br><br>
    		<h1 class="text-center text-success text-uppercase animateuse" > SHRINJOY Quiz World</h1>
    		<br><br><br>
			<table class="table table-bordered text-center table-hover">
				<tr>
					<th colspan="2" class="bg-dark"> <h1 class="text-white"> Results </h1></th>
				</tr>
				<tr>
					<td>
						Questions Attempted
					</td>
					<?php
					///////////////////////// for count ////////////////////////
					if(isset($_POST['submit'])){
						if(!empty($_POST['quizcheck'])){
							$count = count($_POST['quizcheck']);
					?>
					<td>
						<?php echo "Out of 5, you have selected ".$count. " options"; ?>
					</td>
				</tr>
				<tr>
					<td>
						Your Total score
					</td>
					<?php			
						////////////////////// check correct value ////////////////
						
						$result=0;
						$i=1;

						$selected = $_POST['quizcheck'];
						//print_r($selected);  //it gives the output of what we select as a option.

						$q="select * from questions";
						$query=mysqli_query($con, $q);

						while($rows=mysqli_fetch_array($query)) {
							//print_r($rows['ans_id']);

							 $checked = $rows['ans_id'] == $selected[$i];

							 if($checked){
							 	$result++;
							 }

							 $i++;
						}
				?>
				<td>
					<?php 
						echo "Your total score is ".$result; 
					}else{
			            echo "<center><h2><b>Please Select Atleast One Option.</b></h2></center>";
			            }
					?>
				</td>
				</tr>

			</table>
			<center><a href="logout.php" class="btn btn-success"> LOGOUT </a></center>
		</div>
	</body>
	</html>


	<?php
	}
	
	///////////////////////// store your score to the database /////////////////////////////

	$name=$_SESSION['username'];
	$finalresult = "insert into user(totalques,answerscorrect,username) values ('5','$result','$name')";
	$queryresult=mysqli_query($con,$finalresult);




?>