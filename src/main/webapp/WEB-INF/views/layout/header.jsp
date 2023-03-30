<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<style>
*{margin:0; padding:0; list-style: none; }
a{text-decoration: none; margin-left: 20px;}


.h_linkIcon{width:45%;}


.header_container{
	width:100%; height:140px; 
	position: fixed; 
	
}
#header_box{
	width:100%; height:130px; 
	box-sizing: border-box; padding: 2px 130px 2px 170px; margin-top:-2px;
}
#header_menu{
	width:100%; height:120px; 
	 border-radius: 2px; color:#fff;
	box-shadow: 5px 5px 5px #ddd; box-sizing: border-box; padding: 25px 50px 5px;
	display: flex;
	background-image:url("/project/resources/img/night_sky.jpg");
}
.h_link span{color:#fff;}
#home_link{
	line-height: 70px; margin-right: 20%; font-size: 30px;
}
.h_link{
	margin-right:1%; width:10%; text-align:center; cursor:pointer;
}
.h_link_text{display:block; margin-left:25px; font-size:15px;}
.h_link_textboard{display:block; margin-left:23px; font-size:15px; text-align:center;}

#h_link_board{
	margin-right:25%;
}
.h_login{width:60px; box-sizing:border-box; padding-top:15px; margin-right: 8px; cursor:pointer;}
.h_login span{color:#fff}
.hl_link{margin-left:8px; }
.header_loginIcon{ margin-right:17px; width:67%; box-sizing: border-box;}
#mli_icon{margin-left: 3%; width:65%; text-align: center;}
.h_cataloglogin_text{ display:block; text-align: center; font-size: 13px}



    
    /* 모달 스타일 */
.modal {
  display: none; /* 초기에는 모달이 보이지 않도록 설정합니다. */
  position: fixed; /* 스크롤과 상관없이 화면에 고정되도록 설정합니다. */
  z-index: 1; /* 모달이 다른 요소 위에 표시되도록 설정합니다. */
  left: 37%;
  top: 24%;
  width: 27%;
  height: 50%;
  border-radius: 15px;
  background-color: rgba(0,0,0,0.1); /* 모달 외부를 어둡게 처리합니다. */
  overflow: hidden;
  padding: 0px;
}

/* 모달 콘텐츠 스타일 */
.modal-content {
  position: relative; /* 모달 내부 요소들의 위치를 상대적으로 지정하기 위해 추가 */
  background-color: #fefefe;
  margin:0px; padding: 20px;
  border: 1px solid #888;
  width: 100%;height: 100%;
  max-width: 600px;
  box-sizing: border-box;
  border-radius: 15px;
  
}

/* 모달 닫기 버튼 스타일 */
.close {
  color: #aaaaaa;
  position: absolute;
  top: 15px;
  right: 20px;
  float: right;
  font-size: 28px;
  font-weight: bold;
}

.close:hover, .close:focus {
  color: #000;
  text-decoration: none;
  cursor: pointer;
}
.ml_box{
	width:98%; height:42%; box-sizing: border-box; 
	padding-left: 70px; position: relative;
	margin-top: 20px;
}
.ml_title{
	margin: 40px 0px 40px 65px;
}
.ml_box input{
	display: block; width:85%; height: 25%; 
	margin-top:15px; padding-left:5px; font-size: 20px; 
	border-radius: 5px; border:1px solid gray;
}
.ml_box span{ 
	 position: absolute; top: 119px;
}
#ml_login_keep{
	width:5%; height: 10%; margin-top: 15px; margin-right:5px; display: inline-block;
}

#ml_btn{
	width:60%; height:15%; text-align: center; cursor: pointer;
	font-size: 25px; border:1px solid #ddd; border-radius: 10px;
	background-color: green; color: #fff; 
	margin-left: 100px; 
	
}
#ml_join{ width: 11%; padding-left: 2px;
	position: absolute; top: 100px; left:340px; font-size: 15px;
	background-color: green; color: #fff;  border-radius: 15px;
}
#ml_loss{
	position: absolute;  top: 122px; right: 58px; font-size: 13px; color: #000;
}
#mp_login_keep{
	width:5%; height: 10%; margin-top: 15px; margin-right:5px; display: inline-block;
}

#mp_btn{
	width:60%; height:15%; text-align: center; cursor: pointer;
	font-size: 25px; border:1px solid #ddd; border-radius: 10px;
	background-color: teal; color: #fff; 
	margin-left: 100px; 
	
}
#mp_join{ width: 11%; padding-left: 2px;
	position: absolute; top: 100px; left:340px; font-size: 15px;
	background-color: teal; color: #fff;  border-radius: 15px;
}
#mp_loss{
	position: absolute;  top: 122px; right: 58px; font-size: 13px; color: #000;
}
</style>
<head>
<meta charset="UTF-8">

</head>

