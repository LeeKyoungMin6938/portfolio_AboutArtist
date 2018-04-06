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
		self.close();
	}
	  function idcheck(){
		 if(document.formm.id.value == ""){
			 alert("아이디를 입력해주세요");
			 document.formm.id.focus();
			 return;
		 }
		 var url="AAServlet?command=id_check_form&id="+document.formm.id.value;
		 window.open(url, "_blank_1","toolbar=no, menubar=no, scrollbars=yes, resizable=no, width=330, height=200"); 
	 }
	function go_next(){ // 회원가입할 때 빈칸체크 및 약관동의
		if(document.formm.id.value==""){
			alert("아이디를 입력해주세요");
			document.formm.id.focus();
			return;
		}else if(document.formm.id.value != document.formm.reid.value){
			alert("중복확인을 클릭해주세요");
			document.formm.id.focus();
			return;
		}else if(document.formm.pwd.value == ""){
			alert("비밀번호를 입력해주세요");
			document.formm.pwd.focus();
			return;
		}else if(document.formm.pwd.value != document.formm.pwd2.value){
			alert("비밀번호가 일치하지 않습니다");
		 	document.formm.pwd.value="";
			document.formm.pwd2.value="";
			return;
		}else if(document.formm.name.value == ""){
			alert("이름을 입력해주세요");
			document.formm.name.focus();
			return;
		}else if(document.formm.email.value == ""){
			alert("이메일을 입력해주세요");
			document.formm.email.focus();
			return;
		}else if(document.formm.sample6_postcode.value==""||document.formm.sample6_address2.value==""){
			alert("주소를 입력해주세요");			
			return;
		}else if(document.formm.phone.value == ""){
			alert("연락처를 입력해주세요");
			return;
		}else if(document.formm.okon.checked==false){
			alert("약관에 동의하셔야 합니다");
			return;
		}
	document.formm.action = "AAServlet?command=join";
	document.formm.submit();
	alert("회원가입이 성공적으로 처리되었습니다");		
	self.close();
	}
	
</script>
<!-- 다음 주소 api -->
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script>
    function sample6_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var fullAddr = ''; // 최종 주소 변수
                var extraAddr = ''; // 조합형 주소 변수

                // 사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    fullAddr = data.roadAddress;

                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    fullAddr = data.jibunAddress;
                }

                // 사용자가 선택한 주소가 도로명 타입일때 조합한다.
                if(data.userSelectedType === 'R'){
                    //법정동명이 있을 경우 추가한다.
                    if(data.bname !== ''){
                        extraAddr += data.bname;
                    }
                    // 건물명이 있을 경우 추가한다.
                    if(data.buildingName !== ''){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 조합형주소의 유무에 따라 양쪽에 괄호를 추가하여 최종 주소를 만든다.
                    fullAddr += (extraAddr !== '' ? ' ('+ extraAddr +')' : '');
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('sample6_postcode').value = data.zonecode; //5자리 새우편번호 사용
                document.getElementById('sample6_address').value = fullAddr;

                // 커서를 상세주소 필드로 이동한다.
                document.getElementById('sample6_address2').focus();
            }
        }).open();
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
                                <label class="col-sm-2 control-label">아이디 (25자 이내, 특수문자 없이 입력해주세요)</label>
                                <input type="button"	value="중복체크" onclick="idcheck()"><br>
                                <div class="col-sm-10">
                                    <input class="form-control" id="id" type="text" placeholder="" name="id">
                                    <input type="hidden"	name="reid">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-2 control-label">비밀번호 (25자 이내로 입력해주세요)</label>
                                <div class="col-sm-10">
                                    <input class="form-control" id="pwd" type="password" name="pwd">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-2 control-label">비밀번호 확인</label>
                                <div class="col-sm-10">
                                    <input class="form-control" id="pwd2" type="password" name="pwd2">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-2 control-label">이름</label>
                                <div class="col-sm-10">
                                    <input class="form-control" id="name" type="text" name="name">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-2 control-label">이메일</label>
                                <div class="col-sm-10">
                                    <input class="form-control" id="email" type="text" name="email">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-2 control-label">우편번호</label>                                
                                <input type="button" value="우편번호 찾기" onclick="sample6_execDaumPostcode()" >
                                <input type="text" id="sample6_postcode" placeholder="우편번호" name="zip_num">                               
                                <div class="col-sm-10">
                                    <input class="form-control" type="text" id="sample6_address" placeholder="주소" name="address">
                                    <input class="form-control" type="text" id="sample6_address2" placeholder="상세주소" name="address2">                                    
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-2 control-label">연락처</label>
                                <div class="col-sm-10">
                                    <input class="form-control" id="phone" type="text" name="phone">
                                </div>
                            </div>                            
                            <div class="form-group">
                                <div class="col-sm-offset-2 col-sm-10">
                                    <div class="checkbox">
                                        <label>
                                            <input type="checkbox" id="okon">개인정보 사용동의</label>
                                    </div>
                                </div>
                            </div>
                            <hr>
                            <div class="form-group">
                                <div class="col-sm-offset-1 col-sm-10">
                                    <input class="form-control" type="button" value="완료" onclick="go_next()">                                    
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