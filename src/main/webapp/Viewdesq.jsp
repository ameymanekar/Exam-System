
<%@ page import = "java.io.*,java.util.*" %>
<%@ page import = "javax.servlet.*,java.text.*" %>
<%@page import="hvpm.dcpe.Student"%>
<%@page import="java.util.Vector"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<style>
    
table {
    border-collapse: collapse;
    width: 100%;
}

th, td {
    text-align: left;
    padding: 6px;
    font-family: Arial, Helvetica, sans-serif;
     font-size: 14px;
}

table {
  border: 1px solid black;
  background-color: #f2f2f2;
   border-spacing: 10px;
    border-collapse: separate;
    
}

table
{
    align="center"
    background-color: #f2f2f2;
    
}

tr {
  border-bottom: 3px solid #ddd;
 
}
.button {
  border-radius: 4px;
  background-color: #f4511e;
  border: none;
  color: #FFFFFF;
  text-align: center;
  font-size: 28px;
  padding: 20px;
  width: 200px;
  transition: all 0.5s;
  cursor: pointer;
  margin: 5px;
}

.button span {
  cursor: pointer;
  display: inline-block;
  position: relative;
  transition: 0.5s;
}

.button span:after {
  content: '\00bb';
  position: absolute;
  opacity: 0;
  top: 0;
  right: -20px;
  transition: 0.5s;
}

.button:hover span {
  padding-right: 25px;
}

.button:hover span:after {
  opacity: 1;
  right: 0;
}
</style>









<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
        <%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String sid = request.getParameter("sid");
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost/";
String database = "hvpm";
String userid = "root";
String password = "root";
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>

<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from distq where sid="+sid;
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>



<table style="width:70%"  align="center" style="text-align:center;"    >



			
                         <tr>     <th>Question</th>
                         <th>:</th>
                       <th><%=resultSet.getString("Question") %></th>  </tr>
                       




             <tr>     <th>Question Type </th>
             <th>:</th>
                       <th><%=resultSet.getString("quet") %></th>  </tr>
                       
                       
                       
                       
                 <tr>     <th>Estimated Difficulty</th>
                 <th>:</th>
                       <th><%=resultSet.getString("ediff") %></th>  </tr>
                       
                       
                       
                         <tr>     <th>Course Name</th>
                         <th>:</th>
                       <th><%=resultSet.getString("coursen") %></th>  </tr>
                       
                       
                        <tr>     <th>Semester</th>
             <th>:</th>
                       <th><%=resultSet.getString("sem") %></th>  </tr>
                       
                       
                       
                 <tr>     <th>Subject</th>
                 <th>:</th>
                       <th><%=resultSet.getString("sub") %></th>  </tr>
                       
                       
                       
                       
                       
                       
                       
                 <tr>     <th>Marks</th>
                 <th>:</th>
                       <th><%=resultSet.getString("marks") %></th>  </tr>
                       
                      
       
                    
            </table>
            
        <center>
        <button class="button" onClick="window.print()"><span>Print this page </span></button>
        </center>   

















<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>

    </body>
</html>



