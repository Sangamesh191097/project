<%@page import="javax.swing.JOptionPane"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="Database.DBConnection"%>
<html>
    <head>
    <body>

        <%
            try {
                String src = request.getParameter("src");
                String src_lat = request.getParameter("src_lat");
                String src_lon = request.getParameter("src_lon");
                String des_lat = request.getParameter("des_lat");
                String des_lon = request.getParameter("des_lon");
                String des = request.getParameter("des");
                String rootid = request.getParameter("rootid");
                String s1 = request.getParameter("s1");
                String s2 = request.getParameter("s2");
                String s3 = request.getParameter("s3");
                String s4 = request.getParameter("s4");
                String s5 = request.getParameter("s5");
                String s6 = request.getParameter("s6");
                String s7 = request.getParameter("s7");
                String s8 = request.getParameter("s8");
                String s9 = request.getParameter("s9");
                String s10 = request.getParameter("s10");
                String s11 = request.getParameter("s11");
                String s12 = request.getParameter("s12");
                String s13 = request.getParameter("s13");
                String s14 = request.getParameter("s14");
                String s15 = request.getParameter("s15");
                String s1_lat = request.getParameter("s1_lat");
                String s1_lon = request.getParameter("s1_lon");
                String s2_lat = request.getParameter("s2_lat");
                String s2_lon = request.getParameter("s2_lon");
                String s3_lat = request.getParameter("s3_lat");
                String s3_lon = request.getParameter("s3_lon");
                String s4_lat = request.getParameter("s4_lat");
                String s4_lon = request.getParameter("s4_lon");
                String s5_lat = request.getParameter("s5_lat");
                String s5_lon = request.getParameter("s5_lon");
                String s6_lat = request.getParameter("s6_lat");
                String s6_lon = request.getParameter("s6_lon");
                String s7_lat = request.getParameter("s7_lat");
                String s7_lon = request.getParameter("s7_lon");
                String s8_lat = request.getParameter("s8_lat");
                String s8_lon = request.getParameter("s8_lon");
                String s9_lat = request.getParameter("s9_lat");
                String s9_lon = request.getParameter("s9_lon");
                String s10_lat = request.getParameter("s10_lat");
                String s10_lon = request.getParameter("s10_lon");
                String s11_lat = request.getParameter("s11_lat");
                String s11_lon = request.getParameter("s11_lon");
                String s12_lat = request.getParameter("s12_lat");
                String s12_lon = request.getParameter("s12_lon");
                String s13_lat = request.getParameter("s13_lat");
                String s13_lon = request.getParameter("s13_lon");
                String s14_lat = request.getParameter("s14_lat");
                String s14_lon = request.getParameter("s14_lon");
                String s15_lat = request.getParameter("s15_lat");
                String s15_lon = request.getParameter("s15_lon");



                Connection con = DBConnection.getConnection();
                Statement st = con.createStatement();
                String q1 = "delete from bus_route where routeid='" + rootid + "'";
                st.executeUpdate(q1);
                String q = "Insert into bus_route values('" + src + "','" + src_lat + "','" + src_lon + "','" + des + "','" + des_lat + "','" + des_lon + "','" + rootid + "','" + s1 + "','" + s2 + "','" + s3 + "','" + s4 + "','" + s5 + "','" + s6 + "','" + s7 + "','" + s8 + "','" + s9 + "','" + s10 + "','" + s11 + "','" + s12 + "','" + s13 + "','" + s14 + "','" + s15 + "','" + s1_lat + "','" + s1_lon + "','" + s2_lat + "','" + s2_lon + "','" + s3_lat + "','" + s3_lon + "','" + s4_lat + "','" + s4_lon + "','" + s5_lat + "','" + s5_lon + "','" + s6_lat + "','" + s6_lon + "','" + s7_lat + "','" + s7_lon + "','" + s8_lat + "','" + s8_lon + "','" + s9_lat + "','" + s9_lon + "','" + s10_lat + "','" + s10_lon + "','" + s11_lat + "','" + s11_lon + "','" + s12_lat + "','" + s12_lon + "','" + s13_lat + "','" + s13_lon + "','" + s14_lat + "','" + s14_lon + "','" + s15_lat + "','" + s15_lon + "')";
                System.out.println(">>>>>" + q);
                int x = st.executeUpdate(q);
                if (x != 0) {

                    session.setAttribute("insertroute", "Route Insert Successful!!");
                    response.sendRedirect("add_bus_route.jsp?message=successfully inserted");
                } else {
                    session.setAttribute("insertroute", "Route Insert UnSuccessful!!");
                    response.sendRedirect("add_bus_route.jsp?message=fail");
                }
                con.close();
                st.close();
            } catch (Exception e) {
                out.println(e);
            }
        %>