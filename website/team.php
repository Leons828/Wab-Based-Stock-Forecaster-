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
            <span class="span3 logo"><a href="index.php" ><img src="images/scarlet1.gif" alt="Logo" width="100" height="80" /></a></span>
            <!-- /.span3.logo -->
            
            <!-- .span9 -->
            <nav class="span9">

                <!-- #menu -->
                <ul id="menu">
                    <li><a href="./index.php"  >Home</a></li>
                    <li><a href="./testimonials.php">Simulator</a>
</li>
                    <li><a href="./blog-single-without.php"class="current">Prediction</a></li>                  
                    <li><a href="./blog-single-left.php">Message Board</a></li>                    
                    <li><a href="./contact.php">Contact</a></li>
                </ul><!-- /#menu -->

          </nav><!-- .span9-->
        
        </div>
    </header><!-- /#header .row -->
<section id="typography">
  <div class="page-header">
    <h1><small>Predict the stock trend </small></h1>
  </div>


    <!-- .row -->
    <!-- .row -->
    <div id="main" style="height:400px; width:1200px;"></div>
    <!-- ECharts单文件引入 -->
    <script src="http://echarts.baidu.com/build/dist/echarts.js"></script>
    <script type="text/javascript">
      
        require.config({
            paths: {
                echarts: 'http://echarts.baidu.com/build/dist'
            }
        });
        
       
        require(
            [
                'echarts',
                'echarts/chart/line' // 使用柱状图就加载bar模块，按需加载
            ],
            function (ec) {
                
                var myChart = ec.init(document.getElementById('main')); 
                
                var option = {
    title : {
        text: 'Compare the history with real',
    },
    tooltip : {
        trigger: 'axis'
    },
    legend: {
        data:['real (Pur)','pred(Gre)']
    },
    toolbox: {
        show : true,
        feature : {
            mark : {show: true},
            dataView : {show: true, readOnly: false},
            magicType : {show: true, type: ['line', 'bar']},
            restore : {show: true},
            saveAsImage : {show: true}
        }
    },
    calculable : true,
    xAxis : [
        {
            type : 'category',
            boundaryGap : false,
            data : [
            <?php
                    if(!($link=mysql_connect('localhost','root','')))
                        {
                        echo "Database not connected!<br><br>";
                        }
                    mysql_select_db('his_info');
                    $symbol=$_POST['symbol'];
                    $symbol=$symbol."_his";
                    $row=mysql_query("SELECT date FROM {$symbol}");
                    for($p=0;$p<806;$p++)
                    {
                        $result=mysql_fetch_array($row);
                    }
                    for($p=0;$p<10;$p++)
                    {
                        $result=mysql_fetch_array($row);
                        echo "\"{$result[0]}\",";
                    }


                    ?>
                    ]
        }
    ],
    yAxis : [
        {
            type : 'value',
            axisLabel : {
                formatter: '${value} '
            }
        }
    ],
    series : [

        {
            name:'Real',
            type:'line',
            data:[<?php
                    if(!($link=mysql_connect('localhost','root','')))
                        {
                        echo "Database not connected!<br><br>";
                        }
                    mysql_select_db('his_info');
                    $symbol=$_POST['symbol'];
                    $symbol=$symbol."_his";
                    $row=mysql_query("SELECT close FROM {$symbol}");
                    for($p=0;$p<806;$p++)
                    {
                        $result=mysql_fetch_array($row);
                    }
                    for($p=0;$p<9;$p++)
                    {
                        $result=mysql_fetch_array($row);
                        echo "\"{$result[0]}\",";
                    }


                    ?>],
            markPoint : {
                data : [
                    {type : 'max', name: 'max'},
                    {type : 'min', name: 'min'}
                ]
            },
            markLine : {
                data : [
                    {type : 'average', name: 'average'}
                ]
            }
        },


        {
            name:'Predict',
            type:'line',
            data:[<?php
                    if(!($link=mysql_connect('localhost','root','')))
                        {
                        echo "Database not connected!<br><br>";
                        }
                    mysql_select_db('his_info');
                    $symbol=$_POST['symbol'];
                    $symbol=$symbol."_his";
                    $row=mysql_query("SELECT predict FROM {$symbol}");
                    for($p=0;$p<806;$p++)
                    {
                        $result=mysql_fetch_array($row);
                    }
                    for($p=0;$p<10;$p++)
                    {
                        $result=mysql_fetch_array($row);
                        echo "\"{$result[0]}\",";
                    }


                    ?>],
            
            markLine : {
                data : [
                    {type : 'average', name : 'average'}
                ]
            }
        }



    ]
};
                
        
                // 为echarts对象加载数据 
                myChart.setOption(option); 
            }
        );
    </script>

 <div class="divider"></div>
 
 <h3><font size="3"><B>Prediction Details</B></font><br /></h3>



    <div style="display:block; width:700px;">
