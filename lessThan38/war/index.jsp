<%@ page contentType="text/html;charset=UTF-8" language="java"%>


<html>
<head>
<script type="text/javascript" src="jquery-1.10.2.js"></script>
</head>
<body>

	<script type="text/javascript">
		$(document).ready(
				function() {
					$('#addForm').submit(
							function() {
								
								data=new Object();
								data.kg=$('#kg').val();
								
								$.ajax({
									  url:'/_ah/api/weights/v1/result',
									  type:"POST",
									  data:JSON.stringify(data),
									  contentType:"application/json",
									  dataType:"json",
									  success: function(){
										  alert("ok");
									  }
								})
								
								return false;
							});
				});

	</script>

<div style="width:100%;text-align:center;position:relative;top:150px;">
	Guten Morgen!<br><br>
	<form id="addForm">
		<label for="kg">Gewicht:</label> <input type="text" id="kg">
		<input type="submit">
	</form>
</div>

</body>
</html>
