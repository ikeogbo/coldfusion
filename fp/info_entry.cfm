<!DOCTYPE html
PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Final Project - XYZ Autos</title>
<link rel="stylesheet" href="css/project_style.css" type="text/css" />
<script type="text/javascript" src="http://jwpsrv.com/library/H0PNLLLfEeKyliIACpYGxA.js"></script> 
<script type="text/javascript" src="css/jquery-1.9.1.min.js"></script>
<script type="text/javascript">
function setOptions(chosen) {
var selbox = document.info_entry.opttwo;
 
selbox.options.length = 0;
if (chosen == " ") {
  selbox.options[selbox.options.length] = new Option('Please select Make first',' ');
 
}
if (chosen == "Mercedes") {
  selbox.options[selbox.options.length] = new
Option('','');
  selbox.options[selbox.options.length] = new
Option('GLK350','GLK350');
  selbox.options[selbox.options.length] = new
Option('CLK 550','CLK 550');
  selbox.options[selbox.options.length] = new
Option('ML 550','ML 550');
  selbox.options[selbox.options.length] = new
Option('E 220','E 220');

}
if (chosen == "Toyota") {
  selbox.options[selbox.options.length] = new
Option('','');
  selbox.options[selbox.options.length] = new
Option('4Runner','4Runner');
  selbox.options[selbox.options.length] = new
Option('Camry','Camry');
  selbox.options[selbox.options.length] = new
Option('Corolla','Corolla');
  selbox.options[selbox.options.length] = new
Option('Highlander','Highlander');
  selbox.options[selbox.options.length] = new
Option('Matrix','Matrix');
  selbox.options[selbox.options.length] = new
Option('Solara','Solara');
  selbox.options[selbox.options.length] = new
Option('Tundra','Tundra');
}
if (chosen == "Honda") {
  selbox.options[selbox.options.length] = new
Option('','');
  selbox.options[selbox.options.length] = new
Option('Accord','Accord');
  selbox.options[selbox.options.length] = new
Option('Civic','Civic');
  selbox.options[selbox.options.length] = new
Option('CR-V','CR-V');
  selbox.options[selbox.options.length] = new
Option('Element','Element');
  selbox.options[selbox.options.length] = new
Option('Pilot','Pilot');
  selbox.options[selbox.options.length] = new
Option('Ridgeline','Ridgeline');
}
}
</script>



<script type="text/javascript">

$.fn.options = function(selector) {
	return this.each(function() {
		function container(select) {
			if (select.next().is(".option-container")) {
				return $(select).next();
			}
			return $((select) (".option-container")).append(select.children()).insertAfter(select).hide();
		}
		var container = container($(this));
		$(this).empty().append(container.children(selector).clone());
	});
}

$(document).ready(function(){

	$("#State").hide()

	$("#Country").change(function() {
		var selected = this.options[this.selectedIndex].value;
		if (selected == "US") {
			$("#State").show().options(".state");
		} else if (selected == "CA") {
			$("#State").show().options(".province");
		} else {
			$("#State").hide();
		}
	}).change();


});
</script>


</head>

<body>
  
<cfinclude template="header.cfm">





 <form name="info_entry" action="insert_action.cfm" method="post">

 
 
        <h3>Inventory information</h3>


<p>Please add New Inventory</p>
<fieldset>
		<legend>Inventory Information</legend>
	<p>
		<b>*VIN</b><input type="text" name="vin" maxlength="16"/>Enter a 16 digit alphanumerical characters<br/>
		<b>*Year</b><input type="text" name="year" maxlength="4"/> Enter Year like 2013<br/>
	</p>




<div align="left">
<h4>*Select Make and Model</h4>
	<select name="optone" size="1"
		onchange="setOptions(document.info_entry.optone.options
		[document.info_entry.optone.selectedIndex].value);">
		<option value=" " selected="selected"> </option>
		<option value="Mercedes">Mercedes</option>
		<option value="Toyota">Toyota</option>
		<option value="Honda">Honda</option>
	</select><br/> 
	<select name="opttwo" size="1">
			<option value=" " selected="selected">Please select Make first</option>
	</select>
</div>


<!--- <b>*Date Purchased</b><input type="text" name="purchasedate" maxlength="16"/><br/>--->
<b>*Price Purchased</b><input type="text" name="purchaseprice" maxlength="10"/><br/>

<!---
<h4>Select New or Used Cars</h4>
<p>
<input type="radio" name="spec" value="New"/>New
<input type="radio" name="spec" value="Used" checked="checked"/>Used
<input type="radio" name="spec" value="Pre-Owned"/>Pre-Owned
</p>
--->
</fieldset>  
<p>
 


<input type="submit" name="info_entry" value="Submit Form"/>

</p>
</form>
</div>

<cfinclude template="footer.cfm">
</body>



</html>

