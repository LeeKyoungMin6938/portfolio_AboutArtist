<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- 모바일 연동태그 -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/AboutArtist.css">
<script type="text/javascript" src="../member/member.js"></script>
<title>About Artist</title>
</head>
<body>
<header>
<!-- 상단 고정네비 -->
<c:choose>
	<c:when test="${empty sessionScope.loginUser }">
		<!-- 로그인 상태가 아닐경우 -->
		<nav class="navbar navbar-default navbar-static-top">
		<a href="AAServlet?command=index" style="position:absolute;"><img src="image/AA2.png"></a>		
		<div class="container">		
			<nav class="navbar-left">				
				<a href="AAServlet?command=loginform"><button type="button" class="btn btn-info btn-lg">로그인</button></a>
				<a href="AAServlet?command=joinform"><button type="button" class="btn btn-info btn-lg">회원가입</button></a>					
			</nav>		
		</div>
		</nav>
	</c:when>
	<c:otherwise>
	<ul class="nav nav-tabs">
		<li role="presentation"><a href="AAServlet?command=index"><img src="image/AA2.png"></a></li>
		<li style="margin-left:30px"><label style="margin-top:10%;">${sessionScope.loginUser.name }님 환영합니다.</label></li>
		<li role="presentation" style="margin-left:30px"><a href="AAServlet?command=logout">로그아웃</a></li>  
		<li role="presentation" style="margin-left:30px"><a href="#">마이페이지</a></li>
	</ul>
	</c:otherwise>
</c:choose>
</header>