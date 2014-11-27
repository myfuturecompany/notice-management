<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
</head>
<body>
<jsp:include page="/header.jsp"></jsp:include>

<script type="text/javascript" src="<%=request.getContextPath() %>/dwr/interface/LoginServices.js"></script>

<div class="curveedge" align="center">
<br><br>
	<table align="center" width="100%" height="90%">
		<tr>
			<td  align="center" colspan="2"> <b style="color: white;">I AM A ADMIN USER : <input type="checkbox" name="isAdminLogin" id="isAdminLogin" value="ADMIN"></b></td>
		</tr>
		<tr>
			<td  align="right"> <b style="color: white;">USER NAME : </b></td><td><input style="width: 90%; color: black;" type="text" name="userName" id="userName"></td>
		</tr>
		<tr>
			<td   align="right"> <b style="color: white;">PASSWORD : </b></td><td><input style="width: 90%; color: black;" type="password" name="passWord" id="passWord"></td>
		</tr>
		<tr>
			<td align="center" colspan="2"> <button onclick="login()" style="width: 200px;" class="btn"><b>LOGIN</b></button></td>
		</tr>
		<tr>
			<td align="center" colspan="2"> <b> <a href="registration.jsp" style="color: maroon;">REGISTER HERE</a>  </b> </button></td>
		</tr>
	</table>
</div>

<script type='text/javascript' src='/taxi/dwr/interface/LoginServices.js'></script>
<script type="text/javascript">
function login(){
	
	LoginServices.login( $('#userName').val() , $('#passWord').val(), $("#isAdminLogin").is(':checked') , function(p){
		
		if(p != null && p != '' && p != 'null'){
			
			if(p.indexOf("welcome")){
				
				if($("#isAdminLogin").is(':checked')){
					window.location = 'admindashboard.jsp';
				}else{
					window.location = 'studentdashboard.jsp';
				}
			}
			
			
		}
		
	});
		
		
	
	
	
}


</script>


</body>
</html>