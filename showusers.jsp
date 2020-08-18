<%@ include file="adminheader1.jsp"%>
<%@page import="databaseconnection.*,java.sql.*"%>
<br><br>
<div id="content">
<div class="content_item">

<center><font color="#ff0099" size="6"><strong>Detailed Information</strong> </font></center>
<table align="center">
<tr>
   <th>Name</th>
   <th>Email</th>
   <th>Contact</th>
 </tr>

<%
try{
	String testtype=request.getParameter("testtype");
	String subtest=request.getParameter("subtest");
Connection con = databasecon.getconnection();
Statement stmt = con.createStatement();
//stmt1 = con.createStatement();
ResultSet rs = stmt.executeQuery("select * from register");

System.out.println("select * from register");

while(rs.next())
	{

%>

<tr>
<td><font color="#000000" size="4"><%=rs.getString(2)%></font></td>
<td><font color="#000000" size="4"><%=rs.getString(4)%></font></td>
<td><font color="#000000" size="4"><%=rs.getString(5)%></font></td>
</tr>
<tr></tr>
<tr></tr>

<br>


<%
}
}
catch(Exception e)
	{
e.printStackTrace();
}
%>
</table>



</div><!--close content_text-->  		
	</div><!--close content-->	    
<br><br><br>


<%@ include file="footer.jsp"%>
