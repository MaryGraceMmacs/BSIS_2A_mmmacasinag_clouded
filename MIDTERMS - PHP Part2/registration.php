<?php
	require_once('config.php')
?>
<!DOCTYPE html>
<html lang="en" dir="ltr">
<head>
	<meta charset="UTF-8">
	<title> Registration Form</title>
	<link rel="stylesheet" type="text/css" href="style.css"/>
</head>
<body>
	<div>
	<?php
		if(isset($_POST['submit'])){
			$Fullname	=	$_POST['Fullname'];
			$Username	=	$_POST['Username'];
			$Email		=	$_POST['Email'];
			$PNumber	=	$_POST['PNumber'];
			$Password	=	$_POST['Password'];
			$CPassword	=	$_POST['CPassword'];
			
			$sql="INSERT INTO registration (Fullname, Username, Email, PNumber, Password, CPassword)VALUES(?,?,?,?,?,?)";
			$stmtinsert = $db->prepare($sql);
			$result = stmtinsert->execute([$Fullname, $Username, $Email, $PNumber, $Password, $CPassword]);
			if($result){
				echo "Registration Success...";
			}else{
				echo "Connection Failed...";
			}
		}
	?>
	</div>

	<div class="center">
	  <h1>Registration</h1>
	  <form action="registration.php" method="post"> 
		<div class="txt_feild">
            <input type="text" name="Fullname" required>
			<label>Full Name</label>
		</div>
		<div class="txt_feild">
            <input type="text" name="Username" required>
			<label>Username</label>
		</div>
		<div class="txt_feild">
            <input type="email" name="Email" required>
			<label>Email</label>
		</div>
		<div class="txt_feild">
            <input type="text" name="PNumber" required>
			<label>Phone Number</label>
		</div>
		<div class="txt_feild">
            <input type="password" name="Password" required>
			<label>Password</label>
		</div>
		<div class="txt_feild">			
            <input type="password" name="CPassword" required>
			<label>Confirm Password</label>
        </div>
		
		<div class"button">
			<input type="submit" name="submit" value="Register">
		</div>
	  </form>	  
	</div>
    
</body>
</html>