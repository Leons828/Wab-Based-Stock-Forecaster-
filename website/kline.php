<!--
written by:Haotian Zhu Jiachi Xie
debugged by:Haotian Zhu
-->
<!DOCTYPE html>
<head>
    <meta charset="utf-8">
    <title>ECharts</title>
</head>
<body>
    <!-- 为ECharts准备一个具备大小（宽高）的Dom -->
    <div id="main" style="height:400px"></div>
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
        data:['Doe Jones']
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
                    $row=mysql_query("SELECT date FROM yhoo_his");
                    

                    while($result=mysql_fetch_array($row))
                    {
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
                $row=mysql_query("SELECT * FROM yhoo_his");
                while($result=mysql_fetch_array($row))
                {
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
</body>