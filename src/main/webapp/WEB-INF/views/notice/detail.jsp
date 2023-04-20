<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="${contextPath}/resources/js/lib/jquery-3.6.4.min.js"></script>

<script>
function fnEdit(){
	$('#edit_screen').show();
	$('#detail_screen').hide();
}
function fnRemove(){
	if(confirm('공지사항을 삭제할까요?')){
		location.href = '${contextPath}/notice/remove.do?notice_no=${b.notice_no}';
	}
}
function fnList(){
	location.href = '${contextPath}/notice/list.do';
}
function fnBack(){
	$('#edit_screen').hide();
	$('#detail_screen').show();
}
$(function(){
    $('#edit_screen').hide(); // #edit_screen 요소 숨기기
});
</script>

</head>
<body>

<div id="detail_screen">
	<h1>${b.notice_no}번 공지사항</h1>
	<div>구분 : </div>
	<div>제목 : ${b.title}</div>
	<div>${b.content}</div>
	<hr>
	<div>
		<input type="button" value="편집" onclick="fnEdit()">
		<input type="button" value="삭제" onclick="fnRemove()">
		<input type="button" value="목록" onclick="fnList()">
	</div>
</div>



<div id="edit_screen">
	<div style="cursor: pointer;" onclick="fnBack()"><i class="fa-solid fa-arrow-left"></i> ← 뒤로 가기</div>
	<h1>공지사항 편집하기</h1>
	<form method="post" action="${contextPath}/notice/modify.do">
		<div>
			<label for="title">제목</label>
			<input type="text" id="title" name="title" value="${b.title}">
		</div>
		<div>
			<div><label for="content">내용</label></div>
			<textarea id="content" name="content">${b.content}</textarea> 
		</div>
		<div>
			<input type="hidden" name="notice_no" value="${b.notice_no}">
			<button>수정완료</button>
			<input type="button" value="목록" onclick="fnList()">
		</div>
	</form>
</div>

</body>
</html>