<nav class="header_container">
	<div id="header_box">
		<ul id="header_menu">
			<li class="h_link">
				<a  href="<c:url value="/"></c:url>" id="home_link" >
				<span>Repose</span> 
				</a>
			</li>	
			
			<li class="h_link">
				<a href="<c:url value="/product/hotel"></c:url>" >
					<img alt="" src="/project/resources/img/hotel.png" class="h_linkIcon">
					<span class="h_link_text">호텔</span> 
				</a>
			</li>	
			<li class="h_link">
				<a href="<c:url value="/product/motel"></c:url>">
					<img alt="" src="/project/resources/img/motel.png" class="h_linkIcon">
					<span class="h_link_text">모텔</span> 
				</a>
			</li>
			<li class="h_link">
				<a href="<c:url value="/product/pention"></c:url>" >
					<img alt="" src="/project/resources/img/pension.png" class="h_linkIcon">
					<span class="h_link_text">펜션</span> 
				</a>
			</li>
			<li class="h_link">
				<a href="#">
					<img alt="" src="/project/resources/img/bus.png" class="h_linkIcon">
					<span class="h_link_text">교통</span> 
				</a>
			</li>
			
			<li  class="h_link" id="h_link_board">
				<a href="#" >
					<img alt="" src="/project/resources/img/board.png" class="h_linkIcon">
					<span class="h_link_textboard">게시판</span> 
				</a>
			</li>
			
			<li class="h_login">
				<a href="#" class="hl_link">
					<img alt="" src="/project/resources/img/basket.png" class="header_loginIcon">
					<span class="h_cataloglogin_text">장바구니</span> 
				</a>
			</li>
			<li class="h_login">
				<a  class="hl_link" id="m_modal">
					<img alt="" src="/project/resources/img/member.png" id="mli_icon">
					<span class="h_cataloglogin_text">회원</span> 
				</a>
			</li>
			<li class="h_login">
				<a  class="hl_link" id="p_modal">
					<img alt="" src="/project/resources/img/boss.png" class="header_loginIcon">
					<span class="h_cataloglogin_text">사업자</span> 
				</a>
			</li>
	
		</ul>
	</div>
	  <!-- 회원모달 -->
	<div id="modal" class="modal">
	  <!-- 모달 콘텐츠 -->
	  <div class="modal-content" id="modal_content">
	    <span class="close">&times;</span>
	    <h2 class="ml_title">회원 로그인</h2>
	    <a type="button" href="<c:url value="/join/member"></c:url>" id="ml_join">회원가입</a>
	    <div class="ml_box">
	    	<input type="text" class="ml_id" placeholder="아이디">
	    	<input type="text" class="ml_pw" placeholder="비밀번호">
	    	<label>
	    		<input type="checkbox" id="ml_login_keep">
	    		<span>아이디 유지</span>
	    	</label>	
	    	
	    	<a href="#" id="ml_loss" >아이디·비번찾기</a>
	    	
	    </div>
	    <button id="ml_btn">로그인</button>
	  </div>
	</div>
	  <!-- 사업자모달 -->
	<div id="p-modal" class="modal">
	  <!-- 모달 콘텐츠 -->
	  <div class="modal-content" id="p-modal_content">
	    <span class="close">&times;</span>
	    <h2 class="ml_title">사업자 로그인</h2>
	    <a type="button" href="<c:url value="/join/business"></c:url>" id="mp_join">회원가입</a>
	    <div class="ml_box">
	    	<input type="text" class="ml_id" placeholder="아이디">
	    	<input type="text" class="ml_pw" placeholder="비밀번호">
	    	<label>
	    		<input type="checkbox" id="mp_login_keep">
	    		<span>아이디 유지</span>
	    	</label>
	    	
	    	<a href="#" id="mp_loss" >아이디·비번찾기</a>
	    	
	    </div>
	    <button id="mp_btn">로그인</button>
	  </div>
	</div>
</nav>	
<body>

</body>
<script>
// dialog 열기
// 모달을 나타내는 버튼을 찾아서 클릭 이벤트를 추가합니다.
document.getElementById("m_modal").onclick = function() {
  document.getElementById("modal").style.display = "block"; // 모달을 보이도록 설정합니다.

  
}

// 모달의 닫기 버튼을 찾아서 클릭 이벤트를 추가합니다.
document.getElementsByClassName("close")[0].onclick = function() {
  document.getElementById("modal").style.display = "none"; // 모달을 숨기도록 설정합니다.
}

// 모달 외부를 클릭하면 모달을 숨기도록 설정합니다.
window.onclick = function(event) {
  if (event.target == document.getElementById("modal")) {
    document.getElementById("modal").style.display = "none";
  }
}

//dialog 열기
//모달을 나타내는 버튼을 찾아서 클릭 이벤트를 추가합니다.
document.getElementById("p_modal").onclick = function() {
	document.getElementById("p-modal").style.display = "block"; // 모달을 보이도록 설정


}

//모달의 닫기 버튼을 찾아서 클릭 이벤트를 추가합니다.
document.getElementsByClassName("close")[1].onclick = function() {
	document.getElementById("p-modal").style.display = "none"; // 모달을 숨기도록 설정합니다.
}


//모달 외부를 클릭하면 모달을 숨기도록 설정합니다.
window.onclick = function(event) {
	if (event.target == document.getElementById("p-modal")) {
	 document.getElementById("p-modal").style.display = "none";
	}
}
</script>
</html>