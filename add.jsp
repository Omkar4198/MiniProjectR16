<%@ include file="adminheader1.jsp"%>

<%
String msg = request.getParameter("message");
if(msg != null)
{
out.println("<script>alert('Question added Successfully')</script>");
}

String msg1 = request.getParameter("msg1");
if(msg1 != null)
{
out.println("<script>alert('Login Failed....!')</script>");
}
%>
<html>
<head>
</head>
<body>z
<br><br><br>
<font size="" color="#6666cc"><h1 align="center">Add Test Data</h1></font>
<form action="addinsert.jsp" method="post" autocomplete="off" id="demoForm" class="demoForm">
<table align="center">


<tr>
<td><h3>Type of Test:</h3></td>

<td>
<select name="test" style="width: 270px">
<option value="Select State" selected>Select</option>
<option value="Aptitude">Aptitude</option>
<option value="Verbal">Verbal</option>
<option value="Technical">Technical</option>
<option value="Reasoning">Reasoning</option>



</select>
</td>
</tr>

<tr>
<td><h3>Subtype:</h3></td>

<td><select name="rel" id="choices[]" style="width: 270px">
	<option selected>Select .........</option>
	</select>
</td>
</tr>
<tr>
	<td><h3>Question :</h3></td>
	<td><textarea name="question" cols="23" rows="2" required></textarea></td>
</tr> 
<tr>
	<td><h3>A.</h3></td>
	<td><input type="text" name="a" required></textarea></td>
</tr> 
<tr>
	<td><h3>B.</h3></td>
	<td><input type="text" name="b" required></textarea></td>
</tr> 
<tr>
	<td><h3>C.</h3></td>
	<td><input type="text" name="c" required></textarea></td>
</tr> 
<tr>
	<td><h3>D.</h3></td>
	<td><input type="text" name="d" required></textarea></td>
</tr> 
<tr>
	<td><h3>Right Answer</h3></td>
	<td><input type="text" name="ans" required></td>
</tr>
<tr>
	<td><h3>Discription :</h3></td>
	<td><textarea name="desc" cols="23" rows="2" required></textarea></td>
</tr>
									
<tr>
	<td></td>
	<td><input type="submit" value="Submit" ></td>
</tr>
</tbody>
									
</table><br>
								
</form><br><br><br>
</body>
</html>
<script type="text/javascript">
/*
From JavaScript and Forms Tutorial at dyn-web.com
Find information and updates at http://www.dyn-web.com/tutorials/forms/
*/

// removes all option elements in select list 
// removeGrp (optional) boolean to remove optgroups
function removeAllOptions(sel, removeGrp) {
    var len, groups, par;
    if (removeGrp) {
        groups = sel.getElementsByTagName('optgroup');
        len = groups.length;
        for (var i=len; i; i--) {
            sel.removeChild( groups[i-1] );
        }
    }
    
    len = sel.options.length;
    for (var i=len; i; i--) {
        par = sel.options[i-1].parentNode;
        par.removeChild( sel.options[i-1] );
    }
}

function appendDataToSelect(sel, obj) {
    var f = document.createDocumentFragment();
    var labels = [], group, opts;
    
    function addOptions(obj) {
        var f = document.createDocumentFragment();
        var o;
        
        for (var i=0, len=obj.text.length; i<len; i++) {
            o = document.createElement('option');
            o.appendChild( document.createTextNode( obj.text[i] ) );
            
            if ( obj.value ) {
                o.value = obj.value[i];
            }
            
            f.appendChild(o);
        }
        return f;
    }
    
    if ( obj.text ) {
        opts = addOptions(obj);
        f.appendChild(opts);
    } else {
        for ( var prop in obj ) {
            if ( obj.hasOwnProperty(prop) ) {
                labels.push(prop);
            }
        }
        
        for (var i=0, len=labels.length; i<len; i++) {
            group = document.createElement('optgroup');
            group.label = labels[i];
            f.appendChild(group);
            opts = addOptions(obj[ labels[i] ] );
            group.appendChild(opts);
        }
    }
    sel.appendChild(f);
}

// anonymous function assigned to onchange event of controlling select list
document.forms['demoForm'].elements['test'].onchange = function(e) {
    // name of associated select list
    var relName = 'choices[]';
    
    // reference to associated select list 
    var relList = this.form.elements[ relName ];
    
    // get data from object literal based on selection in controlling select list (this.value)
    var obj = Select_List_Data[ relName ][ this.value ];
    
    // remove current option elements
    removeAllOptions(relList, true);
    
    // call function to add optgroup/option elements
    // pass reference to associated select list and data for new options
    appendDataToSelect(relList, obj);
};

// object literal holds data for optgroup/option elements
var Select_List_Data = {
    
    // name of associated select list
    'choices[]': {
        
        // names match option values in controlling select list
     Aptitude: {
            // optgroup labe
                text: ['LCM & HCF','Speed, Time & Distance','Ratios & Proportions','Profit & Loss','Simple Interest & Compound Interest','Boats & Streams'],
                value: ['LCMandHCF','SpeedTimeandDistance','RatiosandProportions','ProfitandLoss','SimpleInterestandCompoundInterest','BoatsandStreams']
            },
   
       Verbal: {
            // example without optgroups
            text: ['Synonyms & Antonyms','Articles & Prepositions','Tenses','Syllogisms','parts of speeche'],
            value: ['SynonymsandAntonyms','ArticlesandPrepositions','Tenses','Syllogisms','partsofspeeche']
        },

			Technical: {
            // example without optgroups
            text: ['C','C++','Java','Network Programming','Dot Net','OS','CN','Android'],
            value: ['C','C++','Java','NetworkProgramming','Dot Net','OS','CN','Android']
        },

			Reasoning: {
            // example without optgroups
            text: ['Clock Calender','Blood Relations','Puzzles','Ages','Allegations and Mixtures','Lodging and	Boarding'],
            value: ['ClockCalender','BloodRelations','Puzzles','Ages','AllegationsandMixtures','LodgingandBoarding']
        },

			
		
		
		
			
			mrktaaaaa: {
            'Download Demos': {
                // example without values
                text: ['Iframes', 'PHPtoJS', 'UnobtrusiveJS']
            },
            
            'No Download': {
                text: ['ObjectLiterals', 'InitializingJS', 'JSErrors']
            }
        }
    }
    
};

// populate associated select list when page loads
window.onload = function() {
    var form = document.forms['demoForm'];
    
    // reference to controlling select list
    var sel = form.elements['category'];
    sel.selectedIndex = 0;
    
    // name of associated select list
    var relName = 'choices[]';
    // reference to associated select list
    var rel = form.elements[ relName ];
    
    // get data for associated select list passing its name
    // and value of selected in controlling select list
    var data = Select_List_Data[ relName ][ sel.value ];
    
    // add options to associated select list
    appendDataToSelect(rel, data);
};

</script>

<%@ include file="footer.jsp"%>

