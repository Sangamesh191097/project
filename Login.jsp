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
        <script src="js/jquery.featureCarousel.js" type="text/javascript"></script>     
        <script type="text/javascript">
            $(document).ready(function() {
                $("#carousel").featureCarousel({
                    autoPlay:7000,
                    trackerIndividual:false,
                    trackerSummation:false,
                    topPadding:50,
                    smallFeatureWidth:.9,
                    smallFeatureHeight:.9,
                    sidePadding:0,
                    smallFeatureOffset:0
                });
            });
        </script>
        <script type="text/javascript">

            function valid()
            {
                var a=document.form.userId.value;
                var b=document.form.pass.value;

                if(a=="")
                {
                    alert("Enter Username");
                    document.form.userId.focus();
                    return false;
                }
                if(b=="")
                {
                    alert("Enter Password");
                    document.form.pass.focus();
                    return false;
                }
            }

        </script>
                    <style>
#customers {
  font-family: Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

#customers td, #customers th {
  border: 1px solid #ddd;
  padding: 8px;
}

#customers tr:nth-child(even){background-color: #f2f2f2;}

#customers tr:hover {background-color: #ddd;}

#customers th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: left;
  background-color: #04AA6D;
  color: white;
}
</style>
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
    <body id="page1">
        <div class="extra">
            <!--==============================header=================================-->
            <header>
                <div class="row-top">
                    <div class="main">
                        <div class="wrapper">
                            <center><p style="font-size: 30px; margin-top: 35px;"><a href="index.jsp">SMART PUBLIC BUS TRANSPORTATION</a></p></center>

                        </div>
                    </div>
                </div>
                <div class="menu-row">
                    <div class="menu-bg">
                        <div class="main">
                            <nav class="indent-left">
                                <ul class="menu wrapper">
                                    <li class="active"><a href="index.jsp">Home</a></li>
                                    <li><a href="contact.jsp">Contact Us</a></li>
                                </ul>
                            </nav>
                        </div>
                    </div>
                </div>
                <%
                    String login = "";
                    if (session.getAttribute("login") != null) {
                        login = session.getAttribute("login").toString();
                    }
                %>
                <center><h4><%= login%></h4><% session.removeAttribute("login");%></center>
                <div class="row-bot">
                    <div class="center-shadow">
                        <div class="carousel-container">
                            <div id="carousel">
                                <h4>Login Here:</h4>
                                <form action="./loginServlet" method="post" name="form" onsubmit="return valid();">
                                    <table id="customers">
                                        <tr>
                                            <td>UserID </td><td><input type="text" name="userId"/></td>
                                        </tr>
                                        <tr>
                                            <td>Password </td><td><input type="password" name="pass"/></td>
                                        </tr>
                                        <tr>
                                            <td></td><td><input type="submit" name="submit"  value="Login"/></td>
                                        </tr>
                                    </table>
                                </form>

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
                                    
                                    <p class="p1">Copyright &copy;  <%=info.year%> </p>
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
