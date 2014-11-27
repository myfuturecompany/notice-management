<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<style type="text/css">
.dataTables_wrapper {
	
	color: white;

}

.dataTables_length label select {
	
	color: white;
	background-color: black;

}

.dataTables_filter label input {
	
	color: black;

}

</style>

</head>
<body>
<jsp:include page="/header.jsp"></jsp:include>
<a href="index.jsp" style="float: right;">Logout</a>
<script type="text/javascript" src="<%=request.getContextPath() %>/dwr/interface/AdminServices.js"></script>
<ul class="nav nav-tabs" role="tablist" id="myTab">
  <li role="presentation" class="active"><a href="#notice" role="tab" data-toggle="tab"><font color="white">NOTICE</font></a></li>
  <li role="presentation"><a href="#student" role="tab" data-toggle="tab" onclick="populateStudents()"><font color="white">STUDENTS</font></a></li>
  <li role="presentation"><a href="#noticehistory" role="tab" data-toggle="tab" onclick="populateNotices()"><font color="white">NOTICE HISTORY</font></a></li>
</ul>

<div class="tab-content">


	<div role="tabpanel" class="tab-pane active" id="notice">
		
		 <div class="notice" align="center">
	
			<table align="center" width="90%" height="90%" border="0">
				<tr>
					<td align="center" colspan="2"> <div class="alert alert-warning myprofile" align="center">NOTICE</div> </td>
				</tr>
				<tr>
					<td width="15%" height="10px"> <b>SUBJECT : </b></td><td><input style="width: 100%;color: black;" type="text" name="subject" id="subject"></td>
				</tr>
				
				<tr>
					<td> <b>NOTICE : </b></td>
					<td>
						<textarea id="noticeText" name="noticeText" style="width: 100%; height: 250px; color: black;"></textarea>
					</td>
				</tr>
				<tr>
					<td align="center" colspan="2"> 
					
						<button style="width: 100px; color: black;" class="btn" onclick="saveNotice()">SAVE</button>
						<button style="width: 100px; color: black;" class="btn" onclick="saveAndSendEmail()">SEND EMAIL</button>
						<button style="width: 100px; color: black;" class="btn" onclick="saveAndSendMSG()">SEND MSG</button>
					
					
					</td>
					
				</tr>
			</table>
		</div>
	</div>




  <div role="tabpanel" class="tab-pane" id="student">
  	<table id="compute-student-table" style="width: 100%;color: white;" border="1">
  	
  	<thead>
		<tr>
			<th>Registration Number</th>
			<th>Name</th>
			<th>Email</th>
			<th>Phone</th>
			<th>Acedamic Year</th>
		</tr>
	</thead>
	<tbody></tbody>
  	
  	</table>
  </div>
  
  
  <div role="tabpanel" class="tab-pane" id="noticehistory">
  
  
	  <table id="compute-notice-table" style="width: 100%;color: white;" border="1">
	  	
	  	<thead>
			<tr>
				<th>Id</th>
				<th>Subject</th>
				<th>Notice</th>
				<th>Date</th>
				
			</tr>
		</thead>
		<tbody></tbody>
	  	
	  	</table>
  </div>
 
  
</div>



<script type="text/javascript">

	function saveAndSendEmail(){
		
		AdminServices.saveAndEmailNotice( $('#subject').val() , $('#noticeText').val(), function(){
			alert("SUCCESSFULLY SENT ALL EMAILS ....");
		});		
		
	}
	
    function saveNotice(){
		
		AdminServices.saveNotice( $('#subject').val() , $('#noticeText').val(), function(){
			alert("SUCCESSFULLY SAVED ALL EMAILS ....");
		});		
		
	}
    
    function saveAndSendMSG(){
		
		AdminServices.saveAndMSGNotice( $('#subject').val() , $('#noticeText').val(), function(){
			alert("Please recharge your account ...");
		});		
		
	}

	function populateStudents(){
		 $('#compute-student-table > tbody').html('');
		AdminServices.populateStudents(function(p){
			var dataset = JSON.parse(p).aoData;
			for(var i = 0 ; i < dataset.length ; i++ ){
				var x = "<tr>";
				for( var j = 0 ; j < dataset[i].length ; j++){
					x = x + "<td>"+ dataset[i][j] +"</td>";
				}
				x = x + "</tr>";
				$(x).appendTo('#compute-student-table > tbody');
			}
		});
	}
	
function populateNotices(){
	    $('#compute-notice-table > tbody').html('');
		AdminServices.populateNotices(function(p){
			
			var dataset = JSON.parse(p).aoData;
			for(var i = 0 ; i < dataset.length ; i++ ){
				var x = "<tr>";
				for( var j = 0 ; j < dataset[i].length ; j++){
					x = x + "<td>"+ dataset[i][j] +"</td>";
				}
				x = x + "</tr>";
				$(x).appendTo('#compute-notice-table > tbody');
			}
		});
	}
    
    
    
</script>




</body>
</html>