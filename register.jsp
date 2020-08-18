<%@ include file="header1.jsp"%>
<%
if(request.getParameter("m2")!=null)
{
	out.println("<script>alert('Updated.....!')</script>");
}

if(request.getParameter("message11")!=null)
	 {
		out.println("<script>alert('Mail send Successfully..')</script>");
	 }
	if(request.getParameter("message22")!=null)
	 {
		out.println("<script>alert('Server Problem due to some SMTP Protocal.....plz try again')</script>");
	 }


%>
<%
String msg = request.getParameter("message");
if(msg != null)
{
out.println("<script>alert('Registered Successfully')</script>");
}

String msg1 = request.getParameter("msg1");
if(msg1 != null)
{
out.println("<script>alert('Login Failed....!')</script>");
}
%>
<br><br><br>
<font size="" color="#6666cc"><h1 align="center">User Registration</h1></font>
							<form action="reginsert.jsp" method="post" align="center" >
								<table align="center">
									<tbody>
										<tr>
											<td><h3>Name:</h3></td>
											<td><input type="text" name="name" value="" class="txtfield" required></td>
										</tr> 
										<tr>
											<td><h3>UserName:</h3></td>
											<td><input type="text" name="uname" value="" class="txtfield" required></td>
										</tr>
										
										<tr>
											<td><h3>Password:</h3></td>
											<td><input type="password" name="password" value="" class="txtfield" required></td>
										</tr>  
										<tr>
											<td><h3>Email:</h3></td>
											<td><input type="text" name="email" value="" class="txtfield" required></td>
										</tr>
										<tr>
											<td><h3>Contact:</h3></td>
											<td><input type="text" name="contact" value="" class="txtfield" required></td>
										</tr>
										
										<tr>
											<td></td>
											<td><input type="submit" value="Submit" ></td>
										</tr>

									</tbody>
									
								</table><br>
								
							</form><br><br><br>

<%@ include file="footer.jsp"%>

