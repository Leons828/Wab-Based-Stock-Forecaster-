<!--
written by:Haotian Zhu Jiachi Xie
debugged by:Haotian Zhu
-->
<!DOCTYPE html>

<html lang="en">
<head>
	<meta charset="utf-8">
	<title> - FREE THEMES & TEMPLATES</title>
	
	<link rel="stylesheet" href="csssimu/reset.css" type="text/css" media="screen" />
	
	<!--[if ! lte IE 6]><!-->
	<link rel="stylesheet" href="csssimu/style.css" type="text/css" media="screen" />
     <link href="css/bootstrap.css" rel="stylesheet" type="text/css" />
        <link href="css/bootstrap-responsive.css" rel="stylesheet" type="text/css" />
         <link href="css/moni.css" rel="stylesheet" type="text/css" />
        
	<!--<![endif]-->

	<!--[if gt IE 6]>
	<link rel="stylesheet" href="css/ie.css" type="text/css" media="screen" />
	<![endif]-->
	
	<!--[if IE 7]>
	<link rel="stylesheet" href="css/ie7.css" type="text/css" media="screen" />
	<![endif]-->

	<!--[if lte IE 6]>
	<link rel="stylesheet" href="http://universal-ie6-css.googlecode.com/files/ie6.1.1.css" media="screen, projection">
	<![endif]-->
	
	<link rel="stylesheet" href="csssimu/fancybox.css" type="text/css" media="screen" />
</head>
<body>



 <!-- #header .row -->
    <header id="header">
        <div class="row">

		   <!-- .span3.logo -->
            <span class="span3 logo"><a href="./index.html" ><img src="images/scarlet1.gif" alt="Logo" width="99" height="80" /></a></span>
            <!-- /.span3.logo -->
            
            <!-- .span9 -->
            <nav class="span9">

                <!-- #menu -->
                <ul id="menu">
                    <li><a href="./index.php"  ><font color="#999999">Home</font></a></li>
                    <li><a href="./testimonials.php"class="current"><font color="#999999">Simulator</font></a>
</li>
                    <li><a href="./blog-single-without.php"><font color="#999999">Prediction</font></a></li>                  
                    <li><a href="./blog-single-left.php"><font color="#999999">Message Board</font></a></li>                    
                    <li><a href="./contact.php"><font color="#999999">Contact<font></a></li>
                </ul><!-- /#menu -->

          </nav><!-- .span9-->
		
		
</div><!-- end .row -->

</div><!-- end #header -->

<!-- #welcome -->
    <section id="welcome">

        <!-- .span5 -->
        <div class="span5">
            <h1><font color="#FF0000">Welcome to Scarlet Predictor</font> </h1>
        </div><!-- /.span5 -->

        <!-- .span6 -->
        <div class="span6">
            <p><font color="#787878">We give you a professional stock prediction and a brand new user exprience</font> </p>
        </div><!-- /.span6 -->

    </section><!-- /#welcome -->





	
