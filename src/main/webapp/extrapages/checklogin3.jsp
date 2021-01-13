
<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*" %>
<!DOCTYPE html>
<%
    String uid=request.getParameter("userid");
    String pwd=request.getParameter("pwd");
    String loginas=request.getParameter("loginas");
   
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost/hvpm", "root", "root");
    
    String msql="select userrole from logint where userid=? and pwd=? and loginas=?";
    
    PreparedStatement smt=con.prepareStatement(msql);
    smt.setString(1, uid);
    smt.setString(2, pwd);
    smt.setString(3, loginas);
    ResultSet rs=smt.executeQuery();
        if(rs.next())
        { 
        		session.setAttribute("userid",uid);
                response.sendRedirect("main2.jsp");
        	
               } 
                else
                    response.sendRedirect("admin.jsp?login2=0");


    
%>