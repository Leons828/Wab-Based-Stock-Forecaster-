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
                     <li><a href="./index.php" ><font color="#999999">Home</font></a></li>
                    <li><a href="./testimonials.php"><font color="#999999">Simulator</font></a>
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
            <h1><font color="#FF0000">Welcome to Scarlet History Data</font> </h1>
        </div><!-- /.span5 -->

        <!-- .span6 -->
        <div class="span6">
            <p><font color="#787878">We give you a professional stock prediction and a brand new user exprience</font> </p>
        </div><!-- /.span6 -->

    </section><!-- /#welcome -->


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
                'echarts/chart/k' // 使用柱状图就加载bar模块，按需加载
            ],
            function (ec) {
                
                var myChart = ec.init(document.getElementById('main')); 
                
                var option = {

                     title : {
        text: 'K Line'
    },
    tooltip : {
        trigger: 'axis',
        formatter: function (params) {
            var res = params[0].seriesName + ' ' + params[0].name;
            res += '<br/>  Open : ' + params[0].value[0] + '  High : ' + params[0].value[3];
            res += '<br/>  Close : ' + params[0].value[1] + '  Low : ' + params[0].value[2];
            return res;
        }
    },
    legend: {
        <?php echo "data:['{$_POST['symbol']}']" ?>
    },
    toolbox: {
        show : true,
        feature : {
            mark : {show: true},
            dataZoom : {show: true},
            dataView : {show: true, readOnly: false},
            magicType: {show: true, type: ['line', 'bar']},
            restore : {show: true},
            saveAsImage : {show: true}
        }
    },
    dataZoom : { 
        show : true,
        realtime: true,
        start : 50,
        end : 100
    },
    xAxis : [
        {
            type : 'category',
            boundaryGap : true,
            axisTick: {onGap:false},
            splitLine: {show:false},
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
                    for($p=0;$p<816;$p++)
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
            scale:true,
            boundaryGap: [0.01, 0.01]
        }
    ],
    series : [
        {
            name:'K Line',
            type:'k',
            data:[ // 开盘，收盘，最低，最高
                

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
                    echo "[{$result['open']},{$result['close']},{$result['low']},{$result['high']}],";
                }

                ?>
            ]
        }
    ]
                };
        
                // 为echarts对象加载数据 
                myChart.setOption(option); 
            }
        );
    </script>
    <br>

			

			

					

									<div style="display:block; width:1000px;">
										<div class="entry">

								<div class="entry-header">

									<h2 class="title"><font color="#999999"><?php echo $_POST['symbol'] ?> real time data (if the market closed, will show the information at 4pm)</font></h2>

									
								</div><!-- end .entry-header -->

								<div class="entry-content">
				<table class="table table-bordered table-striped">
										<thead>
											<tr>
												<th>
													Date
												</th>
												<th>
													Time
												</th>
												<th>
													Name
												</th>
												<th>
													Open
												</th>
												<th>
													High 
												</th>
												<th>
													Low 
												</th>
												<th>
													Ask 
												</th>
												<th>
													Volume 
												</th>
												
											</tr>
										</thead>
										<tbody>

											<tr>
											<?php
											if(($handle = fopen("http://finance.yahoo.com/d/quotes.csv?s=".$_POST['symbol']."&f=nohgav", "r"))!=0)
	            							$row=fgetcsv($handle);

												$today=date("Y-m-d");
												$now=date("h:ia");
												echo "<td>";
													echo $today;
												echo "</td>";
												echo "<td>";
													echo $now;
												echo "</td>";
												echo "<td>";
													echo $row[0];
												echo "</td>";
												echo "<td>";
													echo $row[1];
												echo "</td>";
												echo "<td>";
													echo $row[2];
												echo "</td>";
												echo "<td>";
													echo $row[3];
												echo "</td>";
												echo "<td>";
													echo $row[4];
												echo "</td>";
												echo "<td>";
													echo $row[5];
												echo "</td>";
												
											?>
											</tr>
											
											
												
											</tr>
										</tbody>
									</table>             
				                

				</div>

					<hr />

					

				</div><!-- end .entry-content -->

			</div><!-- end .entry -->
			
			

				

				
			
			

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