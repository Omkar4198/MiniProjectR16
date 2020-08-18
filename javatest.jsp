
<script type="text/JavaScript">
            function setTimeForSubmit() {
                window.setTimeout("submitForm()", 1500000);//Expire after 30 min
            }
            function submitForm() {
                document.forma.submit();
            }
            var mins = 25; // write mins to javascript  
            var secs = 1; // write secs to javascript  
            function timer()
            {
                // tic tac  
                if (--secs === -1)
                {
                    secs = 59;
                    --mins;
                }

                // leading zero? formatting  
                if (secs < 10)
                    secs = "0" + secs;
                if (mins < 10)
                    mins = "0" + parseInt(mins, 10);

                // display  
                document.forma.mins.value = mins;
                document.forma.secs.value = secs;

                // continue?  
                if (secs === 0 && mins === 0) // time over  
                {
                    document.forma.ok.disabled = true;
                    document.formb.results.style.display = "block";
                }
                else // call timer() recursively every 1000 ms == 1 sec  
                {
                    window.setTimeout("timer()", 1000);
                }
            }
            window.history.forward();
            function noBack() {
                window.history.forward();
            }
        </script>
    </head>  
    <body onload="setTimeForSubmit();" onload="noBack();"  onpageshow="if (event.persisted) noBack();" onunload="">
            <font size="+2" color="red">
			<form action = "result.jsp" method="post" name="forma">
               
                       
                                             
    </body>
</html>    
<%@ page import="java.sql.*" import="databaseconnection.databasecon"  %>
<%


%>
<%
Connection con1 = databasecon.getconnection();
	Statement st1 = con1.createStatement();
	String testtype=request.getParameter("testtype");
	String subtest=request.getParameter("subtest");
	System.out.println("test clsss="+testtype);
	System.out.println("test clsss="+subtest);
	session.setAttribute("testtype",testtype);
	session.setAttribute("subtest",subtest);
	//String semail=request.getParameter("semail");

String uname1=(String)session.getAttribute("uname1");
System.out.println("from test class--"+uname1);
Statement st2 = con1.createStatement();


	ResultSet rs=st1.executeQuery("select idno,question,opa,opb,opc,opd from addtest where testtype='"+testtype+"'  and subtest='"+subtest+"'");
		System.out.print("select idno,question,opa,opb,opc,opd from addtest where testtype='"+testtype+"' and subtest='"+subtest+"'");
	%>
	<font size="3" color="#990000"><b>


	<table align="center" >

	<%
		int i=1;
	while(rs.next())
{
%>

<!-- <td><font size="+2"><%=rs.getString(1)%></td> -->
<tr><td><font size="+2"><%=i++%>&nbsp;&nbsp;<%=rs.getString(2)%></td></tr>
<tr><td>&nbsp;&nbsp;<input type="radio"name=<%=rs.getInt(1)%> value="A" required><font size="+2" color="orange"><%=rs.getString(3)%></input></td></tr>
<tr><td>&nbsp;&nbsp;<input type="radio"name=<%=rs.getInt(1)%> value="B" required><font size="+2" color="orange"><%=rs.getString(4)%></input></td></tr>
<tr><td>&nbsp;&nbsp;<input type="radio"name=<%=rs.getInt(1)%> value="C" required><font size="+2" color="orange"><%=rs.getString(5)%></input></td></tr>
<tr><td>&nbsp;&nbsp;<input type="radio"name=<%=rs.getInt(1)%> value="D" required><font size="+2" color="orange"><%=rs.getString(6)%></input></td></tr>
<%}%>

<tr></tr><tr></tr><tr></tr><tr></tr><tr></tr>
<tr><td><input type="submit" value="Submit"></td></tr>
</table>
<%%>