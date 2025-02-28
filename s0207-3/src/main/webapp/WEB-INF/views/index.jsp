<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>메인 페이지</title>
		<script>
			if("${param.chk}" == 1)	alert("로그인이 되었습니다.");
			if("${param.outChk}" == 1) alert("로그아웃 되었습니다.");
		</script>
	</head>
	<body>
		<h2>메인 페이지 입니다.</h2>
		<div> 세션 확인 : ${session_id}</div>
		<div> 로그인체크 : ${chk}</div>
		<div> 로그아웃체크 : ${param.chk}</div>
		<ul>
			<c:if test="${session_id == null }">		
				<li><a href="member/login">로그인</a></li>
				<li><a href="member/memInsert">회원가입</a></li>
				<li><a href="board/blist">게시판</a></li>
				<li><a href="member/mlist">회원리스트</a></li>
			</c:if>
			<c:if test="${session_id != null }">
				<li><a href="member/memInfo">회원정보</a></li>
				<li><a href="member/logout">로그아웃</a></li>
			</c:if>
		</ul>
	</body>
</html>