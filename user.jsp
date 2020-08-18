<%@ include file="header1.jsp"%>

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
<font size="" color="#6666cc"><h1 align="center">User Login</h1></font>
							<form action="userlogincheck.jsp" method="post" align="center" >
								<table align="center">
									<tbody>
										<tr>
											<td><h3>UserName:</h3></td>
											<td><input type="text" name="uname" value="" class="txtfield" required></td>
										</tr> <tr>
											<td><h3>Password:</h3></td>
											<td><input type="password" name="password" value="" class="txtfield" required></td>
										</tr>  <tr>
											<td></td>
											<td><input type="submit" value="Submit" ></td>
										</tr>

									</tbody>
									
								</table><br>
								
								<li><a href="register.jsp" ><u>New User Register Here</u></a></li>
							</form><br><br><br>

<%@ include file="footer.jsp"%>

