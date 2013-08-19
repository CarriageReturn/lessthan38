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
    
</head>
<body>
<!-- Home -->
<div data-role="page" id="settings">
    <div data-theme="b" data-role="header">
        <h3>
            Settings
        </h3>
    </div>
    <div data-role="content">
    	<div data-role="fieldcontain">
			<form>
			    <label for="slider-10">Target weight:</label>
			    <input name="slider-10" id="slider-10" min="60" max="80" step=".1" value="70.0" type="range">
			</form>
		</div>
    </div>
    <%@include file='footer.html'%>
</div>
</body>
</html>