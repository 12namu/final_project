<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
<!-- Latest compiled JavaScript -->
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>

<link rel="stylesheet"  href="<%=application.getContextPath()%>/resources/css/comm/index.css">
<body>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
	<script type="text/javascript">
	$(function() {
		$("#search").click(function(){
			location.href="";
		});
	});
	
	</script>
</head>
<%@ include file="/WEB-INF/views/comm/index_header.jsp" %>

<div id="middle">
	<div id="middle_box1">
		<div id="realtime">
		
		<a href="./subject/getList?g_num=0">캘린더가기</a>

		</div>
	</div>
	
	
	
	<div id="middle_box2">
		<div id="input_box">
			<form action="">
			 <input type="text" class="form-control" placeholder="Study Search" id="form1">		
			<button type="submit" id="search" class="btn btn-default">Search</button>
			</form>	
		</div>
	</div>
</div>

<%@ include file="/WEB-INF/views/comm/index_footer.jspf" %>
</body>
</html>
