
<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*" %>
<!DOCTYPE html>
<%
    String email=request.getParameter("userid");
    String pwd=request.getParameter("pwd");

   
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost/hvpm", "root", "root");
    
    String msql="select * from teacher where email=? and pass=? ";
    
    PreparedStatement smt=con.prepareStatement(msql);
    smt.setString(1, email);
    smt.setString(2, pwd);
    
    ResultSet rs=smt.executeQuery();
        if(rs.next())
        { 
        		session.setAttribute("userid",email);
                response.sendRedirect("main2.jsp");
        	
               } 
                else
                    response.sendRedirect("teacher.jsp?login2=0");


    
%>