<div id="content">

	<div class="container">

	  <div id="main">
			
			<div id="trips-viewer" class="box">

				<div class="box-header">

					<ul class="tabs-nav">
						<li><a href="#featured-trips">My Account</a></li>
						<li><a href="#popular-trips">Ranking list</a></li>
						<li><a href="#most-viewed-trips" >Popular Holder</a></li>
					</ul>

					<a href="#" class="rss"><img src="img/icon-rss-small.png" alt="icon-rss" /></a>

			</div><!-- end .box-header -->

				<div id="featured-trips" class="tab-content">

					<div class="trips-container">

						<ul>

							<li id="featured-slide-one" class="trip-content">

								
								<?php	
								
								
								session_start();
								$username=$_SESSION['username'];
								$link2=mysql_connect('localhost','root','');
								mysql_select_db("user_info");

								$blarow=mysql_query("SELECT balance FROM userinfo");
                                $balance=mysql_fetch_array($blarow);
                                $bal=$balance['balance'];
								$stockvaluerow=mysql_query("SELECT * FROM ".$username);

                             	$value=$bal;

                               	while($stockvalue=mysql_fetch_array($stockvaluerow))
                               	{
                               		$stname=$stockvalue['stockname'];
                               		$stnum=$stockvalue['number_own'];
                               		if(($handle = fopen("http://finance.yahoo.com/d/quotes.csv?s=".$stname."&f=a", "r"))!=0)
	            					{
	            						$row=fgetcsv($handle);
	            					}
                               		$value=$value+($row[0]*$stnum);
                               	}
                               	//$value=$value+$bal;
                               	//$value=$bal+1326.2;
                               	$profit=$value-$bal;
                               	echo "<h4 class=\"title\"><font color=\"#A8A8A8\">Profit & Loss: </font> <font color=\"#FF0000\">  +\${$profit}</font></h4>";
								echo "<p class=\"meta\"></p>";
                                echo "<p><font color=\"#A8A8A8\">Total Assets：\${$value}</font></p>";
                                 
                                echo "<p><font color=\"#A8A8A8\">Available Funds: \${$bal}</font></p>";
         
                                $balanceall=mysql_query("SELECT * FROM userinfo");
                                while($balanceallrow=mysql_fetch_array($balanceall))
                                {
                                	$banlancelist[$balanceallrow['username']]=$balanceallrow['balance'];
                                }
                                arsort($banlancelist);
                                $k=0;
                                $balancerank=2;
                                foreach ($banlancelist as $key => $value) 
                                {
                                	if($bal==$value)
                                	{
                                		$balancerank=$k;
                                	}
                                	$k++;
                                }
                                echo "<p><font color=\"#A8A8A8\">Ranking:  {$balancerank}</font></p>";

								?>

							</li><!-- end #slide-one -->

							<li id="featured-slide-two" class="trip-content">

								
									
							<h4 class="title">

							<form action="trade.php" method="post"> 
							<label><font color="#A8A8A8">STOCK NAME</font></label> 
							<select name="symbol_buy"> 

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
							echo "<label><font color=\"#A8A8A8\">AMOUNT</font></label>"; 
							echo "<select name=\"number_buy\">";
							for($number=0;$number<50;$number++)
							{
								echo "<option value=\"{$number}\">{$number}</option>";
							} 
							 
							?>
							
							</select> 
							 </p>
								<input class="button" type="submit">
							</form>
							</h4>


							</li><!-- end #slide-two -->

							<li id="featured-slide-three" class="trip-content">

								
									
									<h4 class="title"><form action="" method="get"> 
							<label><font color="#A8A8A8">STOCK NAME</font></label> 
							<select name=""> 
								<?php
								$link=mysql_connect('localhost','root','');
									$username=$_SESSION["username"];
									mysql_select_db("user_info",$link);
									$row=mysql_query("SELECT stockname FROM {$username}",$link);
									$ind=0;
									while($name=mysql_fetch_array($row))
									{
										echo "<option value=\"{$ind}\">{$name['stockname']}</option>";
										$ind++;
									}
									
									
								?>
							</select> 
							</form> </h4>
															
															<p><form action="" method="get"> 
							<label><font color="#A8A8A8">AMOUNT</font></label> 
							<select name=""> 
							<option value="0">10</option> 
							<option value="1">20</option> 
							<option value="2">30</option> 
							</select> 
							</form> </p>

