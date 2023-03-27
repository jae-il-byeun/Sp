<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<style>
*{margin:0; padding:0; list-style: none;}
a{text-decoration: none; margin-left: 20px;}
span{margin: 0px 5px 0px 15px;}


.header_container{
	width:100%; height:140px; 
	position: sticky; 
}
#header_box{
	width:100%; height:130px; 
	
	box-sizing: border-box; padding: 2px 150px;

	
}
#header_menu{
	width:100%; height:120px; 
	border: 1px solid purple; border-radius: 2px;
	box-shadow: 5px 5px 5px #ddd; box-sizing: border-box; padding: 10px 50px;
	display: flex;
	background-image:url("resources/img/night_sky.jpg");
}
#home_link{
	line-height: 80px; margin-right: 20%; font-size: 30px;
}
.h_link{
	margin-right:3%;
}
#hl_link{
	margin-right:25%;
}
.header_login{
	
}
</style>
<head>
<meta charset="UTF-8">

</head>

<nav class="header_container">
	<div id="header_box">
		<ul id="header_menu">
			<li class="h_link">
				<a href="#" id="home_link" >
				<span>Repose</span> 
				</a>
			</li>	
			<li class="h_link">
				<a href="#" >
					<img alt="" src="">
					<span>호텔</span> 
				</a>
			</li>	
			<li class="h_link">
				<a href="#">
					<img alt="" src="">
					<span>모텔</span> 
				</a>
			</li>
			<li class="h_link">
				<a href="#" >
					<img alt="" src="">
					<span>펜션</span> 
				</a>
			</li>
			<li class="h_link">
				<a href="#">
					<img alt="" src="">
					<span>교통</span> 
				</a>
			</li>
			
			<li  class="h_link" id="hl_link">
				<a href="#" >
					<img alt="" src="">
					<span>게시판</span> 
				</a>
			</li>
			<li class="header_login">
				<a href="#" class="hl_link">
					<img alt="" src="">
					<span>장바구니</span> 
				</a>
			</li>
			<li class="header_login">
				<a href="#" class="hl_link">
					<img alt="" src="">
					<span>회원</span> 
				</a>
			</li>
			<li class="header_login">
				<a href="#" class="hl_link">
					<img alt="" src="">
					<span>사업자</span> 
				</a>
			</li>
	
		</ul>
	</div>
</nav>	
<body>

</body>
</html>