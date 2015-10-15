<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
    
<%@page import="java.sql.*,Database_Connection.*" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Create</title>
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
	<hr>
	<%
		try
		{
			Connection conn=DatabaseConnection.DBConnection();
			PreparedStatement ps=conn.prepareStatement("CREATE table Student_Registration(RID number(9),First_Name varchar2(20),Last_Name varchar2(20),E_Mail varchar2(50),Mo_No varchar2(13),DOB varchar2(15),Gender varchar2(10),Username varchar2(50),Password varchar2(50),primary key(RID))");
			ps.executeQuery();
			out.println("<center><h3>Table Created Successfully...........!</h3></center>");
		}
		catch(Exception e)
		{
			out.println("<center><h3>Table Allready Exists...........!</h3></center>");
		}
	%>
	<hr>
	
	<div style="width: 900px;margin: 0px auto;height: auto;">
		<center><a id="Home" href="index.jsp">Home</a></center>
	</div>
	<hr>
</body>
</html>