<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<link rel="stylesheet" href="<c:url value='/resources/css/jquery-ui.min.css'></c:url>">
<script src="/project/resources/js/jquery.min.js"></script>
<script src="/project/resources/js/popper.min.js"></script>

<script src="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.js"></script>
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


.main_container{
	width: 100%; height:1700px; box-sizing:border-box;
	
}
.title_container{
	width: 100%; height:23%; 
	box-sizing:border-box; box-shadow: 0 2px 4px #ddd;
	color:#fff;
	background-image:url("resources/img/night_sky.jpg");
	background-size: 1980px 455px;
	
}
.login_box{
	width: 10%; height:15%; 
	margin-top:10px; display:flex;  float: right;
}
.login_link{
	width:28%; height:95%;  
}
.mll{margin-left:10px;}
.login_link *{cursor:pointer;}

.login_link span{
	display:block; text-align: center; font-size:12px; color:#fff;
}
.login_icon{width:50%; vertical-align:middle; margin-left:14px;}
.mc{width:60%; margin-left:10px;}

.h_login{}
.h_login span{color:#fff}
.hl_link{margin-left:8px; }
.header_loginIcon{ margin-right:17px; width:67%; box-sizing: border-box;}
#mli_icon{margin-left: 3%; width:65%; text-align: center;}
.h_cataloglogin_text{ display:block; text-align: center; font-size: 13px}
.h_exit{display:none;}
.h_biExit{display:none;}
.h_myPage{display:none;}
.h_productUpload{display:none;}

.title_box{ 
	width:100%; height:50%; box-sizing: border-box;
	 text-align: center; line-height: 250px; padding: 50px 300px 0px;

}
#title_text{font-size: 100px; font-weight: bold; color:purple; }

.main_searchBox{
	width: 100%; height:13%; 
	text-align: center; box-sizing: border-box; padding: 0px 550px; margin-top:30px;
}
#main_search{
	width:65%; height:75%;
	margin-top: 5px; margin-left:10px; padding-left: 5px; 
	border:1px solid #ddd; border-radius: 7px; color:#fff; font-size: 17px;
	 background-color: transparent;
}
.catalog_container{
	width:100%; height: 30%; 
	box-sizing: border-box; padding:10px 300px;
}
.catalog_box{
	width:100%; height:100%; 
	box-sizing: border-box; padding:10px 300px;
	display:flex; text-align: center;
}
.catalog{
	width:20%; height:70%
}
.catalog_link span{
	display:block; color:#fff;
}
.catalog_icon{
	width:90%;
}



.content_container{
	width:100%; height:80%; 
	box-sizing: border-box; padding: 40px 150px;
	position:relative;
}
.content_container h2, h3{
	font-size: 35px;
	margin-bottom: 10px;
}

.content_product{
	width:100%; height: 15%;
	
}
.content_product li{
	margin-bottom: 100px;
	box-shadow: 2px 2px 2px gray; 
	border:1px solid #ddd;
	border-radius: 5px;
}

.content_product li swiper-container {

     width: 100%; height: 100%; 
     box-sizing: border-box; background: none;
   
     border-radius: 5px;
 }
 
 
 
 .pro_img{
 	width:100%; height:150px;
 	border-radius: 7px;
 }
 .ㄴcoo_img{
 	width:500px; height:70px;
 	border-radius: 50px; 
 	border:1px solid gray;
 }

swiper-slide {
      text-align: center;
      font-size: 18px;
      background: #fff;
      display: flex;
      justify-content: center;
      align-items: center;
      
     
 }

swiper-slide img {
      display: block;
      width: 100%;
      height: 80%;
      border-radius:5px;
      object-fit: cover;
}
.content_coupon{
	
	width:100%; height:45%; box-sizing:border-box;

}



.autoplay-progress {
      position: absolute;
      right: 16px;
      bottom: 16px;
      z-index: 10;
      width: 48px;
      height: 48px;
      display: flex;
      align-items: center;
      justify-content: center;
      font-weight: bold;
      color: var(--swiper-theme-color);
    }

    .autoplay-progress svg {
      --progress: 0;
      position: absolute;
      left: 0;
      top: 0px;
      z-index: 10;
      width: 100%;
      height: 100%;
      stroke-width: 4px;
      stroke: var(--swiper-theme-color);
      fill: none;
      stroke-dashoffset: calc(125.6 * (1 - var(--progress)));
      stroke-dasharray: 125.6;
      transform: rotate(-90deg);
    }
    

    
    /* 모달 스타일 */