<table class="table table-bordered table-striped">
						<thead>
							<tr>
								<th>
									Date
								</th>
								<th>
									Value
								</th>
								<th>
									Price
								</th>
								<th>
									Percents
								</th>
								
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>
									Tomorrow
								</td>
								<td>
									Close
								</td>
								<td>
									<?php
                                    if(!($link=mysql_connect('localhost','root','')))
                                        {
                                            echo "Database not connected!<br><br>";
                                        }
                                        mysql_select_db('his_info');
                                        $symbol=$_POST['symbol'];
                                        $symbol=$symbol."_his";
                                        $row=mysql_query("SELECT * FROM {$symbol}");
                                        for($p=0;$p<816;$p++)
                                        {
                                            $result=mysql_fetch_array($row);
                                        }
                                        
                                            $result=mysql_fetch_array($row);
                                            echo "{$result['predict']}";
                                        

								echo "</td>";
								echo "<td>";
									echo "{$result['accuracy']}%";
                                    ?>
								</td>
								
							</tr>
							
							
								
							</tr>
						</tbody>
                        <tbody>
                            <tr>
                                <td>
                                    Tomorrow
                                </td>
                                <td>
                                    Low
                                </td>
                                <td>
                                    <?php
                                    if(!($link=mysql_connect('localhost','root','')))
                                        {
                                            echo "Database not connected!<br><br>";
                                        }
                                        mysql_select_db('his_info');
                                        $symbol=$_POST['symbol'];
                                        $symbol=$symbol."_his";
                                        $row=mysql_query("SELECT * FROM {$symbol}");
                                        for($p=0;$p<816;$p++)
                                        {
                                            $result=mysql_fetch_array($row);
                                        }
                                        
                                            $result=mysql_fetch_array($row);
                                            echo "{$result['pre_low']}";
                                        

                                echo "</td>";
                                echo "<td>";
                                    echo "/";
                                    ?>
                                </td>
                                
                            </tr>
                            
                            
                                
                            </tr>
                        </tbody>
                        <tbody>
                            <tr>
                                <td>
                                    Tomorrow
                                </td>
                                <td>
                                    High
                                </td>
                                <td>
                                    <?php
                                    if(!($link=mysql_connect('localhost','root','')))
                                        {
                                            echo "Database not connected!<br><br>";
                                        }
                                        mysql_select_db('his_info');
                                        $symbol=$_POST['symbol'];
                                        $symbol=$symbol."_his";
                                        $row=mysql_query("SELECT * FROM {$symbol}");
                                        for($p=0;$p<816;$p++)
                                        {
                                            $result=mysql_fetch_array($row);
                                        }
                                        
                                            $result=mysql_fetch_array($row);
                                            echo "{$result['pre_high']}";
                                        

                                echo "</td>";
                                echo "<td>";
                                    echo "/";
                                    ?>
                                </td>
                                
                            </tr>
                            
                            
                                
                            </tr>
                        </tbody>
					</table>             
                

</div>
<div style="display:block; width:700px;">
<table class="table table-bordered table-striped">
                        <thead>
                            <tr>
                                <th>
                                    Date
                                </th>
                                <th>
                                    Value
                                </th>
                                <th>
                                    Price
                                </th>
                                
                                
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>
                                    30 Days Later
                                </td>
                                <td>
                                    Value Goes Up
                                </td>
                                <td>
                                    <?php
                                    if(!($link=mysql_connect('localhost','root','')))
                                        {
                                            echo "Database not connected!<br><br>";
                                        }
                                        mysql_select_db('his_info');
                                        $symbol=$_POST['symbol'];
                                        $symbol=$symbol."_his";
                                        $row=mysql_query("SELECT * FROM {$symbol}");
                                        $result=mysql_fetch_array($row);
                                        echo "{$result['up_margin']}";
                                        echo "</td>";
                                ?>
                            </tr>
                        </tbody>
                        <tbody>
                            <tr>
                                <td>
                                    30 Days Later
                                </td>
                                <td>
                                    Value Goes Up
                                </td>
                                <td>
                                    <?php
                                    if(!($link=mysql_connect('localhost','root','')))
                                        {
                                            echo "Database not connected!<br><br>";
                                        }
                                        mysql_select_db('his_info');
                                        $symbol=$_POST['symbol'];
                                        $symbol=$symbol."_his";
                                        $row=mysql_query("SELECT * FROM {$symbol}");
                                        $result=mysql_fetch_array($row);
                                        echo "{$result['down_margin']}";
                                        echo "</td>";
                                ?>
                            </tr>
                        </tbody>
                        <tbody>
                            <tr>
                                <td>
                                    30 Days Later
                                </td>
                                <td>
                                    Up Region
                                </td>
                                <td>
                                    <?php
                                    if(!($link=mysql_connect('localhost','root','')))
                                        {
                                            echo "Database not connected!<br><br>";
                                        }
                                        mysql_select_db('his_info');
                                        $symbol=$_POST['symbol'];
                                        $symbol=$symbol."_his";
                                        $row=mysql_query("SELECT * FROM {$symbol}");
                                        
                                            $result=mysql_fetch_array($row);
                                            echo "{$result['pre_up']}";
                                            echo "</td>";
                                ?>
                                
                            </tr>
                            
                            
                                
                            
                        </tbody>
                        <tbody>
                            <tr>
                                <td>
                                    30 Days Later
                                </td>
                                <td>
                                    Down Region
                                </td>
                                <td>
                                    <?php
                                    if(!($link=mysql_connect('localhost','root','')))
                                        {
                                            echo "Database not connected!<br><br>";
                                        }
                                        mysql_select_db('his_info');
                                        $symbol=$_POST['symbol'];
                                        $symbol=$symbol."_his";
                                        $row=mysql_query("SELECT * FROM {$symbol}");
                                        $result=mysql_fetch_array($row);
                                        echo "{$result['pre_close']}";
                                        echo "</td>";
                                ?>
                                
                            </tr>
                            
                            
                                
                            
                        </tbody>
                    </table>             
                

</div>
           <div class="divider"></div> 

            <div class="row">
              <div class="span6">
                <h3>Explanation of terms</h3>
<p><b>Trend:</b> The stock is going up or down. </p>

                    <p><b>Percent:</b> The difference between the current price and the future day's settlement price expressed as a percentage.</p>
                    <p><b>Closed price:</b> The predicted closed price of the day.
                </div>

            </div>
            
            <div class="divider"></div>

        </section><!-- /#page.span9.alignright -->

        
    </div><!-- /.row -->





    
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