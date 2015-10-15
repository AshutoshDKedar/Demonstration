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
		int RID=Integer.parseInt(request.getParameter("Reg_ID"));
		try
		{
			Connection conn=DatabaseConnection.DBConnection();
			PreparedStatement ps=conn.prepareStatement("DELETE from Student_Registration where RID=?");
			ps.setInt(1, RID);
			ps.executeUpdate();
			out.println("<center><h3>Table Deleted Successfully...........!</h3></center>");
		}
		catch(Exception e)
		{
			out.println("<center><h3>Something Went Wrong...........!</h3></center>");
		}
	%>
	<hr>
	
	<div style="width: 900px;margin: 0px auto;height: auto;">
		<center><a id="Home" href="index.jsp">Home</a></center>
	</div>
	<hr>
</body>
</html>