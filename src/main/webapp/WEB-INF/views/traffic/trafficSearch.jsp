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
#taffic_searchTitle{text-align:center; font-size: 40px;  width:100%;}
.traffic_busCorseBox{width:100%; box-sizing:border-box; margin-right:20px;}



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
.busSearch_text{
	display:block; font-size: 20px;
}
.busPlace_input{
	width:100%; height:100px; border:none;
}

.traffic_busPlaceChange{
	width:20%; height:100%;
	box-sizing: border-box; padding: 50px 0px; margin: 0px 5px;
	position:relative; 
}
#traffic_change{
	display:block;
	width:100%; height:40%;
	border:1px solid #ddd; border-radius: 50%;
	z-index: 10;
	position:absolute;
 }
 #traffic_changeIcon{
 	width:100%; height:100%;
 	cursor:pointer;
 }
 .startBox{
	margin-left:50px;
}
.arriveBox{
	display: none;
}
.traffic_grade_complete{
	width:100%; height:100%;
	box-sizing: border-box; padding:5px 20px;
	display:flex;
}
.traffic_busGradeBox{
	width:40%; height:100%;
	border: 1px solid #ddd;
	margin-left: 15px;
	display: flex;
}
.traffic_busGrade{
	width:25%; height:100%;
	box-sizing: border-box; padding:0px 20px;
}
.subtitle{margin-bottom: 5px;}
.allGrade{
	box-sizing:border-box; padding:10px 0px;
}
.traffic_busGradeIcon{width:20px; height:30%; box-sizing: border-box; margin-left:35%;}
.busGrade_text{display:block; text-align:center; width:100%;}
.traffic_searchComplete{
	width:15%;
	box-sizing:border-box; margin-left:300px;
}
.searchComplete{
	width:100%;
	font-size:25px;
}
			

/* ---------------광고------------------- */
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
      width: 100%;
      height: 100%;
      object-fit: cover;
}
.content_coupon{
	
	width:84.5%; height:5%; box-sizing:border-box;
	
	 position: absolute; top:300px; 
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
  left: 37%;
  top: 0;
  width: 27%; height:50%;
  padding: 0px;
  height: 100%;
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
.tm_title{font-size: 25px; margin-left: 20px;}
.tm_container{width:100%; height:100%;}
.tm_placeBox{
	width:100%; heigth:25%;
	
	border:1px solid #ddd; display:flex;
}
.tm_place{width:40%; height:50%; border:1px solid #ddd; text-align: center;}
.tm_change{width:20%; heigth:50%; }
.tm_place span{display:block; width:100%; height:50%;}

#tm_searchBox{
	width: 100%; height:10%;
	border-radius:10px;
	position:relative; 
}
#placeSearch{
	position:absolute;
	right:0;
	top:5;
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
							<span class="busSearch_text">출발지</span>
							<input type="text" class="busPlace_input" id="busPlace_modal">
						</label>
					</td>
					<td class="traffic_busPlaceChange">
						<div id="traffic_change">

							<img alt="" src="/project/resources/img/change.png" id="traffic_changeIcon">
						</div>
					</td>
					<td class="traffic_busPlace">
						<label >
							<span class= "busSearch_text">도착지</span>
							<input type="text"  class="busPlace_input" id="busPlace_modal">
						</label>
					</td>
					<td class="traffic_busPlace startBox">
						<label class="traffic_around ts_start">
							<span class= "busSearch_text">출발일</span>
							<input type="text" class="busPlace_input">
						</label>
					</td>
					<td class="traffic_busPlace arriveBox">
						<label class="traffic_around ts_arrive">
							<span class= "busSearch_text">도착일</span>
							<input type="text" class="busPlace_input">
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
					<h2>풍경 좋은 곳</h2>
					  <swiper-container class="mySwiper" pagination="true" pagination-clickable="true" space-between="30" navigation="true"
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
	</div>
</div>
  <!--목적지선택 모달 -->
<div id="tm" class="tm_modal">
  <!-- 모달 콘텐츠 -->
  <div class="tm-content" id="tm_content">
    <span class="close">&times;</span>
    <h2 class="tm_title">츨/도착지 선택</h2>
    <hr>
    <div class="tm_container">
    	<div class="tm_placeBox">
    		<div class="tm_place">
    			<span>출발지</span>
    			<input type="text" id="tm_start">
    		</div>
    		 <div class="tm_change">
    		 	<img alt="" src="">
    		 </div>
    		<div class="tm_place">
    			<span>도착지</span>
    			<input type="text" id="tm_arrive">
    		</div>
    	</div>
    </div>
    <hr>
    <input type="text" placeholder="선택지를 입력하세요" id="tm_searchBox">
    <img alt="" src="" id="placeSearch">
    
    <hr>
    
    <div class="tm_detailBox">
    	<h4>지역별 터미널</h4>
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
    	<table class="traffic_placeDetail">
			<tr>
				<td>강릉</td>
				<td>강진</td>
				<td>경북도청</td>
			</tr>
			<tr>
				<td>경주</td>
				<td>고대조치원</td>
				<td>고양백석</td>
			</tr> 
			<tr>
				<td>고양화정</td>
				<td>고창</td>
				<td>고흥</td>
			</tr> 
			<tr>
				<td>곡성</td>
				<td>공주</td>
				<td>광명(KTX역)</td>
			</tr> 
			<tr>
				<td>광명(철산역)</td>
				<td>광양</td>
				<td>광주(유·스퀘어)</td>
			</tr> 
			<tr>
				<td>광주비아</td>
				<td>교통대</td>
				<td>구례</td>
			</tr>     		
    	</table>
    </div>

  </div>
</div>

</body>
<script>
// dialog 열기
// 모달을 나타내는 버튼을 찾아서 클릭 이벤트를 추가합니다.
document.getElementById("busPlace_modal").onclick = function() {
  document.getElementById("tm").style.display = "block"; // 모달을 보이도록 설정합니다.

  
}

// 모달의 닫기 버튼을 찾아서 클릭 이벤트를 추가합니다.
document.getElementsByClassName("close")[0].onclick = function() {
  document.getElementById("tm").style.display = "none"; // 모달을 숨기도록 설정합니다.
}

// 모달 외부를 클릭하면 모달을 숨기도록 설정합니다.
window.onclick = function(event) {
  if (event.target == document.getElementById("tm")) {
    document.getElementById("tm").style.display = "none";
  }
}

</script>
</html>

