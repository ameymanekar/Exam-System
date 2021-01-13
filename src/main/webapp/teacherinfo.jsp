<%@page import="hvpm.dcpe.Student"%>
<%@page import="java.util.Vector"%>

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

tr:nth-child(even){background-color: #f2f2f2}

th {
    background-color: #4CAF50;
    color: white;
    font-family: Arial, Helvetica, sans-serif;
}
 body
{
    counter-reset: Serial;           /* Set the Serial counter to 0 */
}
table
{
    align="center"
}

tr td:first-child:before
{
  counter-increment: Serial;      /* Increment the Serial counter */
  content: " " counter(Serial); /* Display the counter */
  align="center"
}
</style><center>
<h1> Teachers Information</h1></center>

               <table style="width:70%"  align="center"  border="1"  >
             <tr>
                      <th>Sr. No.</th>
                    <th> First Name</th>
                      <th>Last Name</th>
                       <th>Emailr</th>
                       <th>Phone No</th>
                       
                   
                </tr>
                
               <%
                Student stud=new Student();
                Vector vlist=stud.list2(30);
                for(int i=0;i<vlist.size();i++)
            {
                Student s=(Student)vlist.get(i);
                %>
                <tr> 
                   <td></td>  
                    <td><%=s.getFName()%></td>  
                    <td><%=s.getLName()%></td>   
                    <td><%=s.getEmail()%></td>
                     <td><%=s.getPhone()%></td>
                     
                   </tr>
                <%  
            }
             %>
                    
                    
            </table>