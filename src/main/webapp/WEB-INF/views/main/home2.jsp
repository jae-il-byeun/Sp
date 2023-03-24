<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page session="false" %>
<html>

<style>
*{margin:0px; padding:0px;}
li{list-style: none;}
a{text-decoration:none;}

.main_container{
	width: 100%; height:1980px; 
	
}
.title_container{
	width: 100%; height:25%; box-sizing:border-box;
	border: 1px solid #ddd; 
	
	
}
.login_box{
	width: 10%; height:15%; 
	margin-top:10px; display:flex;  float: right;
}
.login_link{
	width:28%; height:95%;  
	margin-right:10px;
}
.login_link span{
	display:block;
}
.title_box{ 
	width:100%; height:50%; box-sizing: border-box;
	 text-align: center; line-height: 250px; padding: 50px 300px 0px;

}
#title_text{font-size: 100px; font-weight: bold; }

.main_searchBox{
	width: 100%; height:13%; 
	text-align: center; box-sizing: border-box; padding: 0px 500px;
}
#main_search{margin-top: 5px;
	width:70%; height:75%; border:1px solid #ddd; border-radius: 7px;

}

</style>
<head>

</head>
<body>
<div class="main_container">
	<div class="title_container">
		<ul class="login_box">
			<li class="login_link">
				<a href="#">
					<img alt="" src="">장바구니
					
				</a>
			</li>
			<li class="login_link">
				<a href="#">
					<img alt="" src="">
					<span>사용자</span>
				</a>
			</li>
			<li class="login_link">
				<a href="#">
					<img alt="" src="">
					<span>사업자</span>
				</a>
			</li>
		</ul>
		<div class="title_box">
			<a href="#">
				<span id="title_text">Repose</span>
			</a>
		</div>
		<div class="main_searchBox">
			<input type="text" id="main_search">
			<img alt="" src="">
		</div>
		<div class="catalog_box">
			<ul class="catalog_link">
				<li class="catalog">
					<img alt="" src="" class="catalog_icon">
					<span>호텔</span>
				</li>
				<li class="catalog">
					<img alt="" src="" class="catalog_icon">
					<span>모텔</span>
				</li>
				<li class="catalog">
					<img alt="" src="" class="catalog_icon">
					<span>펜션</span>
				</li>
				<li class="catalog">
					<img alt="" src="" class="catalog_icon">
					<span>교통</span>
				</li>
				<li class="catalog">
					<img alt="" src="" class="catalog_icon">
					<span>게시판</span>
				</li>
			</ul>
			
		</div>
	</div>
</div>
<%@ include file = "/WEB-INF/views/layout/footer.jsp" %>
</body>
</html>
