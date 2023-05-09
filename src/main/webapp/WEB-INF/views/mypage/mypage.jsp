<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page session="false" %>
<html>
<link rel="stylesheet" href="<c:url value='/resources/css/jquery-ui.min.css'></c:url>">
<script src="https://cdn.jsdelivr.net/npm/swiper@9/swiper-element-bundle.min.js"></script>
  <!-- Link Swiper's CSS -->
 <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.css" />
<!-- jQuery와 jQuery Modal JavaScript 파일 추가 -->

    
<style>
*{margin:0px; padding:0px;}
li{list-style: none;}
a{text-decoration:none;}
body{ font-family: 'GyeonggiTitleM';}
@font-face {
    font-family: 'GyeonggiTitleM';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_one@1.0/GyeonggiTitleM.woff') format('woff');
    font-weight: normal;
    font-style: normal;
}
/* ================================================================================================================ */

.main_container{
	width: 100%; height:900px; box-sizing:border-box;	padding:2px 130px 2px 170px;
}
.main_innerContainer{
	width: 100%; 
	 box-sizing:border-box; margin-top: 130px; 
}
.mypage_titleBox{
	width:100%; height:30%;  
	border-bottom:1px solid #ddd; border-top: none; border-radius: 5px;
	box-shadow: 1px 1px 5px gray; font-size: 20px;
	box-sizing:border-box; padding: 10px 10px 5px 15px; 
}
.main_contentContainer{
	width:100%; height:70%;
	display:flex;
	box-sizing: border-box; margin-top: 10px;
}
.mypage_listBox{
	width:15%; height:700px;
	border: 1px solid #ddd; border-radius: 7px; box-shadow: 1px 1px 1px #ddd;
}
.mypage_list{
	font-size: 25px; text-align: center;
	cursor:pointer;
}
.mypage_list span{
	vertical-align: middle;
}
/* ================================================================================================================ */
#mypage_contentBox{
	width:80%; height:700px;
	margin-left:60px;
	border: 1px solid #ddd; border-radius: 7px; box-shadow: 1px 1px 1px #ddd;
}
#mypage_content{
	width:100%; height:500px;
	min-height:200px; margin-top: 50px;
}
#mypage_content li{
	box-sizing: border-box; padding: 5px 400px; 
}
#mypage_content li span{
	font-size: 20px;
}
#user_id{
	
}
#user_password_text{

}
#user_password{
	width: 50%;
}
#user_search{
	width: 80%; height:50px; 
	box-sizing: border-box; margin-top:20px;
	border: 1px solid #fff; border-radius: 5px;
	background-color: navy; color: #fff;
	font-size: 25px;
}
</style>
<head>
</head>
<body>
<div class="main_container">
	<div class= "main_innerContainer">
		<div class="mypage_titleBox">
			<h2>마이페이지</h2>
		</div>
		<div class="main_contentContainer">	
			<ul class="mypage_listBox">
				<li class="mypage_list">
					
					<hr>
				</li>
				<li class="mypage_list">
					<span>장바구니</span>
					<hr>
				</li>
				<li class="mypage_list">
					<span>쿠폰보유</span>
					<hr>
				</li>
				<li class="mypage_list">
					<span>개인정보수정</span>
					<hr>
				</li>
			</ul>
			<div id="mypage_contentBox">
				<ul id="mypage_content">
					<li>
						<span id="user_id">아이디 : </span> <span>아이디</span>
						
					</li>
					<li>
						<span id="user_password_text">현재 비밀번호 : </span><input type="password" id="user_password">
					</li>
					<li>
						<button type="button" id="user_search">조회하기</button>
					</li>
				</ul>
				
			</div>
			
		</div>
	</div>
	
</div>
</body>
<script>

</script>
</html>

