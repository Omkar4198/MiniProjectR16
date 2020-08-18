<%@page import="databaseconnection.*,java.sql.*"%>
<%!
Connection con;
Statement stmt;
%>
<%

String test = request.getParameter("test");
String rel = request.getParameter("rel");
String question = request.getParameter("question");
String a = request.getParameter("a");
String b = request.getParameter("b");
String c = request.getParameter("c");
String d = request.getParameter("d");
String ans = request.getParameter("ans");
String description = request.getParameter("desc");




	Connection con=databasecon.getconnection();
			System.out.println(con);
			Statement st=con.createStatement();

			ResultSet r=st.executeQuery("select max(idno) from addtest");
			int id=0;
			if(r.next()){
				id=r.getInt(1);
				id=id+1;
				
				System.out.println(id);
				}


con = databasecon.getconnection();
stmt = con.createStatement();

int i = stmt.executeUpdate("insert into addtest values("+id+",'"+test+"','"+rel+"','"+question+"','"+a+"','"+b+"','"+c+"','"+d+"','"+ans+"','"+description+"')");

if(i>0){
response.sendRedirect("add.jsp?message=succes");

%>


<%
}else{
response.sendRedirect("");
}
%>


