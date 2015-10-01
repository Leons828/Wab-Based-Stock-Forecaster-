<!--
written by:Haotian Zhu 
debugged by:Haotian Zhu
-->
<?php  
//This file is for create a 100 stocks table
  include "conn.php";
  mysql_select_db("name_info", $con);
   
        $result = mysql_query("SELECT * FROM name order by rand() limit 98");

        $i=1;
          while( $row=mysql_fetch_array($result) )
          {

            mysql_query("INSERT INTO name100 (epic,num,name,url,sector,industory) 
              VALUES ('$row[epic]', $i, '$row[name]', '$row[url]', '$row[sector]', '$row[industory]')");
          

          $i++;

          }
    mysql_close($con);
?>   