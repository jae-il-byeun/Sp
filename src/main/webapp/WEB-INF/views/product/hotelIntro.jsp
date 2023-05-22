<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ page session="false" %>
<!DOCTYPE html>
<html>
 <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.css" />
 <script src="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.js"></script>
 <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1" />
 
 <script src="https://cdn.jsdelivr.net/npm/swiper@9/swiper-element-bundle.min.js"></script>
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
/* 상품소개 제목 */
.product_titleBox{
	width:100%; height:30%;  
	border-bottom:1px solid #ddd; border-top: none; border-radius: 5px;
	box-shadow: 1px 1px 5px gray; font-size: 20px; 
	box-sizing:border-box; padding: 10px 10px 5px 15px; 

}
#product_type{margin:5px 0px 30px 10px;}

.product_placeBox{
width:100%; height:35%;  
	box-sizing:border-box; padding: 0px 10px 5px 15px;  display:flex; text-align: center;
}
.product_search_mainPlace{
	width:8%; height:10%; 
	border: 1px solid #ddd; border-radius: 7px;
	box-sizing: border-box; margin-right:10px; 
}
.search_place{
	cursor:pointer;
}
.place_hidden{
	display:none;
}
.product_search_subPlace{
	width:15%; height: 5%; 
	border: 1px solid #ddd; border-radius: 7px; 
	box-sizing: border-box; margin-right:10px; 
}
.product_search_calender{margin-left: 10px;}
.dayCheck{
	width:40%; height: 34px;
	border: 1px solid #ddd; border-radius: 7px;
	font-size: 15px;
}

/* 상품소개 메인속성 */
.product_contentContainer{
	width:100%; height: 100%;
	box-sizing: border-box; margin-top: 10px;
	background-color: #fffcf4;
	box-sizing:border-box; padding: 0px 100px;
}
.product_content{
	width:100%; height:100%;
}
.product_introMainBox{
	width:100%; height:30%;
	display:flex;
}

.product_introImg{
	width:40%; height:25%;
	z-index: 1;
	box-sizing: border-box;
	position: relative;
	margin-top:10px;
}
#product_img{
	display: none;
}

.product_introTitle{
	width:60%; height:25%;
	box-sizing: border-box; margin-top:10px; margin-left: 50px;
	font-size: 20px;
	border-bottom: 2px solid #ddd; border-right: 2px solid #ddd;
	background-color: #fff;
	
}
.product_introTitle h1{
	width:90%;
	font-size:60px;  
	margin: 10px 0px 15px 10px;
}
.product_likeBox{
	float:right;
	width:30px; height:30px;
	margin-right:15px;
}
.product_likeimg{
	width:100%;
}
.product_starPoint{
	width:20px; height:20px;
}
/* 상품 상세소개Box */
.product_introDetail{
	width:100%; height:30%; 
	box-sizing: border-box; margin-top:10px;
	
}
.p_price{
	float: right; margin-right: 10px;
}
.product_introDetail h5{
	font-size:20px; 
}
.product_detailTA{
	width: 100%; height: 175px;
	border: 1px solid #dcdcdc;
    overflow-y: auto;
}
.product_serviceBox{
	width:100%; height:230px;
	display: flex; 

}
.product_service{
	width:49%; height:100%;
	box-sizing: border-box; padding-left: 10px; margin-right:10px;
	
}
.cp{
	box-sizing:border-box; padding:5px 10px 0px;
}
textarea{
	resize: none;
	width:90%; height:120px;
	
}

.product_location{
	width:50%; height: 200px;
}
.product_location img{
	width:100%; height: 200px;
}
.product_roomContainer{
	display:flex;
	box-sizing: border-box; padding:0px 10px;
}
.room_textBox{
	width:55%;
	margin-left:50px;
}
.room_text{
	display: block;
}
.rname{font-size:40px; margin-top: 5px;}
.rprice{font-size:25px; text-align: right; margin-top: 10px;}
.rintro{font-size: 20px;}
.rcontent{
	width:100%; height: 100px;
	resize: none;
}	
.rr{
	width:100px; height: 40px;
	text-align: center; float:right;
	font-size: 27px;
	border: 1px solid #fff; border-radius: 7px;
	margin-top:10px;
	color: #fff; background-color: tan;
	
}

/* 리뷰 */
.product_review{
	display: flex;
	padding: 0px 10px;	
}
.product_reviewText{
	width: 80%;
	margin-right:10px;
}

