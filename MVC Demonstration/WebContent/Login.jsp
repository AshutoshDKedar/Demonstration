<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width,initial-scale=1">
<title>MVC Demonstration</title>
<link rel="Stylesheet" type="text/css" href="./Bootstrap/css/bootstrap.min.css">
</head>
<body>
	<form role="form" action="LoginController" method="post">
		<div class="container">
			<div class="jumbotron">
				<div class="row" style="width: 500px;margin: 0 auto;">
					<div class="input-group">
						<input class="form-control" type="text" placeholder="Username" name="username"/>
						<div class="input-group-addon"><span class="glyphicon glyphicon-user"></span></div>
					</div>
					<br>
					<div class="input-group">
						<input class="form-control" type="password" placeholder="Password" name="password"/>
						<div class="input-group-addon"><span class="glyphicon glyphicon-lock"></span></div>
					</div>
					<br>
					<div class="form-group">
						<input class="form-control btn btn-primary" type="submit" value="Login">
					</div>
				</div>
			</div>
		</div>
	</form>
</body>
</html>