<%@page import="com.fasterxml.jackson.annotation.JsonInclude.Include"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<%@ include file="../bootstrap/bootstrap.jsp" %>
	<style type="text/css">
*{
	margin: 0;
}

a{
text-decoration: none;
}

#top1{
height: 36px;
background-color:rgb(246, 246, 246);

}

#t1_1{
width: 960px;
margin: 0 auto;
padding-top: 7px;

position: relative;
}
 #t1_1_ul{
 width:220px;

float: right;
} 
.sp1{
color: gray;
font-size: small;
text-align: center; 
margin-left: 10px;
}

#top2{
text-align:center;
height: 135px;
width: 960px;
margin: 0 auto;
 
}

#t2_1{
height: 135px;
width: 200px;
float: left;
background-color: blue;
padding-top:60px;
}
#t2_2{
height: 135px;
float:left;
width: 550px;
margin: 0 auto;
padding-top:50px;
}
#t2_3{
height: 135px;
width: 200px;
float: right;
background-color: orange;
padding-top:60px;
}

#top3 {
    position: relative;
    height:46px;
    width: 100%;
    background-color: gray;
}



ul, ol, li {
    list-style: none;
color: white;
}

li{
display: inline;
font-size: small;

}

#inner{
width: 960px;
margin: 0 auto;
padding-top: 12px;

}


#ip1{
width: 280px;
height:  35px;
border-color: #425bd5;
}

#ip2{
width: 50px;
height: 40px;
background-color: #425bd5;
color: white;
border-radius:5px;
}

.sp{
color: white;
font-size:14px;
text-align: center; 
float: left;
margin-left: 10px;
}
	</style>
	
	
</head>
<body>

<div  id="top1" >
<div id="t1_1">
<div id="t1_1_ul">
<ul class="list-inline">
<li><a href=""><span class="sp1">로그인</span></a></li>
<li><a href=""><span class="sp1">회원가입</span></a></li>
<li><a href=""><span class="sp1">고객센터</span></a></li>
</ul>
</div>
</div>
</div>

<!-- <div id="top2" >
<div id="t2_1">로고</div>
<div id="t2_2"><input type="text" id="ip1"><input type="button" value="검색" id="ip2"></div>
<div id="t2_3">이미지</div>
</div> -->

<!-- <div id="top3" >
<div id="inner">
<ul class="list-inline">
<li><a href=""><span class="sp">사이트소개</span></a></li>
<li><a href=""><span class="sp">과목별 검색</span></a></li>
<li><a href=""><span class="sp">지역별 검색</span></a></li>
<li><a href=""><span class="sp">스터디룸</span></a></li>
<li><a href="board/list?type=re"><span class="sp">후기게시판</span></a></li>
<li><a href="board/list?type=pr"><span class="sp">홍보게시판</span></a></li>
<li><a href=""><span class="sp">마이 페이지</span></a></li>
<li><a href=""><span class="sp">관리자 페이지</span></a></li>
</ul>
</div>
</div> -->


</body>
</html>