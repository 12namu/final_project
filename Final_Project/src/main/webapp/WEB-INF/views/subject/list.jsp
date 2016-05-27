<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>스터디그룹</title>
<link rel="stylesheet" href="<%=application.getContextPath()%>/resources/css/subject/list.css">
</head>
<body onload="showmethe()">
	
<%@ include file="../comm/header.jsp" %>

<div id="middle">
 <input type="hidden" id="year">
 <input type="hidden" id="month">
 <input type="hidden" id="date">

 
 
 
 <div id="show"></div>
 
 
 </div><!--middle-->
 
 <!--일정추가 modal-->
 <div class="modal fade" id="add" tabindex="-1" role="dialog" aria-labelledby="gridSystemModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="gridSystemModalLabel">Modal title</h4>
      </div>
  
      <div class="modal-body">



      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary">Save changes</button>
      </div>
    </div><!-- /.modal-content -->
  </div><!-- /.modal-dialog -->
</div><!-- /.modal -->
 
  
<%@ include file="../comm/footer.jspf" %>
</body>

<script type="text/javascript">

 var today = new Date();           // 오늘거 받아온
 var year = today.getFullYear();   // 년도
 var month = today.getMonth();     // 달
 var day = today.getDate();

 document.getElementById("year").value = year;  // 이 녀석을 셋팅해준다. ( 이 친구들이 달력의 년도와 달 정보를 담는 변수 정도로 생각 하면 됭 ~ )  
 document.getElementById("month").value = month+1; // 이 녀석을 셋팅해준다.

 
 function prev() { // 지난달
  var yy = document.getElementById("year").value;
  var mm = document.getElementById("month").value;
  		mm--;
  		if(mm <= 0){
  			 mm = 12;
  			 yy--;
  }

  document.getElementById("year").value = yy;
  document.getElementById("month").value = mm;
    showmethe();
 }

 function next() { // 다음달
 	 var yy = document.getElementById("year").value;
 	 var mm = document.getElementById("month").value;
 		 mm++;
  		if(mm > 12){
 			  mm = 1;
			  yy++;
  			}

 	 document.getElementById("year").value = yy;
     document.getElementById("month").value = mm;
     showmethe();
 }

 

 function showmethe(){ // 다 로드되고 바로 시작되는 함수
  var yy = document.getElementById("year").value;  // 년도와 달을 불러온다
  var mm = document.getElementById("month").value;
  var show = document.getElementById("show"); //  출력할 곳 div태그

  var sum = "<table id='calendar' class='table table-bordered' align='center'>";
   sum += "<tr>";
   sum += "<td colspan='7' align='center'>";
   sum += "<a href='#' onclick='prev()'>◀</a>&nbsp;&nbsp;&nbsp;";
   sum += yy + "년 "+mm + "월";
   sum += "&nbsp;&nbsp;&nbsp;<a href='#' onclick='next()'>▶</a>";
   sum += "</td>";
   sum += "</tr>";
   sum += "<tr>";
   sum += "<th>일</th><th>월</th><th>화</th><th>수</th><th>목</th><th>금</th><th>토</th>";  
   sum += "</tr>";
   sum += "<tr>";

   var w = new Date(yy,mm-1,1).getDay(); // 이번달 1일이 무슨요일인지 보거 일요일(0)~토요일(0) 까지 알아서 공백을 채워준뎌
   	for( var i = 0 ; i < w ; i++){
   		 sum += "<td>&nbsp;</td>"
 	  }

      
   /*<a class="joinLink" href="#" data-toggle="modal" data-target="#myModal5">로그인</a>*/
  /* "<td align='center' style='color:red;'>" + "<a href='#' data-toggle='modal' data-target='#add' onclick=''>"+i+"</a>" +"</td>";*/
   var m = [31,28,31,30,31,30,31,31,30,31,30,31]; // 월의 마지막 날짜를 배열에 넣는다.
   m[1] = (yy%400==0 || yy%4==0 && yy%100!=0) ? 29 : 28;


   for( i = 1 ; i <= m[mm-1] ; i++ ){    // 월마지막달 배열 중 이번달 꺼 빼서 요일에 맞게 알아서 넣음 ... !!!

    if( new Date(yy,mm-1,i).getDay() == 0){

     sum += "<td align='center' style='color:red;'>" +"<a href='#' data-toggle='modal' data-target='#add'>" + i+"</a>" +"</td>";

    }else if(new Date(yy,mm-1,i).getDay() == 6){

     sum += "<td align='center' style='color:blue;'>" +"<a href='#' data-toggle='modal' data-target='#add'>"+i+"</a>"+"</td>";

    }else{

     sum += "<td align='center'>"+"<a href='#' data-toggle='modal' data-target='#add'>"+ i+"</a>"+"</td>";

    }

    if(new Date(yy,mm-1,i).getDay() == 6){  // 토요일이면 행 바꿔주고
    	 sum += "</tr>";
     if(i != m[m-1]){ // 달마지막과 i 값을 비교하여 같지 않다면 새로운 행을 시작한다.
    	  sum += "<tr>"
     }
    }
   }

   w = new Date(yy,mm,1).getDay(); // 다음달 1일의 요일 정보를 찾아온다 
   if(w != 0){
    for(var i = w ; i <= 6 ; i++){ // 다음달 1일이 시작하는 요일 부터 토요일까지 테이블에 빈칸을 넣어준다.
     sum += "<td>&nbsp;</td>";
    }
   }

   sum += "</tr>"
   sum += "</table>";
  show.innerHTML = sum;
 }

</script>


</html>

