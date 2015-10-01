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
        <link href="css/style.css" rel="stylesheet" type="text/css" />
        <link href="css/bootstrap-responsive.css" rel="stylesheet" type="text/css" />
        <link href="css/responsive.css" rel="stylesheet" type="text/css" />
        <link href="css/skin-default.css" rel="stylesheet" type="text/css" />
        <link href="css/prettyPhoto.css" rel="stylesheet" type="text/css" />
        <!-- END: css -->
            
        <!-- BEGIN: js -->
    	<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.7/jquery.min.js"></script>
        <script type="text/javascript" src="js/google-code-prettify/prettify.js"></script>
        <script type="text/javascript" src="js/jquery.easing.1.3.js"></script>
        <script type="text/javascript" src="js/modernizr.js"></script> 
        <script type="text/javascript" src="js/respond.js"></script> 
        <script type="text/javascript" src="js/superfish.js"></script>
        <script type="text/javascript" src="js/hoverIntent.js"></script>
        <script type="text/javascript" src="js/jquery.prettyPhoto.js"></script> 
        <script type="text/javascript" src="js/jquery.hoverdir.js"></script>
        <script type="text/javascript" src="js/jquery.tweet.js"></script>
        <script type="text/javascript" src="js/jquery.flexslider.js"></script>
        <script type="text/javascript" src="js/jflickrfeed.min.js"></script>
        <script type="text/javascript" src="js/bootstrap.js"></script> 
        <script type="text/javascript" src="js/main.js"></script>
        <!--[if lt IE 9]><script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
		<![endif]-->
        <!-- END: js -->
        
    </head>
    
<body>

<!-- .container -->
<section class="container">


    <!-- #header  -->
    <header id="header">
        <!-- .row -->
        <div class="row">

            <!-- .span3.logo -->
            <div class="span3 logo">
                <a href="./index.php" ><img src="images/scarlet1.gif" alt="Logo" width="100" height="80" /></a>
            </div><!-- /.span3.logo -->
            
            <nav class="span9">

                <!-- #menu -->
                <ul id="menu">
<!DOCTYPE html>
                    <li><a href="./index.php"  >Home</a></li>
                    <li><a href="./testimonials.php">Simulator</a>
</li>
                    <li><a href="./blog-single-without.php">Prediction</a></li>                  
                    <li><a href="./blog-single-left.php"class="current">Message Board</a></li>                    
                    <li><a href="./contact.php">Contact </a></li>
                </ul><!-- /#menu -->

          </nav><!-- .span9-->

        </div><!-- /.row -->
    </header><!-- /#header  -->


    </article><!-- /.entry -->

            <!-- #comments -->
            <section id="comments">

                <h3>Comments (<?php
                if(!($link=mysql_connect('localhost','root','')))
                    {
                    echo "Database not connected!<br><br>";
                    }

                mysql_select_db('user_info');
                $row=mysql_query("SELECT indx FROM message");
                while($result=mysql_fetch_array($row))
                {
                    $count=$result[0];
                }
                echo $count;

                ?>)</h3>

                <!-- .comments-list -->
                <ol class="comments-list">
<?php
                if(!($link=mysql_connect('localhost','root','')))
                    {
                    echo "Database not connected!<br><br>";
                    }

                mysql_select_db('user_info');
                $row=mysql_query("SELECT * FROM message");
                while($result=mysql_fetch_array($row))
                {
                    echo "<li>";
                        echo "<article class=\"clearfix\">";
                            echo "<img src=\"images/avatar.png\" class=\"avatar\" alt=\"Image\">";
                            echo "<div class=\"comment-meta\">";
                                echo "<h4><a href=\"#\">{$result['username']}</a> - <small>{$result['time']}</small></h4> ";
                                echo "<a class=\"comment-reply label label-inverse\" href=\"#\">Reply</a>";
                            echo "</div>";
                            echo "<div class=\"comment-body\">";
                                echo "<p>{$result['message']}</p>";
                            echo "</div>";
                        echo "</article>";
                    echo "</li>";
                }
