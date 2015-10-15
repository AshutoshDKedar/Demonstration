<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>CRUID Operations</title>
<script type="text/javascript">
	function Create()
	{
		window.location="./Create.jsp";
	}
	function Read()
	{
		window.location="./Read.jsp";
	}
	function Update()
	{
		window.location="./Read For Update.jsp";
	}
	function Insert()
	{
		window.location="./Insert.jsp";
	}
	function Delete()
	{
		window.location="./Read For Delete.jsp";
	}
</script>
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
	<center><h3>CRUID Operations</h3></center>
	<hr>
	<br>
	<div style="width: 900px;margin: 0px auto;height: auto;">
		<input type="submit" onclick="Create()" value="Create Table"><br><br>
		<input type="submit" onclick="Insert()" value="Insert Data Into Table"><br><br>
		<input type="submit" onclick="Read()" value="Read Table Data"><br><br>
		<input type="submit" onclick="Update()" value="Update Table Data"><br><br>
		<input type="submit" onclick="Delete()" value="Delete Table Data"><br><br>
	</div>
	<hr> 
</body>
</html>