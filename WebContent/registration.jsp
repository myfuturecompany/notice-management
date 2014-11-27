<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
</head>
<body>
<jsp:include page="/header.jsp"></jsp:include>

<script type="text/javascript" src="<%=request.getContextPath() %>/dwr/interface/LoginServices.js"></script>

<div class="registration" align="center">
<br><br>
	<table align="center" width="90%" height="90%" border="0">
		<tr>
			<td> <b>Regd No : </b></td>
			<td><input style="width: 90%;  color: black;" type="text" name="redgNo" id="redgNo"></td>
		</tr>
		<tr>
			<td> <b>PASSWORD : </b></td>
			<td><input style="width: 90%; color: black;" type="password" name="pass" id="pass"></td>
		</tr>
		<tr>
			<td> <b>CONFIRM PASSWORD : </b></td>
			<td><input style="width: 90%; color: black;" type="password" name="confirmPassWord" id="confirmPassWord"></td>
		</tr>
		<tr>
			<td> <b>NAME : </b></td>
			<td><input style="width: 90%; color: black;" type="text" name="name" id="name"></td>
		</tr>
		<tr>
			<td> <b>EMAIL : </b></td>
			<td><input style="width: 90%; color: black;" type="text" name="email" id="email"></td>
		</tr>
		<tr>
			<td> <b>PHONE NUMBER : </b></td>
			<td><input style="width: 90%; color: black;" type="text" name="contactNo" id="contactNo"></td>
		</tr>
		<tr>
			<td> <b>ACADEMIC YEAR : </b></td>
			<td><input style="width: 90%;  color: black;" type="text" name="acedamicYear" id="acedamicYear"></td>
		</tr>
		<tr>
			<td align="center" colspan="2"> <button onclick="register()" style="width: 200px;" class="btn btn-primary">REGISTER</button></td>
		</tr>
		<tr>
			<td align="center" colspan="2"> <b> ALREADY REGISTERED ? <a href="index.jsp">DO A LOGIN!</a></b></button></td>
		</tr>
	</table>
</div>


<script type="text/javascript">
function register(){
 var student = {			
			acedamicYear :$('#acedamicYear').val(),
			contactNo : $('#contactNo').val(),
			email : $('#email').val(),
			name : $('#name').val(),
			pass : $('#pass').val(), 
			redgNo : $('#redgNo').val()			
	};	

 	//dwr.util.setValues(student);	
	
	LoginServices.registration(student , function(p){
		alert("Registered Successfully!!!");
	});
	
}
</script>
</body>
</html>