<a href="#" class="sent-to-friend"><font color="#A8A8A8">Real Price:</font> <font color="#FF0000"> +44.31</font></a>
								<a class="button"><font color="#A8A8A8">SUBMIT</font></a>

							</li><!-- end #slide-three -->

							<li id="featured-slide-four" class="trip-content">

								<a href="single-post.html">
									
									
									<h4 class="title"><font color="#A8A8A8">Stock Name: YHOO </font></h4>
								
                                
								<p class="meta"></p>

                                 <p><font color="#A8A8A8">Buy/Sell: buy</font></p>
                                 
                                
         
                                
                                <p><font color="#A8A8A8">Price:  42.16</font></p>
                                <p><font color="#A8A8A8">Amount:  15</font></p>
                                <p><font color="#A8A8A8">Time:  2015-04-28 12:25</font></p>

							</li><!-- end #slide-three -->

						</ul>

					</div><!-- end .trips-container -->

					<ul class="trips-nav">

						<li class="nav-button">
							<div class="content">
								<a href="#featured-slide-one" class="title">
																		<h6>Account</h6>
								</a>
								
								<ul class="links">
									<li><a href="#">Stocks：3</a> <span class="separator">|</span></li>
									<li><a href="#">Profit：$9000</a> <span class="separator"></span></li>
									
								</ul>
							</div><!-- end .content -->
						</li><!-- end .nav-button -->

						<li class="nav-button">
							<div class="content">
								<a href="#featured-slide-two" class="title">
									
									<h6>Buy</h6>
								</a>
								<p class="meta">Little<a href="#"> investment</a> make huge <a href="#">profit</a></p>
								<ul class="links">
									
								</ul>
							</div><!-- end .content -->
						</li><!-- end .nav-button -->

						<li class="nav-button">
							<div class="content">
								<a href="#featured-slide-three" class="title">
									
									<h6>Sell</h6>
								</a>
								<p class="meta">Earn <a href="#">money</a> right <a href="#">now</a></p>
								<ul class="links">
									
								</ul>
							</div><!-- end .content -->
						</li><!-- end .nav-button -->

						<li class="nav-button">
							<div class="content">
								<a href="#featured-slide-four" class="title">
									
									<h6>Transaction Query</h6>
								</a>
								<p class="meta">See transaction details</p>
								<ul class="links">
									
								</ul>
							</div><!-- end .content -->
						</li><!-- end .nav-button -->

					</ul><!-- end .trips-nav -->

				</div><!-- end #featured-trips -->

				<div id="popular-trips" class="tab-content">

					<div class="trips-container">

						<ul>

							<li id="popular-slide-one" class="trip-content">

								<!-- 总盈利率排名 -->
	<div style="display:block;" class="tab_mian" id="myTab_Content0">
		<table width="80%" border="0" cellpadding="0" cellspacing="1" bgcolor="#edf2f7">
			<tr>
				<th scope="col" width="78"><p class="tab_p">Ranking</p></th>
				<th scope="col" width="93"><p class="tab_p">User Name</p></th>
				
				<th scope="col" width="131"><p class="tab_p2">Total Earnings</p></th>
				<th scope="col" width="132"><p class="tab_p">Month Earnings</p></th>
				<th scope="col" width="134"><p class="tab_p">Week Earnings</p></th>
				
			</tr>
		</table>
		<table width="80%" border="0" cellpadding="0" cellspacing="1" bgcolor="#ffffff" class="table_hover_tr">
						<tr class="custom_color1">
				<td width="77"><p class="tab_p3"><img src="http://moni.10jqka.com.cn/moni/images/1.gif" /></p></td>
				<td width="95">
					<p class="tab_p4_1 l"><a href="http://moni.10jqka.com.cn/1892459" target="_blank">Leon</a></p>
				</td>
			
				<td width="129"><p class="tab_p5">1063.2</p></td>
				<td width="132"><p class="tab_p4"><span class="red">1063.2</span></p></td>
				<td width="135"><p class="tab_p4"><span class="red">1063.2</span></p></td>
				
				
			</tr>
						<tr class="custom_color2">
				<td width="77"><p class="tab_p3"><img src="http://moni.10jqka.com.cn/moni/images/2.gif" /></p></td>
				<td width="95">
					<p class="tab_p4_1 l"><a href="http://moni.10jqka.com.cn/137899571" target="_blank">Bamboo Li</a></p>
				</td>
				
				<td width="129"><p class="tab_p5">834.1</p></td>
				<td width="132"><p class="tab_p4"><span class="red">834.1</span></p></td>
				<td width="135"><p class="tab_p4"><span class="red">834.1</span></p></td>
				
				
				
			</tr>
						<tr class="custom_color1">
				<td width="77"><p class="tab_p3"><img src="http://moni.10jqka.com.cn/moni/images/3.gif" /></p></td>
				<td width="95">
					<p class="tab_p4_1 l"><a href="http://moni.10jqka.com.cn/27022" target="_blank">Bill Gates</a></p>
				</td>
				
				<td width="129"><p class="tab_p5">512.9</p></td>
				<td width="132"><p class="tab_p4"><span class="red">512.9</span></p></td>
				<td width="135"><p class="tab_p4"><span class="red">512.9</span></p></td>
				
				
			</tr>
						
						
					</table>
	</div>
	
	

								

								

								

							</li><!-- end #slide-one -->

							

						</ul>

					</div><!-- end .trips-container -->

					

				</div><!-- end #popular-trips -->

				<div id="most-viewed-trips" class="tab-content">

					<div class="trips-container">

						<ul>

							<li id="most-viewed-slide-one" class="trip-content">

								
								<!-- 总盈利率排名 -->
	<div style="display:block;" class="tab_mian" id="myTab_Content0">
		<table width="80%" border="0" cellpadding="0" cellspacing="1" bgcolor="#edf2f7">
			<tr>
				<th scope="col" width="78"><p class="tab_p">Ranking</p></th>
				<th scope="col" width="93"><p class="tab_p">Stock Name</p></th>
				
				<th scope="col" width="131"><p class="tab_p2">Hoder Amount</p></th>
				
				
				
			</tr>
		</table>
		<table width="80%" border="0" cellpadding="0" cellspacing="1" bgcolor="#ffffff" class="table_hover_tr">
						<tr class="custom_color1">
				<td width="77"><p class="tab_p3"><img src="http://moni.10jqka.com.cn/moni/images/1.gif" /></p></td>
				<td width="95">
					<p class="tab_p4_1 l"><a href="http://moni.10jqka.com.cn/1892459" target="_blank">GOOGL</a></p>
				</td>
			
				<td width="129"><p class="tab_p5">52</p></td>
				
				
				
				
			</tr>
						<tr class="custom_color2">
				<td width="77"><p class="tab_p3"><img src="http://moni.10jqka.com.cn/moni/images/2.gif" /></p></td>
				<td width="95">
					<p class="tab_p4_1 l"><a href="http://moni.10jqka.com.cn/137899571" target="_blank">AMZN</a></p>
				</td>
				
				<td width="129"><p class="tab_p5">41</p></td>
				
				
				
				
				
			</tr>
						<tr class="custom_color1">
				<td width="77"><p class="tab_p3"><img src="http://moni.10jqka.com.cn/moni/images/3.gif" /></p></td>
				<td width="95">
					<p class="tab_p4_1 l"><a href="http://moni.10jqka.com.cn/27022" target="_blank">YHOO</a></p>
				</td>
				
				<td width="129"><p class="tab_p5">34</p></td>
			</tr>
						
					</table>
	</div>
		

								
								

								

							</li><!-- end #slide-one -->

							
							

						</ul>

					</div><!-- end .trips-container -->

					

				</div><!-- end #most-viewed-trips -->

			</div><!-- end #trips-viewer -->

			
			
			
			

				

				
			
			

	  </div><!-- end #main -->

		
	 

	</div><!-- end .container -->
</div><!--end.content-->




<!-- start scripts -->
<script src="jssimu/jquery.min.js"></script>
<script src="jssimu/jquery.cycle.all.min.js"></script>
<script src="jssimu/jquery.easing.1.3.js"></script>
<script src="jssimu/organictabs.jquery.js"></script>
<script src="jssimu/jquery.fancybox-1.3.4.pack.js"></script>
<script src="jssimu/css3-mediaqueries.js"></script>
<script src="jssimu/custom.js"></script>
<!--[if IE]> <script src="js/selectivizr.js"></script> <![endif]-->
<!-- end scripts -->
</body>
</html>