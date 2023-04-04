<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page session="false" %>
<!DOCTYPE html>
<html>
<script src="https://cdn.jsdelivr.net/npm/swiper@9/swiper-element-bundle.min.js"></script>
  <!-- Link Swiper's CSS -->
 <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.css" />
<style>
*{margin:0px; padding:0px;}
li{list-style: none;}
body{font-family: 'GyeonggiTitleM';}
@font-face {
    font-family: 'GyeonggiTitleM';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_one@1.0/GyeonggiTitleM.woff') format('woff');
    font-weight: normal;
    font-style: normal;
}
.product_outterContainer{
	width:100%; height:100%;
	box-sizing: border-box; padding:2px 130px 2px 170px;
}
.product_innerContainer{	
	width: 100%; height:100%;
	 box-sizing:border-box; margin-top: 130px; 
}


#traffic_busSearchContainer{ 
	width:100%; height:350px;
	 box-sizing: border-box; padding:30px 230px 10px;
	 
}
.traffic_busSearchBox{
	width:100%; height:20%; 
	 border: 1px solid #ddd; 
	 box-shadow: 1px 1px 5px gray;
}
#taffic_searchTitle{text-align:center; font-size: 40px;  width:100%; padding-top:5px;}
.traffic_busCorseBox{width:100%; box-sizing:border-box; margin-right:20px;}
.traffic_busCorse{ padding-right:20px;}
.traffic_busCorse label{display: flex; float:right; margin-right:5px;}
.corse{display:block; width:30%;  margin-right:3px;}
.traffic_busCorse label span{width:100%;}
.traffic_busPlaceBox{
	display:flex; 
	width:100%; height:100%;
	box-sizing:border-box; padding: 4px 20px;
	

}
.traffic_busPlace{
	width:100%; height:100%;
	border:1px solid #ddd; border-radius:10px;
	box-sizing:border-box; padding: 10px 5px 5px;
	box-shadow: 1px 1px 1px gray;
}
.busSearch_smalltitle{
	display:block; font-size: 25px; margin-left: 10px;
}
.busPlace_text{
	width:100%; height:60px; border:none;
	display:block;
	cursor:pointer;
}

.traffic_busPlaceChange{
	width:40px; height:100%;
	box-sizing: border-box; padding: 50px 0px; 
	position:relative; 
}
#traffic_change{
	display:block;
	width:35PX; height:40%;
	z-index: 10;
	position:absolute;
	top:35px; left:-12px;
	background-color:#fff;
 }
 #traffic_changeIcon{
 	width:100%; height:100%;
 	cursor:pointer;
 	border:1px solid gray; border-radius: 40%;
 }
 .startBox{
	margin-left:50px;
}
.busPlace_dayText{
	width:100%; height:60px; border:none;
	display:block;
	cursor:pointer;
}
.arriveBox{
	margin-left: 10px; display:none; 
}
.traffic_grade_complete{
	width:100%; height:100%;
	box-sizing: border-box; padding:5px 200px; margin-bottom:7px;
	display:flex;
}
.traffic_busGradeBox{
	width:50%; height:100%;
	margin-left: 15px;
	display: flex;
}
.traffic_busGrade{
	width:100%; height:100%;
	box-sizing: border-box; padding:0px 20px;
	cursor:pointer;
}
.subtitle{margin-bottom: 5px;}
.allGrade{
	box-sizing:border-box; padding:15px 0px;
}
.traffic_busGradeIcon{
	width:20px; height:30%; 
	box-sizing: border-box; margin-left:35%;
	
}
.busGrade_text{display:inline-block; text-align:center; width:100%;}
.traffic_searchComplete{
	width:50%; height:100%;
	box-sizing:border-box; padding-left:150px;
}
#searchComplete{
	width:35%; height:100%;
	font-size:30px;
	border:1px solid #ddd;
	box-sizing: border-box; margin:5px 0px 0px 0px;
	box-shadow: 1px 1px 5px gray;
	background-color: powderblue;
	border-radius:15px;
	cursor: pointer;
}
			

/* ---------------광고------------------- */
.content_container{
	width:100%; height:77%; 
	box-sizing: border-box; padding: 40px 150px;
	position:relative;
}
.content_container h2{
	font-size: 35px; margin-bottom: 15px;
}

.content_product{
	width:100%; height: 15%;
}
.content_product li{
	margin-bottom: 50px;
}

