<%@page import="Logic.info"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <title></title>
    <meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link rel="stylesheet" href="css/reset.css" type="text/css" media="screen">
    <link rel="stylesheet" href="css/style.css" type="text/css" media="screen">
    <link rel="stylesheet" href="css/zerogrid.css" type="text/css" media="screen">
	<link rel="stylesheet" href="css/responsive.css" type="text/css" media="screen"> 
	<script src="js/css3-mediaqueries.js"></script>  
    <script src="js/jquery-1.6.3.min.js" type="text/javascript"></script>
    <script src="js/cufon-yui.js" type="text/javascript"></script>
    <script src="js/cufon-replace.js" type="text/javascript"></script>
    <script src="js/NewsGoth_400.font.js" type="text/javascript"></script>
	<script src="js/NewsGoth_700.font.js" type="text/javascript"></script>
    <script src="js/NewsGoth_Lt_BT_italic_400.font.js" type="text/javascript"></script>
    <script src="js/Vegur_400.font.js" type="text/javascript"></script> 
    <script src="js/FF-cash.js" type="text/javascript"></script>
	<!--[if lt IE 7]>
    <div style=' clear: both; text-align:center; position: relative;'>
        <a href="http://windows.microsoft.com/en-US/internet-explorer/products/ie/home?ocid=ie6_countdown_bannercode">
        	<img src="http://storage.ie6countdown.com/assets/100/images/banners/warning_bar_0000_us.jpg" border="0" height="42" width="820" alt="You are using an outdated browser. For a faster, safer browsing experience, upgrade for free today." />
        </a>
    </div>
	<![endif]-->
    <!--[if lt IE 9]>
   		<script type="text/javascript" src="js/html5.js"></script>
        <link rel="stylesheet" href="css/ie.css" type="text/css" media="screen">
	<![endif]-->
</head>
<body id="page5">
	<div class="extra">
    	<!--==============================header=================================-->
        <header>
        	<div class="row-top">
            	
            </div>
            <div class="menu-row">
            	<div class="menu-bg">
                    <div class="main">
                        <nav class="indent-left">
                            <ul class="menu wrapper">
                               <li><a href="index.jsp">Home</a></li>
                                    <li class="active"><a href="contact.jsp">Contact Us</a></li>
                              
                            </ul>
                        </nav>
                    </div>
                </div>
            </div>
             <div class="row-bot">
                    <div class="center-shadow">
                        <div class="carousel-container">
                              <div id="carousel">
                                <br/><br/><br/><br/>
                                <center><h4 style="color: #000;">Contact Address</h4> </center>  
                                <center>
                                   Smart Bus Transportation<br>
                                   88552200011<br>
                                   smartbus@gmail.com

                                </center>

                            </div>
                        </div>
                    </div>
                </div>
            </header>
        
        <!--==============================content================================-->
      <section id="content"><div class="ic"><%=info.name%></div>
                <div class="main">
                    <div class="zerogrid">
                        <div class="wrapper row">

                        </div>
                    </div>
                </div>
                <div class="block"></div>
            </section>
        </div>

        <!--==============================footer=================================-->
        <footer>
            <div class="padding">
                <div class="main">
                    <div class="zerogrid">
                        <div class="wrapper">
                            <article class="col-2-3">
                                <div class="wrap-col">
                                   
                                </div>
                            </article>
                            <article class="col-1-3">
                                <div class="wrap-col">
                                    <h4 class="indent-bot">Link to Us:</h4>
                                    <ul class="list-services border-bot img-indent-bot">
                                        <li><a href="#">Facebook</a></li>
                                        <li><a class="item-1" href="#">Twitter</a></li>
                                        <li><a class="item-2" href="#">Picassa</a></li>
                                        <li><a class="item-3" href="#">You Tube</a></li>
                                    </ul>
                                    <p class="p1">Copyright &copy; 2017 </p>
                                    <p class="p1"><a class="link" target="_blank" href="index.jsp" rel="nofollow"><%=info.name%></a><%=info.name%></p>
                                    <p class="p1"><a class="link" target="_blank" href="index.jsp" rel="nofollow"><%=info.name%></a> <%=info.name%></p>
                                    <!-- {%FOOTER_LINK} -->
                                </div>
                            </article>
                        </div>
                    </div>
                </div>
            </div>
        </footer>
	<script type="text/javascript"> Cufon.now(); </script>
</body>
</html>
