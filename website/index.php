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
        <link href="css/tabcontent.css" rel="stylesheet" type="text/css" />
         <link href="css/css.css" rel="stylesheet" type="text/css" />
         <link href="css/lanrenzhijia.css" type="text/css" rel="stylesheet" />
         <link href="csssimu/foot.css" type="text/css" rel="stylesheet" />
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
        <script>
	function setTab(name,cursel){
		cursel_0=cursel;
		for(var i=1; i<=links_len; i++){
			var menu = document.getElementById(name+i);
			var menudiv = document.getElementById("con_"+name+"_"+i);
			if(i==cursel){
				menu.className="off";
				menudiv.style.display="block";
			}
			else{
				menu.className="";
				menudiv.style.display="none";
			}
		}
	}

	function Next(){                                                        
		cursel_0++;
		if (cursel_0>=5)cursel_0=1   //<!--number in loop-->
		setTab(name_0,cursel_0);
	} 

	var name_0='one';
	var cursel_0=1;
	var ScrollTime=3000;//循环周期，可任意更改（毫秒）
	var links_len,iIntervalId;
	
	onload=function(){
		var links = document.getElementById("tab1").getElementsByTagName('li')
		links_len=links.length;
		for(var i=0; i<links_len; i++){
			links[i].onmouseover=function(){
				clearInterval(iIntervalId);
				this.onmouseout=function(){
					iIntervalId = setInterval(Next,ScrollTime);;
				}
			}
		}
		document.getElementById("con_"+name_0+"_"+links_len).parentNode.onmouseover=function(){
			clearInterval(iIntervalId);
			this.onmouseout=function(){
				iIntervalId = setInterval(Next,ScrollTime);;
			}
		}
		setTab(name_0,cursel_0);
		iIntervalId = setInterval(Next,ScrollTime);
	}
	</script>
    </head>
    
<body>

<!-- .container -->
<section class="container">

    <!-- #header .row -->
    <header id="header">
        <div class="row">

            <!-- .span3.logo -->
         
            <span class="span3 logo"><a href="./index.php" ><img src="images/scarlet1.gif" alt="Logo" width="100" height="80" /></a></span>
            
            <!-- /.span3.logo -->
            
            <!-- .span9 -->
            <nav class="span9">
                <div class="container-menu">   
                <!-- #menu -->
                <ul id="menu">
                    <li><a href="./index.php" class="current" ><font color="#999999">Home</font></a></li>
                    <li><a href="./testimonials.php"><font color="#999999">Simulator</font></a>
</li>
                    <li><a href="./blog-single-without.php"><font color="#999999">Prediction</font></a></li>                  
                    <li><a href="./blog-single-left.php"><font color="#999999">Message Board</font></a></li>                    
                    <li><a href="./contact.php"><font color="#999999">Contact<font></a></li>
                </ul><!-- /#menu -->
                </div>




          </nav><!-- .span9-->
        
        </div>
    </header><!-- /#header .row -->
	
   
    <!-- #welcome -->
    <section id="welcome">

        <!-- .span5 -->
        <div class="span5">
            <h1>Welcome to <span class="color">Scarlet Predictor</span> </h1>
        </div><!-- /.span5 -->

        <!-- .span6 -->
        <div class="span6">
           
            <form action="his.php" method="post"> 
							<label><font color="#A8A8A8">Get The History Data</font></label> 
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
								<input class="button" type="submit">
							</form>
        </div><!-- /.span6 -->

    </section><!-- /#welcome -->


    <!-- #home_slider -->
    <section id="home_slider">

        <!-- .slides -->
        <ul class="slides">
            <li>
                <img src="http://chart.finance.yahoo.com/t?s=%5eIXIC&lang=en-US&region=US&width=800&height=350" alt="Slider" />

                <div class="num">
                    <span>01</span>
                    <a href="#" data-rel="tooltip" title="Go to..."></a>
                </div>
            </li>

            <li>
                <img src="http://chart.finance.yahoo.com/t?s=%5eDJI&lang=en-US&region=US&width=800&height=350" alt="Slider" />

                <div class="num">
                    <span>02</span>
                    <a href="#" data-rel="tooltip" title="Go to..."></a>
                </div>
            </li>

            <li>
                <img src="http://chart.finance.yahoo.com/t?s=%5eGSPC&lang=en-US&region=US&width=800&height=350" alt="Slider" />

                <div class="num">
                    <span>03</span>
                    <a href="#" data-rel="tooltip" title="Go to..."></a>
                </div>
            </li>
            
        </ul><!-- /.slides -->

    </section><!-- /#home_slider -->


    <!-- .row .services -->
    <section class="row services">
        
        
        
     

        <!-- .span3 -->
        <div class="span3"><div style="background-color:#E5E5E5;width:500px;margin-left:30px;float:left"></div>
		
			<h1><b><font color="#FF0000">Real top 10 stocks</font></b></h1>
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
			        	$result=mysql_query("SELECT close FROM ".$tablename[0],$link1);
			        	$today=mysql_fetch_array($result);//get the top row of each table
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
			echo "<h1><b><font color=\"#339933\">Real bottom 10 stocks</font></b></h1>";
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
			</div>
        
      
         </div><!-- /.span9 -->
         </section><!-- /.row.services -->
         
         
         
   
         
         <!-- tab begin -->
