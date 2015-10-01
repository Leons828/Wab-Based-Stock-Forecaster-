<!--
written by:Haotian Zhu Jiachi Xie
debugged by:Haotian Zhu
-->
<?php  
  include "conn.php";
  mysql_select_db("his_info", $con);
  
  
  $today=date("Y-m-d");
  $time=date("h:ia");
  


  echo "$today<br/>";
  echo "$time<br/><br/>";
  echo "fail list: <br/>";
  $id=1;
    
    $result = mysql_query("SHOW TABLES");    
    while($row = mysql_fetch_array($result))   
        {
          $id=1;
          $str=explode('_', $row[0]);           
          if(($handle = fopen("http://ichart.yahoo.com/table.csv?s="."$str[0]"."&a=01&b=01&c=2012&d=04&e=20&f=2015&g=d&ignore=.csv", "r"))!=0)
            {
              $null=fgetcsv($handle);
              
              $i=0;
              while(!feof($handle))
                {
                    $info=fgetcsv($handle);
                    $list[0][$i]=$info[0];
                    $list[1][$i]=$info[1];
                    $list[2][$i]=$info[2];
                    $list[3][$i]=$info[3];
                    $list[4][$i]=$info[4];
                    $list[5][$i]=$info[5];
                    $i++;
                    
                }
                for($j=$i-1;$j>=0;$j--)
                {
                    
                    @mysql_query("INSERT IGNORE INTO $row[0] (date,open,high,low,close,volume,ID) 
                      VALUES ('{$list[0][$j]}', '{$list[1][$j]}', '{$list[2][$j]}', '{$list[3][$j]}', '{$list[4][$j]}', '{$list[5][$j]}','$id') ");
                   $id++;
                }
                
                /*for($k=0;$k<10;$k++)
                {
                   @mysql_query("INSERT IGNORE INTO $row[0] (ID) 
                      VALUES ('$id')  ");
                   $id++; 
                }*/
            }
            else
            {
              
              echo "$row[0]<br/>";
              continue;
            }

          
          
          fclose($handle);
         

        }
   
    

    mysql_close($con);
?>   