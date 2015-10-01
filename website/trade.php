<!--
written by:Haotian Zhu Jiachi Xie
debugged by:Haotian Zhu
-->
<?php
		session_start();
		$username=$_SESSION['username'];
		$symbol=$_POST['symbol_buy'];
		$number=$_POST['number_buy'];
		$link=mysql_connect('localhost','root','','db1');
		mysql_select_db("his_info");
		$tablename=$symbol."_his";
		$pricerow=mysql_query("SELECT close FROM {$tablename}",$link);
		for($i=0;$i<11;$i++)
		{
			$price=mysql_fetch_array($pricerow);
		}
		mysql_close($link);
		$link1=mysql_connect('localhost','root','','db2');
		$username=$_SESSION["username"];							
		mysql_select_db("user_info",$link1);
		$maxid=mysql_query("SELECT MAX(ID) FROM ".$username);
		$max=mysql_fetch_array($maxid);
		$id=$max[0]+1;
		
		mysql_query("INSERT ignore INTO {$username} (stockname,number_own,ID) VALUES ('$symbol','$number','$id')",$link1);
		$row=mysql_query("SELECT balance FROM userinfo");
		$result=mysql_fetch_array($row);
		$result[0]=$result[0]-($number*$price[0]);
		
		mysql_query("UPDATE userinfo SET balance={$result[0]}");



		$url = "simulator.php"; 
		echo "<html>";   
		echo "<head>";   
		echo "<meta http-equiv=\"refresh\" content=\"0;  url={$url} \">";  
		echo "</head>";  
		echo "</html>"; 
?>
