<!--
written by:Haotian Zhu Jiachi Xie
debugged by:Haotian Zhu
-->
<!DOCTYPE html>
<!--[if lt IE 7 ]><html class="ie ie6" lang="en"> <![endif]-->
<!--[if IE 7 ]><html class="ie ie7" lang="en"> <![endif]-->
<!--[if IE 8 ]><html class="ie ie8" lang="en"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!--><html lang="en" class="no-js" ><!--<![endif]-->

    <head>
    
        <!-- BEGIN: basic page needs -->
        <meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
        <meta name="viewport" content="width=100%; initial-scale=1; maximum-scale=1; minimum-scale=1; user-scalable=no;" />
        <title>REDDESIGN - Site Template</title>
        <!-- END: basic page needs -->
        
        <!-- BEGIN: css -->
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css" />
        <link href="css/bootstrap-responsive.css" rel="stylesheet" type="text/css" />
        <link href="css/style.css" rel="stylesheet" type="text/css" />
        <link href="css/responsive.css" rel="stylesheet" type="text/css" />
        <link href="css/skin-default.css" rel="stylesheet" type="text/css" />
        <link href="css/prettyPhoto.css" rel="stylesheet" type="text/css" />
        <link href="css/css.css"  rel="stylesheet" />
        <!-- END: css -->
            
        <!-- BEGIN: js -->
    	<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.7/jquery.min.js"></script>
        <script type="text/javascript" src="js/google-code-prettify/prettify.js"></script>
        <script type="text/javascript" src="js/modernizr.js"></script> 
        <script type="text/javascript" src="js/respond.js"></script> 
        <script type="text/javascript" src="js/superfish.js"></script>
        <script type="text/javascript" src="js/hoverIntent.js"></script>
        <script type="text/javascript" src="js/jquery.easing.1.3.js"></script>
        <script type="text/javascript" src="js/jquery.prettyPhoto.js"></script> 
        <script type="text/javascript" src="js/jquery.hoverdir.js"></script>
        <script type="text/javascript" src="js/jquery.flexslider.js"></script>
        <script type="text/javascript" src="js/jquery.elastislide.js"></script>
        <script type="text/javascript" src="js/jquery.tweet.js"></script>
        <script type="text/javascript" src="js/bootstrap.js"></script> 
        <script type="text/javascript" src="js/main.js"></script>
        <!--[if lt IE 9]><script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
		<![endif]-->
        <!-- END: js -->
        
    </head>
    
<body>

<!-- .container -->
<section class="container">

    <!-- #header .row -->
    <header id="header">
        <div class="row">

            <!-- .span3.logo -->
            <div class="span3 logo"></div>
            <span class="span3 logo"><a href="./index.html" ><img src="images/scarlet1.gif" alt="Logo" width="100" height="80" /></a></span>
            <!-- /.span3.logo -->
            
            <!-- .span9 -->
            <nav class="span9">

                <!-- #menu -->
                <ul id="menu">
                    <li><a href="./index.php" ><font color="#999999">Home</font></a></li>
                    <li><a href="./testimonials.php"><font color="#999999">Simulator</font></a>
</li>
                    <li><a href="./blog-single-without.php" class="current"><font color="#999999">Prediction</font></a></li>                  
                    <li><a href="./blog-single-left.php"><font color="#999999">Message Board</font></a></li>                    
                    <li><a href="./contact.php"><font color="#999999">Contact<font></a></li>
                </ul><!-- /#menu -->

          </nav><!-- .span9-->
        
        </div>
        
    </header><!-- /#header .row -->
	



 <div class="page-header">
        <h1><b><font color="#2F2F4F">prediction</font></b></h1>
    

    <div class="span6">
           
            <form action="team.php" method="post"> 
							<label><font color="#A8A8A8">Get The Predict Data</font></label> 
							<select name="symbol"> 

							<?php
								$link=mysql_connect('localhost','root','');
								
								mysql_select_db("name_info",$link);
								$row=mysql_query("SELECT epic FROM name100",$link);
								
								while($name=mysql_fetch_array($row))
								{
									echo "<option value=\"{$name['epic']}\">{$name['epic']}</option>";
									$ind++;
								}
									
								
							echo "</select>"; 
							
							 
							?>
							</select> 
							 </p>
								<input class="button" value="Get!" type="submit">
							</form>
        </div><!-- /.span6 -->
