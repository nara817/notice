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

	function fnList() {
		location.href = '${contextPath}/notice/list.do';
	}

	function fnList() {
		if(confirm('공지사항이 등록되었습니다.')){
		location.href = '${contextPath}/notice/list.do';
	}
	

</script>
</head>
<body>

	<div>
		<h1>공지 작성하기</h1>
		<form method="post" action="${contextPath}/notice/add.do">
			<div>
				<label for="section">구분</label>
				<select name="section">
					<option selected="selected" value="one">일반</option>
					 <option value="two">긴급</option>
				</select>
			</div>
			<div>
				<label for="title">제목</label>
				<input type="text" id="title" name="title" placeholder="새로운 공지">
			</div>
			<div>
				<label for="writer">작성자</label>
				<input type="text" id="writer" name="writer">
			</div>
			<div>
				<div><label for="content">내용</label></div>
				<textarea id="content" name="content" placeholder="새로운 공지입니다"></textarea>  
			</div>
			<div>
				<button>작성완료</button>
				<input type="button" value="목록" onclick="fnList()">
			</div>
		</form>
	</div>
	
</body>
</html>