<div class="tab1" id="tab1">
	<ul id="countrytabs" class="shadetabs">
			<li id="one1" onclick="setTab('one',1)"><a>Bussiness</a></li>
			<li id="one2" onclick="setTab('one',2)"><a>Technology</a></li>
			<li id="one3" onclick="setTab('one',3)"><a>Medical</a></li>
			<li id="one4" onclick="setTab('one',4)"><a>Sports</a></li>
		</ul>
	
     <div class="tabcontent_section">
       <div id="Bussiness" class="tabcontent">
        
        
		<div id="con_one_1">
		
		  <script language="JavaScript" src="http://feed2js.org//feed2js.php?src=http%3A%2F%2Fnews.google.com%2Fnews%3Fpz%3D1%26cf%3Dall%26ned%3Dus%26hl%3Den%26topic%3Db%26output%3Drss&chan=y&num=3&desc=100&au=y&utf=y"  charset="UTF-8" type="text/javascript"></script>

       
		<noscript>
		
		<a href="http://feed2js.org//feed2js.php?src=http%3A%2F%2Fnews.google.com%2Fnews%3Fpz%3D1%26cf%3Dall%26ned%3Dus%26hl%3Den%26topic%3Db%26output%3Drss&chan=y&num=3&desc=100&au=y&utf=y&html=y">View RSS feed</a>
		</noscript>
        
	    </div>
      </div>
      
    <div id="Technology" class="tabcontent">
		<div id="con_one_2" style="display:none;"><script language="JavaScript" src="http://feed2js.org//feed2js.php?src=http%3A%2F%2Fnews.google.com%2Fnews%3Fpz%3D1%26cf%3Dall%26ned%3Dus%26hl%3Den%26topic%3Dtc%26output%3Drss&chan=y&num=3&desc=100&au=y&utf=y"  charset="UTF-8" type="text/javascript"></script>

		<noscript>
		<a href="http://feed2js.org//feed2js.php?src=http%3A%2F%2Fnews.google.com%2Fnews%3Fpz%3D1%26cf%3Dall%26ned%3Dus%26hl%3Den%26topic%3Dtc%26output%3Drss&chan=y&num=3&desc=100&au=y&utf=y&html=y">View RSS feed</a>
		</noscript>
	   </div>
     </div>
        
       <div id="Medical" class="tabcontent">
		<div id="con_one_3" style="display:none;"><script language="JavaScript" src="http://feed2js.org//feed2js.php?src=http%3A%2F%2Fnews.google.com%2Fnews%3Fpz%3D1%26cf%3Dall%26ned%3Dus%26hl%3Den%26topic%3Dm%26output%3Drss&chan=y&num=3&desc=100&au=y&utf=y"  charset="UTF-8" type="text/javascript"></script>

<noscript>
<a href="http://feed2js.org//feed2js.php?src=http%3A%2F%2Fnews.google.com%2Fnews%3Fpz%3D1%26cf%3Dall%26ned%3Dus%26hl%3Den%26topic%3Dm%26output%3Drss&chan=y&num=3&desc=100&au=y&utf=y&html=y">View RSS feed</a>
</noscript>
       </div>
     </div>

      <div id="Sports" class="tabcontent">
		<div id="con_one_4" style="display:none;"><script language="JavaScript" src="http://feed2js.org//feed2js.php?src=http%3A%2F%2Fnews.google.com%2Fnews%3Fpz%3D1%26cf%3Dall%26ned%3Dus%26hl%3Den%26topic%3Ds%26output%3Drss&chan=y&num=3&desc=100&au=y&utf=y"  charset="UTF-8" type="text/javascript"></script>

<noscript>
<a href="http://feed2js.org//feed2js.php?src=http%3A%2F%2Fnews.google.com%2Fnews%3Fpz%3D1%26cf%3Dall%26ned%3Dus%26hl%3Den%26topic%3Ds%26output%3Drss&chan=y&num=3&desc=100&au=y&utf=y&html=y">View RSS feed</a>
</noscript>
        </div>
      </div>

	</div>
</div>
<div id="footer">

	<div class="container clearfix">

	

		<div class="one-third">

			<h4>Software Enginerring 2</h4>

			

		</div><!-- end .one-third -->

		<div class="one-fourth">

			<h4>Group 1</h4>

			

			
		</div><!-- end .one-fourth -->

		<div class="two-fifth last">

			<h4><span>Scarlet Predictor</span></h4>

			

			

		</div><!-- end .one-misc -->

	</div><!-- end .container -->

</div><!-- end #footer -->



</section><!-- /.container -->


</body>
</html>
