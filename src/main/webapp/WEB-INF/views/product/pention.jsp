<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page session="false" %>
<html>

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

.product_search_mainPlace{
	width:8%; height:10%; 
	border: 1px solid #ddd; border-radius: 7px;
	box-sizing: border-box; margin-right:10px; 
}
.product_search_subPlace{
	width:15%; height: 5%; 
	border: 1px solid #ddd; border-radius: 7px; 
	box-sizing: border-box; margin-right:10px; 
}


.product_contentBox{
	width:100%; height:100%; 
	display:flex;
	box-sizing: border-box; padding: 2px 1px; margin-top: 10px; 
}
.product_mapBox{
	width:50%; height:80%;
	box-sizing: border-box; padding-top:1.6%; margin-right: 5px;

}

.product_listBox{
	width:50%; height:100%;
	box-sizing: border-box; border-top: none;
	
}
.product_list_content{
	width:100%; 

}
.product_split{
 	margin-bottom:5px; margin-right: 22px; 
 	font-size:20px; text-align: right;
}
.product{
	width:99%; height:100%; 
	border:1px solid #ddd; border-radius:10px; box-shadow: 5px 5px 5px #ddd;
	display: flex; margin-bottom:10px;
}
.product_imege{
	width:35%; height:25%; border-radius:10px;
	box-sizing: border-box; padding: 4px; 
}
.like_button{
	width:11%;  
	border: none; background: none;
	vertical-align: middle; cursor: pointer;
	margin-bottom: 7px;
}
.like_icon{
	width:70%; 
	vertical-align: middle;
	margin-left: 260px;
	cursor: pointer;
}

.product_semi{
	width:62%; height:100%; display:block;
	box-sizing: border-box; padding: 10px 0px;
}
.product_title{
	font-size: 25px;
}
.product_detailInfo{
	display:block;
	margin-left: 20px;
}
.product_starPoint{
	margin-right: 0px;
}
.product_priceInsert{
	width:40%; 
	margin: 30px 0px 0px 100px; 
	float: right; text-align:right; color: #000;
	font-size: 30px; font-decoration: none; 
	
}


.map_imege{
	width:100%;  border-radius: 10px;
}
</style>
<head>

</head>
<body>
<div class="product_outterContainer">
	<div class="product_innerContainer">
		<div class="product_titleBox">
			<h1 id="pt_title">펜션</h1>
			<div class="product_placeBox">
				<ul class="product_search_mainPlace">
				<li>
					<span>강원도</span>
				</li>
				<li>
					
				</li>
			</ul>
			<ul class="product_search_subPlace">
				<li>
					<span>가평/원주/문막</span>
				</li>
			</ul>
			<div class="product_search_calender">
				<input type="text" class="dayCheck">
				<span>~</span>
				<input type="text" class="dayCheck">
			</div>
			</div>
		</div>
		
		<div class="product_contentBox">
			<div class="product_mapBox">
						<img alt="" src="/project/resources/img/ex_map.png" class="map_imege">
			</div>
			<div class="product_listBox">
				<div class="product_split">
					<span>정렬기준</span>
					<select>
						<option>인기순</option>
						<option></option>
						<option></option>
						<option></option>
						
					</select>
				</div>
				
				<div class="product_list">
					
					<div class="product_list_content">
						<ul>
							<li class="product">
								<img alt="" src="/project/resources/img/ex_hotel.jpg" class="product_imege">
								<div class="product_semi">
									<a class="product_title">파라다이스 시티</a>
									<button class="like_button" >
										<img alt="" src="/project/resources/img/nomal_like.png" class="like_icon" >
									</button>
									
									<div class="product_detailInfo">
										별점<img alt="" src="" class="product_starPoint">
										<span>4.5/평점</span>
										
									</div>
									<a class="product_priceInsert" href="#">10000원</a> 
								</div>
									
							</li>
							<li class="product">
								<img alt="" src="/project/resources/img/ex_hotel.jpg" class="product_imege">
								<div class="product_semi">
									<a class="product_title">파라다이스 시티</a>
									<button class="like_button" >
										<img alt="" src="/project/resources/img/nomal_like.png" class="like_icon" >
									</button>
									
									<div class="product_detailInfo">
										별점<img alt="" src="" class="product_starPoint">
										<span>4.5/평점</span>
										
									</div>
									<a class="product_priceInsert" href="#">10000원</a> 
								</div>
									
							</li>
							<li class="product">
								<img alt="" src="/project/resources/img/ex_hotel.jpg" class="product_imege">
								<div class="product_semi">
									<a class="product_title">파라다이스 시티</a>
									<button class="like_button" >
										<img alt="" src="/project/resources/img/nomal_like.png" class="like_icon" >
									</button>
									
									<div class="product_detailInfo">
										별점<img alt="" src="" class="product_starPoint">
										<span>4.5/평점</span>
										
									</div>
									<a class="product_priceInsert" href="#">10000원</a> 
								</div>
									
							</li>
							<li class="product">
								<img alt="" src="/project/resources/img/ex_hotel.jpg" class="product_imege">
								<div class="product_semi">
									<a class="product_title">파라다이스 시티</a>
									<button class="like_button" >
										<img alt="" src="/project/resources/img/nomal_like.png" class="like_icon" >
									</button>
									
									<div class="product_detailInfo">
										별점<img alt="" src="" class="product_starPoint">
										<span>4.5/평점</span>
										
									</div>
									<a class="product_priceInsert" href="#">10000원</a> 
								</div>
									
							</li>
							<li class="product">
								<img alt="" src="/project/resources/img/ex_hotel.jpg" class="product_imege">
								<div class="product_semi">
									<a class="product_title">파라다이스 시티</a>
									<button class="like_button" >
										<img alt="" src="/project/resources/img/nomal_like.png" class="like_icon" >
									</button>
									
									<div class="product_detailInfo">
										별점<img alt="" src="" class="product_starPoint">
										<span>4.5/평점</span>
										
									</div>
									<a class="product_priceInsert" href="#">10000원</a> 
								</div>
									
							</li>
							<li class="product">
								<img alt="" src="/project/resources/img/ex_hotel.jpg" class="product_imege">
								<div class="product_semi">
									<a class="product_title">파라다이스 시티</a>
									<button class="like_button" >
										<img alt="" src="/project/resources/img/nomal_like.png" class="like_icon" >
									</button>
									
									<div class="product_detailInfo">
										별점<img alt="" src="" class="product_starPoint">
										<span>4.5/평점</span>
										
									</div>
									<a class="product_priceInsert" href="#">10000원</a> 
								</div>
									
							</li>
						</ul>
						
					</div>
				</div>
			</div>
			
		</div>
	</div>
</div>
</body>
</html>
