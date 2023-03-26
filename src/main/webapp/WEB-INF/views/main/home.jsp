<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page session="false" %>
<html>
<script type="text/javascript" src="resources/js/jquery.min.js"></script>
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


.main_container{
	width: 100%; height:1980px; box-sizing:border-box;
	
}
.title_container{
	width: 100%; height:23%; box-sizing:border-box; box-shadow: 0 2px 4px #ddd;
	  color:#fff;
	background-image:url("resources/img/night_sky.jpg");
	
	
}
.login_box{
	width: 10%; height:15%; 
	margin-top:10px; display:flex;  float: right;
}
.login_link{
	width:28%; height:95%;  
	margin-right:10px; 
}
.login_link *{cursor:pointer;
}

.login_link span{
	display:block; text-align: center; font-size:12px;
}
.login_icon{width:50%; vertical-align:middle; margin-left:13px;}


.title_box{ 
	width:100%; height:50%; box-sizing: border-box;
	 text-align: center; line-height: 250px; padding: 50px 300px 0px;

}
#title_text{font-size: 100px; font-weight: bold; }

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
	width:49%;
}



.content_container{
	width:100%; height:77%; 
	box-sizing: border-box; padding: 40px 150px;
	position:relative;
}
.content_container h2 h3{
	font-size: 40px;
}

.content_product{
	width:100%; height: 15%;
}
.content_product li{
	margin-bottom: 100px;
}

.content_product li swiper-container {background: none;
     width: 100%; height: 100%; 
     box-sizing: border-box;  box-shadow: 0 2px 2px #ddd;
     border-radius: 5px;
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
      height: 100%;
      object-fit: cover;
}
.content_coupon{
	
	width:84.5%; height:5%; box-sizing:border-box;
	
	 position: absolute; top:1100px; 
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
  left: 360px;
  top: 0;
  width: 26%;
  height: 100%;
  border-radius: 15px;
  background-color: rgba(0,0,0,0.1); /* 모달 외부를 어둡게 처리합니다. */
}

/* 모달 콘텐츠 스타일 */
.modal-content {
 position: relative; /* 모달 내부 요소들의 위치를 상대적으로 지정하기 위해 추가 */
  background-color: #fefefe;
  margin: 5px;
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
	width:5%; height: 10%; margin-top: 10px; margin-right:5px; display: inline-block;
}

#ml_btn{
	width:60%; height:15%; text-align: center; cursor: pointer;
	font-size: 25px; border:1px solid #ddd; border-radius: 10px;
	background-color: green; color: #fff; 
	margin-left: 100px; 
	
}
#ml_join{ width: 12%; padding-left: 2px;
	position: absolute; top: 100px; left:360px; font-size: 15px;
	background-color: green; color: #fff;  border-radius: 15px;
}
#ml_loss{
	position: absolute;  top: 122px; right: 58px; font-size: 13px; color: #000;
}
#mp_login_keep{
	width:5%; height: 10%; margin-top: 10px; margin-right:5px; display: inline-block;
}

