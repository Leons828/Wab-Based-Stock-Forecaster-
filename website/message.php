<!--
written by:Haotian Zhu 
debugged by:Haotian Zhu
-->
<?php
	session_start();
	if(isset($_SESSION["loged"]) && $_SESSION["loged"]=true)
	{
		if(!($link=mysql_connect('localhost','root','')))
			{
			echo "Database not connected!<br><br>";
			}
		mysql_select_db('user_info');
		$row=mysql_query("SELECT indx FROM message");
		$num=0;
		while($result=mysql_fetch_array($row))
		{
			$num=$result[0];
		}
		$num+=1;
		$message=$_POST['message'];

		$time=date("Y-m-d h:ia");
		$username=$_SESSION["username"];

		

		
		echo $num;
		mysql_query("INSERT INTO message (username,message,time,indx) 
		VALUES ('$username','$message','$time','$num' )");



		$url = "blog-single-left.php"; 
		echo "<html>";   
		echo "<head>";   
		echo "<meta http-equiv=\"refresh\" content=\"0;  url={$url} \">";  
		echo "</head>";  
		echo "</html>"; 
	}else
	{
		echo "Please login first!<br>";
	}
?>