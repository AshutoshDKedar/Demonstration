<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
    
<%@page import="java.sql.*,Database_Connection.*" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert</title>
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
		String ID=request.getParameter("Reg_ID");
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
			PreparedStatement ps=conn.prepareStatement("UPDATE Student_Registration SET First_Name=?,Last_Name=?,E_Mail=?,Mo_No=?,DOB=?,Gender=?,Username=?,Password=? where RID=?");
			ps.setString(1, First_Name);
			ps.setString(2, Last_Name);
			ps.setString(3, E_Mail);
			ps.setString(4, Mobile_Number);
			ps.setString(5, Date_Of_Birth);
			ps.setString(6, Gender);
			ps.setString(7, Username);
			ps.setString(8, Password);
			ps.setInt(9, RID);
			ps.executeUpdate();
			out.println("<center><h3>Record Updated Successfully...........!</h3></center>");
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