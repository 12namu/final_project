<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<title>스터디그룹</title>

<link rel="stylesheet" href="<%=application.getContextPath()%>/resources/css/subject/list.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
</head>
<body onload="showmethe()">
	
<%@ include file="../comm/header.jsp" %>

<div id="middle">
	<input type="hidden" id="year">
 	<input type="hidden" id="month">
 	<input type="hidden" id="date"> 
 
 <div id="show"></div>
	
	<div id="middle_right">
		<table class="table table-bordered">
			<tr>
			<td>진행일</td><td>참석자</td><td>제목</td><td>작성일</td><td>작성자</td>
			</tr>
			<c:forEach items="${list}" var="i">
			<tr>
				<td><input type="hidden" class="s_year" id="s_yy" value="${i.s_yy}">${i.s_yy}-<input type="hidden" id="s_mm" class="s_month" value="${i.s_mm}">${i.s_mm}-<input type="hidden" id="s_dd" class="s_day" value="${i.s_dd}">${i.s_dd}</td>
				<td><input type="hidden" class="s_joinmem" value="${i.s_Joinmem}">${i.s_Joinmem}</td>
				<td><input type="hidden" class="s_title" value="${i.s_Title}">${i.s_Title}</td>
				<td><input type="hidden" class="s_date" value="${i.s_Date}">${i.s_Date}</td>
				<td><input type="hidden" class="m_id" value="${i.m_Id}">${i.m_Id}
					<input type="hidden" class="s_contents" value="${i.s_Contents}">
				</td>
			</tr>
			</c:forEach>
		</table>
	</div>
	 
 </div><!--middle-->
 	
 
 
 <!--일정추가 modal-->
 <div class="modal fade" id="add" tabindex="-1" role="dialog" aria-labelledby="gridSystemModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="gridSystemModalLabel">모임추가</h4>
      </div>
  		
<!--   	<form action="./setSubject" method="post"> -->
      <div class="modal-body">    	
		<table class="table">
		<tr>
		<td>작성자</td><td><input type="text" id="m_id"></td>
		</tr>
		<tr>
		<td>그룹이름</td><td><input type="text" id="g_name"><input type="hidden" id="g_num" value="0"></td>
		</tr>
		<tr>
		<td>날짜</td><td><input type="text" id="s_date" readonly="readonly"></td>
		</tr>
		<tr>
		<td>참석자</td>
		<td id="tdMem">
		</td>
		</tr>
		<tr>
		<td>주제</td><td><input type="text" id="s_title"></td>
		</tr>
		<tr>
		<td>세부내용 </td><td><textarea rows="10" cols="50" id="s_contents"></textarea></td>
		</tr>
		</table>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        <button type="submit" class='btn btn-warning' onclick='setSubject()'">작성완료</button>
      </div>
