<!--
written by:Haotian Zhu 
debugged by:Haotian Zhu
-->
<?php  
  include "conn.php";
  mysql_select_db("cur_info",$con);
  
  $starttime="9:30am";
  $endtime="4:00pm";
  $time=date("h:ia");
  $today=date("Y-m-d");
  $interval=1;
  echo "$today<br/>";
  echo "$time<br/>";
  $index=1;
  
  $timeslide=date('h:ia',strtotime('+1 minute',strtotime($time)));
  label:
  $time=date("h:ia");
  
  while((strtotime($time)<=strtotime($endtime)) && (strtotime($time)>=strtotime($starttime)))
  {
    //if( $time==$timeslide )
     //{
          $result = mysql_query("SHOW TABLES");
          while($row = mysql_fetch_array($result))   
            {
              
              $str=explode('_', $row[0]);    

              if(($handle = fopen("http://finance.yahoo.com/d/quotes.csv?s="."$str[0]"."&f=t1apoghl1kjj1j2v", "r"))=='FALSE')
                {countine;}
              
              $list=fgetcsv($handle);
              $timenow=date("h:ia");
          
                 
              mysql_query(" INSERT INTO $row[0] (Last_Trade_Time,TimeRec,Ask,Pervious_Close,open,Days_Low,Days_High,Last_Trade,YearHigh,YearLow,Market_Capitalization ,Shares_Outstanding,Volume ) 
                VALUES ('$list[0]','$timenow','$list[1]','$list[2]',
                  '$list[3]','$list[4]','$list[5]','$list[6]',
                  '$list[7]','$list[8]','$list[9]','$list[10]','$list[11]')   ");
        
              fclose($handle);
              $timeslide=date('h:ia',strtotime('+1 minute',strtotime($timeslide)));
                  
              
             //} 
      }
      /*elseif( strtotime($time)>strtotime($timeslide) )
      {
        $timeslide=date( 'h:ia',strtotime('+1 minute',strtotime($timeslide) ) );
      }*/
      /*else
      {
        sleep($interval);
      }*/
sleep(35);
    $time=date("h:ia");
    
  }

      goto label;

      
    mysql_close($con);
?>   