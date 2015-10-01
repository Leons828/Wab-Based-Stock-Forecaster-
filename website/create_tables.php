<!--
written by:Haotian Zhu Jiachi Xie
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
              open decimal(6,2) NOT NULL DEFAULT 0,
              high decimal(6,2) NOT NULL DEFAULT 0,
              low decimal(6,2) NOT NULL DEFAULT 0,
              close decimal(6,2) NOT NULL DEFAULT 0,
              volume decimal(12,0) NOT NULL DEFAULT 0,
              predict decimal(6,2) NOT NULL DEFAULT 0,
              pre_up decimal(6,2) NOT NULL DEFAULT 0,
              pre_close decimal(6,2) NOT NULL DEFAULT 0,
              up_margin decimal(6,2) NOT NULL DEFAULT 0,
              down_margin decimal(6,2) NOT NULL DEFAULT 0,
              up_accuracy decimal(6,2) NOT NULL DEFAULT 0,
              down_accuracy decimal(6,2) NOT NULL DEFAULT 0,
              accuracy decimal(6,2) NOT NULL DEFAULT 0,
              amplitude decimal(6,2) NOT NULL DEFAULT 0,
              pre_high decimal(6,2) NOT NULL DEFAULT 0,
              pre_low decimal(6,2) NOT NULL DEFAULT 0
                    
            )";
           
        mysql_query($create,$con2);

          }
  
    mysql_close($con1);
    mysql_close($con2);

?>   