<!--      </form> -->
      
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

 	//list받아온 것 저장
	var subject_yy=document.getElementsByClassName("s_year");
	var subject_mm=document.getElementsByClassName("s_month");
	var subject_dd=document.getElementsByClassName("s_day");
	var title=document.getElementsByClassName("s_title");
	var m_id=document.getElementsByClassName("m_id");
	var contents=document.getElementsByClassName("s_contents");	
	var s_date=document.getElementsByClassName("s_date");
	var joinmem=document.getElementsByClassName("s_joinmem");
 
 function prev() { // 지난달
	 
	 
  var yy = document.getElementById("year").value;
  var mm = document.getElementById("month").value;
  		mm--;
  		if(mm <= 0){
  			 mm = 12;
  			 yy--;
  }
  		
	$.ajax({
		url:"ajaxList",
		type:"post",
		data:{
			g_num:0,
			s_yy:yy,
			s_mm:mm
		},
		success:function(result){
			$("#middle_right").html(result);
		 	//list받아온 것 저장
			var subject_yy=document.getElementsByClassName("s_year");
			var subject_mm=document.getElementsByClassName("s_month");
			var subject_dd=document.getElementsByClassName("s_day");
			var title=document.getElementsByClassName("s_title");
			var m_id=document.getElementsByClassName("m_id");
			var contents=document.getElementsByClassName("s_contents");	
			var s_date=document.getElementsByClassName("s_date");
			var joinmem=document.getElementsByClassName("s_joinmem");		
		},
	});

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
  		$.ajax({
  			url:"ajaxList",
  			type:"post",
  			data:{
  				g_num:0,
  				s_yy:yy,
  				s_mm:mm
  			},			
  			success:function(result){
  				$("#middle_right").html(result);
  			 	//list받아온 것 저장
  				var subject_yy=document.getElementsByClassName("s_year");
  				var subject_mm=document.getElementsByClassName("s_month");
  				var subject_dd=document.getElementsByClassName("s_day");
  				var title=document.getElementsByClassName("s_title");
  				var m_id=document.getElementsByClassName("m_id");
  				var contents=document.getElementsByClassName("s_contents");	
  				var s_date=document.getElementsByClassName("s_date");
  				var joinmem=document.getElementsByClassName("s_joinmem");
  			},
  		});
  		
 	 document.getElementById("year").value = yy;
     document.getElementById("month").value = mm;
     showmethe();
 }

 //일정입력하기
 function setSubject(){
	 var join="";
	   $('#mem:checked').each(function() { 
	       join=join+$(this).val()+" ";
	   });
	   alert(join);
	   alert($("#m_id").val());
	   
	 $.ajax({
		url:"setSubject",
		type:"post",
		data:{		
			m_Id:$("#m_id").val(),
			g_Num:$("#g_num").val(),
			s_Joinmem:join,
			s_Title:$("#s_title").val(),
			s_Contents:$("#s_contents").val(),
			s_yy:$("#s_yy").val(),
			s_mm:$("#s_mm").val(),
			s_dd:$("#s_dd").val()
		},
		success:function(result){
			alert(result);
		}		
	 });
 }
 	
 //클릭한 날짜로 모달의 value값 주기
  function getDate(yyy,mmm,ddd){
	var inputday=yyy+"년 "+mmm+"월 "+ddd+"일";
	$("#s_date").val(inputday);
	
	var ck=true;
	
	for(var i=0;i<subject_yy.length;i++){
		if(subject_yy[i].value==yyy && subject_mm[i].value==mmm && subject_dd[i].value==ddd){
			$("#gridSystemModalLabel").html("모임조회");
			$("#m_id").val(m_id[i].value);
			$("#s_title").val(title[i].value);
			$("#s_contents").html(contents[i].value);
			$("#tdMem").html(joinmem[i].value+"&nbsp;&nbsp;<button type='button' onclick='alterMember()' class='btn btn-warning'>수정하기</button>");
			
			ck=false;
			}		
		}
		if(ck){
			$("#gridSystemModalLabel").html("모임추가");
			//그룹멤버 불러오기
			SearchMember();		
		}//if문 끝
	}//function 끝
	
	//참석회원 수정
	function alterMember(){
		$.ajax({
			url:"searchGMember",
			type:"post",
			data:{
				g_num:0
			},
		    dataType:'json',
			success:function(result){
				$("#tdMem").html("");
				$(result).each(function(){	
					$("#tdMem").append("&nbsp;&nbsp;"+"&nbsp;<input type='checkbox' name='s_joinmem' class='s_joinmem' id='mem' value="+this.m_id+">"+this.m_id)		
				});
				
			},
			}); 		
		}
	
	//그룹내 회원조회
	function SearchMember(){
	$.ajax({
		url:"searchGMember",
		type:"post",
		data:{
			g_num:0
		},
	    dataType:'json',
		success:function(result){
			$("#tdMem").html("");
			$("#m_id").val("");
			$("#s_title").val("");
			$("#s_contents").html("");
			
			$(result).each(function(){	
				$("#tdMem").append("&nbsp;&nbsp;"+"&nbsp;<input type='checkbox' name='s_joinmem' id='mem' value="+this.m_id+">"+this.m_id)		
			});
			
		},
		}); 		
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

   var w = new Date(yy,mm-1,1).getDay(); // 이번달 1일이 무슨요일인지 보거 일요일(0)~토요일(0) 까지 알아서 공백을 채워준다
   	for( var i = 0 ; i < w ; i++){
   		 sum += "<td>&nbsp;</td>"
 	  }

 
   var m = [31,28,31,30,31,30,31,31,30,31,30,31]; // 월의 마지막 날짜를 배열에 넣는다.
   m[1] = (yy%400==0 || yy%4==0 && yy%100!=0) ? 29 : 28;	
	
		for( i = 1 ; i <= m[mm-1] ; i++ ){    // 월마지막달 배열 중 이번달 꺼 빼서 요일에 맞게 알아서 넣음 ... !!!
			//일 뿌려주는 곳          
			   var ch = true;
			   for(var j=0;j<subject_dd.length;j++){
			      if(subject_yy[j].value == yy && subject_mm[j].value == mm && subject_dd[j].value == i){
			         sum += "<td align='center'>"+"<button type='button' onclick='getDate("+yy+","+mm+","+i+")' class='btn btn-link dd' value="+i +" data-toggle='modal' data-target='#add'>"+i+"<br><img src='<%=request.getContextPath()%>/resources/img/subject/check.png'>"+"</td>";
			         ch = false;
			      }   
			   }
			   if(ch){
			      sum += "<td align='center'>"+"<button type='button' onclick='getDate("+yy+","+mm+","+i+")' class='btn btn-link dd' value="+i +" data-toggle='modal' data-target='#add'>"+i+"</td>";  
			      
			   }
		
		   
	   if(new Date(yy,mm-1,i).getDay() == 6){  // 토요일이면 행 바꿔주고
    	 sum += "</tr>";
     if(i != m[m-1]){ // 달마지막과 i 값을 비교하여 같지 않다면 새로운 행을 시작한다.
    	  sum += "<tr>"
     }
    }
   } //for문 끝
   
  	
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

