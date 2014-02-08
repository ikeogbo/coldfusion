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
<h2>XYZ Inventory</h2>
<b>Please select a vehicle you are interested in by clicking on the StockID </b>


<div id= 'searchinv'>
    <cfparam name="Request.DSN" default="cscie60">
    <cfparam name="Request.username" default="iogbo">
    <cfparam name="Request.password" default="6174">
	
<!--- Insert the new record ---> 

     <cfquery name="searchinventory"
                 datasource="#Request.DSN#"
                 username="#Request.username#"
                 password="#Request.password#">
<!--- I exclude any inventory with Sales Date. Which means that the car is  ---> 			 
				select StockID, VIN, year, make, model, purchaseprice from tbinventory
				where saledate is null
				order by Make
     </cfquery>				
	  			<table>	
				<tr>
					<th>StockID</th>
					<th>VIN</th>
					<th>Year</th>
					<th>Make</th>
					<th>Model</th>	
                    <th>Price</th>						
				</tr>
				            
      <cfoutput query ="searchinventory">				
             <tr>
				<td><a href="order.cfm?id='#searchinventory.stockid#'">#searchinventory.stockid#</td>
				<td>#searchinventory.vin#</td>
				<td>#searchinventory.year#</td>
				<td>#searchinventory.make#</td>
				<td>#searchinventory.model#</td>
				<td>#searchinventory.Purchaseprice#</td>
             </tr>
      </cfoutput>
            </table></br></br>

</div>

<cfinclude template="footer.cfm">
</body>



</html>


