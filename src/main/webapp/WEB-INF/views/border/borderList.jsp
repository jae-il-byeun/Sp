<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page session="false" %>
<html>
<link rel="stylesheet" href="<c:url value='/resources/css/jquery-ui.min.css'></c:url>">
<script src="https://cdn.jsdelivr.net/npm/swiper@9/swiper-element-bundle.min.js"></script>
  <!-- Link Swiper's CSS -->
 <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.css" />
<!-- jQuery와 jQuery Modal JavaScript 파일 추가 -->

    
<style>
*{margin:0px; padding:0px;}
li{list-style: none;}
a{text-decoration:none;}
body{ font-family: 'GyeonggiTitleM';}
@font-face {
    font-family: 'GyeonggiTitleM';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_one@1.0/GyeonggiTitleM.woff') format('woff');
    font-weight: normal;
    font-style: normal;
}
/* ================================================================================================================ */

.main_container{
	width: 100%; height:1700px; box-sizing:border-box;	padding:2px 130px 2px 170px;
}
.main_innerContainer{
	width: 100%; 
	 box-sizing:border-box; margin-top: 130px; 
}
.border_titleBox{
	width:100%; height:30%;  
	border-bottom:1px solid #ddd; border-top: none; border-radius: 5px;
	box-shadow: 1px 1px 5px gray; font-size: 20px;
	box-sizing:border-box; padding: 10px 10px 5px 15px; 
}
.main_contentContainer{
	width:100%; height:70%;
	display:flex;
}
.border_listBox{
	width:30%; height:200px;
	border: 1px solid #ddd; border-radius: 7px; box-shadow: 1px 1px 1px #ddd;
}
/* 쿠폰 외부 Box */
#border_contentBox{
	width:70%; height: 200px;
	border: 1px solid #ddd; border-radius: 7px; box-shadow: 1px 1px 1px #ddd;
}
#border_Listbox{
	min-height:200px;
}
#border_HeadText{
	
}
#border_ListHead{

}
/* 쿠폰 리스트 헤드 */
.border_ListName{
}
.border_ListW{
}
.border_ListPersent{
}
/* 쿠폰 리스트 */
.border_List{
}
#border_name{
}
#border_w{
}
#border_persent{
}
</style>
<head>
</head>
<body>
<div class="main_container">
	<div class= "main_innerContainer">
		<div class="border_titleBox">
			<h2>게시판</h2>
		</div>
		<div class="main_contentContainer">	
			<ul class="border_listBox">
				<li class="border_list">
					<a>공지사항</a>
				</li>
				<li class="border_list">
					<a>자유게시판</a>
				</li>
				<li class="border_list">
					<a>QnA</a>
				</li>
			</ul>
			<div id="border_contentBox">
				<table id="border_Listbox">
					<thead>
						<tr id="border_HeadText">
							<th>
								<h2>게시판</h2>
							</th>
						</tr>
						<tr>
							<th>번호</th>
							<th>게시판</th>
							<th>제목</th>
							<th>작성자</th>
							<th>추천/비추천</th>
							<th>작성일</th>
							<th>조회수</th>
						</tr>
					</thead>
					<tbody>
						<tr class="border_List">
							<td id="border_number"></td>
							<td id="border_type"></td>
							<td id="border_name"></td>
							<td id="border_writer"></td>
							<td id="border_good_bed"></td>
							<td id="border_writeDay"></td>
							<td id="border_click"></td>
						</tr>
					</tbody>
				</table>

			</div>
			
		</div>
	</div>
	
</div>
</body>
<script>

</script>
</html>
