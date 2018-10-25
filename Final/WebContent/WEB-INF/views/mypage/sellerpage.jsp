<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>  

    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
    
<!DOCTYPE html>
<html>
<head>
<style type="text/css">

.sellerTable{
	border: 0px; 
	margin-left : auto;
	margin-right : auto; 
	margin-bottom : 30px; 
	text-align: center;
	border-collapse:collapse;
	height : 150px;
	width : 800px;
}

.sellerTable table tr td{
	border: 1px solid #c7c7bc; 
	line-height: 2.5em;
	cursor: pointer;
	width : 200px;	
} 

</style>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="sellerTable">
<h2>여기는_ seller _page</h2>
<br>
<table>
	<tr>
		<td>
			${sessionScope.loginID }님 환영합니다 <button type="button" class="memInfoUpdate">회원정보수정</button>
			 	
		</td>
	</tr>
</table>


<h2 style="text-align: center;">등록중된 렌탈 상품 </h2>
<table class="retalinglist" > 
	 	<tr class="trtag">
	 			<td>
	 				<button type="button" id="sellerRegiGoods">렌탈상품등록하기</a>
	 			</td>
				<td>
						 <a href="sellerRental.do">seller Rental Detail</a>
				</td>		

	</tr>		 
	
	
</table>


<h2 style="text-align: center;">문의한 게시판</h2>
<table class="qnalist">
	<tr>
		<th>번호</th>
		<th>category</th>
		<th>제목</th>
		<th>날짜</th>
	</tr>
	<tr>
		<td>
			<c:if test="${empty myqnalist }">
				등록한 문의가 없습니다
			</c:if>
		</td>
	</tr>
	<c:forEach items="${myqnalist }" var="myqna" varStatus="vs">
		<tr id="myqnalist">
			 
				<td>${myqna.seq }</td>
				<td>${myqna.category }</td>
				<td>${myqna.title }</td>
				<td>${myqna.wdate }</td>
		</tr>
	</c:forEach>
</table>
</div>

<script type="text/javascript">
$(".memInfoUpdate").click(function() {
	//alert("userInfoUpdate 함수 실행");
	location.href = "updateInfo.do";
});

$("#sellerRegiGoods").click(function() {
	alert("sellerRegiGoods 함수 실행");
//	location.href = "updateInfo.do";
});



</script>

</body>
</html>