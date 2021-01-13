
   
<%@ page import = "java.io.*,java.util.*" %>
<%@ page import = "javax.servlet.*,java.text.*" %>
<%@page import="hvpm.dcpe.Student"%>
  
   
  
                
<html >
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>home</title>
<style>
body {
    background-image: url("images/ff.jpg");
    background-repeat: no-repeat;
}
.enjoy-css {
  -webkit-box-sizing: content-box;
  -moz-box-sizing: content-box;
  box-sizing: content-box;
  border: none;
  font: normal 40px/1 "Courier New", Courier, monospace;
  color: #ffffff;
  text-align: center;
  -o-text-overflow: ellipsis;
  text-overflow: ellipsis;
  text-shadow: 4px 0 9px rgba(0,2,5,0.9) ;
  -webkit-transform: rotateX(-0.5729577951308232deg) rotateY(0.5729577951308231deg)   ;
  transform: rotateX(-0.5729577951308232deg) rotateY(0.5729577951308231deg)   ;
}
.enjoy-css2 {
  -webkit-box-sizing: content-box;
  -moz-box-sizing: content-box;
  box-sizing: content-box;
  border: none;
  font: normal 40px/1 "Courier New", Courier, monospace;
  color: #ffffff;
  text-align: center;
  -o-text-overflow: ellipsis;
  text-overflow: ellipsis;
  text-shadow: 4px 0 9px rgba(0,2,5,0.9) ;
  -webkit-transform: rotateX(-0.5729577951308232deg) rotateY(0.5729577951308231deg)   ;
  transform: rotateX(-0.5729577951308232deg) rotateY(0.5729577951308231deg)   ;
}
</style>
</head>

<body >
 <%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String email = (String)session.getAttribute("userid");
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
String sql ="select * from teacher where email= '"+email+"'";  
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
								
<%

String am = resultSet.getString("fname");

String am2 = resultSet.getString("lname");

System.out.println("asasdsdasda");

session.setAttribute("fn",am);
session.setAttribute("ln",am2);


 %>
			
										
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>



    <BR>
        <BR>
            
        
        <BR>
            
        <BR>
            <BR>
                <BR>
  <div class="enjoy-css"> <center>Welcome: 
  <br><%=(String)session.getAttribute("fn")%>  <%=(String)session.getAttribute("ln")%></center></div>

  <br>
      <br>
          <br>
             
              <br>
                  <br>
              <br>
 </body>
</html>