.product_reviewComplete{
 	font-size: 20px;
 	border: 1px solid #fff; border-radius: 7px; 
 	background-color: green; color:#fff;
}
.exuser{
	display: block;
}
/*메인소개 이미지 슬라이드 */
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
</style>
<head>
<meta charset="UTF-8">
<title>호텔상세페이지</title>
</head>
<body>
<div class="product_outterContainer">
	<div class="product_innerContainer">
		<div class="product_titleBox">
			<h1 id="product_type">호텔</h1>
		</div>
		
		<div class="product_contentContainer">
			<div class="product_content">
				<div class="product_introMainBox">
					<div class="product_introImg">
						 <div style="--swiper-navigation-color: #fff; --swiper-pagination-color: #fff" class="swiper mySwiper2">
						    <div class="swiper-wrapper">
						    	<c:forEach items="${productFiles}" var="file">
						    		<div class="swiper-slide">
							        	<img src='<c:url value="/download${file.file_name}"></c:url>' />
									</div>
						    	</c:forEach>
						    </div>
						    <div class="swiper-button-next"></div>
						    <div class="swiper-button-prev"></div>
						  </div>
						  <div thumbsSlider="" class="swiper mySwiper">
						    <div class="swiper-wrapper">
						    	<c:forEach items="${productFiles}" var="file">
						    		<div class="swiper-slide">
							        	<img src='<c:url value="/download${file.file_name}"></c:url>' />
									</div>
						    	</c:forEach>
						    </div>
						  </div>
					</div>
					<div class="product_introTitle">
						<h1 class="product_title" id="product_name">${product.product_name}</h1>
						<span class="product_likeBox">
							<img src="/project/resources/img/nomal_like.png" class="product_likeimg">
						</span>
						<div class="product_detailInfo cp">
							<img alt="" src="/project/resources/img/star.png"  class="product_starPoint">
			
							<span>/평점</span>
							<span>(<span class="reviewNum" id="rv_star">0.0</span>)</span>
						</div>
						<span class="p_price" id="">${product.product_price}</span> 
						<div class="product_introDetail cp">
							<h5 >상세설명</h5>
							<div class="product_detailTA">${product.product_content}</div>
						</div>
					</div>
					
				</div>
				<hr>

				<div class="product_serviceBox ">
					<figure class="product_service" id="product_service">
						<h5>편의시설</h5>
						<c:forEach items="${productServiceList}" var="img">
							<img src="/project/resources/img/service/${img}.png">
						</c:forEach>
					</figure>
					<div class="product_location ">
						<h5>숙소 위치</h5>
						<img alt="" src="/project/resources/img/ex_map.png">
					</div>
				</div>
				<hr>
				<c:forEach items="${rooms}" var="r">
					<div class="product_roomContainer">
						<div class="swiper mySwiper3" style="width:600px; height:350px;">
						    <div class="swiper-wrapper">
						      <c:forEach items="${r.r_file}" var="rFile">
							      <div class="swiper-slide"><img src='<c:url value="/download${rFile.file_name}"></c:url>' /></div>
						      </c:forEach>
						    </div>
						    <div class="swiper-button-next"></div>
						    <div class="swiper-button-prev"></div>
					  	</div>
						
						<div class="room_textBox">	
							<strong class="room_text rname">${r.r_title}</strong>
							<span class="room_text rprice">가격 : ${r.r_price} 원</span>
							<span class="room_text rintro">상세설명 :</span>
							<textarea rows="" cols="" class="room_text rcontent">${r.r_intro}</textarea>
							<a type="button" class="room_text rr">예약</a>
						</div>
					</div>				
					<hr>
				</c:forEach>
				<div class="product_reviewBox cp">
					<h2>리뷰</h2>
					<p>
						<span>별점</span><img alt="" src="" class="product_starPoint">
						<span>평점/</span>
						<span id="rv_star">4.5</span>
							
					</p>
					<div class="product_review">
						<textarea rows="" cols="" class="product_reviewText" id="rv_content"></textarea>
						<button type="submit" class="product_reviewComplete">작성완료</button>
					</div>
					<div class="product_review exuser">
						<hr>
						<h5>아이디</h5>
						<p>
							<span>별점</span><img alt="" src="" class="product_starPoint">
							<span>평점/</span>
							<span id="rv_star">4.5</span>
								
						</p>	
						<div class="product_review">
							<textarea rows="" cols="" class="product_reviewText" id="rv_content" readonly></textarea>
						</div>
						<hr>
					</div>
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
    var swiper3 = new Swiper(".mySwiper3", {
      navigation: {
        nextEl: ".swiper-button-next",
        prevEl: ".swiper-button-prev",
      },
    });
  </script>
  <script >
	$(".search_place").click(function(){
		if($(".place_hidden").css("display","block")){
			
			$(".place_hidden").css("display","none");
		}else{
			$(".place_hidden").css("display","block");
		}
	}) 
  </script>
</html>