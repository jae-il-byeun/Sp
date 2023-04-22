<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page session="false" %>
<!DOCTYPE html>
<html>
<script src="https://cdn.jsdelivr.net/npm/swiper@9/swiper-element-bundle.min.js"></script>
  <!-- Link Swiper's CSS -->
 <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.css" />
 
 <link rel="stylesheet" href="//code.jquery.com/ui/1.13.2/themes/base/jquery-ui.css">
 <script src="/project/resources/js/jquery-ui.min.js"></script>

 
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
.traffic_busPlace label{
	width: 100%;
}
.busSearch_smalltitle{
	display:block; font-size: 25px; margin-left: 10px;
}
.busPlace_text{
	width:100%; height:60px; border:none; font-size: 25px;
	display:block;
	box-sizing: border-box; padding-left: 20px; padding-top:10px;
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
.bs_day{
	display: flex;
}
.busPlace_dayText{
	width:75%; height:60px; border:none;
	display:block;
	cursor:pointer;
	font-size: 25px;
	box-sizing: border-box;margin-left :20px; padding-left: 5px; margin-right: 5px;
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
	width:100%; height:100%;
	box-sizing:border-box; padding:0px 250px;
}
#searchComplete{
	width:100%; height:100%;
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
  left: 30%;
  top: 130px;
  width: 40%; height:750px;
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
  max-width: 800px;
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
.ps{margin-right:5px; box-shadow: 1.5px 1.5px 7px teal;}
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
	top:30px; left:47.5%;
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
	width:100%; height:385px;
	box-sizing: border-box; padding: 8px 0px 5px 13px;
	border:1px solid gray;
	display:flex;
}
.tm_cityBox{
	width:21%; height:100%;
	font-size: 20px;
}
.tm_cityBox li{
	height:27px; font-size:17px;
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
.disabled {
    pointer-events: none;
    opacity: 0.5; 
  }

/* datepicker   */
.ui-datepicker-trigger{
	width:40px; height:40px;
	display:inline-block;
	
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
							<input type="radio" class="corse" name="if_corse" id="double"> <span>왕복</span>
						</label>
						<label>
							<input type="radio" class="corse" name="if_corse" checked> <span>편도</span>
						</label>
					</td>
					
			    </tr>
			    <tr class="traffic_busPlaceBox">
					<td class="traffic_busPlace">
						<label class="">
							<span class="busSearch_smalltitle">출발지</span>
							<span class="busPlace_text" id="bu_start_modal"></span>
							<input type="hidden" id="bu_start_value">
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
							<input type="hidden" id="bu_arrive_value">
						</label>
					</td>
					<td class="traffic_busPlace startBox">
						<label class="traffic_around ts_start">
							<span class= "busSearch_smalltitle">출발일</span>
							<div class="bs_day">
								
								<input type="text" class="busPlace_dayText" id="startDay">
							</div>
						</label>
					</td>
					<td class="traffic_busPlace arriveBox">
						<label class="traffic_around ts_arrive">
							<span class= "busSearch_smalltitle">도착일</span>
							<input type="text" class="busPlace_dayText" id="">
						</label>
					</td>
				</tr>
				<tr class="traffic_grade_complete">

					
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
    		<div class="tm_place ps" id="tm_place_start">
    			<label>
	    			<span>출발지</span>
	    			<span class="tm_place_text" id="tm_start"></span>
	    			<input type="hidden" id="tm_start_id"></input>
    			</label>
    		</div>
    		 <div class="tm_change">
    		 	<img alt="" src="/project/resources/img/change.png" id="tm_changeIcon">
    		 </div>
    		<div class="tm_place pa" id="tm_place_arrive">
    			<label>
	    			<span>도착지</span>
	    			<span class="tm_place_text " id="tm_arrive"></span>
	    			<input type="hidden" id="tm_arrive_id"></input>
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
			    	<li id="seoul">서울</li>
			    	<li id="gyongki">인천/경기</li>
			    	<li id="gangwon">강원</li>
			    	<li id="daejeon">대전/충남</li>
			    	<li id="cooungbook">충북</li>
			    	<li id="gwangwon">광주/전남</li>
			    	<li id="jeounbook">전북</li>
			    	<li id="busan">부산/경남</li>
			    	<li id="daegu">대구/경북</li>
			    	<li id="jaeju">제주</li>
		    	</ul>
		    	<ul class="tm_placeDetail">

						
						
		    	</ul>
	    	</div>
	    </div>
    </div>
    
    
    
    

  </div>
</div>

</body>
<script>// modal 실행

// dialog 열기
// 모달을 나타내는 버튼을 찾아서 클릭 이벤트를 추가합니다.

$('#bu_start_modal').click(function(){
	$('#tpm').css("display","block"); 
	$('.ps').removeClass("disabled");
	$('.pa').addClass("disabled");
	$('#tm_arrive').text("");
	$('#tm_start').text("");
	$('.tm_cityBox').css("display","block");
	$('.tm_placeDetail').css("width","79%");
	$('#tm_place_arrive').css("box-shadow","none");
	$('.ps').css("box-shadow","1px 1px 7px teal");
	$('#seoul').click();
	
})
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
};


</script>

<script >
//버스조회
// 인증키 :
//  %2BoUa%2BnpovMyWRLMFUpb5u6FUhojKp3XXyaRoUbs%2B20dvzSxl8YD8CAtMfdu%2BwjfdQbuz2Brhkf%2FPA7kMvH69wA%3D%3D
// 지역별로 분류한다. -> 서울 경기/인천 강원 충북 경남 전라도
// 지역을 누른다. 누르면 지역에 앞 코드를
let seoul = [1000];
let gyongki = [1010,1020,1030,1040,1050,1060,1070,1080,1090,1100,1110,1120,1130,1140,1150,1160,1170,1180,1190,1200,1210,1220,1230,1240,1250,1260,1270,1280,1290,1300,1310,2000];
let daejeon = [3000,3010,3020,3030,3040,3050,3060,3070,3080,3090,3100,3110,3120,3130,3140,3150,3160,3300];
let daegu	= [4000,4010,4020,4030,4040,4050,4060,4070,4080,4090,4100,4110,4120,4130,4140,4150,4160,4170,4180,4190,4200,4210,4220,4230];
let	jeounnam = [5000,5010,5020,5030,5040,5050,5060,5070,5080,5090,5100,5110,5120,5130,5140,5150,5160,5170,5180,5190,5200,5210,5220];
let	busan = [6000,7000,7010,7020,7030,7040,7050,7060,7070,7080,7090,7100,7110,7120,7130,7140,7150,7160,7170,7180,7190,7200];
let	jaeju = [8000,8010,8020,8030];
let	jeounbook = [9000,9010,9020,9030,9040,9050,9060,9070,9080,9090,9100,9110,9120,9130];
let	gangwon = [10000,10010,10020,10030,10040,10050,10060,10070,10080,10090,10100,10110,10120,10130,10140,10150,10160,10170];
let chungbuk = [11000,11010,11020,11030,11040,11050,11060,11070,11080,11090,11100,11110];
//지역을 클릭했을 시
$('.tm_cityBox li').click( function() {
	
	let arry = [];
	switch(this.id){
		case 'seoul':
			arry = seoul;
				break;
		case 'gyongki' :
			arry = gyongki;
				break;
		case 'daejeon' :
			arry = daejeon;
				break;
		case 'daegu' :
			arry = daegu;
				break;
		case 'jeounnam' :
			arry = jeounnam;
				break;
		case 'busan' :
			arry = busan;
				break;
		case 'jaeju' :
			arry = jaeju;
				break;
		case 'jeounbook' :
			arry = jeounbook;
				break;
		case 'gangwon' :
			arry = gangwon;
				break;
		case 'chungbuk' :
			arry = chungbuk;
				break;
	};
	$('.tm_placeDetail').children().remove();
	//순차처리를 위한 함수
	for(let i = 0; i<arry.length; i++){
		placeSearch(arry[i]);
		//위 구문을 밖으로 빼면
		// function ex(i);로 하고, function ex(){...};를 따로 작성하여 이 함수를 끌어와서 쓰는 방법으로 쓸 수 있다.
		// 이때 인자값은 i가 아니라 arry[i]가 된다. 구문 안에 있을 때는 arry 값을 바로 가져올 수 있었지만 구문이 밖으로 나간 순간 
		// arry 값을 찾아서 넣어줘야 한다.
	};

	//a ==> 클릭한 지역에 해당하는 터미널정보가 들어감.
});

//출발지
let re_JSON = [];
function placeSearch(i){
	var xhr = new XMLHttpRequest();
	var url = "https://api.odsay.com/v1/api/expressBusTerminals?lang=0&CID="+i+"&apiKey=r7KIUfijmoLkM%2FHfY8GrAHqMy%2FYNJwN2PJeHMK8n%2B%2Fk";
	xhr.open("GET", url, true);
	xhr.onreadystatechange = function() {
		if (xhr.readyState == 4 && xhr.status == 200) {
			 resultJSON = JSON.parse(xhr.responseText).result;
			for(let j=0; j<resultJSON.length; j++){
				$('.tm_placeDetail').append('<li value='+resultJSON[j].stationID+'>'+resultJSON[j].stationName.replaceAll("터미널","").replaceAll("정류장","").replaceAll("정류소","").replaceAll("환승","")+'</li>');

				if(resultJSON[j].haveDestinationTerminals)
					re_JSON.push(resultJSON[j]);
			}

			$('.tm_placeDetail li').click(function(){
				$('.pa').removeClass("disabled");
				$('.ps').addClass("disabled");
					resultSearchPlace($(this));
				
			});
		
			
		}
	}
	xhr.send();
};

//도착지
function resultSearchPlace(obj){

	$('#tm_start').text(obj.text());
	$('#tm_start_id').val(obj.val());
	
	$('.ps').addClass("disabled");
	$('#tm_place_start').css("box-shadow","none");
	$('.pa').css("box-shadow","1px 1px 7px teal");
	//1. 지역선택을 감춘다	
	$('.tm_cityBox').css("display","none");
	$('.tm_placeDetail').css("width","100%");
	
	
	$('.tm_placeDetail').children().remove();
	//this의 val값으로 re_JSON에서 동일한 stationID를 찾는다.
	for(let y = 0; y<re_JSON.length; y++){
		if(obj.val() == re_JSON[y].stationID){
			for(let s = 0; s<re_JSON[y].destinationTerminals.length; s++){
				$('.tm_placeDetail').append('<li value='+re_JSON[y].destinationTerminals[s].stationID+'>'+re_JSON[y].destinationTerminals[s].stationName.replaceAll("터미널","").replaceAll("고속버스","").replaceAll("정류장","").replaceAll("정류소","").replaceAll("환승","")+'</li>');
			}
			break;
		}
	}
	if('.tm_placeDetail li').text() == "")
		alert("도착정보가 없습니다.");
	$('.tm_placeDetail li').click(function(){
		if($('#tm_start').text() != null && $('#tm_start_id').val() != null){
			$('#tm_arrive').text($(this).text());
			$('#tm_arrive_id').val($(this).val());
		}
		
		$('#tpm').css("display","none");
		$('#bu_start_modal').text($('#tm_start').text());
		$('#bu_start_value').val($('#tm_start_id').val());
		$('#bu_arrive_modal').text($('#tm_arrive').text());
		$('#bu_arrive_value').val($('#tm_arrive_id').val());
				
	});
	//그리고 찾은 index의 destinationTerminals 하위에 있는 stationID, stationName으로 li를 만들어준다. 

	//re_JSON=[];
}

// 물어보기
$('.corse').click(function(){
	
// 	var corseCheck = $(this).find($('radio'));
	//find(".corse:radio") 하위에 있는 .couse의 radio를 찾는 뜻
	//find 자체가 하위에 것을 찾는 함수 -> 그렇기에 find가 아닌 attr을 써줘야한다.
	if($(this).attr("id") == "double"){

		$('.arriveBox').css("display","block");
	}else{
		$('.arriveBox').css("display","none");
	}
})
//조회하면 배차시간표로 데이터를 넘겨줌
$('#searchComplete').click(function(){
	window.location.href="/project/traffic/scheduel?st="+$('#bu_start_modal').text()+"&sv="+$('#bu_start_value').val()+"&at="+$('#bu_arrive_modal').text()+"&av="+$('#bu_arrive_value').val()+"&sdv="+$('#startDay').val();
})
</script>
<!-- datepicker -->
<script>
    $( "#startDay" ).datepicker({
      showOn: "button",
      buttonImage: "/project/resources/img/calender.png",
      buttonImageOnly: true,
      buttonText: "Select date",
      dateFormat: "yy-mm-dd",
      minDate: new Date()
    });
</script>
</html>

