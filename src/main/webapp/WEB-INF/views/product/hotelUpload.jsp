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
/* 상품소개 제목 */
.product_titleBox{
	width:100%; height:30%;  
	border-bottom:1px solid #ddd; border-top: none; border-radius: 5px;
	box-shadow: 1px 1px 5px gray; font-size: 20px; 
	box-sizing:border-box; padding: 10px 10px 5px 15px; 

}
#pt_title{
	margin:5px 0px 30px 10px; font-size: 50px;
	border-radius: 10px; border-color: #ddd;
}

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
	box-sizing: border-box; padding: 0px 100px;
	background-color: rgba(226, 225, 225, 0.452);
 
}
.product_content{
	width:100%; height:100%;
}
.product_introMainBox{
	width:100%; height:30%;
	display:flex;
	
	
}
.product_introImg{
	width:45%; height:25%;
	z-index: 1;
	box-sizing: border-box; margin-top: 10px;
	position: relative;
}
.product_room_img{
	width: 200px; height:150px;
}
.pf{
	border-radius: 7px; border:1px solid #ddd;
}
#product_img{
	display: none;
}
#product_img_text{
	font-size: 40px;
}
#product_subimg{
	font-size: 30px;
}
#subAddress{
	box-sizing: border-box; padding: 10px 0px 0px 10px;
}
.product_introTitle{
	width:55%; height:25%;
	box-sizing: border-box; margin-top:10px; margin-left: 50px;
	font-size: 20px;
	border-bottom: 2px solid #ddd; border-right: 2px solid #ddd;
	background-color: #fff;
	
}
.product_introTitle h1{
	width:90%;
	font-size:50px;  
	margin: 10px 0px 15px 20px;
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
	width:100%; height:50%; 
	box-sizing: border-box; margin-top: 10px;
}

.product_introDetail h2{
	font-size:30px; 
}
.product_detailTA{
	width: 100%; height: 200px;
	border: 1px solid #ddd;
	box-sizing:border-box; padding-left:5px;
}
.product_serviceBox{
	width:100%; height:260px;
	display: flex; 

}
.product_service{
	width:50%; height:100%;
	box-sizing: border-box; padding-left: 10px;
}
.cp{
	box-sizing:border-box; padding:5px 10px;

}
.product_location{
	width:45%; height: 260px;
	position:relative;
}
.product_location img{
	width:100%; height: 200px;
}
.product_detailInfo{
	box-sizing: border-box; padding-left:20px;
}
.survice_type{
	margin:0px 5px 0px 5px; font-size:18px;
}
#product_service_title{
	font-size:30px;
	font-weight: normal;
	position: relative; top: 0px;
}
.product_room_table{
	border-collapse:separate;
	border-spacing: 0 15px;
}
.product_room{
	width:300px; height:150px;
	border-radius: 6px;
	text-align: center;
	vertical-align: middle;
}
.product_room_intro{
	display: block;
	margin-left: 20px;

}
.product_room_text{
	width:600px; height:150px;
}
.product_reviewPoint{
	display: flex;
}
.product_reviewAv{
	text-align: right;
	display:block;
}
.product_reviewcontent{
	display:flex;
}
.product_reviewText{
	width:100%;
}
.product_reviewComplete{
	width:70px;
}

