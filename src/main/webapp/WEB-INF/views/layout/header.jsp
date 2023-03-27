<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<style>
*{margin:0; padding:0; list-style: none; }
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
	border: 1px solid purple; border-radius: 2px; color:#fff;
	box-shadow: 5px 5px 5px #ddd; box-sizing: border-box; padding: 10px 50px;
	display: flex;
	background-image:url("/project/resources/img/night_sky.jpg");
}
.h_link span{color:#fff;}
#home_link{
	line-height: 80px; margin-right: 20%; font-size: 30px;
}
.h_link{
	margin-right:3%;
}
#hl_link{
	margin-right:25%;
}
.h_login span{color:#fff}
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
					<img alt="" src="hotel.jpg">
					<span>호텔</span> 
				</a>
			</li>	
			<li class="h_link">
				<a href="#">
					<img alt="" src="/project/resources/img/motel.jpg">
					<span>모텔</span> 
				</a>
			</li>
			<li class="h_link">
				<a href="#" >
					<img alt="" src="/project/resources/img/pension.jpg">
					<span>펜션</span> 
				</a>
			</li>
			<li class="h_link">
				<a href="#">
					<img alt="" src="/project/resources/img/bus.jpg">
					<span>교통</span> 
				</a>
			</li>
			
			<li  class="h_link" id="hl_link">
				<a href="#" >
					<img alt="" src="/project/resources/img/board.jpg">
					<span>게시판</span> 
				</a>
			</li>
			<li class="h_login">
				<a href="#" class="hl_link">
					<img alt="" src="/project/resources/img/basket.jpg">
					<span>장바구니</span> 
				</a>
			</li>
			<li class="h_login">
				<a href="#" class="hl_link">
					<img alt="" src="/project/resources/img/member.jpg">
					<span>회원</span> 
				</a>
			</li>
			<li class="h_login">
				<a href="#" class="hl_link">
					<img alt="" src="/project/resources/img/boss.jpg">
					<span>사업자</span> 
				</a>
			</li>
	
		</ul>
	</div>
</nav>	
<body>

</body>
</html>