<!--
written by:Haotian Zhu 
debugged by:Haotian Zhu
-->
<?php  
  include "conn.php";
  mysql_select_db("his_info", $con);
  
  

  $time=date("h:ia");
  $today=date("Y-m-d");

  echo "$today<br/>";
  echo "$time<br/><br/>";
  echo "fail list: <br/>";
  $id=1;
  
    $result = mysql_query("SHOW TABLES");    

    while($row = mysql_fetch_array($result))   
        {
          $id=1;
          $str=explode('_', $row[0]);           
          if(($handle = fopen("http://ichart.yahoo.com/table.csv?s="."$str[0]"."&a=02&b=17&c=2014&d=02&e=28&f=2015&g=d&ignore=.csv", "r"))!=0)
            {
              $null=fgetcsv($handle);
                
              while(!feof($handle))
                {
                    $list=fgetcsv($handle);
                    $num=count($list);   
                    
                    mysql_query("INSERT IGNORE INTO $row[0] (date,open,high,low,close,volume,ID) 
                      VALUES ('$list[0]', '$list[1]', '$list[2]', '$list[3]', '$list[4]', '$list[5]','$id')  ");
                   $id++;
                }
                 
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