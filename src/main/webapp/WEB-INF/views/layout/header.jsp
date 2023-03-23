<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<style>
*{margin:0; padding:0; list-style: none;}
a{style: none; margin-left: 20px;}
span{margin: 0px 5px 0px 15px;}

.header_container{
	width:100%; height:150px; border: 1px solid #000; 
}
.header{
	width:95%; height:140px; 
	border-bottom: 1px solid skyblue; border-left: 1px solid skyblue; border-right: 1px solid skyblue;
	box-shadow: 5px 5px 5px skyblue; 
	margin: 2px 20px 0px 40px; position: fixed; display: flex; 
	font-size: 30px; font-weight: bold; line-height: 30px; 
}
#logo{
	width: 10%; height: 10%;
	
}
</style>
<head>
<meta charset="UTF-8">

</head>
<nav class="header_container">
	<ul class="header">
		<li>
			<a href="#" class="home_link" type="button">
				<img alt="" src="" id="logo" >
			</a>
		</li>	
		<li>
			<a href="#" class="h_link">호텔</a>
		</li>	
		<li>
			<a href="#" class="m_link">모텔</a>
		</li>
		<li>
			<a href="#" class="p_link">펜션</a>
		</li>
		<li>
			<a href="#" class="t_link">고속버스</a>
		</li>
		<li>
			<a href="#" class="b_link">게시판</a>
		</li>
		<li>
			<span>
				<img alt="" src="">장바구니
			</span>
		</li>
		<li>
			<span>
				<img alt="" src=""> 회원
			</span>
		</li>
		<li>
			<span>
				<img alt="" src="">사업자
			</span>
		</li>
	</ul>
</nav>	
<body>

</body>
</html>