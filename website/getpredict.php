<!--
written by:Haotian Zhu Jiachi Xie
debugged by:Haotian Zhu
-->
<?php
	mysql_connect("localhost","root","")or die("could not connect to MySQL");
	mysql_select_db("his_info")or die("No database");

	$symbol = $_GET['symbol'];
	

		$priceDB=mysqli_connect("localhost","root","","his_info");
		// Check connection
		if (mysqli_connect_errno())
			{
				echo "Failed to connect to MySQL: " . mysqli_connect_error();
			}
		$symbol=$symbol."_his";
		$macidrow=mysql_query("SELECT MAX(ID) FROM ".$symbol);
		$maxid=mysql_fetch_array($macidrow);
		$id=$maxid[0]-9;

		$prerow=mysql_query("SELECT * FROM ".$symbol." WHERE ID=".$id);
		$pre=mysql_fetch_array($prerow);
		$result = mysqli_query($priceDB,"SELECT * FROM ".$symbol);
		$row = mysqli_fetch_assoc($result);
		$row['predict']=$pre['predict'];
		print(json_encode($row));
		
		mysqli_close($priceDB);

		
	
 
?>