?>
                   
                </ol><!-- /.comments-list -->

            </section><!-- /#comments -->

            <!-- #respond -->
            <section id="respond">

                <h3>Leave a comment</h3>



                <!-- #comments-form .row -->
                <form id="comments-form" action="message.php" class="row" method="post">
            
                    
                    <p class="span9">
                        <label for="comm-message"><strong>Your Comment</strong> (required)</label>
                        <textarea required rows="10" cols="80" id="comm-message" name="message"></textarea>
                    </p>
                    
                    <p class="span9"><input type="submit" value="Submit Comment" class="btn btn-danger btn-large"></p>
                    
                </form><!-- /#comments-form .row -->





            </section><!-- /#respond -->

        </section><!-- /#page.span9.alignright -->
        
        <!-- #sidebar.span3.alignleft -->
        <aside id="sidebar" class="span3 alignleft">

            <!-- .widget -->
   <!--         <div class="widget">

                <h3 class="title">Categories</h3>

                <ul class="categories">
                    <li class="current"><a href="#">Photoshop</a></li>
                    <li><a href="#">Themeforest</a></li>
                    <li><a href="#">Envato</a></li>
                    <li><a href="#">Wordpress</a></li>
                    <li><a href="#">News</a></li>
                </ul>

            </div><!-- /.widget -->

            <!-- .widget -->
  <!--          <div class="widget">

                <h3 class="title">Latest Post</h3>

                <ul class="latest-post">
                    <li class="clearfix">
                        <img src="images/post-format/latest-video.png" alt="Images">
                        <a href="#">Lorem ipsum dolor sit amet consectetur adipiscing elit</a>
                        <span class="date">June 30, 2012</span>
                    </li>
                    <li class="clearfix">
                        <img src="images/post-format/latest-standart.png" alt="Images">
                        <a href="#">Lorem ipsum dolor sit amet</a>
                        <span class="date">June 30, 2012</span>
                    </li>
                    <li class="clearfix">
                        <img src="images/post-format/latest-gallery.png" alt="Images">
                        <a href="#">Lorem ipsum dolor sit amet consectetur elit</a>
                        <span class="date">June 30, 2012</span>
                    </li>
                    <li class="clearfix">
                        <img src="images/post-format/latest-quote.png" alt="Images">
                        <a href="#">Lorem ipsum dolor sit amet adipiscing</a>
                        <span class="date">June 30, 2012</span>
                    </li>
                    <li class="clearfix">
                        <img src="images/post-format/latest-aside.png" alt="Images">
                        <a href="#">Lorem ipsum dolor sit amet adipiscing</a>
                        <span class="date">June 30, 2012</span>
                    </li>
                </ul>
                
            </div><!-- /.widget --> 

            <!-- .widget -->
   <!--         <div class="widget">

                <h3 class="title">Flickr</h3>

                <ul class="widget-flickr clearfix"></ul> 
                
            </div><!-- /.widget -->           

            <!-- .widget -->
   <!--         <div class="widget">
                
                <h3 class="title">Latest Tweets</h3>

                <div id="sidebar-tweet" class="tweet"></div> 

                <script type="text/javascript">
                    $(document).ready(function(){
                       //TWITTER
                        $("#sidebar-tweet").tweet({
                              join_text: "auto",
                              username: "envato",
                              avatar_size: 0,
                              count: 3,
                              auto_join_text_default: "we said,",
                              auto_join_text_ed: "we",
                              auto_join_text_ing: "we were",
                              auto_join_text_reply: "we replied",
                              auto_join_text_url: "we were checking out",
                              loading_text: "loading tweets..."
                        });
                    });
                </script>

            </div><!-- /.widget -->

            <!-- .widget -->
    <!--        <div class="widget">

                <h3 class="title">Latest Work</h3>
                <div id="carousel2" class="carousel slide">
                    <!-- Carousel items -->
   <!--                 <div class="carousel-inner">
                        <div class="active item"><a href="./posrtfolio-single.html"><img src="example/post1.jpg" alt="Images" /></a></div>
                        <div class="item"><a href="./posrtfolio-single.html"><img src="example/post2.jpg" alt="Images" /></a></div>
                        <div class="item"><a href="./posrtfolio-single.html"><img src="example/post3.jpg" alt="Images" /></a></div>
                    </div>
                    <!-- Carousel nav -->
   <!--                 <a class="carousel-control left" href="#carousel2" data-slide="prev">&lsaquo;</a>
                    <a class="carousel-control right" href="#carousel2" data-slide="next">&rsaquo;</a>
                </div>  

                <script type="text/javascript">
                    $(document).ready(function(){
                       $('.carousel2').carousel({
                            interval: 4000
                        })
                    });
                </script>

            </div><!-- /.widget -->

            <!-- .widget -->
      <!--      <div class="widget">

                <h3 class="title">Archive</h3>

                <ul>
                    <li><i class="icon-calendar"></i><a href="#">February 2012</a> <span class="alignright">(12)</span></li>
                    <li><i class="icon-calendar"></i><a href="#">March 2012</a> <span class="alignright">(8)</span></li>
                    <li><i class="icon-calendar"></i><a href="#">April 2012</a> <span class="alignright">(15)</span></li>
                    <li><i class="icon-calendar"></i><a href="#">May 2012</a> <span class="alignright">(2)</span></li>
                    <li><i class="icon-calendar"></i><a href="#">June 2012</a> <span class="alignright">17)</span></li>
                </ul>

            </div><!-- /.widget -->

            <!-- .widget -->
            <div class="widget">

                <h3 class="title">Recent Comments</h3>

                <ul class="recent-comments">
                    <li><span>bingumd says:</span> <a href="#">Lorem ipsum dolor sit amet, consectetur adipiscing elit</a></li>
                    <li><span>bingumd says:</span> <a href="#">Lorem ipsum dolor sit amet, consectetur adipiscing elit</a></li>
                    <li><span>bingumd says:</span> <a href="#">Lorem ipsum dolor sit amet, consectetur adipiscing elit</a></li>
                    <li><span>bingumd says:</span> <a href="#">Lorem ipsum dolor sit amet, consectetur adipiscing elit</a></li>
                </ul>

            </div><!-- /.widget -->

            <!-- .widget -->
      <!--      <div class="widget">

                <h3 class="title">Video Widget</h3>

                <div class="video-container">
                    <iframe src="http://player.vimeo.com/video/7449107" width="674" height="375" frameborder="0" webkitAllowFullScreen mozallowfullscreen allowFullScreen></iframe>
                </div> 
                
            </div><!-- /.widget -->
            
        </aside><!-- /#sidebar.span3.alignleft -->

    </div><!-- /.row -->


    <!-- #footer.container -->
    <footer id="footer" class="container">
        
        <!-- .row .clearfix -->
        <div class="row clearfix">

            <!-- .span3 -->
            <div class="span3">

   <!--             <h3 class="title">About Us</h3>

                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. In a ligula mauris. Donec vel felis metus, et laoreet enim. Donec congue nunc sit amet lacus lacinia pretium.</p>

                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. In a ligula mauris.</p>  -->

            </div><!-- /.span3 -->

            <!-- .span3 -->
            <div class="span3">

     <!--           <h3 class="title">Latest Tweets</h3>

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
                </script>   -->

            </div><!-- /.span3 -->

            <!-- .span3 -->
            <div class="span3">

   <!--             <h3 class="title">Recent Post</h3>

                <ul>
                    <li class="first">
                        <span class="date">April 18, 2012</span>
                        <a href="">Lorem ipsum dolor sit amet, consectetur adipiscing elit. In a ligula mauris.</a>
                    </li>


                    <li>
                        <span class="date">April 18, 2012</span>
                        <a href="">Lorem ipsum dolor sit amet, consectetur adipiscing elit. In a ligula mauris.</a>
                    </li>
                </ul>  -->

            </div><!-- /.span3 -->

            <!-- .span3 -->
            <div class="span3">
                
                <h3 class="title">Follow Us</h3>

                <!-- .social -->
                <ul class="social">
                    <li class="twitter"><a href="#">twitter</a></li>
                    <li class="facebook"><a href="#">facebook</a></li>
                    <li class="dribbble"><a href="#">dribbble</a></li>
                    <li class="vimeo"><a href="#">vimeo</a></li>
                    <li class="flickr"><a href="#">flickr</a></li>
                    <li class="pinterest"><a href="#">pinterest</a></li>
                </ul><!-- /.social -->

            </div><!-- /.span3 -->

        </div><!-- /.row .clearfix -->

        <!-- #copyright.clearfix -->
        <div id="copyright" class="clearfix">

            <p>Copyright 2012. All rights reserved.More Templates</p>

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