<!--
written by:Haotian Zhu 
debugged by:Haotian Zhu
-->
<?php  
  include "conn.php";
  mysql_select_db("name_info", $con);

  
    $handle = fopen("list.csv", "r");
       
    $j=1;
    $list=fgetcsv($handle);

    while(!feof($handle))  //use while loop to see all file
      {
            $list=fgetcsv($handle);
          
            mysql_query("INSERT INTO name (num,epic,name,url,sector,industory) 
             VALUES ('$j', '$list[0]', '$list[1]', '$list[7]', '$list[5]', '$list[6]')"); 
             echo $list[1]; 
            $j++;
      }
      echo "DB Write Successful";

    fclose($handle);
    mysql_close($con);
?>   