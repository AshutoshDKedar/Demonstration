<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Ajax Demonstration</title>
<script type="text/javascript" src="./JQuery/jquery-1.11.1.js"></script>
<script type="text/javascript">
$(document).ready(function() {
	$('#Country').change(function(event) {
		var Country_Name = $('#Country').val();
		//alert(Country_Name);
		$.get('Get States.jsp', {
			Country : Country_Name
		}, function(responseText) {
			$('#States').html(responseText);
		});
	});
}); 

/* function getState(val) {
	$.ajax({
	type: "GET",
	url: "Get State.jsp",
	data:'Country Name='+val,
	success: function(data){
		$("#States").html(data);
	}
	});
} */

</script>
</head>
<body>
<form>
	<center>
		<select id="Country" name="Country" style="font-family: Courier New;font-size: 15px;font-weight: bold;width: 200px;">
			<option value="Select">-Select Country-</option>
			<option value="India">India</option>
			<option value="Australia">Australia</option>
		</select>
		<br/>
		<br/>
		
		<select id="States" name="States" style="font-family: Courier New;font-size: 15px;font-weight: bold;width: 200px;">
			<option value="">-Select State-</option>
		</select>
	</center>
</form>
</body>
</html>