.modal {
  display: none; /* 초기에는 모달이 보이지 않도록 설정합니다. */
  position: absolute; /* 스크롤과 상관없이 화면에 고정되도록 설정합니다. */
  z-index: 1; /* 모달이 다른 요소 위에 표시되도록 설정합니다. */
  left: 37%;
  top: 24%;
  width: 27%; height:50%;
  padding: 0px;
  height: 50%;
  border-radius: 15px;
  background-color: rgba(0,0,0,0.1); /* 모달 외부를 어둡게 처리합니다. */
  overflow: hidden;
}


/* 모달 콘텐츠 스타일 */
.modal-content {
 position: relative; /* 모달 내부 요소들의 위치를 상대적으로 지정하기 위해 추가 */
  background-color: #fefefe;
  margin: 0px;
  padding: 20px;
  border: 1px solid #888;
  width: 100%;
  height: 100%;
  max-width: 600px;
  box-sizing: border-box;
  border-radius: 15px;
  
}

/* 모달 닫기 버튼 스타일 */
.close {
  color: #aaaaaa;
  position: absolute;
  top: 15;
  right: 20;
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
}
.ml_title{
	margin: 40px 0px 20px 65px; font-weight:bold;
}
.ml_box input{
	display: block; width:85%; height: 25%; 
	margin-top:15px; padding-left:5px; font-size: 20px; 
	border-radius: 5px; border:1px solid gray;
}
.ml_box span{ 
	 position: absolute; top: 130px; left:90px;
}
#ml_login_keep{
	width:100%; height: 10%; margin-top: 15px; margin-right:5px; display: inline-block; box-shadow: none;
}

#ml_btn{
	width:60%; height:15%; text-align: center; cursor: pointer;
	font-size: 25px; border:1px solid #ddd; border-radius: 10px;
	background-color: green; color: #fff; 
	margin-left: 100px; 
	
}
#ml_join{ width: 11%; padding-left: 2px;
	position: absolute; top: 100px; left:350px; font-size: 15px;
	background-color: green; color: #fff;  border-radius: 15px;
}
#ml_loss{
	position: absolute;  top: 122px; right: 58px; font-size: 13px; color: #000;
}

#mp_login_keep{
	width:100%; height: 10%; margin-top: 15px; margin-right:5px; display: inline-block; box-shadow: none;
}
#bl_btn{
	width:60%; height:15%; text-align: center; cursor: pointer;
	font-size: 25px; border:1px solid #ddd; border-radius: 10px;
	background-color: teal; color: #fff; 
	margin-left: 100px; 
	
}
#mp_join{ width: 11%; padding-left: 2px;
	position: absolute; top: 100px; left:350px; font-size: 15px;
	background-color: teal; color: #fff;  border-radius: 15px;
}
#bp_loss{
	position: absolute;  top: 122px; right: 58px; font-size: 13px; color: #000;
}

</style>
<head>

