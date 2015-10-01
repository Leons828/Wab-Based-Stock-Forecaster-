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
  mysql_select_db("cur_info", $con2);
   
        $result = mysql_query("SELECT epic FROM name100",$con1);

        while( $row=mysql_fetch_array($result) )
          {

          $sname="$row[epic]"."_cur";
          echo "$sname<br/>";

          $create="CREATE TABLE $sname  
            (
              PRIMARY KEY (TimeRec),  
              Last_Trade_Time time DEFAULT NULL,
              TimeRec time NOT NULL,
              Ask decimal(6,2) DEFAULT NULL,
              Pervious_Close decimal(6,2) DEFAULT NULL,
              open decimal(6,2) DEFAULT NULL,
              Days_Low decimal(6,2) DEFAULT NULL,
              Days_High decimal(6,2) DEFAULT NULL,
              Last_Trade decimal(6,2) DEFAULT NULL,
              YearHigh decimal(6,2) DEFAULT NULL,
              YearLow decimal(6,2) DEFAULT NULL,
              Market_Capitalization varchar(7) DEFAULT NULL,
              Shares_Outstanding decimal(15,0) DEFAULT NULL,
              Volume int(15) DEFAULT NULL  
            )";
           
        mysql_query($create,$con2);

          }
  
    mysql_close($con1);
    mysql_close($con2);

?>   