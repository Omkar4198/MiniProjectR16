<%@ include file="userheader1.jsp"%>
<%@page import="databaseconnection.*,java.sql.*"%>

<%
String testtype=request.getParameter("testtype");
	String subtest=request.getParameter("subtest");
%>
<br><br><br>
<div id="content">
<div class="content_item">

<center><font color="#ff0099" size="6"><strong>Detailed Explanation</strong> </font></center>
<br><br><br>
<table align="left">

<tr>
<td><font color="#000000" size="3">TEST TYPE</td><td><font color="#000000" size="3">:</td><td><font color="#000000" size="3"><%=subtest%></font></td>
</tr>
<%
try{
	
	System.out.println("show===="+testtype);
	System.out.println("show----"+subtest);
Connection con = databasecon.getconnection();
Statement stmt = con.createStatement();
//stmt1 = con.createStatement();
//----
Statement st2 = con.createStatement();
ResultSet rs2=st2.executeQuery("select * from score where testtype='"+testtype+"'  and subtest='"+subtest+"' and idname='"+name+"' and finsh='finished'");
System.out.println("select * from score where testtype='"+testtype+"'  and subtest='"+subtest+"' and idname='"+name+"' and finsh='finished'");
if(rs2.next())
{

ResultSet rs = stmt.executeQuery("select subtest,question,opa,opb,opc,opd,ans,description from addtest where testtype='"+testtype+"' and subtest='"+subtest+"'");
System.out.println("select subtest,question,opa,opb,opc,opd,ans,description from addtest where testtype='"+testtype+"' and subtest='"+subtest+"'");
int i=1;
while(rs.next())
	{


%>

<tr>
<td><font color="#000000" size="5"><%=i++%></td><td><font color="#000000" size="3">:</td><td><font color="#000000" size="3"><%=rs.getString("question")%></font></td>
</tr>
<tr>
<td><font color="#000000" size="3">A</td><td><font color="#000000" size="3">:</td><td><font color="#000000" size="3"><%=rs.getString("opa")%></font></td>
</tr>
<tr>
<td><font color="#000000" size="3">B</td><td><font color="#000000" size="3">:</td><td><font color="#000000" size="3"><%=rs.getString("opb")%></font></td>
</tr>
<tr>
<td><font color="#000000" size="3">C</td><td><font color="#000000" size="3">:</td><td><font color="#000000" size="3"><%=rs.getString("opc")%></font></td>
</tr>
<tr>
<td><font color="#000000" size="3">D</td><td><font color="#000000" size="3">:</td><td><font color="#000000" size="3"><%=rs.getString("opd")%></font></td>
</tr>
<tr>
<td><font color="#000000" size="3">Answer</td><td><font color="#000000" size="3">:</td><td><font color="#000000" size="3"><%=rs.getString("ans")%></font></td>
</tr>
<tr>
<td><font color="#000000" size="3">Discription</td><td><font color="#000000" size="3">:</td><td><font color="#000000" size="3"><%=rs.getString("description")%></font></td>
</tr>
<tr></tr>
<tr></tr>
<tr></tr>
<tr></tr>
<tr></tr>
<tr></tr>
<tr></tr>
<tr></tr>
<tr></tr>
<tr></tr>
<tr></tr>
<tr></tr>

<%
}
}
else
{
	response.sendRedirect("userhome.jsp?msg2=TestNotWriten&testtype='"+testtype+"'&subtest='"+subtest+"'");
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