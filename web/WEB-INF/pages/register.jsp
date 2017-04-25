<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page session="true"%>
<html>
<head>
    <title>Register</title>
</head>
<body>
<form name="registerForm" action="register" method="post">
    <p>Username</p>
    <input type="text" name="username">
    <p>Password</p>
    <input type="password" name="password">
    <input name="submit" type="submit"
           value="submit" />
    <input type="hidden" name="${_csrf.parameterName}"
           value="${_csrf.token}" />
</form>
</body>
</html>
