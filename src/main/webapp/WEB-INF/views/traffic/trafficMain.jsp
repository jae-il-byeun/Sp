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
.traffic_busSearchBox{
	box-sizing: border-box; padding:30px 30px 0px;
	width:100%; height:20%; 
}
.traffic_busSearchBox tr th{
	font-size: 35px;  width:100%;
}
.traffic_busSearchBox tr{
	text-align: center; width:100%;
}
.traffic_busCorse{margin-left: 50px;}
.traffic_busPlace .traffic_busDay{
	text-align: left;
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
    
</style>
<head>
<meta charset="UTF-8">
<title>traffic</title>
</head>
<body>
<div class="product_outterContainer">
	<div class="product_innerContainer">
		<table class="traffic_busSearchBox">
			<tr>
				<th>고속버스조회</th>
			</tr>
			<tr>
				<td class="traffic_busCorse">
					<label>
						<input type="radio"> <span>편도</span>
					</label>
					<label>
						<input type="radio"> <span>왕복</span>
					</label>
				</td>
		    </tr>
			<tr class="traffic_busPlace">
				<td >
					<a>
						<span>출발지</span>
						<span></span>
					</a>
				</td>
			</tr>
			<tr class="traffic_busPlace">
				<td>
					<a>
						<span>도착지</span>
						<span></span>
					</a>
				</td>
			</tr>
			<tr class="traffic_busDay">
				<td>
					<a>
						<span>출발일</span>
						<input type="date">
					</a>
				</td>
			</tr>
			<tr class="traffic_busDay">
				<td>
					<a>
						<span>도착일</span>
						<input type="date">
					</a>
				</td>
			</tr>
			<tr>
				<th>
					<button>조회</button>
				</th>
			</tr>
		</table>
		<div class="content_container">
			<ul class="content_product">
				<li class="">
					<h2>강른 추천 여행지</h2>
					  <swiper-container class="mySwiper" pagination="true" pagination-clickable="true" space-between="30" navigation="true"
					    slides-per-view="4">
					    <swiper-slide>
					    	<img src="/project/resources/img/night_sky.jpg">
						</swiper-slide>
					    <swiper-slide>
							<img src="/project/resources/img/night_sky.jpg">
						</swiper-slide>
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
	
</body>
</html>