.product_Complete{
 	width:100%; height:70px;
 	font-size:40px;
 	background-color: teal; box-shadow: 2px 2px 5px teal;
 	border: 1px solid teal; border-radius: 5px;
 	color: #fff;
}


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
      height: 350px;
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
      height: 90px;
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
<title>호텔업로드페이지</title>
</head>
<body>
<div class="product_outterContainer">
	<div class="product_innerContainer">
	  <form action="">
		<div class="product_titleBox">
			<select id="pt_title">
				<option>호텔</option>
				<option>모텔</option>
				<option>펜션</option>
			</select>
			<div class="product_placeBox">
				<select class="product_search_mainPlace">
					<option class="search_place search_main"> 서울 </option>
					<option class="search_place "> 부산 </option>
					<option class="search_place "> 제주 </option>
					<option class="search_place "> 강원 </option>
					<option class="search_place "> 경기 </option>
					<option class="search_place "> 인천 </option>
					<option class="search_place "> 경상 </option>
					<option class="search_place "> 전라 </option>
					<option class="search_place "> 충성 </option>
					
				</select>
				<select class="product_search_subPlace">
					<option>종로/명동/을지로</option>
				</select>
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
					<div class="product_introImg pf">
						 <div style="--swiper-navigation-color: #fff; --swiper-pagination-color: #fff" class="swiper mySwiper2">
							    <div class="swiper-wrapper">
							      <div class="swiper-slide ss_first">
								      	<label for="product_img" id="product_img_text">'파일을 선택하세요'</label>
								      	<input type="file" id="product_img" multiple>
							      </div>
							      <div class="swiper-slide">
										
										<input type="file" id="product_img">
							      </div>
							      <div class="swiper-slide">
							       		<input type="file" id="product_img">
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
							      	
							      	 <span class="product_subimg">+</span>
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
						<h1 class="product_title">상품명<input type="text"></h1>
						<span class="product_likeBox">
							<img src="/project/resources/img/nomal_like.png" class="product_likeimg">
						</span>
						<div class="product_detailInfo">
							<span>별점</span><img alt="" src="/project/resources/img/star.png"  class="product_starPoint">
							<span class="avScore">4.5</span>
							<span>/ 평점 </span>
							<span class="reviewNum">8.4</span>
							<p>
								<span>간이주소 입력란</span>
								<input type="text" id="subAddress">
							</p>
						</div>

						<div class="product_introDetail cp">
							<h2 >상세셜명</h2>
							<input type="text" class="product_detailTA">
						
				
						</div>
					</div>
				</div>
				<hr>
				<div>
					<h2>객실선택</h2>
				</div>
				<div>
					<table class="product_room_table">
						<tr class="product_room_tr">
							<td>
								<input type="file" class="product_room_img pf">		
							</td>
							<td class="product_room_intro">
								<span>객실이름 : </span> <input type="text">		
							</td>
							<td class="product_room_intro">
								<span>객실가격 : </span> <input type="text">	
							</td>
							<td class="product_room_intro">
								<span>객실이용안내 : </span> <input type="text" class="product_room_text">
							</td>

						</tr>

						<tr class="product_room_tr">
							<td>
								<input type="file" class="product_room_img pf">		
							</td>
							<td class="product_room_intro">
								<span>객실이름 : </span> <input type="text">		
							</td>
							<td class="product_room_intro">
								<span>객실가격 : </span> <input type="text">	
							</td>
							<td class="product_room_intro">
							
								<span>객실이용안내 : </span> <input type="text" class="product_room_text">
							</td>
						</tr>

					</table>
				</div>
				<hr>

				<div class="product_serviceBox cp">
					<div class="product_service">
						<h2 id="product_service_title">편의시설</h2>
						<input type="checkbox" class="survice_type"><span>24시간데스크</span>
						<input type="checkbox" class="survice_type"><span>객실금연</span>
						<input type="checkbox" class="survice_type"><span>흡연구역</span>
						<input type="checkbox" class="survice_type"><span>와이파이</span>
						<input type="checkbox" class="survice_type"><span>트윈베드</span>
						<input type="checkbox" class="survice_type"><span>주차가능</span>
						<input type="checkbox" class="survice_type"><span>매점/편의점</span><br>
						<input type="checkbox" class="survice_type"><span>어메니티</span>
						<input type="checkbox" class="survice_type"><span>상비약</span>
						<input type="checkbox" class="survice_type"><span>수화물보관</span>
						<input type="checkbox" class="survice_type"><span>바다전망</span>
						<input type="checkbox" class="survice_type"><span>조식운영</span>
						<input type="checkbox" class="survice_type"><span>패밀리</span>
						<input type="checkbox" class="survice_type"><span>뷔페</span>
						<input type="checkbox" class="survice_type"><span>공항셔틀</span><br>
						<input type="checkbox" class="survice_type"><span>노트북대여</span>
						<input type="checkbox" class="survice_type"><span>비지니스</span>
						<input type="checkbox" class="survice_type"><span>커피숍</span>
						<input type="checkbox" class="survice_type"><span>유료세탁</span>
						<input type="checkbox" class="survice_type"><span>연회장</span>
						<input type="checkbox" class="survice_type"><span>사우나</span>
						<input type="checkbox" class="survice_type"><span>바</span>
						<input type="checkbox" class="survice_type"><span>야외수영장</span><br>
						<input type="checkbox" class="survice_type"><span>레스토랑</span>
						<input type="checkbox" class="survice_type"><span>야외테라스</span>
						<input type="checkbox" class="survice_type"><span>스파/월풀/욕조</span>
						<input type="checkbox" class="survice_type"><span>야외테라스</span>
						<input type="checkbox" class="survice_type"><span>개별바베큐</span>
						<input type="checkbox" class="survice_type"><span>풀빌라</span>
						<input type="checkbox" class="survice_type"><span>키즈</span><br>
						<input type="checkbox" class="survice_type"><span>바베큐</span>
						<input type="checkbox" class="survice_type"><span>식사가능</span>
						<input type="checkbox" class="survice_type"><span>무료영화(OTT)</span>
						<input type="checkbox" class="survice_type"><span>주방</span>
						<input type="checkbox" class="survice_type"><span>공기청정기</span>
						<input type="checkbox" class="survice_type"><span>복층구조</span>
						<input type="checkbox" class="survice_type"><span>루프탑</span>
						<input type="checkbox" class="survice_type"><span>독채객실</span><br>
						<input type="checkbox" class="survice_type"><span>커플룸</span>
						<input type="checkbox" class="survice_type"><span>프로젝터</span>
						<input type="checkbox" class="survice_type"><span>공용주방</span>
						<input type="checkbox" class="survice_type"><span>공용거실</span>
						<input type="checkbox" class="survice_type"><span>촬영장소</span>
						<input type="checkbox" class="survice_type"><span>다이닝룸</span>
					</div>
					<div class="product_location cp">
						<h2>숙소 위치</h2>
						<img alt="" src="/project/resources/img/ex_map.png">
					</div>
				
				</div>
				<hr>
				<div class="product_reviewBox cp">
					<h2>리뷰</h2>
					<div class="product_reviewPoint">
					<p>
						<span>별점</span><img alt="" src="/project/resources/img/star.png" class="product_starPoint">
						<span>4.5</span>
						<span>/평점</span>
					</p>
					<div>
						<p  class="product_reviewAv">
							<span>4.5</span>
							<span>/평점</span>
						</p>
						<p class="product_reviewAv">
							<span>4.5</span>
							<span>/평점</span>
						</p>
						<p class="product_reviewAv">
							<span>4.5</span>
							<span>/평점</span>
						</p>
					</div>
					
					</div>
					<div class="product_reviewcontent">
						<textarea rows="" cols="" class="product_reviewText">
							
						</textarea>
						<button type="button" class="product_reviewComplete">댓글등록</button>
					</div>
				</div>
				<button class="product_Complete">상품등록</button>
			</div>
		</div>
	  </form>
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