</div>
    <!-- .row -->
    <div class="row">
    <div style="display:block;">

        <!-- #page.span9.alignright -->




<div style="display:block; width:500px;margin-left:30px;float:left;">
 <!--<div style="width:500;float:left;">-->
 <div style="background-color:#E5E5E5;"></div>
			<br/><br/>
			<h1><b><font color="#238E23">Predict top 10 stocks</font></b></h1>
			<div style="background-color:#E5E5E5; padding:5px 0px 0px 0px; height:23px;">
				<div style="float:left; padding-left:19px;">№</div>
				<div style="float:left; padding-left:80px;">Stock Name</div>
				<div style="float:left; padding-left:100px;">Last</div>
				<div style="float:left; padding-left:60px;">Percent</div>
			</div>



			<?php

				$link1=mysql_connect('localhost','root','','db1');
				$link2=mysql_connect('localhost','root','','db2');
				mysql_select_db('his_info',$link1);
				mysql_select_db('name_info',$link2);
				$table = mysql_query("SHOW TABLES",$link1);
			
				$count=0;
				while($tablename = mysql_fetch_array($table))  //tablename means the name of each table 
			        {			        	
			        	$result=mysql_query("SELECT predict FROM {$tablename[0]} WHERE ID=817",$link1);
			        	$today=mysql_fetch_array($result);//get the top row of each table
			        	$result=mysql_query("SELECT predict FROM {$tablename[0]} WHERE ID=816",$link1);
			        	$yesterday=mysql_fetch_array($result);//get the 2nd row of each table
			        	if(($yesterday[0])==0)
			        	{
			        		$yesterday[0]=10000;
			        	}
			        	$rate=(($today[0]-$yesterday[0])/ ($yesterday[0])*10000 );
			        
			        	$str=explode('_', $tablename[0]);//str mean the symbol of the stock
			        	$symbol=strtoupper($str[0]);
			        	$companyname_l=mysql_query("SELECT name FROM name100 WHERE epic = '$symbol'",$link2 );
			        	$companyname=mysql_fetch_array($companyname_l);
			        	$list[ $rate ] = $companyname[0];//$list[price]=>name
			        	$list_name_price[$companyname[0]]=$today[0];//$list_name_price[name]=>price
			        	$count++;
			        }
				
				krsort($list);//sort the rank
				$i=0;
				foreach($list as $rito=>$name) 
				{
					$rank[0][$i]=($rito/100);//rank[0][x] to record the rate
					$rank[1][$i]=$name;//rank[1][x] to record the name
					foreach ($list_name_price as $key => $value) 
					{
						if($name==$key)
						{
							$rank[2][$i]=$value;//rank[2][x] to record the price
						}
					}
					$i++;
				}
				
				

			echo "<div class=num><b>1</b></div>";		
			echo "<div class=\"artist\">{$rank[1][0]}</div>";
			echo "<div class=\"track\">{$rank[2][0]}</div>";
			echo "<div class=\"downloads\"<b><font color=\"#FF0000\">{$rank[0][0]}%</font></b></div>";
			echo "<div style=\"background:url(i/slash.gif); height:19px;\">";

			echo "<div class=\"num\"><b>2</b></div>";

			echo 	"<div class=\"artist\">{$rank[1][1]}</div>";
			echo 	"<div class=\"track\">{$rank[2][1]}</div>";
			echo 	"<div class=\"downloads\"<b><font color=\"#FF0000\">{$rank[0][1]}%</font></b></div>";
			echo 	"</div>";



			echo "<div class=\"num\"><b>3</b></div>";
			echo "<div class=\"artist\">{$rank[1][2]}</div>";
			echo "<div class=\"track\">{$rank[2][2]}</div>";
			echo "<div class=\"downloads\"<b><font color=\"#FF0000\">{$rank[0][2]}%</font></b></div>";
            
			echo "<div style=\"background:url(i/slash.gif); height:19px;\">";
				echo "<div class=\"num\"><b>4</b></div>";

				echo "<div class=\"artist\">{$rank[1][3]}</div>";
				echo "<div class=\"track\">{$rank[2][3]}</div>";
				echo "<div class=\"downloads\"<b><font color=\"#FF0000\">{$rank[0][3]}%</font></b></div>";
			echo "</div>";
			echo "<div class=\"num\"><b>5</b></div>";
			echo "<div class=\"artist\">{$rank[1][4]}</div>";
			echo "<div class=\"track\">{$rank[2][4]}</div>";
			echo "<div class=\"downloads\"<b><font color=\"#FF0000\">{$rank[0][4]}%</font></b></div>";
			echo "<div style=\"background:url(i/slash.gif); height:19px;\">";
				echo "<div class=\"num\"><b>6</b></div>";
				echo "<div class=\"artist\">{$rank[1][5]}</div>";
				echo "<div class=\"track\">{$rank[2][5]}</div>";
				echo "<div class=\"downloads\"<b><font color=\"#FF0000\">{$rank[0][5]}%</font></b></div>";
			echo "</div>";
			echo "<div class=\"num\"><b>7</b></div>";
			echo "<div class=\"artist\">{$rank[1][6]}</div>";
			echo "<div class=\"track\">{$rank[2][6]}</div>";
			echo "<div class=\"downloads\"<b><font color=\"#FF0000\">{$rank[0][6]}%</font></b></div>";
			echo "<div style=\"background:url(i/slash.gif); height:19px;\">";
				echo "<div class=\"num\"><b>8</b></div>";
				echo "<div class=\"artist\">{$rank[1][7]}</div>";
				echo "<div class=\"track\">{$rank[2][7]}</div>";
				echo "<div class=\"downloads\"<b><font color=\"#FF0000\">{$rank[0][7]}%</font></b></div>";
			echo "</div>";
			echo "<div class=\"num\"><b>9</b></div>";
			echo "<div class=\"artist\">{$rank[1][8]}</div>";
			echo "<div class=\"track\">{$rank[2][8]}</div>";
			echo "<div class=\"downloads\"<b><font color=\"#FF0000\">{$rank[0][8]}%</font></b></div>";
			echo "<div style=\"background:url(i/slash.gif); height:19px;\">";
				echo "<div class=\"num\"><b>10</b></div>";
				echo "<div class=\"artist\">{$rank[1][9]}</div>";
				echo "<div class=\"track\">{$rank[2][9]}</div>";
				echo "<div class=\"downloads\"<b><font color=\"#FF0000\">{$rank[0][9]}%</font></b></div>";
			echo "</div>";
			


        echo "</div><!-- /.span3 -->";
        
        
        echo "<!--span 9-->";
        echo "<div class=\"span9\">";
        echo "<div style=\"background-color:#E5E5E5;width:500px;margin-right:30px;float:right\"></div>";
			echo "<h1><b><font color=\"#339933\">Predict bottom 10 stocks</font></b></h1>";
			echo "<div style=\"background-color:#E5E5E5; padding:5px 0px 0px 0px; height:23px;\">";
				echo "<div style=\"float:left; padding-left:19px;\">№</div>";
				echo "<div style=\"float:left; padding-left:80px;\">Stock Name</div>";
				echo "<div style=\"float:left; padding-left:100px;\">Last</div>";
				echo "<div style=\"float:left; padding-left:70px;\">Percent</div>";
			echo "</div>";
			echo "<div class=num><b>1</b></div>";
			echo "<div class=\"artist\">{$rank[1][($i-11)]}</div>";
			echo "<div class=\"track\">{$rank[2][($i-11)]}</div>";
			echo "<div class=\"downloads\"><b><font color=\"#339933\">{$rank[0][($i-11)]}%</font></b></div>";
			echo "<div style=\"background:url(i/slash.gif); height:19px;\">";

			

				echo "<div class=\"num\"><b>2</b></div>";
				echo "<div class=\"artist\">{$rank[1][($i-10)]}</div>";
				echo "<div class=\"track\">{$rank[2][($i-10)]}</div>";
				echo "<div class=\"downloads\"><b><font color=\"#339933\">{$rank[0][($i-10)]}%</font></b></div>";
			echo "</div>";

			echo "<div class=\"num\"><b>3</b></div>";
			echo "<div class=\"artist\">{$rank[1][($i-9)]}</div>";
			echo "<div class=\"track\">{$rank[2][($i-9)]}</div>";
			echo "<div class=\"downloads\"><b><font color=\"#339933\">{$rank[0][($i-9)]}%</font></b></div>";
			echo "<div style=\"background:url(i/slash.gif); height:19px;\">";
				echo "<div class=\"num\"><b>4</b></div>";
				echo "<div class=\"artist\">{$rank[1][($i-8)]}</div>";
				echo "<div class=\"track\">{$rank[2][($i-8)]}</div>";
				echo "<div class=\"downloads\"><b><font color=\"#339933\">{$rank[0][($i-8)]}%</font></b></div>";
			echo "</div>";
			echo "<div class=\"num\"><b>5</b></div>";
			echo "<div class=\"artist\">{$rank[1][($i-7)]}</div>";
			echo "<div class=\"track\">{$rank[2][($i-7)]}</div>";
			echo "<div class=\"downloads\"><b><font color=\"#339933\">{$rank[0][($i-7)]}%</font></b></div>";
			echo "<div style=\"background:url(i/slash.gif); height:19px;\">";
				echo "<div class=\"num\"><b>6</b></div>";
				echo "<div class=\"artist\">{$rank[1][($i-6)]}</div>";
				echo "<div class=\"track\">{$rank[2][($i-6)]}</div>";
				echo "<div class=\"downloads\"><b><font color=\"#339933\">{$rank[0][($i-6)]}%</font></b></div>";
			echo "</div>";
			echo "<div class=\"num\"><b>7</b></div>";
			echo "<div class=\"artist\">{$rank[1][($i-5)]}</div>";
			echo "<div class=\"track\">{$rank[2][($i-5)]}</div>";
			echo "<div class=\"downloads\"><b><font color=\"#339933\">{$rank[0][($i-5)]}%</font></b></div>";
			echo "<div style=\"background:url(i/slash.gif); height:19px;\">";
				echo "<div class=\"num\"><b>8</b></div>";
				echo "<div class=\"artist\">{$rank[1][($i-4)]}</div>";
				echo "<div class=\"track\">{$rank[2][($i-4)]}</div>";
				echo "<div class=\"downloads\"><b><font color=\"#339933\">{$rank[0][($i-4)]}%</font></b></div>";
			echo "</div>";
			echo "<div class=\"num\"><b>9</b></div>";
			echo "<div class=\"artist\">{$rank[1][($i-3)]}</div>";
			echo "<div class=\"track\">{$rank[2][($i-3)]}</div>";
			echo "<div class=\"downloads\"><b><font color=\"#339933\">{$rank[0][($i-3)]}%</font></b></div>";
			echo "<div style=\"background:url(i/slash.gif); height:19px;\">";
				echo "<div class=\"num\"><b>10</b></div>";
				echo "<div class=\"artist\">{$rank[1][($i-2)]}</div>";
				echo "<div class=\"track\">{$rank[2][($i-2)]}</div>";
				echo "<div class=\"downloads\"><b><font color=\"#339933\">{$rank[0][($i-2)]}%</font></b></div>";
			echo "</div>";

			mysql_close($link1);
			mysql_close($link2);
