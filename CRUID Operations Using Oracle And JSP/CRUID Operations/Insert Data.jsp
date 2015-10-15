<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
    
<%@page import="java.sql.*,Database_Connection.*" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert</title>
<style type="text/css">
	input 
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
		String ID=request.getParameter("RID");
		int RID=Integer.parseInt(ID);
		String First_Name=request.getParameter("FNM");
		String Last_Name=request.getParameter("LNM");
		String E_Mail=request.getParameter("EML");
		String Mobile_Number=request.getParameter("MN");
		String Date_Of_Birth=request.getParameter("DOB");
		String Gender=request.getParameter("Gender");
		String Username=request.getParameter("UNM");
		String Password=request.getParameter("PWD");
		try
		{
			Connection conn=DatabaseConnection.DBConnection();
			PreparedStatement ps=conn.prepareStatement("INSERT into Student_Registration values(?,?,?,?,?,?,?,?,?)");
			ps.setInt(1, RID);
			ps.setString(2, First_Name);
			ps.setString(3, Last_Name);
			ps.setString(4, E_Mail);
			ps.setString(5, Mobile_Number);
			ps.setString(6, Date_Of_Birth);
			ps.setString(7, Gender);
			ps.setString(8, Username);
			ps.setString(9, Password);
			ps.executeUpdate();
			out.println("<center><h3>Record Saved Successfully...........!</h3></center>");
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