.content_product li swiper-container {
	 background: none;
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
      width: 80%;
      height: 100%;
      object-fit: cover;
}
.content_coupon{
	
	width:100%; height:35%; box-sizing:border-box;

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
.tm_modal {
  display: none; /* 초기에는 모달이 보이지 않도록 설정합니다. */
  position: absolute; /* 스크롤과 상관없이 화면에 고정되도록 설정합니다. */
  z-index: 50; /* 모달이 다른 요소 위에 표시되도록 설정합니다. */
  left: 35%;
  top: 130px;
  width: 30%; height:750px;
  padding: 0px;
  border-radius: 15px;
  background-color: rgba(0,0,0,0.1); /* 모달 외부를 어둡게 처리합니다. */
  overflow: hidden;
}



/* 모달 콘텐츠 스타일 */
.tm-content {
 position: relative; /* 모달 내부 요소들의 위치를 상대적으로 지정하기 위해 추가 */
  background-color: #fefefe;
  margin: 0px;
  padding: 20px;
  border: 1px solid #888;
  width: 100%;
  height: 750px;
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
.tm_title{
	text-align: center;
	font-size: 25px; 
	margin-left: 20px; margin-bottom:5px;
}
.tm_container{
	width:100%; height:100%;
	box-sizing: border-box;	margin-top: 5px;
}
.tm_placeBox{
	width:100%; height:13%;
	box-sizing: border-box;	padding:5px 30px; margin-bottom: 8px;
	display:flex;
	position: relative;
}
.tm_place{
	width:100%; height:100%; 
	border:2px solid gray; border-radius: 10px; 
	text-align: center;
}
.ps{margin-right:5px;}
.pa{margin-left:5px;}
.tm_place span{
	display:block; 
	width:100%; height:25px;
	font-size:20px;
	margin-top: 9px; margin-bottom:5px;
}
.tm_place label{cursor: pointer;}
.tm_place_text{
	width:100%;
	height:45px;
	box-sizing:border-box; margin-top:10px;
	border:none;
	
}

.tm_change{
	display:block;
	width:35px; height:35px;
	z-index: 10;
	position:absolute;
	top:30px; left:245px;
	background-color:#fff;
 }
 #tm_changeIcon{
 	width:100%; height:100%;
 	cursor:pointer;
 	border:1px solid gray; border-radius: 40%;
 }
.tm_searchBox{
	width:100%; height:8%;
	box-sizing: border-box; padding:10px 32px 15px;
	position:relative; 
}
.tm_search{
	width: 100%; height:100%;
	border-radius:10px;
	padding-left:5px;
	border: 2px solid gray;
	
}
#searchicon{
	position:absolute;
	width:5%; height:50%; 
	top:15px; right:30px;
	
}
.tm_detailBox{
	width:100%; height:100%;
	box-sizing: border-box; padding: 10px 20px;
}
.tm_detailBox h4{font-size:20px; margin-bottom:5px;}
.tm_detail{
	width:100%; height:480px;
	box-sizing: border-box; padding: 8px 0px 5px 13px;
	border:1px solid gray;
	display:flex;
}
.tm_cityBox{
	width:21%; height:100%;
	font-size: 20px;
}
.tm_cityBox li{
	
	box-sizing:border-box; padding-bottom:5px;margin-bottom: 10px; 
	background-color: #ddd; border-radius: 2px;
	cursor: pointer;
}
.tm_placeDetail{
	width:79%; height: 100%;
	margin:2px 0px 0px 13px;
	overflow:overlay;
	overflow-x:hidden;
	overflow-y:scroll;

}
.tm_placeDetail li{
	width:32%;
	display: inline-block;
	margin-bottom:10px;
	text-align:center; font-size: 18px;
	border-bottom: 1px solid #ddd;
	
}
</style>
<head>
<meta charset="UTF-8">
<title>traffic</title>
</head>
<body>
<div class="product_outterContainer">
	<div class="product_innerContainer">
	
		<div id="traffic_busSearchContainer">
			<table class="traffic_busSearchBox">
				<tr>
					<th id="taffic_searchTitle">고속버스조회</th>
				</tr>
				<tr class="traffic_busCorseBox">
					<td class="traffic_busCorse">
						<label>
							<input type="radio" class="corse"> <span>왕복</span>
						</label>
						<label>
							<input type="radio" class="corse"> <span>편도</span>
						</label>
					</td>
					
			    </tr>
			    <tr class="traffic_busPlaceBox">
					<td class="traffic_busPlace">
						<label class="">
							<span class="busSearch_smalltitle">출발지</span>
							<span class="busPlace_text" id="bu_start_modal"></span>
						</label>
					</td>
					<td class="traffic_busPlaceChange">
						<div id="traffic_change">

							<img alt="" src="/project/resources/img/change.png" id="traffic_changeIcon">
						</div>
					</td>
					<td class="traffic_busPlace">
						<label >
							<span class= "busSearch_smalltitle">도착지</span>
							<span  class="busPlace_text" id="bu_arrive_modal"></span>
						</label>
					</td>
					<td class="traffic_busPlace startBox">
						<label class="traffic_around ts_start">
							<span class= "busSearch_smalltitle">출발일</span>
							<input type="text" class="busPlace_dayText">
						</label>
					</td>
					<td class="traffic_busPlace arriveBox">
						<label class="traffic_around ts_arrive">
							<span class= "busSearch_smalltitle">도착일</span>
							<input type="text" class="busPlace_dayText">
						</label>
					</td>
				</tr>
				<tr class="traffic_grade_complete">
					<td class="traffic_busGradeBox">
						<p class="traffic_busGrade allGrade">
							
							<span class= "busGrade_text ">전체</span>
						</p>
						<figure class="traffic_busGrade">
							<img alt="" src="/project/resources/img/nomal.png" class="traffic_busGradeIcon">
							<span class= "busGrade_text">일반</span>
						</figure>
						<figure class="traffic_busGrade">
							<img alt="" src="/project/resources/img/crown.png" class="traffic_busGradeIcon" style="width:25px; height:45%;">
							<span class= "busGrade_text">프리미엄</span>						
						</figure>
						<figure class="traffic_busGrade">
							<img alt="" src="/project/resources/img/seatup.png" class="traffic_busGradeIcon">
							<span class= "busGrade_text">우등</span>
						</figure>
					</td>
					
					<td class="traffic_searchComplete">
						<div>
							<button id="searchComplete">조회</button>
						</div>
					</td>
				</tr>
				
				
			</table>
		</div>
		
		<div class="content_container">
			<ul class="content_product">
				<li class="">
					<h2>뜨는 지역</h2>
					  <swiper-container class="mySwiper" pagination="true" pagination-clickable="true" space-between="30" navigation="true"
					    slides-per-view="4">
					    <swiper-slide>
					    	<img src="/project/resources/img/night_sky.jpg">
						</swiper-slide>
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
					<h2>풍경 좋은 곳</h2>
					  <swiper-container class="mySwiper" pagination="true" pagination-clickable="true" space-between="30" navigation="true"
					    slides-per-view="4">
					    <swiper-slide>
					    	<img src="/project/resources/img/night_sky.jpg">
						</swiper-slide>
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
				<li class="content_coupon">
		
					<h2>이달의 쿠폰</h2>
					<swiper-container class="mySwiper" pagination="false" pagination-clickable="false" navigation="false" space-between="30"
					    centered-slides="false" autoplay-delay="4000" autoplay-disable-on-interaction="false"
					    style=" border:1px solid #ddd; border-radius: 45px;">
					    <swiper-slide>
					    	 <img src="/project/resources/img/coupon.jpg" style="height:100px;">
						</swiper-slide>
					    <swiper-slide>Slide 2</swiper-slide>
					    <swiper-slide>Slide 3</swiper-slide>
					    <div class="autoplay-progress" slot="container-end">
					      <svg viewBox="0 0 48 48">
					        <circle cx="24" cy="24" r="20"></circle>
					      </svg>
					      <span></span>
					    </div>
					  </swiper-container>
				</li>
			</ul>

		</div>
	</div>
