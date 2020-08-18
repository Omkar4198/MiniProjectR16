<%@ include file="userheader1.jsp"%>
<%@page import="java.util.Date" import="java.text.DateFormat" import="java.text.SimpleDateFormat"%>
<%@page import="java.util.*" %>
<%! int count=0;int e=0;%>
<%!boolean status;
String uemail="";
String msg="";%>
<%@ page import="java.sql.*" import="databaseconnection.databasecon"  %>
<%@page import="Mail.*"%>

<%
int tot=0;
try{
	Connection con = databasecon.getconnection();
	Statement st= con.createStatement();
	String testtype=(String)session.getAttribute("testtype");
		String subtest=(String)session.getAttribute("subtest");
	uemail=(String)session.getAttribute("uemail");
	System.out.println("iam from result page...."+uemail);
ResultSet rs=st.executeQuery("select  count(ans) from addtest where subtest='"+subtest+"' order by idno");
if(rs.next()){
tot=rs.getInt(1);
}

}
catch(Exception e){}


//int ses=(Integer)session.getAttribute("i");

System.out.println(name);
Connection con1 = databasecon.getconnection();
	Statement st1 = con1.createStatement();
	Statement st2 = con1.createStatement();
	


Enumeration en = request.getParameterNames();
 
            // enumerate through the keys and extract the values 
            // from the keys! 
            while (en.hasMoreElements()) {
                String parameterName = (String) en.nextElement();
                String parameterValue = request.getParameter(parameterName);
               System.out.println(parameterName+":"+parameterValue+"<br />");
				//Vector v1=new Vector();
				//v1.add(parameterName);

				ResultSet rs1=st1.executeQuery("select ans from addtest where idno='"+parameterName+"' order by idno");
				if(rs1.next())
				{
					String ans=rs1.getString(1);
					if(ans.equals(parameterValue))
					{
					e++;
						
System.out.println("count="+e);
						
//out.println("count="+count);

				
				}

			}}

%><br><br><br><br><br><br>
<form  action="showkey1.jsp" method="get">
                  
                  
<table align="center">
<tr>
 <td ><center><h2>Congratulations your score is  = <%=e%>/<%=tot%></center></td>
</tr>

<%String testtype=(String)session.getAttribute("testtype");
		String subtest=(String)session.getAttribute("subtest");

DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd");
Date date = new Date();

System.out.println(dateFormat.format(date));

Connection con2 = databasecon.getconnection();
Statement st6= con2.createStatement();
//	st6.executeUpdate("delete from score");

//-----

System.out.println(uemail);
		
		msg=" "+"  "+e+"  "+"/"+"  "+tot; 
	
		status=mail.mailsend(uemail,msg);
	
		System.out.println("from mail form..:"+uemail);	
		System.out.println("from mail form..:"+msg);

		

//---
int res=st6.executeUpdate("insert into score values('"+name+"', '"+testtype+"','"+subtest+"',"+e+","+tot+",'finished','"+dateFormat.format(date)+"')");
if(res>0){
e=0;	

}



		
			
			%>
			<tr>
 <td ><input type="hidden" name="testtype" value=<%=testtype%>></td>
</tr><tr>
 <td ><input type="hidden" name="subtest" value=<%=subtest%>></td>
</tr>
			<td><input type="submit" value="Key"></td>
								 
			 </table>
			</form>
<br><br><br><br><br><br><br><br><br><br><br>

<br><br><br><br><br><br><br><br><br><br><br>







<%@ include file="footer.jsp"%>