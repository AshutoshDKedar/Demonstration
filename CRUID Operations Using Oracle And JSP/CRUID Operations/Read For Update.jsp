<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<%@page import="java.sql.*,Database_Connection.*" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Read</title>
</head>
<body>
<form action="Student Information For Update.jsp" method="post">
	<hr>
	<br>
	<center>
	<h3 style="font-family: Courier New;font-size: 15px;font-weight: bold;">-: Registration ID :-</h3>
	<select name="Reg_ID" style="width: 250px;text-align: center;">
	<%
		try
		{
			Connection conn=DatabaseConnection.DBConnection();
			PreparedStatement ps=conn.prepareStatement("SELECT RID from Student_Registration");
			ResultSet rs=ps.executeQuery();
			while(rs.next())
			{
				int RID=rs.getInt(1);
				%>
					<option value="<%=RID %>"><%=RID %></option>
				<%
			}
		}
		catch(Exception e)
		{
			out.println("<center><h3>Something Went Wrong...........!</h3></center>");
		}
		%>									
	</select>
	<br>
	<br>
	<hr>
	<input type="submit" value="Display Information" style="width: 250px;font-family: Courier New;font-size: 15px;font-weight: bold;">
	</center>
	<hr>
	<div style="width: 900px;margin: 0px auto;height: auto;">
		<center><a id="Home" href="index.jsp">Home</a></center>
	</div>
	<hr>
</form>
</body>
</html>