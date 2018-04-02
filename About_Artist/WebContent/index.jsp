<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- 모바일연동태그 -->
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/AboutArtist.css">
<title>About Artist</title>
<!-- 18-03-29 시작 -->
</head>
<style type="text/css">
	.jumbotron {
		background-image : url('image/jumbo.jpg');  				
  		background-size: cover;
	}
</style>
<body>
<!-- 상단 고정네비 -->
	<nav class="navbar navbar-default navbar-static-top">	
	<div class="container">
		<nav class="navbar-left">		
			<button type="button" class="btn btn-info btn-lg">로그인</button>
			<button type="button" class="btn btn-info btn-lg">회원가입</button>					
		</nav>
		<nav class="navbar-right">ddd</nav>
	</div>
	</nav>
	
<!-- 점보트론 -->
	<div class="container">	
		<div class="jumbotron">
			<h1>About Artist</h1><h3>당신이 원하는 아티스트의 정보를 찾아보세요</h3><br>
			<p>찾으시는 가수의 정보가 없다면, 게시판을 통해 원하는 가수의 이름을 적어주세요. 빠르게 업데이트 됩니다</p>
		</div>
	</div>
	
<!-- 컨텐츠소개 -->
<div class="container">
	<div class="row">
	  <div class="col-sm-6 col-md-6">
	    <div class="thumbnail">
	      <img src="..." alt="...">
	      <div class="caption">
	        <h3>아티스트 정보</h3>
	        <p>다양한 정보를 보기쉽게 정리했습니다. 당신과 그들의 공통점을 찾아보세요</p>
	        <p><a href="#" class="btn btn-primary" role="button">JOIN</a></p>
	      </div>
	    </div>
	  </div>
	  
	  <div class="col-sm-6 col-md-6">
	    <div class="thumbnail">
	      <img src="..." alt="...">
	      <div class="caption">
	        <h3>앨범 구매</h3>
	        <p>어떤 매장보다 알찬 구성, 저렴한 가격으로 만나보세요!</p>
	        <p><a href="#" class="btn btn-primary" role="button">JOIN</a></p>
	      </div>
	    </div>
	  </div>
	  
	  <div class="col-sm-6 col-md-6">
	    <div class="thumbnail">
	      <img src="..." alt="...">
	      <div class="caption">
	        <h3>BOARD</h3>
	        <p>다양한 사람들과 의견을 공유해요!</p>
	        <p><a href="#" class="btn btn-primary" role="button">JOIN</a></p>
	      </div>
	    </div>
	  </div>
	</div>
</div>


</body>
</html>