</head>
<body>
<div class="main_container">
	<div class="title_container">
		<ul class="login_box">
		
			<li class="login_link">
				<label style="margin-bottom:0px;">
					<a href="#">
						<img alt="" src="resources/img/basket.png" class="login_icon">
						<span style="color:#fff;">장바구니</span>
					</a>
				</label>
			</li>
			<li class="login_link mll h_member">
				<label>
					<a  class="m_login" id="m_modal">
						<img alt="" src="resources/img/member.png" class="login_icon"> 
						<span>회원</span>
					</a>
				</label>		
			</li>
			<li class="login_link h_business">
				
				<label>
					<a class="p_login" id="p_modal">
						<img alt="" src="resources/img/boss.png" class="login_icon">
						<span>사업자</span>
					</a>
				</label>
				
			</li>
			<li class="login_link h_myPage">
				<a  class="hl_link" id="myPage">
					<img alt="" src="/project/resources/img/myPage.png" class="header_loginIcon">
					<span class="h_cataloglogin_text">마이페이지</span> 
				</a>
			</li>
			<li class="login_link h_productUpload">
				<a href="<c:url value="/product/productUpload"></c:url>"  class="hl_link" id="myPage">
					<img alt="" src="/project/resources/img/productUpload.png" class="header_loginIcon">
					<span class="h_cataloglogin_text">상품등록</span> 
				</a>
			</li>
			<li class="login_link h_exit">
				<a  class="hl_link" id="exit">
					<img alt="" src="/project/resources/img/exit.png" class="header_loginIcon">
					<span class="h_cataloglogin_text">로그아웃</span> 
				</a>
			</li>
		</ul>
		<div class="title_box">
			<a  href="<c:url value="/"></c:url>">
				<span id="title_text">Repose</span>
			</a>
		</div>
		<div class="main_searchBox">
			<input type="text" id="main_search">
			<img alt="" src="">
		</div>
		<div class="catalog_container">
			<ul class="catalog_box">
				<li class="catalog">
					<label>
						<a  href="<c:url value="/product/hotel"></c:url>" class="catalog_link">
							<img alt="" src="resources/img/hotel.png" class="catalog_icon">
							<span>호텔</span>
						</a>
					</label>
				</li>
				<li class="catalog">
					<label>
						<a href="<c:url value="/product/motel"></c:url>" class="catalog_link">
							<img alt="" src="resources/img/motel.png" class="catalog_icon">
							<span>모텔</span>
						</a>
					</label>
				</li>
				<li class="catalog">
					<label>
						<a href="<c:url value="/product/pention"></c:url>" class="catalog_link">
							<img alt="" src="resources/img/pension.png" class="catalog_icon">
							<span>펜션</span>
						</a>
					</label>
				</li>
				<li class="catalog">
					<label>
						<a href="<c:url value="/traffic/search"></c:url>" class="catalog_link">
							<img alt="" src="resources/img/bus.png" class="catalog_icon">
							<span>교통</span>
						</a>
					</label>
				</li>
				<li class="catalog">
					<label>
						<a href="<c:url value="/board/list"></c:url>" class="catalog_link">
							<img alt="" src="resources/img/board.png" class="catalog_icon">
							<span>게시판</span>
						</a>
					</label>
				</li>
			</ul>
			
		</div>
	</div>
	
	<div class="content_container">
		<ul class="content_product">
			<li class="">
				<h2>인기여행지</h2>
				  <div class="swiper mySwiper">
				    <div class="swiper-wrapper">
				      <div class="swiper-slide" >
				      	<img class="pro_img" alt="" src="/project/resources/img/test/home/1.jpg" >
				    	<span class="" style="display: block; position: absolute;">강남 바이롯데</span>
				    	<span style="display: block; position: absolute; float: right; right:5px;">121,000원</span>
					  </div>
				      <div class="swiper-slide" >
				      	<img class="pro_img" alt="" src="/project/resources/img/test/home/2.jpg" >
				    	<span class="" style="display: block; position: absolute;">IHG 호텔</span>
				    	<span style="display: block; position: absolute; float: right; right:5px;">165,000원</span>
					  </div>
					  <div class="swiper-slide" >
				      	<img class="pro_img" alt="" src="/project/resources/img/test/home/3.jpg" >
				    	<span class="" style="display: block; position: absolute;">크레센도 서울</span>
				    	<span style="display: block; position: absolute; float: right; right:5px;">250,000원</span>
					  </div>
					  <div class="swiper-slide" >
				      	<img class="pro_img" alt="" src="/project/resources/img/test/home/4.jpg" >
				    	<span class="" style="display: block; position: absolute;">호텔 리베라</span>
				    	<span style="display: block; position: absolute; float: right; right:5px;">220,000원</span>
					  </div>
					  <div class="swiper-slide" >
				      	<img class="pro_img" alt="" src="/project/resources/img/test/home/11.jpg" >
				    	<span class="" style="display: block; position: absolute;">노보텔 엠배서더 서울 강남</span>
				    	<span style="display: block; position: absolute; float: right; right:5px;">110,000원</span>
					  </div>
				    </div>
				    <div class="swiper-pagination"></div>
				  </div>
			</li>
			<li class="">
				<h2>추천지</h2>
				  <div class="swiper mySwiper">
				    <div class="swiper-wrapper">
				      <div class="swiper-slide" >
				      	<img class="pro_img" alt="" src="/project/resources/img/test/home/5.jpg" >
				    	<span class="" style="display: block; position: absolute;">에이든 바이베스트 웨스턴</span>
				    	<span style="display: block; position: absolute; float: right; right:5px;">98,000원</span>
					  </div>
				      <div class="swiper-slide" >
				      	<img class="pro_img" alt="" src="/project/resources/img/test/home/6.jpg" >
				    	<span class="" style="display: block; position: absolute;">호텔 카푸치노</span>
				    	<span style="display: block; position: absolute; float: right; right:5px;">310,000원</span>
					  </div>
					  <div class="swiper-slide" >
				      	<img class="pro_img" alt="" src="/project/resources/img/test/home/7.jpg" >
				    	<span class="" style="display: block; position: absolute;">신라스테이</span>
				    	<span style="display: block; position: absolute; float: right; right:5px;">145,000원</span>
					  </div>
					  <div class="swiper-slide" >
				      	<img class="pro_img" alt="" src="/project/resources/img/test/home/8.jpg" >
				    	<span class="" style="display: block; position: absolute;">파크 하얏트</span>
				    	<span style="display: block; position: absolute; float: right; right:5px;">195,000원</span>
					  </div>
					  <div class="swiper-slide" >
				      	<img class="pro_img" alt="" src="/project/resources/img/test/home/9.jpg" >
				    	<span class="" style="display: block; position: absolute;">글래드 강남 코엑스</span>
				    	<span style="display: block; position: absolute; float: right; right:5px;">226,000원</span>
					  </div>
				    </div>
				    <div class="swiper-pagination"></div>
				  </div>
			</li>
			<li class="">
				<h2>여긴?</h2>
				  <div class="swiper mySwiper">
				    <div class="swiper-wrapper">
				      <div class="swiper-slide" >
				      	<img class="pro_img" alt="" src="/project/resources/img/test/home/10.jpg" >
				    	<span class="" style="display: block; position: absolute;">평점</span>
				    	<span style="display: block; position: absolute; float: right; right:5px;">10,000</span>
					  </div>
				      <div class="swiper-slide" >
				      	<img class="pro_img" alt="" src="/project/resources/img/test/home/12.jpg" >
				    	<span class="" style="display: block; position: absolute;">평점</span>
				    	<span style="display: block; position: absolute; float: right; right:5px;">10,000</span>
					  </div>
					  <div class="swiper-slide" >
				      	<img class="pro_img" alt="" src="/project/resources/img/test/home/13.jpg" >
				    	<span class="" style="display: block; position: absolute;">평점</span>
				    	<span style="display: block; position: absolute; float: right; right:5px;">10,000</span>
					  </div>
					  <div class="swiper-slide" >
				      	<img class="pro_img" alt="" src="/project/resources/img/test/home/14.jpg" >
				    	<span class="" style="display: block; position: absolute;">평점</span>
				    	<span style="display: block; position: absolute; float: right; right:5px;">10,000</span>
					  </div>
					  <div class="swiper-slide" >
				      	<img class="pro_img" alt="" src="/project/resources/img/test/home/15.jpg" >
				    	<span class="" style="display: block; position: absolute;">평점</span>
				    	<span style="display: block; position: absolute; float: right; right:5px;">10,000</span>
					  </div>
				    </div>
				    <div class="swiper-pagination"></div>
				  </div>
			</li>
			<li class="content_coupon">
	
				<h3 >이달의 쿠폰</h3>
				<div class="swiper mySwiper">
				    <div class="swiper-wrapper">
				      <div class="swiper-slide">
				      	<img class="coo_img" alt="" src="/project/resources/img/coupon.jpg" >
				    	
					  </div>
				      
				    </div>
				    <div class="swiper-pagination"></div>
				  </div>
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
	    	<input type="password" class="ml_pw" placeholder="비밀번호">
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
	    	<input type="text" class="bl_id" placeholder="아이디">
	    	<input type="password" class="bl_pw" placeholder="비밀번호">
	    	<label>
	    		<input type="checkbox" id="mp_login_keep">
	    		<span>아이디 유지</span>
	    	</label>
	    	
	    	<a href="#" id="bp_loss" >아이디·비번찾기</a>
	    	
	    </div>
	    <button id="bl_btn">로그인</button>
	  </div>
	</div>
	
	
