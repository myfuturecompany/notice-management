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
<body onload="populateNotices()">
<jsp:include page="/header.jsp"></jsp:include>
<a href="index.jsp" style="float: right;">Logout</a>
<script type="text/javascript" src="<%=request.getContextPath() %>/dwr/interface/AdminServices.js"></script>
<ul class="nav nav-tabs" role="tablist" id="myTab">
  <li role="presentation" class="active"><a href="#noticehistory" role="tab" data-toggle="tab" onclick="populateNotices()"><font color="white">NOTICE HISTORY</font></a></li>
</ul>

<div class="tab-content">


  <div role="tabpanel" class="tab-pane active" id="noticehistory">
  
  
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