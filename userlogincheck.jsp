<%@page import="databaseconnection.*,java.sql.*"%>
<%!
Connection con;
Statement stmt;
ResultSet rs;
%>
<%
String uname = request.getParameter("uname");

String password = request.getParameter("password");

String uname1=null;
String password1=null;
String email="";
con = databasecon.getconnection();
stmt = con.createStatement();
String qry="select * from register where uname='"+uname+"' and password='"+password+"'";
ResultSet rs=stmt.executeQuery(qry);
if(rs.next())
{
	uname1=rs.getString(2);
	
	password1=rs.getString(3);

	email=rs.getString(4);
}

if(uname.equals(uname1) && (password.equals(password1)))
	{

	session.setAttribute("uname1",uname);
	System.out.println("FROM LOGINCHECK--"+uname);
	session.setAttribute("uemail",email);
	System.out.println("FROM LOGINCHECK--"+email);
response.sendRedirect("userhome.jsp?msg=succ");
}

else
	{
response.sendRedirect("user.jsp?msg1=unsucc");
}

%>