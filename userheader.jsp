<%
String msg = request.getParameter("msg1");
String testtype=request.getParameter("testtype");
String subtest=request.getParameter("subtest");
if(msg != null)
{
out.println("<script>alert('Already Wrote THE Exam..')</script>");
}
String msg2 = request.getParameter("msg2");
if(msg2 != null)
{
out.println("<script>alert('Please Wrote the TEST then only KEY will be Displayed')</script>");
}

String name=(String)session.getAttribute("uname1");
System.out.println("from UserHeader--"+name);
//session.setAttribute("uname1",name);

%>
<html>
<head>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<link href="layout/styles/layout.css" rel="stylesheet" type="text/css" media="all">
</head>
<body id="top">

<div class="wrapper row0">
  <div id="topbar" class="clear"> 
    <!-- ################################################################################################ -->
    <ul>
        <li><a href="index.jsp">Home</a></li>
	
        <li><a href="contact.jsp">Contact Us</a></li>
		<li><a href="help.jsp">Help</a></li>
       
        
      </ul>
    </nav>
    <!-- ################################################################################################ --> 
  </div>
</div>
<!-- ################################################################################################ --> 
<!-- ################################################################################################ --> 
<!-- ################################################################################################ -->
<div class="wrapper row1">
  <header id="header" class="clear"> 
    <!-- ################################################################################################ -->
    <div id="logo" class="fl_left">
      <h1><a href="index.html">Mock Test</a></h1>
      
    </div>
    <div class="fl_right">
      <form class="clear" method="post" action="#">
        <fieldset>
          <legend>Search:</legend>
          <input type="text" value="" placeholder="Search Here">
          <button class="fa fa-search" type="submit" title="Search"><em>Search</em></button>
        </fieldset>
      </form>
    </div>
    <!-- ################################################################################################ --> 
  </header>
