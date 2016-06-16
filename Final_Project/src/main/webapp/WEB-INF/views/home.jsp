<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
<!-- Latest compiled JavaScript -->
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>

<link rel="stylesheet"  href="<%=application.getContextPath()%>/resources/css/comm/index.css">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
	<script type="text/javascript">
	$(function() {
		$("#search").click(function(){
			location.href="";
		});
	});
	
	</script>
</head>
<body>
<%@ include file="/WEB-INF/views/comm/index_header.jsp" %>

<div id="middle">
	<div id="middle_box1">
		
		<div id="search_img">
			<img src="<%=application.getContextPath()%>/resources/img/common/index/img1.png">	
		</div>		
		<a href="./subject/getList?g_num=0">캘린더가기</a>

	</div>
	
	
	<div id="middle_box2">
		<div id="search_box">
			<form action="" method="get">
				<input type="hidden" id="area" name="area">
				<input type="hidden" id="subject" name="subject">
				
					
			<div class="btn-group">
  				<button id="area" class="btn btn-default btn-lg dropdown-toggle" type="button" data-toggle="dropdown" aria-expanded="false">
   				 전체지역<span class="caret"></span>
  				</button>
 				  <ul class="dropdown-menu area" role="menu" id="arealist"> 		 			
  		 			 <li id="seoul"><a href="#">서울특별시</a></li>
   		 			 <li id="gyunggi"><a href="#">경기도</a></li>
    	 			 <li id="gwangyeok"><a href="#">광역시</a></li> 	 					 			
  				</ul>
  				
		  		<ul class="dropdown-menu area" style="display: none;" id="seoullist">
		          <li id="seoul" name="seoul" class="seoul_" value="서울전체"><a href="#">서울 전체</a></li>
		          <li name="seoul_gangnam" id="seoul_gangnam" class="seoul_" value="강남권"><a href="#">강남권</a></li>
		          <li name="seoul_shinchon" id="seoul_shinchon" class="seoul_"><a href="#" value="신촌권">신촌권</a></li>
		          <li name="seoul_jongro" id="seoul_jongro" class="seoul_"><a href="#" value="종각/종로">종각/종로</a></li>
		          <li name="seoul_hyehwa" id="seoul_hyehwa" class="seoul_"><a href="#" value="혜화">혜화</a></li>
		          <li name="seoul_kundae" id="seoul_kundae" class="seoul_"><a href="#" value="건대">건대</a></li>
		          <li name="seoul_shinrim" id="seoul_shinrim" class="seoul_"><a href="#" value="신림">신림</a></li>
		          <li name="seoul_sadang" id="seoul_sadang" class="seoul_"><a href="#" value="사당">사당권</a></li>
		          <li name="seoul_mokdong" id="seoul_mokdong" class="seoul_"><a href="#" value="목동">목동</a></li>
		          <li name="seoul_noryangjin" id="seoul_noryangjin" class="seoul_"><a href="#" value="노량진">노량진</a></li>
		          <li name="seoul_etc" id="seoul_etc" class="seoul_" value="기타"><a href="#">기타</a></li>
		        </ul>	
			</div>
			
			<script type="text/javascript">
				$(function() {
					$("#seoul").click(function(){
						$("#arealist").attr('style', "display:none;");
						$("#seoullist").attr('style',"display:inline");
					});
					
					$(".seoul_").click(function(){
						alert("test");
						alert($(this).text());
						$("#area").text($(this).text());
					});
				});
			
			</script>	

		<div class="btn-group">
  		<button class="btn btn-default btn-lg dropdown-toggle" type="button" data-toggle="dropdown" aria-expanded="false">
    		전체과목 <span class="caret"></span>
  		</button>
  		  <ul class="dropdown-menu subject" role="menu">
  		 	 <li><a href="#">어학</a></li>
   		 	 <li><a href="#">취업</a></li>
    	  	 <li><a href="#">시험</a></li>
    	  	 <li><a href="#">음악/미술</a></li>
    	  	 <li><a href="#">독서/스포츠</a></li>
    	  	 <li><a href="#">여행</a></li>
    	  	 <li><a href="#">IT</a></li>
    	  	 <li><a href="#">기타</a></li> 		 
  		</ul>
		</div>

		<button type="submit" class="btn btn-default btn-lg">검색하기</button>			
		</form>	
		</div>
		
		<div id="img_box">
			<img src="<%=application.getContextPath()%>/resources/img/common/index/img_main.jpg" alt="..." class="img-circle">
			<img src="<%=application.getContextPath()%>/resources/img/common/index/img_main.jpg" alt="..." class="img-circle">
			<img src="<%=application.getContextPath()%>/resources/img/common/index/img_main.jpg" alt="..." class="img-circle">
		</div>
	</div>
	

</div><!--middle-->

<%@ include file="/WEB-INF/views/comm/index_footer.jspf" %>
</body>
</html>
