<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="initial-scale=1.0, user-scalable=no">
  <meta name="apple-mobile-web-app-capable" content="yes">
  <meta name="apple-mobile-web-app-status-bar-style" content="black">
  <title></title>
  
  <link rel="stylesheet" href="jquery.mobile-1.3.1.min.css">
  
  <!-- Extra Codiqa features -->
  <link rel="stylesheet" href="codiqa.ext.css">
  
  <!-- jQuery and jQuery Mobile -->
  <script src="jquery-1.9.1.min.js"></script>
  <script src="jquery.mobile-1.3.1.min.js"></script>

  <!-- Extra Codiqa features -->
  <script src="codiqa.ext.js"></script>
  
	<script type="text/javascript">
		$(document).ready(
				function() {
					$('#addForm').submit(
							function() {					
								data=new Object();
								data.kg=$('#textinput1').val();
																
								$.ajax({
									  url:'/_ah/api/weights/v1/result',
									  type:"POST",
									  data:JSON.stringify(data),
									  contentType:"application/json",
									  dataType:"json",
									  success: function(data){
										  alert(data.result);
									  }
								})
								
								return false;
							});
				});

	</script>
   
</head>
<body>
<!-- Home -->
<div data-role="page" id="add">
    <div data-theme="b" data-role="header">
        <h3>
            Add entry
        </h3>
    </div>
    <div data-role="content">
        <form id="addForm" >
            <div data-role="fieldcontain">
                <label for="textinput1">
                    Weight:
                </label>
                <input name="" id="textinput1" placeholder="" value="" type="text">
            </div>
			<input type="submit" value="Add it!" />
        </form>
    </div>
    <%@include file='footer.html'%>
</div>
</body>
</html>
