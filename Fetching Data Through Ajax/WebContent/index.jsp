<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*,Database_Connection.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Ajax Demonstration</title>
<script type="text/javascript" src="./JQuery/jquery-1.11.1.js"></script>
<script type="text/javascript">
$(document).ready(function() {
	$('#SID').change(function(event) {
		var Student_ID = $('#SID').val();
		//alert(Student_ID);
		if(Student_ID=="")
		{
			alert("Select Other Student ID...!");
		}
		else
		{
			$.post('Get Student Information.jsp', {
				SID : Student_ID
			}, function(responseText) {
			//alert(responseText);
				var Splited_Text=responseText.split("/"),i;
				$('#Student_Name').val(Splited_Text[0]);
				$('#Student_Mobile_Number').val(Splited_Text[1]);
			});
		}
	});
}); 
</script>
</head>
<body>
<form>
	<center>
		<select id="SID" name="SID" style="font-family: Courier New;font-size: 15px;font-weight: bold;width: 200px;">
		<option value="">-Select ID-</option>
		<%
			Connection conn=DatabaseConnection.DBConnection();
			String SELECT="SELECT sid from student";
			PreparedStatement pstmt=conn.prepareStatement(SELECT);
			ResultSet rs=pstmt.executeQuery();
			while(rs.next())
			{
				%>
				<option value="<%=rs.getString(1)%>"><%=rs.getString(1) %></option>
				<%
			}
		%>
		</select>
		<br/><br/>
		<input type="text" id="Student_Name" name="SNM" placeholder="Student Name" style="font-family: Courier New;font-size: 15px;font-weight: bold;width: 200px;text-align: center;">
		<br/><br/>
		<input type="text" id="Student_Mobile_Number" name="MONO" placeholder="Mobile Number" style="font-family: Courier New;font-size: 15px;font-weight: bold;width: 200px;text-align: center;">
		<br/><br/>
		<input type="submit" value="Register" style="font-family: Courier New;font-size: 15px;font-weight: bold;width: 200px;text-align: center;">
	</center>
</form>
</body>
</html>