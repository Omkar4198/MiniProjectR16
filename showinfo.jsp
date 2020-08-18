<%@ include file="userheader1.jsp"%>
<%@page import="databaseconnection.*,java.sql.*"%>
<br><br><br>
<div id="content">
<div class="content_item">

<center><font color="#ff0099" size="6"><strong>Detailed Information</strong> </font></center>
<%
try{
	String sid=request.getParameter("showid");
Connection con = databasecon.getconnection();
Statement stmt = con.createStatement();
//stmt1 = con.createStatement();
ResultSet rs = stmt.executeQuery("select cult,culttype,uname,description,photo from adddata where idno='"+sid+"'");

if(rs.next())
	{

%>
<br><br><br>
<table align="center">
<tr>
<td><font color="#000000" size="5">CATEGORY</td><td><font color="#000000" size="5">:</td><td><font color="#000000" size="5"><%=rs.getString("cult")%></font></td>
</tr>
<tr></tr>
<tr></tr>
<tr>
<td><font color="#000000" size="5">CATEGORY TYPE</td><td><font color="#000000" size="5">:</td><td><font color="#000000" size="5"><%=rs.getString("culttype")%></font></td>
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
<tr>
<td><font color="#000000" size="5">NAME</td><td><font color="#000000" size="5">:</td><td><font color="#000000" size="5"><%=rs.getString("uname")%></font></td>
</tr>
<tr>
<td><font color="#000000" size="5">DISCRIPTION</td><td><font color="#000000" size="5">:</td><td><font color="#000000" size="5"><textarea name="" rows="3" cols="48"><%=rs.getString("description")%></textarea></font></td>
</tr>
<tr></tr>
<tr></tr>
<tr>

</tr>
<IMG STYLE="position:absolute; TOP:70px; right:80px; WIDTH:200px; HEIGHT:200px" src="upload/<%=rs.getString("photo")%>">
<tr></tr>
<tr></tr>
<tr>
<td></td><td></td><td><button onclick="myFunction()"><font color="#000000" size="3">Print this page</button>

<script>
function myFunction() {
    window.print();
}
</script>
</td>
</tr>
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