?>
			
		
             
                <div class="blog-title">
                  <div class="divider"></div> 
             

                    <h2><a href="blog-single.html">the hotest stocks</a></h2>

                    <ol>
                        <li> Ranks stocks by the highest predicted Daily Volume</li>
                    </ol>

                    <span class="post-format-standart"></span>

                </div>
                
                 
                
   <table class="table table-bordered table-striped">
						<thead>
							<tr>
								<th>
									Stock Name
								</th>
								<th>
									Last Price
								</th>
								<th>
									Volume
								</th>
								
							</tr>
						</thead>
						<tbody>
							
								<?php
								$link1=mysql_connect('localhost','root','');
								mysql_select_db('his_info',$link1);
								$table = mysql_query("SHOW TABLES",$link1);

								while($tablename = mysql_fetch_array($table))  //tablename means the name of each table 
							        {	
							        	$str=explode('_', $tablename[0]);//str mean the symbol of the stock
			        					$symbol=strtoupper($str[0]);	
							        	$maxidrow=mysql_query("SELECT MAX(ID) FROM ".$tablename[0],$link1);
							        	$maxid=mysql_fetch_array($maxidrow);
							        	$id=$maxid[0]-10;        	
							        	$result=mysql_query("SELECT * FROM ".$tablename[0]." WHERE ID=".$id,$link1);
							        	$row=mysql_fetch_array($result);
							        	$volumelist[$symbol]=$row['volume'];
							        }

							    arsort($volumelist);
							    $i=0;
							    foreach($volumelist as $sname=>$svolume) 
								{
									$volumelist[0][$i]=$sname;//rank[0][x] to record the rate
									$volumelist[1][$i]=$svolume;//rank[1][x] to record the name
									$i++;
								}
								for($i=0;$i<10;$i++)
								{
									echo "<tr>";
									echo "<td>";
									echo "{$volumelist[0][$i]}";
									echo "</td>";
									echo "<td>";
									if(($handle = fopen("http://finance.yahoo.com/d/quotes.csv?s=".$volumelist[0][$i]."&f=p", "r"))!=0)
	            						$row=fgetcsv($handle);
										echo "{$row[0]}";
									echo "</td>";
									echo "<td>";
										echo "{$volumelist[1][$i]}";
									echo "</td>";
									echo "</tr>";
								}
								
								?>
								
								
							
						</tbody>
					</table>             
                
                
                
                




   <!-- #footer.container -->
    <footer id="footer" class="container">
        
        <!-- .row .clearfix -->
        <div class="row clearfix">

            <!-- .span3 -->
            <div class="span3">

                <h3 class="title">About Us</h3>

                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. In a ligula mauris. Donec vel felis metus, et laoreet enim. Donec congue nunc sit amet lacus lacinia pretium.</p>

                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. In a ligula mauris.</p>

            </div><!-- /.span3 -->

            <!-- .span3 -->
            <div class="span3">

                <h3 class="title">Latest Tweets</h3>

                <div class="tweet"></div> 

                <script type="text/javascript">
                    $(document).ready(function(){
                       //TWITTER
                        $(".tweet").tweet({
                              join_text: "auto",
                              username: "envato",
                              avatar_size: 0,
                              count: 2,
                              auto_join_text_default: "we said,",
                              auto_join_text_ed: "we",
                              auto_join_text_ing: "we were",
                              auto_join_text_reply: "we replied",
                              auto_join_text_url: "we were checking out",
                              loading_text: "loading tweets..."
                        });
                    });
                </script>

            </div><!-- /.span3 -->

            <!-- .span3 -->
            <div class="span3">

                <h3 class="title">Recent Post</h3>

                <ul>
                    <li class="first">
                        <span class="date">April 18, 2012</span>
                        <a href="default.htm">Lorem ipsum dolor sit amet, consectetur adipiscing elit. In a ligula mauris.</a>
                    </li>


                    <li>
                        <span class="date">April 18, 2012</span>
                        <a href="default.htm">Lorem ipsum dolor sit amet, consectetur adipiscing elit. In a ligula mauris.</a>
                    </li>
                </ul>

            </div><!-- /.span3 -->

            <!-- .span3 -->
            <div class="span3">
                
                <h3 class="title">Follow Us</h3>

                <!-- .social -->
                <ul class="social">
                    <li class="twitter"><a href="#">twitter</a></li>
           
                </ul><!-- /.social -->

            </div><!-- /.span3 -->

        </div><!-- /.row .clearfix -->

        <!-- #copyright.clearfix -->
        <div id="copyright" class="clearfix">

       

            <!-- #footer-menu -->
            <nav id="footer-menu">
                <ul class="clearfix">
                    <li><a href="#" class="current" data-description="Home Page">Home</a>
                    </li>
                    <li><a href="#">About</a></li>
                    <li><a href="#">Portfolio</a></li>
                    <li><a href="#">Blog</a></li>
                    <li><a href="#">Features</a></li>
                    <li><a href="#">Contact</a></li>
                </ul>
            </nav><!-- /#footer-menu -->

        </div><!-- /#copyright .clearfix -->

    </footer><!-- /#footer .container -->


</section><!-- /.container -->


</body>
</html>