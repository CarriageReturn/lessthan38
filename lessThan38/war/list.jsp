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
<div data-role="page" id="list">
	<script type="text/javascript">
			$( document ).on( "pageinit", "#list", function( event ) {
					$.getJSON('/_ah/api/weights/v1/weightresultcollection', function(data) {
						  var items = [];

						  $.each(data.items, function(key, val) {
						    items.push('<li id="' + key + '" data-theme="c">' + val.kg + ' am ' + val.date + '</li>');
						  });
						  
						  $('#dataList').empty();

						  $('#dataList').append(items.join(''));
						  
						    try {
						        $('#dataList').listview('refresh');
						    } catch(e) {
						        $('#dataList').listview();
						    }
					});
			});


	</script>
    <div data-theme="b" data-role="header">
        <h3>
            List entries
        </h3>
    </div>
    <div data-role="content">
        <ul data-role="listview" data-divider-theme="b" data-inset="true" id="dataList">
        </ul>
    </div>
    <%@include file='footer.html'%>
</div>
</body>
</html>
