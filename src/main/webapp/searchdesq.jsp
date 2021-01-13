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


input[type=text] {
  
    background-image: url('https://cdn.bitdegree.org/learn/search-icon.png?229dfb2d');
    background-size: 10px;
    background-position: 3px 3px;
    background-repeat: no-repeat;
    padding-left: 20px;  
    padding: 12px 10px;
	box-sizing: border-box;
	
	font-size: 15px;
	border: 1;
	width: 50.6%;
     
}
</style>

 <%
        String search = "";
        if (request.getParameter("search") != null) {
            search = request.getParameter("search");
        }
    %><center>
<form>
               <h3> Search : <input type="text" name="search" size="40" value='<%=search%>' placeholder="     Search..  Question Type , Question , Course" required />
               </h3>
            </form>
            <hr>


<h1> Question's</h1></center>

               <table style="width:70%"  align="center"  border="1"  >
             <tr>
                      <th>Sr. No.</th>
                    <th>Question Type</th>
                
                      
                      <th>Estimated Difficulty</th>
                <th>Course Name </th>
                       <th> Semester</th>
                          <th>Marks</th>
                        <th>Question</th> 
                     
                       <th>Get Question</th>
                       
                   
                </tr>
                
               <%
                Student stud=new Student();
                Vector vlist=stud.list12(search);
                for(int i=0;i<vlist.size();i++)
            {
                Student s=(Student)vlist.get(i);
                %>
                <tr> 

                   <td></td>  
                    <td><%=s.getQuet()%></td>  
                      <td><%=s.getEdiff()%></td>  
                        <td><%=s.getCoursen()%></td>  
                          <td><%=s.getSem()%></td>
                          <td><%=s.getMarks()%></td>  
                            <td><%=s.getQuestion()%></td> 
                   <td><a href='Viewdesq.jsp?sid=<%=s.getSid()%>' ><img src="images/view.png" height="30px"></a></td>
                   
                     
                   </tr>
                <%  
            }
             %>
                    
                    
            </table>