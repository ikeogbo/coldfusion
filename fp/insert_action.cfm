<!DOCTYPE html
PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Final Project - XYZ Autos</title>
<link rel="stylesheet" href="css/project_style.css" type="text/css" />
<script type="text/javascript" src="http://jwpsrv.com/library/H0PNLLLfEeKyliIACpYGxA.js"></script> 

<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.3.2/jquery.min.js"></script>
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.7.2/jquery-ui.min.js"></script>

<script type="text/javascript" src="js/script.js"></script>
</head>

<body>
<cfinclude template="header.cfm">

<!--- Combining two forms--->
<cftry>	

<div id= 'addinv'>
    <cfparam name="Request.DSN" default="cscie60">
    <cfparam name="Request.username" default="iogbo">
    <cfparam name="Request.password" default="6174">

<!--- Insert the new record ---> 
<CFIF IsDefined("form.info_entry")>
        <cfquery name="addinventory"
                 datasource="#Request.DSN#"
                 username="#Request.username#"
                 password="#Request.password#">
			 
    INSERT
    INTO tbinventory  (vin, year, make, model, purchaseprice) 
    VALUES ('#Form.VIN#', #Form.year#, '#Form.optone#', '#Form.opttwo#', #Form.purchaseprice#)

</cfquery> 
<h1>Inventory Added</h1> 
<cfoutput> You have added #Form.optone# #Form.opttwo# to XYZ Inventory. 
</cfoutput> 

<CFELSE>
        <cfquery name="addcustomer"
                 datasource="#Request.DSN#"
                 username="#Request.username#"
                 password="#Request.password#">
				 
    INSERT
    INTO tbcustomer  (email, firstname, lastname, phone, ccno, cctype) 
    VALUES ('#Form.email#', '#Form.firstname#', '#Form.lastname#', #Form.phone#, #Form.ccno#, '#Form.cctype#')
	</cfquery> 
	
        <cfquery name="addorder"
                 datasource="#Request.DSN#"
                 username="#Request.username#"
                 password="#Request.password#">

		
	INSERT
    INTO tborder  (stockid, repid) 
    VALUES ( '#Form.stockid#', '#Form.repid#')
	
</cfquery> 
	
			 
        <cfquery name="addaddress"
                 datasource="#Request.DSN#"
                 username="#Request.username#"
                 password="#Request.password#">
	INSERT
    INTO tbaddress (streetno, street, city, state, zip, country) 
    VALUES ( #Form.streetno#, '#Form.street#', '#Form.city#', '#Form.state#', '#Form.zip#', '#Form.country#')

</cfquery> 
<h1>Thank You!! Order Received</h1> 
<cfoutput> <h3><Thank you #Form.firstname# for shopping at XYZ autos. We will prepare your shipment soon. </h3>
</cfoutput> 

</CFIF>		 
 </div>
 <cfcatch type="any">
 <h2>Apologies, Please make sure you fill out all the required fields in the form. </h2>
</cfcatch>
</cftry> 
</div>

<cfinclude template="footer.cfm">
</body>



</html>


