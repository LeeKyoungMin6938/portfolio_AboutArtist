<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="./css/bootstrap.css">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<style type="text/css">
body{
    margin-top:20px;
    background:#f5f7fa;
}
.panel.panel-default {
    border-top-width: 3px;
}
.panel {
    box-shadow: 0 3px 1px -2px rgba(0,0,0,.14),0 2px 2px 0 rgba(0,0,0,.098),0 1px 5px 0 rgba(0,0,0,.084);
    border: 0;
    border-radius: 4px;
    margin-bottom: 16px;
}
.thumb96 {
    width: 96px!important;
    height: 96px!important;
}
.thumb48 {
    width: 48px!important;
    height: 48px!important;
}
</style>
<script type="text/javascript">
	function go_back(){
		history.go(-1);	
	}
	 /* function idcheck(){
		 if(document.formm.id.value == ""){
			 alert("아이디를 입력해주세요");
			 document.formm.id.focus();
			 return;
		 }
		 var url="AAServlet?command=id_check_form&id="+document.formm.id.value;
		 window.open(url, "_blank_1","toolbar=no, menubar=no, scrollbars=yes, resizable=no, width=330, height=200"); 
	 } */
	function go_next(){ // 회원가입할 때 빈칸체크 및 약관동의
		if(document.formm.id.value==""){
			alert("아이디를 입력해주세요");
			document.formm.id.focus();
			return false;
		}/* else if(document.formm.id.value != document.formm.reid.value){
			alert("중복확인을 클릭해주세요");
			document.formm.id.focus();
		} */else if(document.formm.pwd.value == ""){
			alert("비밀번호를 입력해주세요");
			document.formm.pwd.focus();
			return false;
		}else if((document.formm.pwd.value != document.formm.pwd2.value)){
			alert("비밀번호가 일치하지 않습니다");
		 	document.formm.pwd.value="";
			document.formm.pwd2.value="";
			return false;
		}else if(document.formm.name.value == ""){
			alert("이름을 입력해주세요");
			document.formm.name.focus();
			return false;
		}else if(document.formm.email.value == ""){
			alert("이메일을 입력해주세요");
			document.formm.email.focus();
			return false;
		}else if(document.formm.address.value==""){
			alert("주소를 입력해주세요");
			document.formm.address.focus();
			return false;
		}else if(document.formm.okon.checked==false){
			alert("약관에 동의하셔야 합니다");
			return false;
		}else{ // 회원가입 조건이 충족됐을경우
			alert("회원가입이 성공적으로 처리되었습니다");
			document.formm.action = "AAServlet?command=join";
			document.formm.submit();
		}		 
	}
	
</script>
<title>Insert title here</title>
</head>
<body>
<div class="container bootstrap snippet">
<div class="row ng-scope">
<div class="col-md-8">
        <div class="panel panel-default">
            <div class="panel-body">               
                <div class="h4 text-center">A.A 회원가입</div>
                <div class="row pv-lg">
                    <div class="col-lg-2"></div>
                    <div class="col-lg-8">
                        <form class="form-horizontal ng-pristine ng-valid" method="post" name="formm">
                            <div class="form-group">
                                <label class="col-sm-2 control-label" for="inputContact1">아이디 (25자 이내, 특수문자 없이 입력해주세요)</label>
                                <input type="button"	value="중복체크" onclick="idcheck()"><br>
                                <div class="col-sm-10">
                                    <input class="form-control" id="inputContact1" type="text" placeholder="" name="id">
                                    <input type="hidden"	name="reid">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-2 control-label" for="inputContact2">비밀번호 (25자 이내로 입력해주세요)</label>
                                <div class="col-sm-10">
                                    <input class="form-control" id="inputContact2" type="password" name="pwd">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-2 control-label" for="inputContact3">비밀번호 확인</label>
                                <div class="col-sm-10">
                                    <input class="form-control" id="inputContact3" type="password" name="pwd2">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-2 control-label" for="inputContact4">이름</label>
                                <div class="col-sm-10">
                                    <input class="form-control" id="inputContact4" type="text" name="name">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-2 control-label" for="inputContact5">우편번호</label>
                                <input type="button" name="zip_num" value="우편번호 검색" >
                                <div class="col-sm-10">
                                    <input class="form-control" id="inputContact5" type="text" name="address">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-2 control-label" for="inputContact4">연락처</label>
                                <div class="col-sm-10">
                                    <input class="form-control" id="inputContact6" type="text" name="phone">
                                </div>
                            </div>                            
                            <div class="form-group">
                                <div class="col-sm-offset-2 col-sm-10">
                                    <div class="checkbox">
                                        <label>
                                            <input type="checkbox" name="okon">약관 확인</label>
                                    </div>
                                </div>
                            </div>
                            <hr>
                            <div class="form-group">
                                <div class="col-sm-offset-1 col-sm-10">
                                    <button class="btn btn-info" onclick="go_next()">완료</button>                                    
                                </div>                                
                            </div>
                        </form>                        
                        <button class="btn btn-info" onclick="go_back()">취소</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</div>
</body>
</html>

<!-- 
id varchar2(30) primary key,
    pwd varchar2(30),
    name varchar2(50),
    email varchar2(60),
    zip_num varchar2(7), --우편번호
    address varchar2(120), --상세주소
    phone varchar2(15),    
    indate date default sysdate -->