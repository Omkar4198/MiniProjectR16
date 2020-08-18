<%@ include file="adminheader1.jsp"%>

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
<html>
<head>
</head>
<body>
<br><br><br>
<font size="" color="#6666cc"><h1 align="center">Add Data Form</h1></font>
<form action="addinsert.jsp" method="post" autocomplete="off" id="demoForm" class="demoForm">
<table align="center">


<tr>
<td><h3>Name:</h3></td>

<td>
<select name="states" style="width: 270px">
<option value="Select State" selected>Select</option>
<option value="arts">arts</option>
<option value="entertainment">entertainment</option>
<option value="Freedom fighters">Freedom fighters</option>
<option value="music">music</option>
<option value="politics">politics</option>
<option value="science">science</option>
<option value="social workers">social workers</option>


</select>
</td>
</tr>

<tr>
<td><h3>Name:</h3></td>

<td><select name="rel" id="choices[]" style="width: 270px">
	<option selected>Select .........</option>
	</select>
</td>
</tr>
<tr>
	<td><h3>Name:</h3></td>
	<td><input type="text" name="name" value="" class="txtfield" required></td>
</tr> 
<tr>
	<td><h3>Discription:</h3></td>
	<td><textarea name="discription" cols="23" rows="2" required></textarea></td>
</tr> 
<tr>
	<td><h3>Photo</h3></td>
	<td><input type="file" name="photo"></td>
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
document.forms['demoForm'].elements['states'].onchange = function(e) {
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
     arts: {
            // optgroup labe
                text: ['Buddhist art','Gupta art','Mauryan art'],
                value: ['Buddhist art','Gupta art','Mauryan art']
            },
   
       entertainment: {
            // example without optgroups
            text: ['Dance ','Films ','Television  '],
            value: ['Dance ','Films ','Television  ']
        },

			Freedom fighters: {
            // example without optgroups
            text: ['independence ','Quit India Movement','salt march'],
            value: ['independence ','Quit India Movement','salt march']
        },

			music: {
            // example without optgroups
            text: ['Classical music','Carnatic music','Folk music'],
            value: ['Classical music','Carnatic music','Folk music']
        },

			politics: {
            // example without optgroups
            text: ['Opportunist Politics','Development Based','Local governance'],
            value: ['Opportunist Politics','Development Based','Local governance']
        },

			science: {
            // example without optgroups
            text: ['Natural science','Physical science','Chemistry'],
            value: ['Natural science','Physical science','Chemistry']
        },
			
			social workers: {
            // example without optgroups
            text: ['Child, family & school social worker','Community social worker','Medical & health social worker'],
            value: ['Child, family & school social worker','Community social worker','Medical & health social worker']
        },
		
		
		
			
			mrktaaaaa: {
            'Download Demos': {
                // example without values
                text: ['Iframes', 'PHP to JS', 'Unobtrusive JS']
            },
            
            'No Download': {
                text: ['Object Literals', 'Initializing JS', 'JS Errors']
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

