<%@page import="databaseconnection.*,java.sql.*"%>
<%!
Connection con;
Statement stmt;
ResultSet rs;
%>
<%
String uname = request.getParameter("uname");
String password = request.getParameter("password");

con = databasecon.getconnection();
stmt = con.createStatement();

if(uname.equals("admin") && (password.equals("admin"))){

response.sendRedirect("adminhome.jsp?msg=succ");
}else{
response.sendRedirect("admin.jsp?msg=unsucc");
}
%>