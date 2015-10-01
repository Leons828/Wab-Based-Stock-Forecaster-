<!--
written by:Haotian Zhu 
debugged by:Haotian Zhu
-->
<?php
	
	


	if(!($link=mysql_connect('localhost','root','')))
	{
		echo "Database not connected!<br><br>";
		
		$url = "index.php"; 
		echo "<html>";   
		echo "<head>";   
		echo "<meta http-equiv=\"refresh\" content=\"5;  url={$url} \">";  
		echo "</head>";  
		echo "</html>"; 
	}

	mysql_select_db('user_info');

	$password=$_POST['password'];
	$username=$_POST['username'];
	if(empty($password)||empty($username))
	{
		echo "Login Failed!<br>";
		$url = "testimonials.php"; 
		echo "<html>";   
		echo "<head>";   
		echo "<meta http-equiv=\"refresh\" content=\"5;  url={$url} \">";  
		echo "</head>";  
		echo "</html>"; 
	}


	else
	{

		$row=mysql_query("SELECT password FROM userinfo WHERE username ='$username'");
		$result=mysql_fetch_array($row);
		if($result[0]==$password)
		{
			echo "login successful!<br>";
			session_start();
			$_SESSION["loged"]=true;
			$_SESSION["username"]=$username;
			$url = "simulator.php"; 
			echo "<html>";   
			echo "<head>";   
			echo "<meta http-equiv=\"refresh\" content=\"1;  url={$url} \">";  
			echo "</head>";  
			echo "</html>";

		}
		else
		{
			echo "Login Failed!<br>";
			$url = "testimonials.php"; 
			echo "<html>";   
			echo "<head>";   
			echo "<meta http-equiv=\"refresh\" content=\"5;  url={$url} \">";  
			echo "</head>";  
			echo "</html>"; 
		}
	}


?>