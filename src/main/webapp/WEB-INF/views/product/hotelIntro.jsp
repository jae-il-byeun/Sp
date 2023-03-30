<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page session="false" %>
<!DOCTYPE html>
<html>
 <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.css" />
 <script src="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.js"></script>
 <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1" />
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
.product_titleBox{
	width:100%; height:30%;  
	border-bottom:1px solid #ddd; border-top: none; border-radius: 5px;
	box-shadow: 1px 1px 5px gray; font-size: 20px;
	box-sizing:border-box; padding: 10px 10px 5px 15px; 
}
#pt_title{margin:5px 0px 30px 10px;}
.product_placeBox{
width:100%; height:35%;  
	box-sizing:border-box; padding: 0px 10px 5px 15px;  display:flex; text-align: center;
}


.product_introImg{
	width:40%; height:5%;
	box-sizing: border-box; margin-left: 10px;
	position: relative;

}
.product_contentContainer{
	width:100%; height: 100%;
	box-sizing: border-box; margin-top: 10px;
}
.product_content{
	width:100%; height:100%;
}
.product_introMainBox{
	width:100%; height:30%;
	display:flex;
}
.product_introImg{
	width:35%; height:25%;
	z-index: -1;
}


/* 슬라이드 */
.swiper {
      width: 100%;
      height: 100%;
}
.swiper-slide {
      text-align: center;
      font-size: 18px;
      background: #fff;
      display: flex;
      justify-content: center;
      align-items: center;
}
.swiper-slide img {
      display: block;
      width: 100%;
      height: 100%;
      object-fit: cover;
      border-radius: 5px;
}
.swiper {
      width: 100%;
      height: 300px;
}

.swiper-slide {
      background-size: cover;
      background-position: center;
}

.mySwiper2 {
      width: 100%;
}

.mySwiper {
      height: 20%;
      box-sizing: border-box;
      padding: 10px 0;
}
.mySwiper .swiper-slide {
      width: 25%;
      height: 60px;
      opacity: 0.4;
}
.mySwiper .swiper-slide-thumb-active {
      opacity: 1;
}
.swiper-slide img {
      display: block;
      width: 100%;
      height: 100%;
      object-fit: cover;
      border-radius: 5px;
}
.cp{
	box-sizing:border-box;
	padding:5px 50px;
	border-bottom: 1px solid #ddd;
}

