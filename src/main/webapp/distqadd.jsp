<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<jsp:useBean id="stud" class="hvpm.dcpe.Student" scope="session" />
<jsp:setProperty name="stud" property="*" />
Insert Result: <%=stud.insertdesque()%>

<% 
    response.sendRedirect("add2.jsp");
  
 %>