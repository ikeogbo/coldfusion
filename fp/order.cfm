<!DOCTYPE html
PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Final Project - XYZ Autos</title>
<link rel="stylesheet" href="css/project_style.css" type="text/css" />
<script type="text/javascript" src="http://jwpsrv.com/library/H0PNLLLfEeKyliIACpYGxA.js"></script> 
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="css/jquery-1.9.1.min.js"></script>




<script type="text/javascript" src="js/script.js"></script>




</head>

<body>
<cfinclude template="header.cfm">




    <cfparam name="Request.DSN" default="cscie60">
    <cfparam name="Request.username" default="iogbo">
    <cfparam name="Request.password" default="6174">
	
<!--- Insert the new record ---> 

<cfquery name="searchinventory"
                 datasource="#Request.DSN#"
                 username="#Request.username#"
                 password="#Request.password#">
	
	SELECT stockid 
		FROM tbinventory 
		WHERE stockid = <cfqueryparam value="#url.id#" cfsqltype="cf_sql_char">
	</cfquery>




 <form name="order" action="insert_action.cfm" method="post">
 
 


        <h3>Order Form</h3>

<p>Thank You!! for your interest in XYZ cars</p>

<p>Please fill out the form below to the vehicle with stockid: <cfif isDefined("URL.id")>
  <cset myVariable = URL.id>
  <b><cfoutput> #url.id#</cfoutput> </b>
