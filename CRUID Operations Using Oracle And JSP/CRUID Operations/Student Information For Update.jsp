<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<%@page import="java.sql.*,Database_Connection.*" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Read</title>
<style type="text/css">
	#Home
	{
		width: 100%;
		height: 50px;
		font-family: Courier New;
		font-size: 15px;
		font-weight: bold;
		text-align: center;
	}
</style>
</head>
<body>
<form action="Update Data.jsp" method="post">
	<center>
	<hr>
		<h3 style="font-family: Courier New;font-size: 15px;font-weight: bold;">-: Student Information :-</h3>
	<hr>
	<%
		int RID=Integer.parseInt(request.getParameter("Reg_ID"));
		int RID_DB=0;
		String First_Name=null,Last_Name=null,E_Mail=null,Mobile_Number=null,Date_Of_Birth=null,Gender=null,Username=null,Password=null;
		try
		{
			Connection conn=DatabaseConnection.DBConnection();
			PreparedStatement ps=conn.prepareStatement("SELECT * from Student_Registration where RID=?");
			ps.setInt(1, RID);
			ResultSet rs=ps.executeQuery();
			while(rs.next())
			{
				RID_DB=rs.getInt(1);
				First_Name=rs.getString(2);
				Last_Name=rs.getString(3);
				E_Mail=rs.getString(4);
				Mobile_Number=rs.getString(5);
				Date_Of_Birth=rs.getString(6);
				Gender=rs.getString(7);
				Username=rs.getString(8);
				Password=rs.getString(9);
			}
		}
		catch(Exception e)
		{
			out.println("<center><h3>Something Went Wrong...........!</h3></center>");
		}
	%>									
	<br><br>
	<table border="1" cellpadding="5px" cellspacing="5px" style="width: 90%;margin: 0px auto;font-family: Courier New;font-size: 15px;font-weight: bold;">
		<tr>
			<td style="width: 50%;text-align: right;">Registration ID :-</td><td><input type="text" value="<%=RID_DB %>" readonly style="width: 250px;" name="Reg_ID"></td>
		</tr>
		<tr>
			<td style="width: 50%;text-align: right;">First Name :-</td><td><input type="text" value="<%=First_Name %>"  style="width: 250px;" name="FNM"></td>
		</tr>
		<tr>
			<td style="width: 50%;text-align: right;">Last Name :-</td><td><input type="text" value="<%=Last_Name %>"  style="width: 250px;" name="LNM"></td>
		</tr>
		<tr>
			<td style="width: 50%;text-align: right;">E-Mail Address :-</td><td><input type="email" value="<%=E_Mail %>"  style="width: 250px;" name="EML"></td>
		</tr>
		<tr>
			<td style="width: 50%;text-align: right;">Mobile Number :-</td><td><input type="text" value="<%=Mobile_Number %>"  style="width: 250px;" name="MN"></td>
		</tr>
		<tr>
			<td style="width: 50%;text-align: right;">Date Of Birth :-</td><td><input type="date" value="<%=Date_Of_Birth %>"  style="width: 250px;" name="DOB"></td>
		</tr>
		<tr>
			<td style="width: 50%;text-align: right;">Gender :-</td><td><input type="text" value="<%=Gender %>"  style="width: 250px;" name="Gender"></td>
		</tr>
		<tr>
			<td style="width: 50%;text-align: right;">Username :-</td><td><input type="text" value="<%=Username %>"  style="width: 250px;" name="UNM"></td>
		</tr>
		<tr>
			<td style="width: 50%;text-align: right;">Password :-</td><td><input type="password" value="<%=Password %>"  style="width: 250px;" name="PWD"></td>
		</tr>
		<tr>
			<td colspan="2" align="center"><input type="submit" value="Update" style="width: 250px;font-family: Courier New;font-size: 15px;font-weight: bold;"></td>
		</tr>
	</table>
	</center>
	<br><br>
	<hr>
	<div style="width: 900px;margin: 0px auto;height: auto;">
		<center><a id="Home" href="index.jsp">Home</a></center>
	</div>
	<hr>
</form>
</body>
</html>