<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<html>
<head>
<title>Home</title>
</head>
<body>
	<h1>Login</h1>


	<form action="<c:url value="/login.do"/>" method="post">
		<p>
			<label>Username: <input type='text' name='j_username'
				value="tester" /></label>
		</p>
		<p>
			<label>Password: <input type='text' name='j_password'
				value="tester" /></label>
		</p>

		<p>
			<input name="login" value="Login" type="submit" />
		</p>
	</form>
</body>
</html>