</cfif></p>



 <fieldset>
     <legend>Personal Information</legend>
	<p>
	
	
		<b>First Name</b><input type="text" name="FirstName" maxlength="15"/><br/>
		<b>Last Name</b><input type="text" name="LastName" maxlength="15"/><br/>
		<b>Email</b><input type="text" name="Email" maxlength="25"/><br/>
		<b>Phone</b><input type="text" name="phone" maxlength="12"/><br/>
		<b>Street Number</b><input type="text" name="streetno" maxlength="5"/><br/>
		<b>Street</b><input type="text" name="street" maxlength="20"/><br/>
		<b>City</b><input type="text" name="city" maxlength="20"/><br/>
		<b>State</b><input type="text" name="state" maxlength="20"/><br/>
		<b>Zip Code</b><input type="text" name="zip" maxlength="20"/><br/>
	    <b>Stockid</b><input type="text" value = <cfoutput> #url.id#</cfoutput> name="stockid" maxlength="10"/><br/>
		
	<select size="1" id="Country" name="country">
      <option value="">Select One</option>

      <option value="US" selected="selected">United States</option>
      <option value="CA">Canada</option>
      <option value="">----------</option>
      <option value="AF">Afghanistan</option>
      <option value="AL">Albania</option>
      <option value="DZ">Algeria</option>

      <option value="AS">American Samoa</option>
      <option value="AD">Andorra</option>
      <option value="AO">Angola</option>
      <option value="AI">Anguilla</option>
      <option value="AQ">Antarctica</option>
      <option value="AG">Antigua and Barbuda</option>

      <option value="AR">Argentina</option>
      <option value="AM">Armenia</option>
      <option value="AW">Aruba</option>
      <option value="AU">Australia</option>
      <option value="AT">Austria</option>
      <option value="AZ">Azerbaidjan</option>

      <option value="BS">Bahamas</option>
      <option value="BH">Bahrain</option>
      <option value="BD">Bangladesh</option>
      <option value="BB">Barbados</option>
      <option value="BY">Belarus</option>
      <option value="BE">Belgium</option>

      <option value="BZ">Belize</option>
      <option value="BJ">Benin</option>
      <option value="BM">Bermuda</option>
      <option value="BT">Bhutan</option>
      <option value="BO">Bolivia</option>
      <option value="BA">Bosnia-Herzegovina</option>

      <option value="BW">Botswana</option>
      <option value="BV">Bouvet Island</option>
      <option value="BR">Brazil</option>
      <option value="IO">British Indian Ocean Territory</option>
      <option value="BN">Brunei Darussalam</option>
      <option value="BG">Bulgaria</option>

      <option value="BF">Burkina Faso</option>
      <option value="BI">Burundi</option>
      <option value="KH">Cambodia</option>
      <option value="CM">Cameroon</option>
      <option value="CV">Cape Verde</option>
      <option value="KY">Cayman Islands</option>

      <option value="CF">Central African Republic</option>
      <option value="TD">Chad</option>
      <option value="CL">Chile</option>
      <option value="CN">China</option>
      <option value="CX">Christmas Island</option>
      <option value="CC">Cocos (Keeling) Islands</option>

      <option value="CO">Colombia</option>
      <option value="KM">Comoros</option>
      <option value="CG">Congo</option>
      <option value="CK">Cook Islands</option>
      <option value="CR">Costa Rica</option>
      <option value="HR">Croatia</option>

      <option value="CU">Cuba</option>
      <option value="CY">Cyprus</option>
      <option value="CZ">Czech Republic</option>
      <option value="DK">Denmark</option>
      <option value="DJ">Djibouti</option>
      <option value="DM">Dominica</option>

      <option value="DO">Dominican Republic</option>
      <option value="TP">East Timor</option>
      <option value="EC">Ecuador</option>
      <option value="EG">Egypt</option>
      <option value="SV">El Salvador</option>
      <option value="GQ">Equatorial Guinea</option>

      <option value="ER">Eritrea</option>
      <option value="EE">Estonia</option>
      <option value="ET">Ethiopia</option>
      <option value="FK">Falkland Islands</option>
      <option value="FO">Faroe Islands</option>
      <option value="FJ">Fiji</option>

      <option value="FI">Finland</option>
      <option value="CS">Former Czechoslovakia</option>
      <option value="SU">Former USSR</option>
      <option value="FR">France</option>
      <option value="FX">France (European Territory)</option>
      <option value="GF">French Guyana</option>

      <option value="TF">French Southern Territories</option>
      <option value="GA">Gabon</option>
      <option value="GM">Gambia</option>
      <option value="GE">Georgia</option>
      <option value="DE">Germany</option>
      <option value="GH">Ghana</option>

      <option value="GI">Gibraltar</option>
      <option value="GB">Great Britain</option>
      <option value="GR">Greece</option>
      <option value="GL">Greenland</option>
      <option value="GD">Grenada</option>
      <option value="GP">Guadeloupe (French)</option>

      <option value="GU">Guam (USA)</option>
      <option value="GT">Guatemala</option>
      <option value="GN">Guinea</option>
      <option value="GW">Guinea Bissau</option>
      <option value="GY">Guyana</option>
      <option value="HT">Haiti</option>

      <option value="HM">Heard and McDonald Islands</option>
      <option value="HN">Honduras</option>
      <option value="HK">Hong Kong</option>
      <option value="HU">Hungary</option>
      <option value="IS">Iceland</option>
      <option value="IN">India</option>

      <option value="ID">Indonesia</option>
      <option value="INT">International</option>
      <option value="IR">Iran</option>
      <option value="IQ">Iraq</option>
      <option value="IE">Ireland</option>
      <option value="IL">Israel</option>

      <option value="IT">Italy</option>
      <option value="CI">Ivory Coast (Cote D&#39;Ivoire)</option>
      <option value="JM">Jamaica</option>
      <option value="JP">Japan</option>
      <option value="JO">Jordan</option>
      <option value="KZ">Kazakhstan</option>

      <option value="KE">Kenya</option>
      <option value="KI">Kiribati</option>
      <option value="KW">Kuwait</option>
      <option value="KG">Kyrgyzstan</option>
      <option value="LA">Laos</option>
      <option value="LV">Latvia</option>

      <option value="LB">Lebanon</option>
      <option value="LS">Lesotho</option>
      <option value="LR">Liberia</option>
      <option value="LY">Libya</option>
      <option value="LI">Liechtenstein</option>
      <option value="LT">Lithuania</option>

      <option value="LU">Luxembourg</option>
      <option value="MO">Macau</option>
      <option value="MK">Macedonia</option>
      <option value="MG">Madagascar</option>
      <option value="MW">Malawi</option>
      <option value="MY">Malaysia</option>

      <option value="MV">Maldives</option>
      <option value="ML">Mali</option>
      <option value="MT">Malta</option>
      <option value="MH">Marshall Islands</option>
      <option value="MQ">Martinique (French)</option>
      <option value="MR">Mauritania</option>

      <option value="MU">Mauritius</option>
      <option value="YT">Mayotte</option>
      <option value="MX">Mexico</option>
      <option value="FM">Micronesia</option>
      <option value="MD">Moldavia</option>
      <option value="MC">Monaco</option>

      <option value="MN">Mongolia</option>
      <option value="MS">Montserrat</option>
      <option value="MA">Morocco</option>
      <option value="MZ">Mozambique</option>
      <option value="MM">Myanmar</option>
      <option value="NA">Namibia</option>

      <option value="NR">Nauru</option>
      <option value="NP">Nepal</option>
      <option value="NL">Netherlands</option>
      <option value="AN">Netherlands Antilles</option>
      <option value="NT">Neutral Zone</option>
      <option value="NC">New Caledonia (French)</option>

      <option value="NZ">New Zealand</option>
      <option value="NI">Nicaragua</option>
      <option value="NE">Niger</option>
      <option value="NG">Nigeria</option>
      <option value="NU">Niue</option>
      <option value="NF">Norfolk Island</option>

      <option value="KP">North Korea</option>
      <option value="MP">Northern Mariana Islands</option>
      <option value="NO">Norway</option>
      <option value="OM">Oman</option>
      <option value="PK">Pakistan</option>
      <option value="PW">Palau</option>

      <option value="PA">Panama</option>
      <option value="PG">Papua New Guinea</option>
      <option value="PY">Paraguay</option>
      <option value="PE">Peru</option>
      <option value="PH">Philippines</option>
      <option value="PN">Pitcairn Island</option>

      <option value="PL">Poland</option>
      <option value="PF">Polynesia (French)</option>
      <option value="PT">Portugal</option>
      <option value="PR">Puerto Rico</option>
      <option value="QA">Qatar</option>
      <option value="RE">Reunion (French)</option>

      <option value="RO">Romania</option>
      <option value="RU">Russian Federation</option>
      <option value="RW">Rwanda</option>
      <option value="GS">S. Georgia and S. Sandwich Isls.</option>
      <option value="SH">Saint Helena</option>
      <option value="KN">Saint Kitts and Nevis Anguilla</option>

      <option value="LC">Saint Lucia</option>
      <option value="PM">Saint Pierre and Miquelon</option>
      <option value="ST">Saint Tome (Sao Tome) and Principe</option>
      <option value="VC">Saint Vincent and Grenadines</option>
      <option value="WS">Samoa</option>
      <option value="SM">San Marino</option>

      <option value="SA">Saudi Arabia</option>
      <option value="SN">Senegal</option>
      <option value="SC">Seychelles</option>
      <option value="SL">Sierra Leone</option>
      <option value="SG">Singapore</option>
      <option value="SK">Slovak Republic</option>

      <option value="SI">Slovenia</option>
      <option value="SB">Solomon Islands</option>
      <option value="SO">Somalia</option>
      <option value="ZA">South Africa</option>
      <option value="KR">South Korea</option>
      <option value="ES">Spain</option>

      <option value="LK">Sri Lanka</option>
      <option value="SD">Sudan</option>
      <option value="SR">Suriname</option>
      <option value="SJ">Svalbard and Jan Mayen Islands</option>
      <option value="SZ">Swaziland</option>
      <option value="SE">Sweden</option>

      <option value="CH">Switzerland</option>
      <option value="SY">Syria</option>
      <option value="TJ">Tadjikistan</option>
      <option value="TW">Taiwan</option>
      <option value="TZ">Tanzania</option>
      <option value="TH">Thailand</option>

      <option value="TG">Togo</option>
      <option value="TK">Tokelau</option>
      <option value="TO">Tonga</option>
      <option value="TT">Trinidad and Tobago</option>
      <option value="TN">Tunisia</option>
      <option value="TR">Turkey</option>

      <option value="TM">Turkmenistan</option>
      <option value="TC">Turks and Caicos Islands</option>
      <option value="TV">Tuvalu</option>
      <option value="UG">Uganda</option>
      <option value="UA">Ukraine</option>
      <option value="AE">United Arab Emirates</option>

      <option value="GB">United Kingdom</option>
      <option value="UY">Uruguay</option>
      <option value="MIL">USA Military</option>
      <option value="UM">USA Minor Outlying Islands</option>
      <option value="UZ">Uzbekistan</option>
      <option value="VU">Vanuatu</option>

      <option value="VA">Vatican City State</option>
      <option value="VE">Venezuela</option>
      <option value="VN">Vietnam</option>
      <option value="VG">Virgin Islands (British)</option>
      <option value="VI">Virgin Islands (USA)</option>
      <option value="WF">Wallis and Futuna Islands</option>

      <option value="EH">Western Sahara</option>
      <option value="YE">Yemen</option>
      <option value="YU">Yugoslavia</option>
      <option value="ZR">Zaire</option>
      <option value="ZM">Zambia</option>
      <option value="ZW">Zimbabwe</option>

    </select>
<br />

<select  id="State" name="State">

      <option value="" class="selectone">Select One</option>
      <option value="AB" class="province">Alberta</option>
      <option value="BC" class="province">British Columbia</option>
      <option value="MB" class="province">Manitoba</option>

      <option value="NB" class="province">New Brunswick</option>
      <option value="NF" class="province">Newfoundland</option>
      <option value="NT" class="province">Northwest Territories</option>
      <option value="NS" class="province">Nova Scotia</option>
      <option value="NU" class="province">Nunavut</option>
      <option value="ON" class="province">Ontario</option>

      <option value="PE" class="province">Prince Edward Island</option>
      <option value="QC" class="province">Quebec</option>
      <option value="SK" class="province">Saskatchewan</option>
      <option value="YT" class="province">Yukon Territory</option>

        <option value="AK" class="state">Alaska</option>
        <option value="AL" class="state">Alabama</option>

        <option value="AR" class="state">Arkansas</option>
        <option value="AZ" class="state">Arizona</option>
        <option value="CA" class="state">California</option>
        <option value="CO" class="state">Colorado</option>
        <option value="CT" class="state">Connecticut</option>
        <option value="DC" class="state">District of Columbia</option>

        <option value="DE" class="state">Delaware</option>
        <option value="FL" class="state">Florida</option>
        <option value="GA" class="state">Georgia</option>
        <option value="HI" class="state">Hawaii</option>
        <option value="IA" class="state">Iowa</option>
        <option value="ID" class="state">Idaho</option>

        <option value="IL" class="state">Illinois</option>
        <option value="IN" class="state">Indiana</option>
        <option value="KS" class="state">Kansas</option>
        <option value="KY" class="state">Kentucky</option>
        <option value="LA" class="state">Louisiana</option>
        <option value="MA" class="state">Massachusetts</option>

        <option value="MD" class="state">Maryland</option>
        <option value="ME" class="state">Maine</option>
        <option value="MI" class="state">Michigan</option>
        <option value="MN" class="state">Minnesota</option>
        <option value="MO" class="state">Missouri</option>
        <option value="MS" class="state">Mississippi</option>

        <option value="MT" class="state">Montana</option>
        <option value="NC" class="state">North Carolina</option>
        <option value="ND" class="state">North Dakota</option>
        <option value="NE" class="state">Nebraska</option>
        <option value="NH" class="state">New Hampshire</option>
        <option value="NJ" class="state">New Jersey</option>

        <option value="NM" class="state">New Mexico</option>
        <option value="NV" class="state">Nevada</option>
        <option value="NY" class="state">New York</option>
        <option value="OH" class="state">Ohio</option>
        <option value="OK" class="state">Oklahoma</option>
        <option value="OR" class="state">Oregon</option>

        <option value="PA" class="state">Pennsylvania</option>
        <option value="PR" class="state">Puerto Rico</option>
        <option value="RI" class="state">Rhode Island</option>
        <option value="SC" class="state">South Carolina</option>
        <option value="SD" class="state">South Dakota</option>
        <option value="TN" class="state">Tennessee</option>

        <option value="TX" class="state">Texas</option>
        <option value="UT" class="state">Utah</option>
        <option value="VA" class="state">Virginia</option>
        <option value="VT" class="state">Vermont</option>
        <option value="WA" class="state">Washington</option>
        <option value="WI" class="state">Wisconsin</option>

        <option value="WV" class="state">West Virginia</option>
        <option value="WY" class="state">Wyoming</option>
</select>
	</p>

 </fieldset>    


 <fieldset>
 <legend>Payment and Billing Information</legend>
<p>
		<b>Creditcard</b><input type="text" name="ccNo" maxlength="15"/><br/>
		<b>Creditcard Type</b><input type="text" name="cctype" maxlength="15"/><br/></br>
		
<input type="checkbox" name="billingtoo" onclick="FillBilling(this.form)"> Check this box if billing address is same as shipping.<br/>
		<b>Phone</b><input type="text" name="billingphone" maxlength="12"/><br/>
		<b>Street Number</b><input type="text" name="billingstreetno" maxlength="5"><br/>
		<b>Street</b><input type="text" name="billingstreet" maxlength="20"/><br/>
		<b>City</b><input type="text" name="billingcity" maxlength="20"/><br/>
		<b>State</b><input type="text" name="billingstate" maxlength="20"/><br/>
		<b>Zip Code</b><input type="text" name="billingzip" maxlength="20"/><br/>
		<b>Country</b><input type="text" name="billingcountry" maxlength="20"/><br/>
</fieldset>  
		


 
 
 
  <cfquery name="getrep"
                 datasource="#Request.DSN#"
                 username="#Request.username#"
                 password="#Request.password#">
      select repid, firstname
         from tbsalesrep
      </cfquery>


 <fieldset>
<legend>Sales Representative</legend>
<p>
<b>Select Your Sales Rep if you know them</b><br>
 <select name="repid">
                <cfoutput query="getrep">
                  <option value="#repid#">#firstname#</option>
                </cfoutput>
              </select>
 </fieldset>
 
		
<p>
<input type="submit" name= "order" value="Place Order"/>
</p>
</form>

 </div>
	  
 
<cfinclude template="footer.cfm">
</body>

</html>
























