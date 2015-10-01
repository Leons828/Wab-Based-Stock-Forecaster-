<!--
written by:Haotian Zhu Jiachi Xie
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

if(empty($_POST['Username']))
	{
		echo "username is required!<br>";
	}
	else
	{
		$uname=$_POST['Username'];
	}
	

if(empty($_POST['Firstname']))
	{
		echo "Firstname is required!<br>";
	}
	else
	{
		$fname=$_POST['Firstname'];
	}

	
if(empty($_POST['Lastname']))
	{
		echo "Lastname is required!<br>";
	}
	else
	{
		$lname=$_POST['Lastname'];
	}

	
if(empty($_POST['EMail']))
	{
		echo "E-Mail is required!<br>";
	}
	else
	{
		$email=$_POST['EMail'];
	}

	
if(empty($_POST['password']))
	{
		echo "Password is required!<br>";
	}
	else
	{
		$pword=$_POST['password'];
	}
	

	$row=mysql_query("SELECT firstname FROM userinfo WHERE username ='$uname'");
	$result=mysql_fetch_array($row);

if(empty($result[0]))
{
	mysql_query("INSERT INTO userinfo (username,firstname,lastname,email,password,balance) 
		VALUES ('$uname','$fname','$lname','$email','$pword','20000')");
	echo "User has been created successfully!<br>";

	$url = "index.php"; 
	echo "<html>";   
	echo "<head>";   
	echo "<meta http-equiv=\"refresh\" content=\"5;  url={$url} \">";  
	echo "</head>";  
	echo "</html>"; 


	$create="CREATE TABLE $uname  
            (
              PRIMARY KEY(ID),    
              ID int(5),  
              stockname varchar(20),
              number_own int(10)            
            )";
mysql_query($create,$link);
}else
{
	echo "The username is already existed!<br>";
	$url = "services.php"; 
	echo "<html>";   
	echo "<head>";   
	echo "<meta http-equiv=\"refresh\" content=\"5;  url={$url} \">";  
	echo "</head>";  
	echo "</html>"; 
}
	

	

	mysql_close($link);
	
?>