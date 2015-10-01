<!--
written by:Haotian Zhu 
debugged by:Haotian Zhu
-->
<?php  
  $con2=mysql_connect('localhost','root','','db2');
  if($con1=mysql_connect('localhost','root','','db1'))
    {
      echo "DB1 Connect Successful<br/>";
    }
  else
    {
      echo "Connect fail<br/>";
    }

  

  mysql_select_db("name_info", $con1);
  mysql_select_db("his_info", $con2);
   
        $result = mysql_query("SELECT epic FROM name100",$con1);

        while( $row=mysql_fetch_array($result) )
          {

          $sname="$row[epic]"."_his";
          echo "$sname<br/>";

          $create="CREATE TABLE $sname  
            (
              PRIMARY KEY(ID),    
              ID int(5),             
              date date,
              open decimal(6,2),
              high decimal(6,2),
              low decimal(6,2),
              close decimal(6,2),
              volume decimal(12,0),
              predict decimal(6,2),
              pre_up decimal(6,2),
              pre_close decimal(6,2),
              up_margin decimal(6,2),
              down_margin decimal(6,2),
              up_accuracy decimal(6,2),
              down_accuracy decimal(6,2),
              accuracy decimal(6,2),
              amplitude decimal(6,2),
              pre_high decimal(6,2),
              pre_low decimal(6,2)
                    
            )";
           
        mysql_query($create,$con2);

          }
  
    mysql_close($con1);
    mysql_close($con2);

?>   