function post_zip(){ // 우편번호
	 var url = "AAServlet?command=find_zip_num";
	 window.open(url,"_blank_1","toolbar=no, menubar=no, scrollbars=yes, resizable=no, width=550, height=300, top=300, left=300");
 }

function Join(){ //회원가입 누르면 나오는 회원가입 폼
	window.open("http://localhost:8080/About_Artist/AAServlet?command=joinform", "AA회원가입", "width=500, height=600, left=100, top=50, resizable=no");
}

