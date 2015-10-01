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
        <script type="text/javascript" src="js/jquery.quicksand.js"></script>
        <script type="text/javascript" src="js/jquery.tweet.js"></script>
        <script type="text/javascript" src="js/jquery.flexslider.js"></script>
        <script type="text/javascript" src="js/bootstrap.js"></script> 
        <script type="text/javascript" src="js/jquery.form.js"></script>
        <script type="text/javascript" src="js/jquery.validate.min.js"></script>
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
            
            <!-- .span9 -->
        <nav class="span9">

                <!-- #menu -->
                <ul id="menu">
                    <li><a href="./index.php"  >Home</a></li>
                    <li><a href="./testimonials.php">Simulator</a>
</li>
                    <li><a href="./blog-single-without.php">Prediction</a></li>                  
                    <li><a href="./blog-single-left.php">Message Board</a></li>                    
                    <li><a href="./contact.php" class="current" >Contact</a></li>
                </ul><!-- /#menu -->

          </nav><!-- .span9-->

        </div><!-- /.row -->
    </header><!-- /#header  -->


    <!-- #welcome -->
    <section id="welcome">

        <!-- .span4 -->
  <!--      <div class="span5">
            <h1>Welcome to the <span class="color">RedDesign</span> template demo</h1>
        </div><!-- /.span4 -->

        <!-- .span6 -->
  <!--      <div class="span6">
            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut in lacus rhoncus elit egestas uctus. Nullam at lectus augue. Ut tristique consectetur elit, sed tincidunt elit iaculis in. In hac habitasse platea. Lorem ipsum dolor sit amet, consecteturadipiscing elit.</p>
        </div><!-- /.span6 -->

    </section><!-- /#welcome -->



    <div class="map-container">
        <iframe width="425" height="350" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="https://maps.google.com/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=Piscataway,+NJ,+United+States&amp;aq=0&amp;oq=new+y&amp;sll=51.500622,-0.08935&amp;sspn=0.04424,0.111494&amp;ie=UTF8&amp;hq=&amp;hnear=New+York&amp;t=m&amp;z=10&amp;ll=40.714353,-74.005973&amp;output=embed"></iframe><br />
    </div>


    <div class="divider"></div>

    <div class="row">

        <section class="span3">
            <h1>get in touch</h1>

            <p>To get more information about this website, please contact us</p>

            <h3>Address</h3>
            <address>
                <strong>Rutgers University</strong><br>
                Piscataway Township, NJ<br><br>
                <abbr>Group Member and Email:</abbr><br><br>
                Haotian Zhu<br>
                            zht0828@gmail.com<br><br>
                Jiachi Xie<br>
                            jx116@scarletmail.rutgers.edu<br><br>
                Mengzhu Li<br>
                            ml21@scarletmail.rutgers.edu<br><br>
                Ziye Sang<br>
                            s164@scarletmail.rutgers.edu<br><br>
                Lei Pang<br>
                            lp31@scarletmail.rutgers.edu<br><br>

                
                
            </address>

        </section>



        <div class="span9">

            <div id="contact-progress" class="alert alert-success" style="display:none;">Loading...</div>
    
            <!-- #contact-form .row -->
            <form id="contact-form" class="row" method="post" action="mail.php">
                <p class="span3">
                    <label for="author"><strong>Name</strong> (required)</label>
                    <input type="text" id="author" name="author" class="required" />
                </p>
                <p class="span3">
                    <label for="email"><strong>Email</strong> (required)</label>
                    <input type="text" id="email" name="email" class="required email" />
                </p>
                <p class="span3">
                    <label for="url"><strong>Website</strong></label>
                    <input type="text" name="subject" id="url" class="url" />
                </p>
                <p class="span9">
                    <label for="text"><strong>Message</strong> (required)</label>
                    <textarea id="text" name="text" rows="10" cols="10" class="required"></textarea>
                </p>
                <p class="span12"><input type="submit" value="Send Message" class="btn btn-danger btn-large"></p>
            </form><!-- /#comments-form .row -->

            <script type="text/javascript">
                  $(document).ready(function(){
                        //CONTACT FORM
                        var options = { 
                                    target: '#contact-progress', 
                                    success:  showResponse
                                }
                        $("#contact-form").validate({
                            submitHandler: function(form) {
                                $(form).ajaxSubmit(options); 
                            }
                        });
                        function showResponse() {
                                $('#contact-progress').fadeIn(500).delay(3000).fadeOut(500);
                        }
                  });
            </script>
            
        </div>

    </div><!-- /.row -->

    <!-- #footer.container -->
    <footer id="footer" class="container">
        
        <!-- .row .clearfix -->
        <div class="row clearfix">

            <!-- .span3 -->
    <!--        <div class="span3">

                <h3 class="title">About Us</h3>

                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. In a ligula mauris. Donec vel felis metus, et laoreet enim. Donec congue nunc sit amet lacus lacinia pretium.</p>

                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. In a ligula mauris.</p>

            </div><!-- /.span3 -->

            <!-- .span3 -->
       <!--     <div class="span3">

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
     <!--       <div class="span3">

                <h3 class="title">Recent Post</h3>

                <ul>
                    <li class="first">
                        <span class="date">April 18, 2012</span>
                        <a href="">Lorem ipsum dolor sit amet, consectetur adipiscing elit. In a ligula mauris.</a>
                    </li>


                    <li>
                        <span class="date">April 18, 2012</span>
                        <a href="">Lorem ipsum dolor sit amet, consectetur adipiscing elit. In a ligula mauris.</a>
                    </li>
                </ul>

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

            <p>Copyright 2012. All rights reserved.More Templates </p>

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