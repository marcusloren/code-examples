<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.mercadopago.MP"%>
<%@page import="org.codehaus.jettison.json.JSONObject"%>

<%
	MP mp = new MP("CLIENT_ID", "CLIENT_SECRET");

	String preferenceData = "{'items':"+
		"[{"+
			"'title':'Multicolor kite',"+
			"'quantity':1,"+
			"'currency_id':'CURRENCY_ID',"+ // Available currencies at: https://api.mercadopago.com/currencies
			"'unit_price':10.0"+
		"}]"+
	"}";

	JSONObject preference = mp.createPreference(preferenceData);
%>

<!DOCTYPE html>
<html>
	<head>
		<title>Pay</title>
	</head>
	<body>
		<a href="payment_link">Pay</a>
	</body>
</html>