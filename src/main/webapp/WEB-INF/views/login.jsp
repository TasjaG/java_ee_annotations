<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page session="true"%>
<html>
<head>
<title>Login Page</title>
<style>
body, html {
    height: 100%;
    background-repeat: no-repeat;
    background-image: linear-gradient(rgb(104, 145, 162), rgb(12, 97, 33));
    }
.error {
	padding: 15px;
	margin-bottom: 20px;
	border: 1px solid transparent;
	border-radius: 4px;
	color: #a94442;
	background-color: #f2dede;
	border-color: #ebccd1;
}

.msg {
	padding: 15px;
	margin-bottom: 20px;
	border: 1px solid transparent;
	border-radius: 4px;
	color: #31708f;
	background-color: #d9edf7;
	border-color: #bce8f1;
}


#login-box {
	padding: 30px;
  max-width: 350px;
  width: 100% !important;
  background-color: #F7F7F7;
  margin: 0 auto;
  border-radius: 2px;
  box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
  overflow: hidden;
  font-family: roboto;
}

</style>
</head>
<body onload='document.loginForm.username.focus();'>

	<div id="login-box">

		<h3>Login with Username and Password</h3>

		<c:if test="${param.error!=null}">
			<div>Invalid username and password.</div>
		</c:if>
		<c:if test="${param.logout!=null}">
			<div>You have been logged out.</div>
		</c:if>

		<form name="loginForm"
			action="<c:url value='/login' />" method='POST'>

			<table>
				<tr>
					<td>User:</td>
					<td><input type="text" name='username'></td>
				</tr>
				<tr>
					<td>Password:</td>
					<td><input type="password" name='password' /></td>
				</tr>
				<tr>
					<td colspan='2'><input name="submit" type="submit"
						value="submit" /></td>
				</tr>
			</table>

			<input type="hidden" name="${_csrf.parameterName}"
				value="${_csrf.token}" />

		</form>
	</div>

</body>
</html>