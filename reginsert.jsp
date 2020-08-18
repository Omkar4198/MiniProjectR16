<%@page import="databaseconnection.*,java.sql.*"%>
<%@page import="Mail.*"%>
<%!
Connection con;
Statement stmt;
boolean status;
%>
<%
String name = request.getParameter("name");
String uname = request.getParameter("uname");
String password = request.getParameter("password");
String email = request.getParameter("email");
String contact = request.getParameter("contact");

con = databasecon.getconnection();
stmt = con.createStatement();

int i = stmt.executeUpdate("insert into register values('"+name+"','"+uname+"','"+password+"','"+email+"','"+contact+"','usr')");

System.out.println("from reg--email--"+email);
		
		String msg="User Name  "+" : "+uname+" ----- "+"Password"+":"+"  "+password; 
	
		status=mail.OrderSend(email,msg);
	
		System.out.println("from mail form..:"+email);	
		System.out.println("from mail form..:"+msg);
		if(status)
	{
		response.sendRedirect("user.jsp?message=fail");
	}
	else
	{
		response.sendRedirect("user.jsp?message=sucess");
	}
	


%>