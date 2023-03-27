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
.product_Boxcontainer{
	width:100%; height:100%;
	box-sizing: border-box; padding:2px 150px;
}
.product_container{	
	width: 100%; height:100%;
	 box-sizing:border-box; margin-top: 130px; 
}
.product_titleBox{
	width:100%; height:30%;  border-radius: 5px; font-size: 20px;
	box-sizing:border-box; padding: 10px 10px 5px 15px; 
}
#ht_title{margin:5px 0px 10px 5px;}
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
	box-sizing: border-box; padding: 2px 10px 2px 10px; display:flex;
}
.product_listBox{
	width:100%; height:100%;
	box-sizing: border-box;  margin-right: 5px;
}
.product{
	width:100%; height:100%; 
	border:1px solid #ddd; border-radius:5px; box-shadow: 1px 1px 3px #ddd;
	display: flex;
}
.product_semi{
	width:100%; height:100%;
}

.product_mapBox{
	width:100%; height:100%; border: 1px solid #ddd;
	box-sizing: border-box; background-color: #ddd;
}


</style>
<head>

</head>
<body>
<div class="product_Boxcontainer">
	<div class="product_container">
	
		<div class="product_titleBox">
			<h1 id="ht_title">호텔</h1>
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
		
		<div class="product_contentBox">
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
								<img alt="" src="">
								<div class="product_semi">
									<a>호텔이름</a>
									<img alt="" src="">좋아요
									<img alt="" src="" >호텔별점
									<span>평점</span>
									<span>호텔가격</span>
								
								</div>
									
							</li>
							
						</ul>
						
					</div>
				</div>
			</div>
			<div class="product_mapBox">
						
			</div>
		</div>
	</div>
</div>
</body>
</html>
