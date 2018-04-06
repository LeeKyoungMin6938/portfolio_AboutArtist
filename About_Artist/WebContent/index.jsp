<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="./header.jsp"%>
<style type="text/css">
	.jumbotron {
		background-image : url('image/jumbo.jpg');  				
  		background-size: cover;
	}
</style>
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
	      <img src="image/about2.jpg" alt="...">
	      <div class="caption">
	        <h3>아티스트 정보</h3>
	        <p>다양한 정보를 보기쉽게 정리했습니다. 당신과의 공통점을 찾아보세요. </p>
	        <p><a href="AAServlet?command=" class="btn btn-primary" role="button">JOIN</a></p>
	      </div>
	    </div>
	  </div>
	  
	  <div class="col-sm-6 col-md-6">
	    <div class="thumbnail">
	      <img src="image/buy2.jpg" alt="...">
	      <div class="caption">
	        <h3>앨범 구매</h3>
	        <p>어떤 매장보다 알찬 구성, 저렴한 가격으로 만나보세요! 다양한 이벤트도 확인해보세요!</p>
	        <p><a href="#" class="btn btn-primary" role="button">JOIN</a></p>
	      </div>
	    </div>
	  </div>
	  
	  <div class="col-sm-6 col-md-6">
	    <div class="thumbnail">
	      <img src="image/board.png" alt="...">
	      <div class="caption">
	        <h3>BOARD</h3>
	        <p>다양한 사람들과 의견을 공유해요!</p>
	        <p><a href="#" class="btn btn-primary" role="button">JOIN</a></p>
	      </div>
	    </div>
	  </div>
	</div>
</div>
<%@include file="./footer.jsp"%> 