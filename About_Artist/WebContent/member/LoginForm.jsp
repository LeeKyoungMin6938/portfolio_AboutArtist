<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="../css/bootstrap.css">
<title>Insert title here</title>
</head>
<style>

</style>
<body>
<form method="post" action="AAServlet?command=login">
<div class="input-group mb-3">
  	<div class="input-group-prepend">
    	<span class="input-group-text" id="basic-addon1" style="font-size:1.5em;">아이디</span>
  	</div>
  	<input type="text" class="form-control" placeholder="아이디를 입력하세요" aria-label="아이디" aria-describedby="basic-addon1" name="id">
</div><hr>
<div class="input-group mb-3">
  	<div class="input-group-prepend">
    	<span class="input-group-text" id="basic-addon1" style="font-size:1.5em;">비밀번호</span>
  	</div>
  	<input type="text" class="form-control" placeholder="비밀번호를 입력하세요" aria-label="비밀번호" aria-describedby="basic-addon1" name="pwd">
</div>
<hr>
<input type="submit" value="로그인" class="submit">
<input type="button" value="취소" onclick="history.go(-1)">
</form>
</body>
</html>