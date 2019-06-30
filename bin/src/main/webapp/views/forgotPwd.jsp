<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<title>Insert title here</title>
<style>
.error {
	color: #FF0000
}
</style>
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">

<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script
	src="https://cdn.jsdelivr.net/jquery.validation/1.16.0/jquery.validate.min.js"></script>
<script>
	$(function() {

		$('form[id="accRegForm"]').validate({
			rules : {
				firstName : 'required',
				lastName : 'required',
				email : {
					required : true,
					email : true,
				},
				password : {
					required : true,
					minlength : 5,
				},
				dob : 'required',
				gender : 'required',
				role : 'required',
				phno : 'required',
				ssn : 'required'
			},
			messages : {
				firstName : 'Please enter first name',
				lastName : 'please enter last name',
				email : 'Please enter a valid email',
				password : {
					required : 'Please enter password',
					minlength : 'Password must be at least 5 characters long'
				},
				dob : 'Please select dob',
				gender : 'Please select Gender',
				role : 'Please select a Role',
				phno : 'Please enter Phno',
				ssn : 'Please enter SSN'
			},
			submitHandler : function(form) {
				form.submit();
			}
		});

	});
</script>
</head>
<body>

	<font color='green'>${success}</font>
	<font color='red'>${failure}</font>

	<h2>Forgot Password</h2>
	<form:form action="#" method="POST" id="forgotPwd">
		<table>
			<tr>
				<td>Email:</td>
				<td><input type="text" name="uname" /></td>
			</tr>
			<tr>
				<td></td>
				<td><input type="Submit" value="Submit" id="validateBtn" /></td>
			</tr>
		</table>
	</form:form>
</body>
</html>