</div>

<%@ include file = "/WEB-INF/views/layout/footer.jsp" %>
</body>
<script>
//멤버 dialog 열기
//모달을 나타내는 버튼을 찾아서 클릭 이벤트를 추가합니다.
document.getElementById("m_modal").onclick = function() {
  document.getElementById("modal").style.display = "block"; // 모달을 보이도록 설정합니다.
  document.getElementById("p-modal").style.display = "none";

  
}

//모달의 닫기 버튼을 찾아서 클릭 이벤트를 추가합니다.
document.getElementsByClassName("close")[0].onclick = function() {
	document.getElementById("modal").style.display = "none"; // 모달을 숨기도록 설정합니다.
}

//모달 외부를 클릭하면 모달을 숨기도록 설정합니다.
window.onclick = function(event) {
	if (event.target == document.getElementById("modal")) {
	 document.getElementById("modal").style.display = "none";
	}
}

//모달 요소 가져오기
const modal = document.querySelector('#modal');

//모달 외부 클릭 이벤트 핸들러 함수
function closeModal(e) {
	if (e.target == modal) {
	 modal.style.display = 'none';
	}
}
//사업자 dialog 열기
//모달을 나타내는 버튼을 찾아서 클릭 이벤트를 추가합니다.
document.getElementById("p_modal").onclick = function() {
	  document.getElementById("p-modal").style.display = "block"; // 모달을 보이도록 설정합니다.
	  document.getElementById("modal").style.display = "none";
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

let session ="";
$('#ml_btn').click(function(){
	let login_id = $('.ml_id').val();
	let login_pw = $('.ml_pw').val();
	let login = {
			me_id : login_id,
			me_pw : login_pw
			
	};
	$.ajax({
		async : true,
		type : 'POST',
		data : JSON.stringify(login),
		url :'<c:url value="/login/member"></c:url>',
		dataType : "json",
		contentType : "application/json; charset=UTF-8",
		success : function(memberCheck){
			if(memberCheck.result){
				alert('로그인 되셨습니다.');
				session="member";
				window.location.reload();
			}else{
				alert('아이디 또는 비밀번호가 맞지않습니다.');
			}
		}
	});	
});
$('#bl_btn').click(function(){
	let login_id = $('.bl_id').val();
	let login_pw = $('.bl_pw').val();
	let loginC = {
			bi_id : login_id,
			bi_pw : login_pw
			
	};
	$.ajax({
		async : true,
		type : 'POST',
		data : JSON.stringify(loginC),
		url :'<c:url value="/login/business"></c:url>',
		dataType : "json",
		contentType : "application/json; charset=UTF-8",
		success : function(sellerCheck){
			if(sellerCheck.result){
				alert('로그인 성공.');
				session="business";
				window.location.reload();
			}else{
				alert('아이디 또는 비밀번호가 맞지않습니다.');
			}
		}
	});	
});
session;
//매번 최초 페이지 로드시.
//로그인여부를 체크한다.
$.ajax({
	async: true,
	type : 'POST',
	data : null,
	url : '<c:url value="/login/check"></c:url>',
	dataType : "json",
	contentType : "application/json; chearset=UTF-8",
	success : function(ch){
		if(ch.lgCheck){
				if(ch.lgCheck.me_id != null){
					$('.h_member').css({display:"none"});
					$('.h_business').css({display:"none"});
					$('.h_myPage').css({display:"block"});
					$('.h_exit').css({display:"block"});

					
				}else if(ch.lgCheck.bi_id != null){
					$('.h_member').css({display:"none"});
					$('.h_business').css({display:"none"});
					$('.h_productUpload').css({display:"block"});
					$('.h_exit').css({display:"block"});
	
					
				}		
		}
		
		
	}
});


//로그아웃
$('#exit').click(function(){
		$.ajax({
			async : true,
			type : 'POST',
			url :'<c:url value="/logout"></c:url>',
			dataType : "json",
			contentType : "application/json; charset=UTF-8",
			success : function(emailCheck){
				if(emailCheck.result){
					alert('로그아웃 성공.');
					window.location.reload();
					session="";
				}else{
					alert('로그아웃 실패');
				}
			}
		});	
	});
</script>
<script>
    var swiper = new Swiper(".mySwiper", {
      slidesPerView: 4,
      spaceBetween: 30,
      pagination: {
        el: ".swiper-pagination",
        clickable: true,
      },
    });
  </script>
</html>

