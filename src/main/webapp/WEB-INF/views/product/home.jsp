<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page session="false" %>
<html>

<style>
*{margin:0px; padding:0px;}
li{list-style: none;}
.main_container{
	width:100%; height:100%; border:1px solid purple; 
	
}
.title_container{
	width:100%; height:550px; border: 1px solid tomato;
	background-color: skyblue;

	
}
.login_box{
	width:100%; height:80px;
	  margin-top: 15px; 
}
.loginLink{
	width:5%; height:100%; border: 1px solid tan; 
	margin-right: 10px;  float:right;

}


.main_title{
	width: 100%; height:40%; text-align:center; 
	
}
.title{ 
	cursor: pointer; font-size: 130px; 
}
.main_search_box{
	width:100%; height:13%; border: 1px solid royalblue;
	text-align: center;
}
.main_search{
	width: 30%; height:75%; border: 1px solid #000;  border-radius: 8px;
	margin-top: 10px;
}

.blink{width:21%; height:100%;}
.catalogLink_box{
	width:100%; height: 35%; border: 1px solid green; 
	display: flex; 
	 
}
.catalog{
	width: 7%; height:90%; border: 1px solid gray;
	vertical-align: middle; margin:15px 0px 0px 17px; 

}
.catalog_icon{
	width: 100%; height:70%; border: 1px solid aqua;
	
}
.catalog span{
display: block; text-align: center; font-size: 20px;
}
.ad_container{
	width: 100%; height:100%; border:1px solid blue;
	min-width:1580px; position: relative;
}
.ad_box{
	width: 80%; height: 30%; border: 1px solid red;
	margin: 50px 0px 0px 200px; 
}
</style>
<head>

</head>
<body>
<div class="main_container">
	<div class="title_container">
		<ul class="login_box" >
			<li class="loginLink">
				<a class="basket_link">
					<img alt="" src="">
				</a>
			</li>
			<li class="loginLink">
				<a class="member_link">
					<img alt="" src="">
				</a>
			</li>
			<li class="loginLink">
				<a class="entrepreneur_link">
					<img alt="" src="">
				</a>
			</li>
		</ul>
		<div class="main_title">
			<a href="#" class="title">title</a>
		</div>
		<div class="main_search_box">
			<input type="text" class="main_search">
			<img alt="" src="">
		</div>
		<ul class="catalogLink_box">
			<li class="blink"></li>
			<li class="catalog">
				<label>
					<img alt="" src="" class="catalog_icon">
					<span>호텔</span>
				</label>
			</li>
			<li class="catalog">
				<label>
					<img alt="" src="" class="catalog_icon">
					<span>모텔</span>
				</label>
			</li>
			<li class="catalog">
				<label>
					<img alt="" src="" class="catalog_icon">
					<span>펜션</span>
				</label>
			</li>
			<li class="catalog">
				<label>
					<img alt="" src="" class="catalog_icon">
					<span>고속버스</span>
				</label>
			</li>
			<li class="catalog">
				<label>
					<img alt="" src="" class="catalog_icon">
					<span>게시판</span>
				</label>
			</li>
		</ul>
	</div>
	<div class="ad_container">
		<div class="ad_box">
		
		</div>
		<div class="ad_box">
		
		</div>
		<div class="ad_box">
		
		</div>
	</div>
</div>
<%@ include file = "/WEB-INF/views/layout/footer.jsp" %>
</body>
</html>