</div>
<!-- ################################################################################################ --> 
<!-- ################################################################################################ --> 
<!-- ################################################################################################ -->
<div class="wrapper row2">
  <div class="rounded">
    <nav id="mainav" class="clear"> 
      <!-- ################################################################################################ -->
      <ul class="clear">
        <li class="active"><a href="userhome.jsp">Home</a></li>
        
        
        <li><a class="drop" href="#">Online Test</a>
          <ul>
            
            <li><a class="drop" href="#">Aptitude</a>
              <ul>
                <li><a href="#"><u>Sub Topics</u></a></li>
                <li><a href="lhtest.jsp?testtype=Aptitude&subtest=LCMandHCF">LCM & HCF</a></li>
				<li><a href="stdtest.jsp?testtype=Aptitude&subtest=SpeedTimeandDistance">Speed, Time & Distance</a></li>
				<li><a href="rpdtest.jsp?testtype=Aptitude&subtest=RatiosandProportions">Ratios & Proportions</a></li>
				<li><a href="pldtest.jsp?testtype=Aptitude&subtest=ProfitandLoss">Profit & Loss</a></li>
				<li><a href="sicitest.jsp?testtype=Aptitude&subtest=SimpleInterestandCompoundInterest">Simple Interest & Compound Interest</a></li>
				<li><a href="Boats & Streamstest.jsp?testtype=Aptitude&subtest=BoatsandStreams">Boats & Streams</a></li>
				
              </ul>
            </li>

			<li><a class="drop" href="#">Technical</a>
              <ul>
                <li><a href="#"><u>Sub Topics</u></a></li>
                <li><a href="ctest.jsp?testtype=Technical&subtest=C">C</a></li>
				 <li><a href="cptest.jsp?testtype=Technical&subtest=C++">C++</a></li>
				  <li><a href="javatest.jsp?testtype=Technical&subtest=Java">Java</a></li>
				   <li><a href="nptest.jsp?testtype=Technical&subtest=NetworkProgramming">Network Programming</a></li>
				    <li><a href="dotnettest.jsp?testtype=Technical&subtest=DotNet">Dot Net</a></li>
					 <li><a href="ostest.jsp?testtype=Technical&subtest=OS">OS</a></li>
					  <li><a href="cntest.jsp?testtype=Technical&subtest=CN">CN</a></li>
					   <li><a href="androidtest.jsp?testtype=Technical&subtest=Android">Android</a></li>

				
              </ul>
            </li>

			<li><a class="drop" href="#">Verbal</a>
              <ul>
                <li><a href="#"><u>Sub Topics</u></a></li>
                <li><a href="satest.jsp?testtype=Verbal&subtest=SynonymsandAntonyms">Synonyms & Antonyms</a></li>
				<li><a href="aptest.jsp?testtype=Verbal&subtest=ArticlesandPrepositions">Articles & Prepositions</a></li>
				<li><a href="tensestest.jsp?testtype=Verbal&subtest=Tenses">Tenses</a></li>
				<li><a href="syllogismstest.jsp?testtype=Verbal&subtest=Syllogisms">Syllogisms</a></li>
				<li><a href="pstest.jsp?testtype=Verbal&subtest=partsofspeeche">parts of speeche</a></li>

              </ul>
            </li>

			<li><a class="drop" href="#">Quant & Reasoning</a>
              <ul>
                <li><a href="#"><u>Sub Topics</u></a></li>
                <li><a href="cctest.jsp?testtype=Reasoning&subtest=ClockCalender">Clock Calender</a></li>
				<li><a href="brtest.jsp?testtype=Reasoning&subtest=BloodRelations">Blood Relations</a></li>
				<li><a href="puzzlestest.jsp?testtype=Reasoning&subtest=Puzzles">Puzzles</a></li>
				<li><a href="agestest.jsp?testtype=Reasoning&subtest=Ages">Ages</a></li>
				<li><a href="amtest.jsp?testtype=Reasoning&subtest=AllegationsandMixtures">Allegations and Mixtures</a></li>
				<li><a href="lbtest.jsp?testtype=Technical&subtest=LodgingandBoarding">Lodging and	Boarding</a></li>
              </ul>
            </li>
          </ul>
		</li>
		<li><a href="showuserreport.jsp">Report</a></li>
		</li>
		<li><a class="drop" href="#">Key paper with Explanation</a>
          <ul>
            
            <li><a class="drop" href="#">Aptitude</a>
              <ul>
                <li><a href="#"><u>Sub Topics</u></a></li>
                <li><a href="showkey.jsp?testtype=Technical&subtest=LCMandHCF">LCM & HCF</a></li>
				<li><a href="showkey.jsp?testtype=Technical&subtest=SpeedTimeandDistance">Speed, Time & Distance</a></li>
				<li><a href="showkey.jsp?testtype=Technical&subtest=RatiosandProportions">Ratios & Proportions</a></li>
				<li><a href="showkey.jsp?testtype=Technical&subtest=ProfitandLoss">Profit & Loss</a></li>
				<li><a href="showkey.jsp?testtype=Technical&subtest=SimpleInterestandCompoundInterest">Simple Interest & Compound Interest</a></li>
				<li><a href="showkey.jsp?testtype=Technical&subtest=BoatsandStreams">Boats & Streams</a></li>
				
              </ul>
            </li>

			<li><a class="drop" href="#">Technical</a>
              <ul>
                <li><a href="#"><u>Sub Topics</u></a></li>
                <li><a href="showkey.jsp?testtype=Technical&subtest=C">C</a></li>
				 <li><a href="showkey.jsp?testtype=Technical&subtest=C++">C++</a></li>
				  <li><a href="showkey.jsp?testtype=Technical&subtest=Java">Java</a></li>
				   <li><a href="showkey.jsp?testtype=Technical&subtest=NetworkProgramming">Network Programming</a></li>
				    <li><a href="showkey.jsp?testtype=Technical&subtest=DotNet">Dot Net</a></li>
					 <li><a href="showkey.jsp?testtype=Technical&subtest=OS">OS</a></li>
					  <li><a href="showkey.jsp?testtype=Technical&subtest=CN">CN</a></li>
					   <li><a href="showkey.jsp?testtype=Technical&subtest=Android">Android</a></li>

				
              </ul>
            </li>

			<li><a class="drop" href="#">Varbal</a>
              <ul>
                <li><a href="#"><u>Sub Topics</u></a></li>
                <li><a href="showkey.jsp?testtype=Technical&subtest=SynonymsandAntonyms">Synonyms & Antonyms</a></li>
				<li><a href="showkey.jsp?testtype=Technical&subtest=ArticlesandPrepositions">Articles & Prepositions</a></li>
				<li><a href="showkey.jsp?testtype=Technical&subtest=Tenses">Tenses</a></li>
				<li><a href="showkey.jsp?testtype=Technical&subtest=Syllogisms">Syllogisms</a></li>
				<li><a href="showkey.jsp?testtype=Technical&subtest=partsofspeeche">parts of speeche</a></li>

              </ul>
            </li>

			<li><a class="drop" href="#">Quant & Reasoning</a>
              <ul>
                <li><a href="#"><u>Sub Topics</u></a></li>
                <li><a href="showkey.jsp?testtype=Reasoning&subtest=ClockCalender">Clock Calender</a></li>
				<li><a href="showkey.jsp?testtype=Reasoning&subtest=BloodRelations">Blood Relations</a></li>
				<li><a href="showkey.jsp?testtype=Reasoning&subtest=Puzzles">Puzzles</a></li>
				<li><a href="showkey.jsp?testtype=Reasoning&subtest=Ages">Ages</a></li>
				<li><a href="showkey.jsp?testtype=Reasoning&subtest=AllegationsandMixtures">Allegations and Mixtures</a></li>
				<li><a href="showkey.jsp?testtype=Technical&subtest=LodgingandBoarding">Lodging and	Boarding</a></li>
              </ul>
            </li>
          </ul>
		</li>
		<li><a href="index.jsp">SignOut</a></li>
        
       
      </ul>
      <!-- ################################################################################################ --> 
    </nav>
  </div>
</div>
<!-- ################################################################################################ --> 
<!-- ################################################################################################ --> 
<!-- ################################################################################################ -->
<div class="wrapper">
  <div id="slider">
    <div id="slide-wrapper" class="rounded clear"> 
      <!-- ################################################################################################ -->
	  <center>
      <a class="view" href="#"><img src="images/6.png" alt=""></a>
        <figcaption>
         </p>
        </figcaption>
      </figure>
      
      
      
      
      <!-- ################################################################################################ -->
      
      <!-- ################################################################################################ --> 
    