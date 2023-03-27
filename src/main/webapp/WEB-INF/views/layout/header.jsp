<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<style>
*{margin:0; padding:0; list-style: none; }
a{text-decoration: none; margin-left: 20px;}


.h_linkIcon{width:45%;}


.header_container{
	width:100%; height:140px; 
	position: fixed; 
	
}
#header_box{
	width:100%; height:130px; 
	box-sizing: border-box; padding: 2px 150px; margin-top:-2px;
}
#header_menu{
	width:100%; height:120px; 
	 border-radius: 2px; color:#fff;
	box-shadow: 5px 5px 5px #ddd; box-sizing: border-box; padding: 25px 50px 5px;
	display: flex;
	background-image:url("/project/resources/img/night_sky.jpg");
}
.h_link span{color:#fff;}
#home_link{
	line-height: 70px; margin-right: 20%; font-size: 30px;
}
.h_link{
	margin-right:1%; width:10%; text-align:center;
}
.h_link_text{display:block; margin-left:25px; font-size:15px;}
.h_link_textboard{display:block; margin-left:23px; font-size:15px; text-align:center;}

#h_link_board{
	margin-right:25%;
}
.h_login{width:60px; box-sizing:border-box; padding-top:15px; margin-right: 8px;}
.h_login span{color:#fff}
.hl_link{margin-left:8px; }
.header_loginIcon{ margin-right:17px; width:67%; box-sizing: border-box;}
#mli_icon{margin-left: 3%; width:65%; text-align: center;}
.h_cataloglogin_text{ display:block; text-align: center; font-size: 13px}


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
					<img alt="" src="/project/resources/img/hotel.png" class="h_linkIcon">
					<span class="h_link_text">호텔</span> 
				</a>
			</li>	
			<li class="h_link">
				<a href="#">
					<img alt="" src="/project/resources/img/motel.png" class="h_linkIcon">
					<span class="h_link_text">모텔</span> 
				</a>
			</li>
			<li class="h_link">
				<a href="#" >
					<img alt="" src="/project/resources/img/pension.png" class="h_linkIcon">
					<span class="h_link_text">펜션</span> 
				</a>
			</li>
			<li class="h_link">
				<a href="#">
					<img alt="" src="/project/resources/img/bus.png" class="h_linkIcon">
					<span class="h_link_text">교통</span> 
				</a>
			</li>
			
			<li  class="h_link" id="h_link_board">
				<a href="#" >
					<img alt="" src="/project/resources/img/board.png" class="h_linkIcon">
					<span class="h_link_textboard">게시판</span> 
				</a>
			</li>
			
			<li class="h_login">
				<a href="#" class="hl_link">
					<img alt="" src="/project/resources/img/basket.png" class="header_loginIcon">
					<span class="h_cataloglogin_text">장바구니</span> 
				</a>
			</li>
			<li class="h_login">
				<a href="#" class="hl_link">
					<img alt="" src="/project/resources/img/member.png" id="mli_icon">
					<span class="h_cataloglogin_text">회원</span> 
				</a>
			</li>
			<li class="h_login">
				<a href="#" class="hl_link">
					<img alt="" src="/project/resources/img/boss.png" class="header_loginIcon">
					<span class="h_cataloglogin_text">사업자</span> 
				</a>
			</li>
	
		</ul>
	</div>
</nav>	
<body>

</body>
</html>