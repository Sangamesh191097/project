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
                    String assign_bus = "";
                    if (session.getAttribute("assign_bus") != null) {
                        assign_bus = session.getAttribute("assign_bus").toString();
                    }
                %>
               <center><h4><%= assign_bus%></h4><% session.removeAttribute("assign_bus");%></center>
                <div class="row-bot">
                    <div class="center-shadow">
                        <div class="carousel-container">
                            <div id="carousel">
                                <h4>Assign Bus:</h4>
                                <form name="form" action="./assign_bus" method="post" onsubmit="return validation();">
                                    <table width="326" height="400"allign="right">
                                        <tr>
                                            <td>Bus ID:</td> <td><select name="bid" id="bid">
                                                    <option value="bid">BID</option>
                                                    <%
                                                        Connection con = DBConnection.getConnection();
                                                        Statement st = con.createStatement();
                                                        String q = "select * from bus_detail";
                                                        ResultSet rs = st.executeQuery(q);
                                                        while (rs.next()) {
                                                            String id = rs.getString("busid");


                                                    %>


                                                    <option value="<%=id%>"><%=id%></option>
                                                    <%}%> 
                                                </select></td>
                                        </tr>
                                        <tr>
                                            <td>Bus-Route ID:</td> <td><select name="brid" id="brid">
                                                    <option value="brid">Bus Route ID</option>
                                                    <%

                                                        String q1 = "select * from bus_route";
                                                        ResultSet rs1 = st.executeQuery(q1);
                                                        while (rs1.next()) {
                                                            String id = rs1.getString("routeid");


                                                    %>


                                                    <option value="<%=id%>"><%=id%></option>
                                                    <%}%> 
                                                </select></td>
                                        </tr>
                                        <tr>
                                            <td>Conductor ID:</td> <td><select name="cid" id="cid">
                                                    <option value="cid">Conductor ID</option>
                                                    <%

                                                        String q2 = "select * from conductor";
                                                        ResultSet rs2 = st.executeQuery(q2);
                                                        while (rs2.next()) {
                                                            String id = rs2.getString("cid");


                                                    %>


                                                    <option value="<%=id%>"><%=id%></option>
                                                    <%}%> 
                                                </select></td>
                                        </tr>


                                        <td height="42"></td>
                                        <td><input name="submit" type="submit" class="button2" value="Submit"/>&nbsp;&nbsp;&nbsp;&nbsp;<input name="reset" type="reset" class="button2" value="Clear"/>
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
