<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function idok(){
		opener.formm.id.value = "${id}";
		opener.formm.reid.value = "${id}";
		self.close();
	}
</script>
</head>
<body>
<h1>아이디 중복확인</h1>
<form method="post" name="formm" style="margin-right: 0" action="AAServlet?command=id_check_form">
			User ID <input type="text" name="id" value="">
			<input type="submit" value="검색" class="submit"><br>
			<div style="margin-top: 20px">
				<c:if test="${message ==1 }">
				<script type="text/javascript">
					opener.document.formm.id.value="";
				</script>
				${id }는 이미 사용중인 아이디입니다.
				</c:if>
				<c:if test="${message==-1 }">
				${id }는 사용가능한 ID입니다.
				<input type="button" value="사용" class="cancel" onclick="idok()">
				</c:if>
			</div>
</form>
</body>
</html>