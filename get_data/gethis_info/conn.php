<!--
written by:Haotian Zhu 
debugged by:Haotian Zhu
-->
<?php
  if($con=mysql_connect('localhost','root',''))
    {
    	echo "Connect Successful<br/>";
    }
  else
  	{
  		echo "Connect fail<br/>";
  	}

   mysql_select_db("stock_name", $con);

?>