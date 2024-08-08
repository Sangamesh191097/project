<%@page import="Logic.info"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="Database.DBConnection"%>
<%@page import="java.sql.Connection"%>
<%@page import="Database.DBQuery"%>
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
                                     <li><a href="admin.jsp">Home</a></li>
                                    <li><a href="add_bus_route.jsp">Add Bus Route</a></li>
                                    <li><a href="addbus.jsp" >Add Buses</a></li>
                                    <li><a href="conductor.jsp">Add Conductor</a></li>
                                    <li><a href="conductor_details.jsp">Conductor Details</a></li>
                                    
                                    <li><a href="assignbus.jsp" >Assign Buses</a></li>
                                    <li><a href="view_users.jsp">View Users</a></li>
                                    <li><a href="index.jsp" >Logout</a></li>
                                </ul>
                            </nav>
                        </div>
                    </div>
                </div>
                 <%
                                    String conductor = "";
                                    if (session.getAttribute("conductor") != null) {
                                        conductor = session.getAttribute("conductor").toString();
                                    }
                                %>
                               <center><h4><%= conductor%></h4><% session.removeAttribute("conductor");%></center>
                <div class="row-bot">
                    <div class="center-shadow">
                        <div class="carousel-container">
                            <div id="carousel">
                                <h4>Add conductor Details:</h4>
                                <form name="form" action="./conductor" method="post" onsubmit="return validation();">
                                    <table width="326" height="400"allign="right">
                                        <%
                                            DBQuery dbq = new DBQuery();
                                            int cid = dbq.get_max_cid();

System.out.println("......................."+cid);

                                            cid++;

                                        %>
                                        <tr>
                                            <td>Conductor Id</td>
                                            <td><input type="text" name="cid" value="<%=cid%>"  size="25" readonly="true"/> </td>
                                        </tr>
                                        <tr>
                                            <td>First Name</td>
                                            <td><input type="text" name="fname" id="s" size="25" value="" /></td>
                                        </tr>
                                        <tr>
                                            <td>Last Name</td>
                                            <td><input type="text" name="lname" id="s" size="25" value="" /></td>
                                        </tr>
                                         <tr>
                                                    <td>Bus - ID</td>
                                                    <td><select name="bus_id">
                                                            <option value="Bus ID">Bus ID</option>
                                        <%
                                            Connection con = DBConnection.getConnection();
                                            Statement st = con.createStatement();
                                            String query = "select busid from bus_detail";
                                            ResultSet rs = st.executeQuery(query);
                                            String busid;
                                            while (rs.next()) {
                                                busid = rs.getString("busid");
                                        %> 
                                        <option value="<%=busid%>"><%=busid%></option>
                                           
                                        <% }%>
                                        
                                     </select></td>
                             </tr>     


                                        <tr>
                                            <td>Password</td>
                                            <td><input type="password" name="pass" id="pass" size="25" value="" /></td>
                                        </tr>
                                        <tr>
                                            <td>Confirm Password</td>
                                            <td><input type="password" name="cpass" id="cpass" size="25" value="" /></td>
                                        </tr>
                                        <tr>
                                            <td>Contact</td>
                                            <td><input type="text" name="mob" id="mob" size="25" value="" /></td>
                                        </tr>
                                        <td height="42"></td>
                                        <td><input name="submit" type="submit" class="button2" value="Register"/>&nbsp;&nbsp;&nbsp;&nbsp;<input name="reset" type="reset" class="button2" value="Clear"/>
                                        </td>
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