.product_introTitle{
	width:55%; height:25%;

	font-size: 20px;
}
.product_introTitle h1{
	font-size:50px; width:90%;
}
.product_likeBox{
	float:right;
	width:20px; height:20px;
	
}
.product_liketext{
	font-size: 0px;
	background-imge:url("/project/resources/img/nomal_like.png")
}
.product_introDetail{
	width:100%; height:30%; 
	
}
.product_introDetail h5{
	font-size:20px; 
}
.product_detailTA{
	width: 100%; height: 100%;
	border: 1px solid #ddd;
}
.product_serviceBox{
	width:100%; height:230px;
	display: flex; 

}
.product_service{
	width:50%; height:100%;
	box-sizing: border-box; padding-left: 10px;
}
.product_location{
	width:45%; height: 200px;
}
.product_location img{
	width:100%; height: 200px;
}



}
</style>
<head>
<meta charset="UTF-8">
<title>호텔상세페이지</title>
</head>
<body>
<div class="product_outterContainer">
	<div class="product_innerContainer">
		<div class="product_titleBox">
			<h1 id="pt_title">호텔</h1>
			<div class="product_placeBox">
				<ul class="product_search_mainPlace">
					<li>
						<span>서울</span>
					</li>
					<li>
					
				</li>
				</ul>
				<ul class="product_search_subPlace">
					<li>
						<span>종로/명동/을지로</span>
					</li>
				</ul>
				<div class="product_search_calender">
					<input type="text" class="dayCheck">
					<span>~</span>
					<input type="text" class="dayCheck">
				</div>
			</div>
		</div>
		
		<div class="product_contentContainer">
			<div class="product_content">
				<div class="product_introMainBox">
					<div class="product_introImg">
							 <div style="--swiper-navigation-color: #fff; --swiper-pagination-color: #fff" class="swiper mySwiper2">
							    <div class="swiper-wrapper">
							      <div class="swiper-slide">
							        <img src="/project/resources/img/ship.jpg" />
							      </div>
							      <div class="swiper-slide">
							        <img src="https://swiperjs.com/demos/images/nature-2.jpg" />
							      </div>
							      <div class="swiper-slide">
							        <img src="https://swiperjs.com/demos/images/nature-3.jpg" />
							      </div>
							      <div class="swiper-slide">
							        <img src="https://swiperjs.com/demos/images/nature-4.jpg" />
							      </div>
							      <div class="swiper-slide">
							        <img src="https://swiperjs.com/demos/images/nature-5.jpg" />
							      </div>
							      <div class="swiper-slide">
							        <img src="https://swiperjs.com/demos/images/nature-6.jpg" />
							      </div>
							      <div class="swiper-slide">
							        <img src="https://swiperjs.com/demos/images/nature-7.jpg" />
							      </div>
							      <div class="swiper-slide">
							        <img src="https://swiperjs.com/demos/images/nature-8.jpg" />
							      </div>
							      <div class="swiper-slide">
							        <img src="https://swiperjs.com/demos/images/nature-9.jpg" />
							      </div>
							      <div class="swiper-slide">
							        <img src="https://swiperjs.com/demos/images/nature-10.jpg" />
							      </div>
							    </div>
							    <div class="swiper-button-next"></div>
							    <div class="swiper-button-prev"></div>
							  </div>
							  <div thumbsSlider="" class="swiper mySwiper">
							    <div class="swiper-wrapper">
							      <div class="swiper-slide">
							        <img src="https://swiperjs.com/demos/images/nature-1.jpg" />
							      </div>
							      <div class="swiper-slide">
							        <img src="https://swiperjs.com/demos/images/nature-2.jpg" />
							      </div>
							      <div class="swiper-slide">
							        <img src="https://swiperjs.com/demos/images/nature-3.jpg" />
							      </div>
							      <div class="swiper-slide">
							        <img src="https://swiperjs.com/demos/images/nature-4.jpg" />
							      </div>
							      <div class="swiper-slide">
							        <img src="https://swiperjs.com/demos/images/nature-5.jpg" />
							      </div>
							      <div class="swiper-slide">
							        <img src="https://swiperjs.com/demos/images/nature-6.jpg" />
							      </div>
							      <div class="swiper-slide">
							        <img src="https://swiperjs.com/demos/images/nature-7.jpg" />
							      </div>
							      <div class="swiper-slide">
							        <img src="https://swiperjs.com/demos/images/nature-8.jpg" />
							      </div>
							      <div class="swiper-slide">
							        <img src="https://swiperjs.com/demos/images/nature-9.jpg" />
							      </div>
							      <div class="swiper-slide">
							        <img src="https://swiperjs.com/demos/images/nature-10.jpg" />
							      </div>
							    </div>
							  </div>
					</div>
					<div class="product_introTitle">
						<h1 class="product_title">파라다이스 시티</h1>
						<span class="product_likeBox">
							<span class="product_liketext">좋아요</span>
						</span>
						<div class="product_detailInfo">
							<span>별점</span><img alt="" src="" class="product_starPoint">
							<span>4.5</span>
							<span>/평점</span>
							<span>(<span>84</span>)></span>
						</div>
						<span>10000원</span> 
					</div>
				</div>

				<div class="product_introDetail cp">
					<h5 >상세셜명</h5>
					<textarea rows="" cols="" class="product_detailTA">
						
					</textarea>
				</div>

				<div class="product_serviceBox cp">
					<figure class="product_service">
						<h5>편의시설</h5>
						<span></span>
						<span></span>
						<span></span>
						<span></span>
						<span></span>
						<span></span>
					</figure>
					<div class="product_location cp">
						<h5>숙소 위치</h5>
						<img alt="" src="/project/resources/img/ex_map.png">
					</div>
				</div>
			
				<div class="product_reviewBox cp">
					<h2>리뷰</h2>
					<p>
						<span>별점</span><img alt="" src="" class="product_starPoint">
						<span>4.5</span>
						<span>/평점</span>
					</p>
					<textarea rows="" cols="" class="product_reviewText">
						
					</textarea>
					<button class="product_reviewComplete">작성완료</button>
				</div>
				
			</div>
			
			
		</div>
	</div>
	
</div>
</body>
  <script>
    var swiper = new Swiper(".mySwiper", {
      spaceBetween: 10,
      slidesPerView: 4,
      freeMode: true,
      watchSlidesProgress: true,
    });
    var swiper2 = new Swiper(".mySwiper2", {
      spaceBetween: 10,
      navigation: {
        nextEl: ".swiper-button-next",
        prevEl: ".swiper-button-prev",
      },
      thumbs: {
        swiper: swiper,
      },
    });
  </script>
</html>