</div>
  <!--목적지선택 모달 -->
<div id="tpm" class="tm_modal">
  <!-- 모달 콘텐츠 -->
  <div class="tm-content" id="tm_content">
    <span class="close">&times;</span>
    <h2 class="tm_title">출/도착지 선택</h2>
    <hr>
    <div class="tm_container">
    	<div class="tm_placeBox">
    		<div class="tm_place ps">
    			<label>
	    			<span>출발지</span>
	    			<span class="tm_place_text" id="tm_start"></span>
    			</label>
    		</div>
    		 <div class="tm_change">
    		 	<img alt="" src="/project/resources/img/change.png" id="tm_changeIcon">
    		 </div>
    		<div class="tm_place pa">
    			<label>
	    			<span>도착지</span>
	    			<span class="tm_place_text " id="tm_arrive"></span>
    			</label>
    		</div>
    	</div>
    	<hr>
    	<div class="tm_searchBox">
    		<label>
		    	<input type="text" placeholder="선택지를 입력하세요" class="tm_search" id="tm_search">
		    	<img alt="" src="/project/resources/img/search2.png" id="searchicon">		    	
    		</label>
    	</div>
	    <hr>
	    <div class="tm_detailBox">
	    	<h4>지역별 터미널</h4>
	    	<div class="tm_detail">
		    	<ul class="tm_cityBox">
			    	<li>전체</li>
			    	<li>서울</li>
			    	<li>인천/경기</li>
			    	<li>강원</li>
			    	<li>대전/충남</li>
			    	<li>충북</li>
			    	<li>광주/전남</li>
			    	<li>전북</li>
			    	<li>부산/경남</li>
			    	<li>대구/경북</li>
		    	</ul>
		    	<ul class="tm_placeDetail">
						<li>강릉</li>
						<li>강진</li>
						<li>경북도청</li>
						<li>경주</li>
						<li>고대조치원</li>
						<li>고양백석</li>
						<li>고양화정</li>
						<li>고창</li>
						<li>고흥</li>
						<li>곡성</li>
						<li>공주</li>
						<li>광명(KTX역)</li>
						<li>광명(철산역)</li>
						<li>광양</li>
						<li>광주(유·스퀘어)</li>
						<li>광주비아</li>
						<li>교통대</li>
						<li>구례</li> 
						<li>구리</li> 
						<li>구미</li> 
						<li>군산</li> 
						<li>금산</li> 
						<li>김제</li> 
						<li>김천</li> 
						<li>김천혁신</li> 
						<li>김해</li> 
						<li>김해장유</li> 
						<li>나주</li> 
						<li>나주혁신도시</li> 
						<li>낙동강(휴)상행</li> 
						<li>낙동강(휴)하행</li> 
						<li>남악</li> 
						<li>남원</li> 
						<li>내포</li> 
						<li>녹동</li> 
						<li>논산</li> 
						<li>능주</li> 
						<li>담양</li> 
						<li>당진</li> 
						<li>당진기지시</li> 
						<li>대구용계</li> 
						<li>대구혁신</li> 
						<li>대전도룡</li> 
						<li>대전복합</li> 
						<li>대전청사(샘머리)</li> 
						<li>덕과</li> 
						<li>덕산스파</li> 
						<li>동광양</li> 
						<li>동대구</li> 
						<li>동서울</li> 
						<li>동해</li> 
						<li>마산</li>
						<li>마산내서</li>
						<li>목포</li>
						<li>무안</li>
						<li>문장</li>
						<li>밀양</li>
						<li>배방정류소</li>
						<li>벌교</li>
						<li>보성</li>
						<li>부산</li>
						<li>부천</li>
						<li>북청주(청주대)</li>
						<li>삼척</li>
						<li>상봉</li>
						<li>상주</li>
						<li>서대구</li>
						<li>서부산(사상)</li>
						<li>서산</li>
						<li>서수원</li>
						<li>서울경부</li>
						<li>서충주</li>
						<li>선문대</li>
						<li>선산(휴)상행</li>
						<li>선산(휴)하행</li>
						<li>섬진강(휴)상행</li>
						<li>섬진강(휴)하행</li>
						<li>성남(분당)</li>
						<li>세종국무조정실</li>
						<li>세종시청</li>
						<li>세종연구단지</li>
						<li>세종청사</li>
						<li>세종터미널</li>
						<li>센트럴시티(서울)</li>
						<li>속초</li>
						<li>수원</li>
						<li>순창</li>
						<li>순천</li>
						<li>순천신대지구</li>
						<li>순천신대지구CGV</li>
						<li>시흥(시화)</li>
						<li>신갈시외</li>
						<li>신갈영덕</li>
						<li>아산둔포</li>
						<li>아산서부(호서대)</li>
						<li>아산온양</li>
						<li>아산탕정사무소</li>
						<li>아산테크노밸리</li>
						<li>안동</li>
						<li>안면도</li>
						<li>안산</li>
						<li>안성</li>
						<li>안성공도</li>
						<li>안성대림</li>
						<li>안성중대</li>
						<li>안성풍림</li>
						<li>안성한경</li>
						<li>안성회관</li>
						<li>안중</li>
						<li>안중오거리</li>
						<li>애통리</li>
						<li>양양</li>
						<li>여수</li>
						<li>여주</li>
						<li>여주대</li>
						<li>여천</li>
						<li>연무대</li>
						<li>영광</li>
						<li>영덕</li>
						<li>영산포</li>
						<li>영암</li>
						<li>영주</li>
						<li>영천</li>
						<li>영천망정동</li>
						<li>예산</li>
						<li>예천</li>
						<li>오산</li>
						<li>옥과</li>
						<li>완도</li>
						<li>용인</li>
						<li>용인기흥역</li>
						<li>용인신갈</li>
						<li>용인유림</li>
						<li>울산</li>
						<li>울산신복</li>
						<li>원동</li>
						<li>원주</li>
						<li>원주기업도시</li>
						<li>원주문막</li>
						<li>원주혁신</li>
						<li>유성</li>
						<li>의정부</li>
						<li>이천</li>
						<li>이천(마장택지지구)</li>
						<li>이천부발(신하리)</li>
						<li>익산</li>
						<li>익산팔봉</li>
						<li>인삼랜드(휴)상행</li>
						<li>인삼랜드(휴)하행</li>
						<li>인천</li>
						<li>인천공항T1</li>
						<li>인천공항T2</li>
						<li>임자(대광)</li>
						<li>임자(진리)</li>
						<li>자치인재원</li>
						<li>장성</li>
						<li>장흥</li>
						<li>전북혁신</li>
						<li>전주</li>
						<li>전주호남제일문</li>
						<li>점촌</li>
						<li>정산</li>
						<li>정안(휴)상행</li>
						<li>정안(휴)하행</li>
						<li>정읍</li>
						<li>제천</li>
						<li>제천하소</li>
						<li>조치원</li>
						<li>죽전</li>
						<li>지도</li>
						<li>진도</li>
						<li>진주</li>
						<li>진주개양</li>
						<li>진주혁신</li>
						<li>진해</li>
						<li>창기리</li>
						<li>창원</li>
						<li>창원역</li>
						<li>천안</li>
						<li>천안3공단</li>
						<li>천안아산역</li>
						<li>청양</li>
						<li>청주(센트럴)</li>
						<li>청주고속터미널</li>
						<li>청주공항</li>
						<li>청주북부</li>
						<li>춘천</li>
						<li>충주</li>
						<li>탕정삼성LCD</li>
						<li>태안</li>
						<li>태인</li>
						<li>통영</li>
						<li>평택</li>
						<li>평택대</li>
						<li>평택용이동</li>
						<li>포항</li>
						<li>포항시청</li>
						<li>풍기</li>
						<li>함평</li>
						<li>해남</li>
						<li>해제</li>
						<li>홍대조치원</li>
						<li>홍성</li>
						<li>화순</li>
						<li>황간</li>
						<li>횡성(휴)상행</li>
						<li>횡성(휴)하행</li>
						<li>흥덕 	</li>
		    	</ul>
	    	</div>
	    </div>
    </div>
    
    
    
    

  </div>
</div>

</body>
<script>
// dialog 열기
// 모달을 나타내는 버튼을 찾아서 클릭 이벤트를 추가합니다.
document.getElementById("bu_start_modal").onclick = function() {
  document.getElementById("tpm").style.display = "block"; // 모달을 보이도록 설정합니다.
}
document.getElementById("bu_arrive_modal").onclick = function() {
	  document.getElementById("tpm").style.display = "block"; // 모달을 보이도록 설정합니다.
}

// 모달의 닫기 버튼을 찾아서 클릭 이벤트를 추가합니다.
document.getElementsByClassName("close")[2].onclick = function() {
  document.getElementById("tpm").style.display = "none"; // 모달을 숨기도록 설정합니다.
}

// 모달 외부를 클릭하면 모달을 숨기도록 설정합니다.
window.onclick = function(event) {
  if (event.target == document.getElementById("tpm")) {
    document.getElementById("tpm").style.display = "none";
  }
}

$('.corse').click(function(){
	var genderCheck = $(this).find($('.corse:radio'));
	if(genderCheck.attr("checked") == "checked"){
		
		genderCheck.removeAttr("checked");
		
	}else{
		genderCheck.attr("checked","checked");
	}
});
</script>
</html>

