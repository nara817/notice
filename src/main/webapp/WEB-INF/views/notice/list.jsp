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
<script src="${contextPath}/resources/summernote-0.8.18-dist/summernote-lite.min.js"></script>
<script src="${contextPath}/resources/summernote-0.8.18-dist/lang/summernote-ko-KR.min.js"></script>
<link rel="stylesheet" href="${contextPath}/resources/summernote-0.8.18-dist/summernote-lite.min.css">
</head>
<style>
	tbody tr:hover {
		background-color: beige;
		cursor: pointer;
	}
</style>
<script>

	function fnDetail(n) {
		location.href = '${contextPath}/notice/detail.do?notice_no=' + n;

	}
</script>
<body>
<h2>고양이 상사에 오신 걸 환영합니다</h2>
<img alt="고양이" src="resources/images/cat.jpg" width="300" >

	<hr>
	
	<div>
		<table border="1">
		<thead>
		<tr>
		<td>공지번호</td>
		<td>제목</td>
		</tr>
		</thead>
		<tbody>
			<c:if test="${empty noticeList}">

				<tr>
					<td colspan="3">게시물 없음</td>
				</tr>
			</c:if>
			<c:if test="${not empty noticeList}">

				<c:forEach items="${noticeList}" var="b">

					<tr onclick="fnDetail(${b.notice_no})">

						<td>${b.title}</td>
						<td>${b.writer}</td>
					</tr>
				</c:forEach>
			</c:if>
		</tbody>
	</table>
	</div>
	<hr>
		<div>
			<a href="${contextPath}/notice/write.do">새로운 공지 작성하러 가기</a>
		</div>
</body>
</head>
<body>
	
</body>
</html>