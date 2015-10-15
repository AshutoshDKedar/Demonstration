<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
    
<%@page import="java.sql.*,Database_Connection.*" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert</title>
<script type="text/javascript" src="./Java Script/Validate.js"></script>
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
<form name="Registration" action="Insert Data.jsp" method="post" onsubmit="return Validate()">
	<hr>
	<center><h3>-: Student Registration :-</h3></center>
	<hr>
	<br>
	<br>
	<div style="width: 500px;margin: 0px auto;height: auto;">
		<table style="width: 100%;font-family: Courier New;font-size: 15px;font-weight: bold;" cellpadding="5" cellspacing="5">
			
			<tr>
				<td style="text-align: right;width: 50%;">Registration ID :-</td>
				<td style="text-align: center;width: 50%;">
					<%
						int Reg_ID=0;
						try
						{
							Connection conn=DatabaseConnection.DBConnection();
							Statement stmt=conn.createStatement();
							String SELECT="SELECT max(RID) from Student_Registration";
							ResultSet rs=stmt.executeQuery(SELECT);
							if(rs.next())
							{
								int ID=rs.getInt(1);
								ID++;
								Reg_ID=ID;
							}
						}
						catch(Exception e)
						{
							e.printStackTrace();
						}
					%>
					<input id="RID" type="text" name="RID" style="width: 250px;float: left;font-family: Courier New;font-size: 15px;font-weight: bold;text-align: center;" value="<%=Reg_ID %>" readonly>
				</td>
			</tr>
			
			<tr>
				<td style="text-align: right;width: 50%;">First Name :-</td>
				<td style="text-align: center;width: 50%;">
					<input id="FNM" type="text" name="FNM" style="width: 250px;float: left;font-family: Courier New;font-size: 15px;font-weight: bold;text-align: center;">
				</td>
			</tr>
			
			<tr>
				<td style="text-align: right;width: 50%;">Last Name :-</td>
				<td style="text-align: center;width: 50%;">
					<input id="LNM" type="text" name="LNM" style="width: 250px;float: left;font-family: Courier New;font-size: 15px;font-weight: bold;text-align: center;">
				</td>
			</tr>
			
			<tr>
				<td style="text-align: right;width: 50%;">E-Mail ID :-</td>
				<td style="text-align: center;width: 50%;">
					<input id="EML" type="email" name="EML" style="width: 250px;float: left;font-family: Courier New;font-size: 15px;font-weight: bold;text-align: center;">
				</td>
			</tr>
			
			<tr>
				<td style="text-align: right;width: 50%;">Mobile Number :-</td>
				<td style="text-align: center;width: 50%;">
					<input id="MN" type="text" name="MN" style="width: 250px;float: left;font-family: Courier New;font-size: 15px;font-weight: bold;text-align: center;">
				</td>
			</tr>
			
			<tr>
				<td style="text-align: right;width: 50%;">Date Of Birth :-</td>
				<td style="text-align: center;width: 50%;">
					<input id="DOB" type="date" name="DOB" style="width: 250px;float: left;font-family: Courier New;font-size: 15px;font-weight: bold;text-align: center;height: 18px;'">
				</td>
			</tr>
			
			<tr>
				<td style="text-align: right;width: 50%;">Gender :-</td>
				<td style="text-align: left;width: 50%;">
					<input id="Gender" type="radio" name="Gender" value="Male" checked>Male &nbsp;&nbsp; <input id="Gender" type="radio" name="Gender" value="Female">Female
				</td>
			</tr>
			
			<tr>
				<td style="text-align: right;width: 50%;">Username :-</td>
				<td style="text-align: center;width: 50%;">
					<input  id="UNM" type="text" name="UNM" style="width: 250px;float: left;font-family: Courier New;font-size: 15px;font-weight: bold;text-align: center;height: 18px;'">
				</td>
			</tr>
			
			<tr>
				<td style="text-align: right;width: 50%;">Password :-</td>
				<td style="text-align: center;width: 50%;">
					<input  id="PWD" type="password" name="PWD" style="width: 250px;float: left;font-family: Courier New;font-size: 15px;font-weight: bold;text-align: center;height: 18px;'">
				</td>
			</tr>
			
			<tr>
				<td colspan="2" align="center"><input type="submit" value="Register" style="width: 250px;font-family: Courier New;font-size: 15px;font-weight: bold;"></td>
			</tr>
			
		</table>	
	</div>
	<hr>
	
	<div style="width: 900px;margin: 0px auto;height: auto;">
		<center><a id="Home" href="index.jsp">Home</a></center>
	</div>
	<hr>
</form>
</body>
</html>