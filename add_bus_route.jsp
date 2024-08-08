<%@page import="Logic.info"%>
<%@page import="java.sql.ResultSet"%>
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
        <script laguage="javascript">   
            function getLocS(test){  
   
    
                var bstop = test.value;
   
 
                var xmlhttp;
                if (window.XMLHttpRequest)
                {// code for IE7+, Firefox, Chrome, Opera, Safari
                    xmlhttp=new XMLHttpRequest();
                }
                else
                {// code for IE6, IE5
                    xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
                }
                xmlhttp.onreadystatechange=function()
                {
                    if (xmlhttp.readyState==4 && xmlhttp.status==200)
                    {
                
                        var res=xmlhttp.responseText;
                        var arr=res.split("-");
             
                        document.getElementById("src_lat").value=arr[0];
                        document.getElementById("src_lon").value=arr[1];
                    }
                }
                xmlhttp.open("GET","get_loc?bstop="+bstop+"",true);
                xmlhttp.send();
    
    
            }

            function getLocD(test){  
   
    
                var bstop = test.value;
   
 
                var xmlhttp;
                if (window.XMLHttpRequest)
                {// code for IE7+, Firefox, Chrome, Opera, Safari
                    xmlhttp=new XMLHttpRequest();
                }
                else
                {// code for IE6, IE5
                    xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
                }
                xmlhttp.onreadystatechange=function()
                {
                    if (xmlhttp.readyState==4 && xmlhttp.status==200)
                    {
                
                        var res=xmlhttp.responseText;
                        var arr=res.split("-");
            
                        document.getElementById("des_lat").value=arr[0];
                        document.getElementById("des_lon").value=arr[1];
                    }
                }
                xmlhttp.open("GET","get_loc?bstop="+bstop+"",true);
                xmlhttp.send();
    
    
            }
            
            
            
            function getLoc1(test){  
   
    
                var bstop = test.value;
   
 
                var xmlhttp;
                if (window.XMLHttpRequest)
                {// code for IE7+, Firefox, Chrome, Opera, Safari
                    xmlhttp=new XMLHttpRequest();
                }
                else
                {// code for IE6, IE5
                    xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
                }
                xmlhttp.onreadystatechange=function()
                {
                    if (xmlhttp.readyState==4 && xmlhttp.status==200)
                    {
                
                        var res=xmlhttp.responseText;
                        var arr=res.split("-");
           
                        document.getElementById("s1_lat").value=arr[0];
                        document.getElementById("s1_lon").value=arr[1];
                    }
                }
                xmlhttp.open("GET","get_loc?bstop="+bstop+"",true);
                xmlhttp.send();
    
    
            }
            
            function getLoc2(test){  
   
    
                var bstop = test.value;
   
 
                var xmlhttp;
                if (window.XMLHttpRequest)
                {// code for IE7+, Firefox, Chrome, Opera, Safari
                    xmlhttp=new XMLHttpRequest();
                }
                else
                {// code for IE6, IE5
                    xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
                }
                xmlhttp.onreadystatechange=function()
                {
                    if (xmlhttp.readyState==4 && xmlhttp.status==200)
                    {
                
                        var res=xmlhttp.responseText;
                        var arr=res.split("-");
           
                        document.getElementById("s2_lat").value=arr[0];
                        document.getElementById("s2_lon").value=arr[1];
                    }
                }
                xmlhttp.open("GET","get_loc?bstop="+bstop+"",true);
                xmlhttp.send();
    
    
            }
            function getLoc3(test){  
   
    
                var bstop = test.value;
   
 
                var xmlhttp;
                if (window.XMLHttpRequest)
                {// code for IE7+, Firefox, Chrome, Opera, Safari
                    xmlhttp=new XMLHttpRequest();
                }
                else
                {// code for IE6, IE5
                    xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
                }
                xmlhttp.onreadystatechange=function()
                {
                    if (xmlhttp.readyState==4 && xmlhttp.status==200)
                    {
                
                        var res=xmlhttp.responseText;
                        var arr=res.split("-");
           
                        document.getElementById("s3_lat").value=arr[0];
                        document.getElementById("s3_lon").value=arr[1];
                    }
                }
                xmlhttp.open("GET","get_loc?bstop="+bstop+"",true);
                xmlhttp.send();
    
    
            }
            function getLoc4(test){  
   
    
                var bstop = test.value;
   
 
                var xmlhttp;
                if (window.XMLHttpRequest)
                {// code for IE7+, Firefox, Chrome, Opera, Safari
                    xmlhttp=new XMLHttpRequest();
                }
                else
                {// code for IE6, IE5
                    xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
                }
                xmlhttp.onreadystatechange=function()
                {
                    if (xmlhttp.readyState==4 && xmlhttp.status==200)
                    {
                
                        var res=xmlhttp.responseText;
                        var arr=res.split("-");
           
                        document.getElementById("s4_lat").value=arr[0];
                        document.getElementById("s4_lon").value=arr[1];
                    }
                }
                xmlhttp.open("GET","get_loc?bstop="+bstop+"",true);
                xmlhttp.send();
    
    
            }
            function getLoc5(test){  
   
    
                var bstop = test.value;
   
 
                var xmlhttp;
                if (window.XMLHttpRequest)
                {// code for IE7+, Firefox, Chrome, Opera, Safari
                    xmlhttp=new XMLHttpRequest();
                }
                else
                {// code for IE6, IE5
                    xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
                }
                xmlhttp.onreadystatechange=function()
                {
                    if (xmlhttp.readyState==4 && xmlhttp.status==200)
                    {
                
                        var res=xmlhttp.responseText;
                        var arr=res.split("-");
           
                        document.getElementById("s5_lat").value=arr[0];
                        document.getElementById("s5_lon").value=arr[1];
                    }
                }
                xmlhttp.open("GET","get_loc?bstop="+bstop+"",true);
                xmlhttp.send();
    
    
            }
            function getLoc6(test){  
   
    
                var bstop = test.value;
   
 
                var xmlhttp;
                if (window.XMLHttpRequest)
                {// code for IE7+, Firefox, Chrome, Opera, Safari
                    xmlhttp=new XMLHttpRequest();
                }
                else
                {// code for IE6, IE5
                    xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
                }
                xmlhttp.onreadystatechange=function()
                {
                    if (xmlhttp.readyState==4 && xmlhttp.status==200)
                    {
                
                        var res=xmlhttp.responseText;
                        var arr=res.split("-");
           
                        document.getElementById("s6_lat").value=arr[0];
                        document.getElementById("s6_lon").value=arr[1];
                    }
                }
                xmlhttp.open("GET","get_loc?bstop="+bstop+"",true);
                xmlhttp.send();
    
    
            }
            function getLoc7(test){  
   
    
                var bstop = test.value;
   
 
                var xmlhttp;
                if (window.XMLHttpRequest)
                {// code for IE7+, Firefox, Chrome, Opera, Safari
                    xmlhttp=new XMLHttpRequest();
                }
                else
                {// code for IE6, IE5
                    xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
                }
                xmlhttp.onreadystatechange=function()
                {
                    if (xmlhttp.readyState==4 && xmlhttp.status==200)
                    {
                
                        var res=xmlhttp.responseText;
                        var arr=res.split("-");
           
                        document.getElementById("s7_lat").value=arr[0];
                        document.getElementById("s7_lon").value=arr[1];
                    }
                }
                xmlhttp.open("GET","get_loc?bstop="+bstop+"",true);
                xmlhttp.send();
    
    
            }
            function getLoc8(test){  
   
    
                var bstop = test.value;
   
 
                var xmlhttp;
                if (window.XMLHttpRequest)
                {// code for IE7+, Firefox, Chrome, Opera, Safari
                    xmlhttp=new XMLHttpRequest();
                }
                else
                {// code for IE6, IE5
                    xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
                }
                xmlhttp.onreadystatechange=function()
                {
                    if (xmlhttp.readyState==4 && xmlhttp.status==200)
                    {
                
                        var res=xmlhttp.responseText;
                        var arr=res.split("-");
           
                        document.getElementById("s8_lat").value=arr[0];
                        document.getElementById("s8_lon").value=arr[1];
                    }
                }
                xmlhttp.open("GET","get_loc?bstop="+bstop+"",true);
                xmlhttp.send();
    
    
            }
            function getLoc9(test){  
   
    
                var bstop = test.value;
   
 
                var xmlhttp;
                if (window.XMLHttpRequest)
                {// code for IE7+, Firefox, Chrome, Opera, Safari
                    xmlhttp=new XMLHttpRequest();
                }
                else
                {// code for IE6, IE5
                    xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
                }
                xmlhttp.onreadystatechange=function()
                {
                    if (xmlhttp.readyState==4 && xmlhttp.status==200)
                    {
                
                        var res=xmlhttp.responseText;
                        var arr=res.split("-");
           
                        document.getElementById("s9_lat").value=arr[0];
                        document.getElementById("s9_lon").value=arr[1];
                    }
                }
                xmlhttp.open("GET","get_loc?bstop="+bstop+"",true);
                xmlhttp.send();
    
    
            }
            function getLoc10(test){  
   
    
                var bstop = test.value;
   
 
                var xmlhttp;
                if (window.XMLHttpRequest)
                {// code for IE7+, Firefox, Chrome, Opera, Safari
                    xmlhttp=new XMLHttpRequest();
                }
                else
                {// code for IE6, IE5
                    xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
                }
                xmlhttp.onreadystatechange=function()
                {
                    if (xmlhttp.readyState==4 && xmlhttp.status==200)
                    {
                
                        var res=xmlhttp.responseText;
                        var arr=res.split("-");
           
                        document.getElementById("s10_lat").value=arr[0];
                        document.getElementById("s10_lon").value=arr[1];
                    }
                }
                xmlhttp.open("GET","get_loc?bstop="+bstop+"",true);
                xmlhttp.send();
    
    
            }
            function getLoc11(test){  
   
    
                var bstop = test.value;
   
 
                var xmlhttp;
                if (window.XMLHttpRequest)
                {// code for IE7+, Firefox, Chrome, Opera, Safari
                    xmlhttp=new XMLHttpRequest();
                }
                else
                {// code for IE6, IE5
                    xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
                }
                xmlhttp.onreadystatechange=function()
                {
                    if (xmlhttp.readyState==4 && xmlhttp.status==200)
                    {
                
                        var res=xmlhttp.responseText;
                        var arr=res.split("-");
           
                        document.getElementById("s11_lat").value=arr[0];
                        document.getElementById("s11_lon").value=arr[1];
                    }
                }
                xmlhttp.open("GET","get_loc?bstop="+bstop+"",true);
                xmlhttp.send();
    
    
            } function getLoc12(test){  
   
    
                var bstop = test.value;
   
 
                var xmlhttp;
                if (window.XMLHttpRequest)
                {// code for IE7+, Firefox, Chrome, Opera, Safari
                    xmlhttp=new XMLHttpRequest();
                }
                else
                {// code for IE6, IE5
                    xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
                }
                xmlhttp.onreadystatechange=function()
                {
                    if (xmlhttp.readyState==4 && xmlhttp.status==200)
                    {
                
                        var res=xmlhttp.responseText;
                        var arr=res.split("-");
           
                        document.getElementById("s12_lat").value=arr[0];
                        document.getElementById("s12_lon").value=arr[1];
                    }
                }
                xmlhttp.open("GET","get_loc?bstop="+bstop+"",true);
                xmlhttp.send();
    
    
            }
            function getLoc13(test){  
   
    
                var bstop = test.value;
   
 
                var xmlhttp;
                if (window.XMLHttpRequest)
                {// code for IE7+, Firefox, Chrome, Opera, Safari
                    xmlhttp=new XMLHttpRequest();
                }
                else
                {// code for IE6, IE5
                    xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
                }
                xmlhttp.onreadystatechange=function()
                {
                    if (xmlhttp.readyState==4 && xmlhttp.status==200)
                    {
                
                        var res=xmlhttp.responseText;
                        var arr=res.split("-");
           
                        document.getElementById("s13_lat").value=arr[0];
                        document.getElementById("s13_lon").value=arr[1];
                    }
                }
                xmlhttp.open("GET","get_loc?bstop="+bstop+"",true);
                xmlhttp.send();
    
    
            } function getLoc14(test){  
   
    
                var bstop = test.value;
   
 
                var xmlhttp;
                if (window.XMLHttpRequest)
                {// code for IE7+, Firefox, Chrome, Opera, Safari
                    xmlhttp=new XMLHttpRequest();
                }
                else
                {// code for IE6, IE5
                    xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
                }
                xmlhttp.onreadystatechange=function()
                {
                    if (xmlhttp.readyState==4 && xmlhttp.status==200)
                    {
                
                        var res=xmlhttp.responseText;
                        var arr=res.split("-");
           
                        document.getElementById("s14_lat").value=arr[0];
                        document.getElementById("s14_lon").value=arr[1];
                    }
                }
                xmlhttp.open("GET","get_loc?bstop="+bstop+"",true);
                xmlhttp.send();
    
    
            }
            function getLoc15(test){  
   
    
                var bstop = test.value;
   
 
                var xmlhttp;
                if (window.XMLHttpRequest)
                {// code for IE7+, Firefox, Chrome, Opera, Safari
                    xmlhttp=new XMLHttpRequest();
                }
                else
                {// code for IE6, IE5
                    xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
                }
                xmlhttp.onreadystatechange=function()
                {
                    if (xmlhttp.readyState==4 && xmlhttp.status==200)
                    {
                
                        var res=xmlhttp.responseText;
                        var arr=res.split("-");
           
                        document.getElementById("s15_lat").value=arr[0];
                        document.getElementById("s15_lon").value=arr[1];
                    }
                }
                xmlhttp.open("GET","get_loc?bstop="+bstop+"",true);
                xmlhttp.send();
    
    
            }
            
            
            
            
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
                <div class="row-bot">
                    <div class="center-shadow">
                        <div class="carousel-container">
                            <div id="carousel">
                                <%

                                    DBQuery db = new DBQuery();
                                    ResultSet rss = db.get_bus_stops();
                                    ResultSet rsd = db.get_bus_stops();
                                    ResultSet rs1 = db.get_bus_stops();
                                    ResultSet rs2 = db.get_bus_stops();
                                    ResultSet rs3 = db.get_bus_stops();
                                    ResultSet rs4 = db.get_bus_stops();
                                    ResultSet rs5 = db.get_bus_stops();
                                    ResultSet rs6 = db.get_bus_stops();
                                    ResultSet rs7 = db.get_bus_stops();
                                    ResultSet rs8 = db.get_bus_stops();
                                    ResultSet rs9 = db.get_bus_stops();
                                    ResultSet rs10 = db.get_bus_stops();
                                    ResultSet rs11 = db.get_bus_stops();
                                    ResultSet rs12 = db.get_bus_stops();
                                    ResultSet rs13 = db.get_bus_stops();
                                    ResultSet rs14 = db.get_bus_stops();
                                    ResultSet rs15 = db.get_bus_stops();


                                    int bid = db.get_max_busid();
                                    bid++;


                                %>
                                <%
                                    String insertroute = "";
                                    if (session.getAttribute("insertroute") != null) {
                                        insertroute = session.getAttribute("insertroute").toString();
                                    }
                                %>
                               <br/> <center><h4><%= insertroute%></h4><% session.removeAttribute("insertroute");%></center><br/>
                                <h4>Add Bus Route</h4>
                                <form name="form" action="insert_route.jsp" method="post">
                                    <table  allign="center" cellpedding="12" border="13">  

                                        <tr>
                                            <td>
                                        <tr><td>Route-ID: </td><td><input type="text" name="rootid"  /> </td></tr>

                                        <tr>   
                                            <td>Source </td>
                                            <td>
                                                <select name="src" id="src" onchange="return getLocS(this);">
                                                    <option value="Select">Select</option>

                                                    <%

                                                        while (rss.next()) {
                                                            String bus_stop = rss.getString("b_stop");

                                                    %>

                                                    <option value="<%=bus_stop%>"><%=bus_stop%></option>
                                                    <%
                                                        }
                                                    %>



                                                </select>
                                            </td>
                                            <td>
                                                <input type="text" name="src_lat" id="src_lat" value="Latitude"> 
                                            </td>
                                            <td>
                                                <input type="text" name="src_lon" id="src_lon" value="Longitude"> 
                                            </td>
                                        </tr>

                                        <tr>
                                            <td>
                                                Destination
                                            </td>
                                            <td>

                                                <select name="des" id="des" onchange="return getLocD(this);">
                                                    <option value="Select">Select</option>
                                                    <%

                                                        while (rsd.next()) {
                                                            String bus_stop = rsd.getString("b_stop");

                                                    %>

                                                    <option value="<%=bus_stop%>"><%=bus_stop%></option>
                                                    <%
                                                        }
                                                    %>

                                                </select>
                                            <td>
                                                <input type="text" name="des_lat" id="des_lat" value="Latitude"> 
                                            </td>
                                            <td>
                                                <input type="text" name="des_lon" id="des_lon" value="Longitude"> 
                                            </td>
                                        </tr>

                                        <tr>
                                            <th>No</th>
                                            <th>Stoppages</th>		
                                            <th>Latitude</th>
                                            <th>Longitude</th>
                                        </tr>
                                        <tr>
                                            <td> 1 </td>
                                            <td> <select name="s1" id="s1" onchange="return getLoc1(this);">
                                                    <option value="Select">Select</option>
                                                    <%

                                                        while (rs1.next()) {
                                                            String bus_stop = rs1.getString("b_stop");

                                                    %>

                                                    <option value="<%=bus_stop%>"><%=bus_stop%></option>
                                                    <%
                                                        }
                                                    %>

                                                </select></td>		
                                            <td><input type="text" size="5" name="s1_lat" id="s1_lat"/></td>
                                            <td><input type="text" size="5" name="s1_lon" id="s1_lon"/></td>
                                        </tr>
                                        <tr>
                                            <td> 2 </td>
                                            <td><select name="s2" id="s2" onchange="return getLoc2(this);">
                                                    <option value="Select">Select</option>
                                                    <%

                                                        while (rs2.next()) {
                                                            String bus_stop = rs2.getString("b_stop");

                                                    %>

                                                    <option value="<%=bus_stop%>"><%=bus_stop%></option>
                                                    <%
                                                        }
                                                    %>

                                                </select></td>		
                                            <td><input type="text" size="5" name="s2_lat" id="s2_lat"/></td>
                                            <td><input type="text" size="5" name="s2_lon" id="s2_lon"/></td>
                                        </tr>
                                        <tr>
                                            <td> 3 </td>
                                            <td><select name="s3" id="s3" onchange="return getLoc3(this);">
                                                    <option value="Select">Select</option>
                                                    <%

                                                        while (rs3.next()) {
                                                            String bus_stop = rs3.getString("b_stop");

                                                    %>

                                                    <option value="<%=bus_stop%>"><%=bus_stop%></option>
                                                    <%
                                                        }
                                                    %>

                                                </select></td>		
                                            <td><input type="text" size="5" name="s3_lat" id="s3_lat"/></td>
                                            <td><input type="text" size="5" name="s3_lon" id="s3_lon"/></td></tr>
                                        <tr>
                                            <td> 4 </td>
                                            <td><select name="s4" id="s4" onchange="return getLoc4(this);">
                                                    <option value="Select">Select</option>
                                                    <%

                                                        while (rs4.next()) {
                                                            String bus_stop = rs4.getString("b_stop");

                                                    %>

                                                    <option value="<%=bus_stop%>"><%=bus_stop%></option>
                                                    <%
                                                        }
                                                    %>

                                                </select></td>		
                                            <td><input type="text" size="5" name="s4_lat" id="s4_lat"/></td>
                                            <td><input type="text" size="5" name="s4_lon" id="s4_lon"/></td></tr>
                                        <tr>
                                            <td> 5 </td>
                                            <td><select name="s5" id="s5" onchange="return getLoc5(this);">
                                                    <option value="Select">Select</option>
                                                    <%

                                                        while (rs5.next()) {
                                                            String bus_stop = rs5.getString("b_stop");

                                                    %>

                                                    <option value="<%=bus_stop%>"><%=bus_stop%></option>
                                                    <%
                                                        }
                                                    %>

                                                </select></td>		
                                            <td><input type="text" size="5" name="s5_lat" id="s5_lat"/></td>
                                            <td><input type="text" size="5" name="s5_lon" id="s5_lon"/></td></tr>
                                        <tr>
                                            <td> 6</td>
                                            <td><select name="s6" id="s6" onchange="return getLoc6(this);">
                                                    <option value="Select">Select</option>
                                                    <%

                                                        while (rs6.next()) {
                                                            String bus_stop = rs6.getString("b_stop");

                                                    %>

                                                    <option value="<%=bus_stop%>"><%=bus_stop%></option>
                                                    <%
                                                        }
                                                    %>

                                                </select></td>		
                                            <td><input type="text" size="5" name="s6_lat" id="s6_lat"/></td>
                                            <td><input type="text" size="5" name="s6_lon" id="s6_lon"/></td></tr>
                                        <tr>
                                            <td> 7 </td>
                                            <td><select name="s7" id="s7" onchange="return getLoc7(this);">
                                                    <option value="Select">Select</option>
                                                    <%

                                                        while (rs7.next()) {
                                                            String bus_stop = rs7.getString("b_stop");

                                                    %>

                                                    <option value="<%=bus_stop%>"><%=bus_stop%></option>
                                                    <%
                                                        }
                                                    %>

                                                </select></td>		
                                            <td><input type="text" size="5" name="s7_lat" id="s7_lat"/></td>
                                            <td><input type="text" size="5" name="s7_lon" id="s7_lon"/></td></tr>
                                        <tr>
                                            <td> 8 </td>
                                            <td><select name="s8" id="s8" onchange="return getLoc8(this);">
                                                    <option value="Select">Select</option>
                                                    <%

                                                        while (rs8.next()) {
                                                            String bus_stop = rs8.getString("b_stop");

                                                    %>

                                                    <option value="<%=bus_stop%>"><%=bus_stop%></option>
                                                    <%
                                                        }
                                                    %>

                                                </select></td>		
                                            <td><input type="text" size="5" name="s8_lat" id="s8_lat"/></td>
                                            <td><input type="text" size="5" name="s8_lon" id="s8_lon"/></td></tr>
                                        <tr>
                                            <td> 9 </td>
                                            <td><select name="s9" id="s9" onchange="return getLoc9(this);">
                                                    <option value="Select">Select</option>
                                                    <%

                                                        while (rs9.next()) {
                                                            String bus_stop = rs9.getString("b_stop");

                                                    %>

                                                    <option value="<%=bus_stop%>"><%=bus_stop%></option>
                                                    <%
                                                        }
                                                    %>

                                                </select></td>		
                                            <td><input type="text" size="5" name="s9_lat" id="s9_lat"/></td>
                                            <td><input type="text" size="5" name="s9_lon" id="s9_lon"/></td></tr>
                                        <tr>
                                            <td> 10 </td>
                                            <td><select name="s10" id="s10" onchange="return getLoc10(this);">
                                                    <option value="Select">Select</option>
                                                    <%

                                                        while (rs10.next()) {
                                                            String bus_stop = rs10.getString("b_stop");

                                                    %>

                                                    <option value="<%=bus_stop%>"><%=bus_stop%></option>
                                                    <%
                                                        }
                                                    %>

                                                </select></td>		
                                            <td><input type="text" size="5" name="s10_lat" id="s10_lat"/></td>
                                            <td><input type="text" size="5" name="s10_lon" id="s10_lon"/></td></tr>
                                        <tr>
                                            <td> 11 </td>
                                            <td><select name="s11" id="s11" onchange="return getLoc11(this);">
                                                    <option value="Select">Select</option>
                                                    <%

                                                        while (rs11.next()) {
                                                            String bus_stop = rs11.getString("b_stop");

                                                    %>

                                                    <option value="<%=bus_stop%>"><%=bus_stop%></option>
                                                    <%
                                                        }
                                                    %>

                                                </select></td>		
                                            <td><input type="text" size="5" name="s11_lat" id="s11_lat"/></td>
                                            <td><input type="text" size="5" name="s11_lon" id="s11_lon"/></td></tr>
                                        <tr>
                                            <td> 12 </td>
                                            <td><select name="s12" id="s12" onchange="return getLoc12(this);">
                                                    <option value="Select">Select</option>
                                                    <%

                                                        while (rs12.next()) {
                                                            String bus_stop = rs12.getString("b_stop");

                                                    %>

                                                    <option value="<%=bus_stop%>"><%=bus_stop%></option>
                                                    <%
                                                        }
                                                    %>

                                                </select></td>		
                                            <td><input type="text" size="5" name="s12_lat" id="s12_lat"/></td>
                                            <td><input type="text" size="5" name="s12_lon" id="s12_lon"/></td></tr>
                                        <tr>
                                            <td> 13 </td>
                                            <td><select name="s13" id="s13" onchange="return getLoc13(this);">
                                                    <option value="Select">Select</option>
                                                    <%

                                                        while (rs13.next()) {
                                                            String bus_stop = rs13.getString("b_stop");

                                                    %>

                                                    <option value="<%=bus_stop%>"><%=bus_stop%></option>
                                                    <%
                                                        }
                                                    %>

                                                </select></td>		
                                            <td><input type="text" size="5" name="s13_lat" id="s13_lat"/></td>
                                            <td><input type="text" size="5" name="s13_lon" id="s13_lon"/></td></tr>
                                        <tr>
                                            <td> 14 </td>
                                            <td><select name="s14" id="s14" onchange="return getLoc14(this);">
                                                    <option value="Select">Select</option>
                                                    <%

                                                        while (rs14.next()) {
                                                            String bus_stop = rs14.getString("b_stop");

                                                    %>

                                                    <option value="<%=bus_stop%>"><%=bus_stop%></option>
                                                    <%
                                                        }
                                                    %>

                                                </select></td>
                                            <td><input type="text" size="5" name="s14_lat" id="s14_lat"/></td>
                                            <td><input type="text" size="5" name="s14_lon" id="s14_lon"/></td></tr>

                                        <tr>
                                            <td> 15 </td>
                                            <td><select name="s15" id="s15" onchange="return getLoc15(this);">
                                                    <option value="Select">Select</option>
                                                    <%

                                                        while (rs15.next()) {
                                                            String bus_stop = rs15.getString("b_stop");

                                                    %>

                                                    <option value="<%=bus_stop%>"><%=bus_stop%></option>
                                                    <%
                                                        }
                                                    %>

                                                </select></td>		
                                            <td><input type="text" size="5" name="s15_lat" id="s15_lat"/></td>
                                            <td><input type="text" size="5" name="s15_lon" id="s15_lon"/></td></tr>
                                        <td><input name="submit" type="submit" value="Add" class="button2" style=" alignment-adjust:  middle"</td>  
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