#mp_btn{
	width:60%; height:15%; text-align: center; cursor: pointer;
	font-size: 25px; border:1px solid #ddd; border-radius: 10px;
	background-color: teal; color: #fff; 
	margin-left: 100px; 
	
}
#mp_join{ width: 12%; padding-left: 2px;
	position: absolute; top: 100px; left:360px; font-size: 15px;
	background-color: teal; color: #fff;  border-radius: 15px;
}
#mp_loss{
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
				<a href="#">
					<img alt="" src="resources/img/basket.png" class="login_icon">
					
				</a>
			</li>
			<li class="login_link">
				<label>
					<a class="m_login" id="m_modal">
						<img alt="" src="resources/img/member.png" class="login_icon mc"> 
						<span>회원</span>
					</a>
				</label>		
			</li>
			<li class="login_link">
				<a class="p_login" id="p_modal">
					<label>
						<img alt="" src="resources/img/boss.png" class="login_icon">
						<span>사업자</span>
					</label>
				</a>
			</li>
		</ul>
		<div class="title_box">
			<a href="#">
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
						<a href="#" class="catalog_link">
							<img alt="" src="resources/img/hotel.png" class="catalog_icon">
							<span>호텔</span>
						</a>
					</label>
				</li>
				<li class="catalog">
					<label>
						<a href="#" class="catalog_link">
							<img alt="" src="resources/img/motel.png" class="catalog_icon">
							<span>모텔</span>
						</a>
					</label>
				</li>
				<li class="catalog">
					<label>
						<a href="#" class="catalog_link">
							<img alt="" src="resources/img/pension.png" class="catalog_icon">
							<span>펜션</span>
						</a>
					</label>
				</li>
				<li class="catalog">
					<label>
						<a href="#" class="catalog_link">
							<img alt="" src="resources/img/bus.png" class="catalog_icon">
							<span>교통</span>
						</a>
					</label>
				</li>
				<li class="catalog">
					<label>
						<a href="#" class="catalog_link">
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
				  <swiper-container class="mySwiper" pagination="true" pagination-clickable="true" space-between="30"
				    slides-per-view="4">
				    <swiper-slide>Slide 1</swiper-slide>
				    <swiper-slide>Slide 2</swiper-slide>
				    <swiper-slide>Slide 3</swiper-slide>
				    <swiper-slide>Slide 4</swiper-slide>
				    <swiper-slide>Slide 5</swiper-slide>
				    <swiper-slide>Slide 6</swiper-slide>
				    <swiper-slide>Slide 7</swiper-slide>
				    <swiper-slide>Slide 8</swiper-slide>
				    <swiper-slide>Slide 9</swiper-slide>
				  </swiper-container>
			</li>
			<li class="">
				<h2>추천지</h2>
				  <swiper-container class="mySwiper" pagination="true" pagination-clickable="true" space-between="30"
				    slides-per-view="4">
				    <swiper-slide>Slide 1</swiper-slide>
				    <swiper-slide>Slide 2</swiper-slide>
				    <swiper-slide>Slide 3</swiper-slide>
				    <swiper-slide>Slide 4</swiper-slide>
				    <swiper-slide>Slide 5</swiper-slide>
				    <swiper-slide>Slide 6</swiper-slide>
				    <swiper-slide>Slide 7</swiper-slide>
				    <swiper-slide>Slide 8</swiper-slide>
				    <swiper-slide>Slide 9</swiper-slide>
				  </swiper-container>
			</li>
			<li class="">
				<h2>여긴?</h2>
				  <swiper-container class="mySwiper" pagination="true" pagination-clickable="true" space-between="30"
				    slides-per-view="4">
				    <swiper-slide>Slide 1</swiper-slide>
				    <swiper-slide>Slide 2</swiper-slide>
				    <swiper-slide>Slide 3</swiper-slide>
				    <swiper-slide>Slide 4</swiper-slide>
				    <swiper-slide>Slide 5</swiper-slide>
				    <swiper-slide>Slide 6</swiper-slide>
				    <swiper-slide>Slide 7</swiper-slide>
				    <swiper-slide>Slide 8</swiper-slide>
				    <swiper-slide>Slide 9</swiper-slide>
				  </swiper-container>
			</li>
			
		</ul>
		<figure class="content_coupon">

			<h3 >이달의 쿠폰</h3>
			<swiper-container class="mySwiper" pagination="false" pagination-clickable="false" navigation="false" space-between="30"
			    centered-slides="false" autoplay-delay="4000" autoplay-disable-on-interaction="false"
			    style=" border:1px solid #ddd; border-radius: 45px;">
			    <swiper-slide>Slide 1</swiper-slide>
			    <swiper-slide>Slide 2</swiper-slide>
			    <swiper-slide>Slide 3</swiper-slide>
			    <div class="autoplay-progress" slot="container-end">
			      <svg viewBox="0 0 48 48">
			        <circle cx="24" cy="24" r="20"></circle>
			      </svg>
			      <span></span>
			    </div>
			  </swiper-container>
		</figure>

	</div>
	
	  <!-- 회원모달 -->
	<div id="modal" class="modal">
	  <!-- 모달 콘텐츠 -->
	  <div class="modal-content" id="modal_content">
	    <span class="close">&times;</span>
	    <h2 class="ml_title">회원 로그인</h2>
	    <a type="button" href="#" id="ml_join">회원가입</a>
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
	    <a type="button" href="#" id="mp_join">회원가입</a>
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
	
	
</div>

<%@ include file = "/WEB-INF/views/layout/footer.jsp" %>
</body>
<script>
// dialog 열기
// 모달을 나타내는 버튼을 찾아서 클릭 이벤트를 추가합니다.
document.getElementById("m_modal").onclick = function() {
  document.getElementById("modal").style.display = "block"; // 모달을 보이도록 설정합니다.
  document.getElementById("modal").style.left = "37%";
  document.getElementById("modal").style.height = "50%";
  document.getElementById("modal").style.top = "24%";
  document.getElementById("modal").style.width = "27%";
  document.getElementById("modal").style.padding = "0px";
  document.getElementById("modal").style.overflow = "hidden";
  document.getElementById("modal_content").style.width = "100%";
  document.getElementById("modal_content").style.margin = "0px";
  
}

// 모달의 닫기 버튼을 찾아서 클릭 이벤트를 추가합니다.
//document.getElementsByClassName("close")[0].onclick = function() {
//  document.getElementById("modal").style.display = "none"; // 모달을 숨기도록 설정합니다.
//}
$(".close").click(function(e) {
	  document.getElementById("modal").style.display = "none"; // 모달을 숨기도록 설정합니다.
	
});
// 모달 외부를 클릭하면 모달을 숨기도록 설정합니다.
window.onclick = function(event) {
  if (event.target == document.getElementById("modal")) {
    document.getElementById("modal").style.display = "none";
  }
}

//dialog 열기
//모달을 나타내는 버튼을 찾아서 클릭 이벤트를 추가합니다.
document.getElementById("p_modal").onclick = function() {
	document.getElementById("p-modal").style.display = "block"; // 모달을 보이도록 설정합니다.
	document.getElementById("p-modal").style.left = "37%";
	document.getElementById("p-modal").style.height = "50%";
	document.getElementById("p-modal").style.top = "24%";
	document.getElementById("p-modal").style.width = "27%";
	document.getElementById("p-modal").style.padding = "0px";
	document.getElementById("p-modal").style.overflow = "hidden";
	document.getElementById("p-modal_content").style.width = "100%";
	document.getElementById("p-modal_content").style.margin = "0px";

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

