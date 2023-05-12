<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page session="false" %>
<html>
<link rel="stylesheet" href="<c:url value='/resources/css/jquery-ui.min.css'></c:url>">

    
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
.board_titleBox{
	width:100%; height:30%;  
	border-bottom:1px solid #ddd; border-top: none; border-radius: 5px;
	box-shadow: 1px 1px 5px gray; font-size: 20px;
	box-sizing:border-box; padding: 10px 10px 5px 15px; 
}
/* ================================================================================================================ */
.main_contentContainer{
	width:100%; height:70%;
	display:flex;
	margin-top:10px;
}
.board_typeBox{
	width:15%; height:700px;
	border: 1px solid #ddd; border-radius: 7px; box-shadow: 1px 1px 1px #ddd;
}
.board_type{
	font-size: 25px; text-align: center;
	cursor:pointer;
}
.board_type a{
	vertical-align: middle;
	margin-left:0px;
}
/* 게시판 Box */
#board_contentBox{
	width:80%; height:700px;
	margin-left:60px;
	border: 1px solid #ddd; border-radius: 7px; box-shadow: 1px 1px 1px #ddd;
}
#board_Listbox{
	min-height:200px;
}
#border_HeadText{
	
}
.board_list_header{
	width:100%; height:30px;
	border:1px solid #ddd;
	font-size:24px;
}
.board_list_header td{
	width:130px;
}
.board_list_header 
/* 게시판 리스트 헤드 */
.border_ListName{
}
.border_ListW{
}
.border_ListPersent{
}
/* 게시판 리스트 */
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
	
		<div class="board_titleBox">
			<h2>게시판</h2>
		</div>
		<div class="main_contentContainer">	
			<ul class="board_typeBox">
				<li class="board_type">
					<hr>
				</li>
				<li class="board_type">
					<a>공지사항</a>
					<hr>
				</li>
				<li class="board_type">
					<a>자유게시판</a>
					<hr>
				</li>
				<li class="board_type">
					<a>QnA</a>
					<hr>
				</li>
			</ul>
			<div id="board_contentBox">
				<table id="board_Listbox">
					<thead>
						<tr id="board_HeadText">
							<th>
								<h2>게시판</h2>
							</th>
						</tr>
						<tr class="board_list_header">
							<td>번호</td>
							<td>분류</td>
							<td>제목</td>
							<td>작성자</td>
							<td>추천/비추천</td>
							<td>작성일</td>
							<td>조회수</td>
						</tr>
					</thead>
					<tbody>
<%-- 						<c:forEach items="${board_list}" var="board" varStatus="bo"> --%>
<!-- 							<tr class="board_List"> -->
<%-- 								<td id="board_number">${board.bo_num}</td> --%>
<%-- 								<td id="board_type">${board.bo_type}</td> --%>
<%-- 								<td id="board_title">${board.bo_title}</td> --%>
<%-- 								<td id="board_writer">${board.bo_writer}</td> --%>
<%-- 								<td id="board_up_down">${board.bo_up}/${board.bo_down}</td> --%>
<%-- 								<td id="board_writeDay">${board.bo_record_date}</td> --%>
<%-- 								<td id="board_click">${board.bo_views}</td> --%>
<!-- 							</tr> -->
<%-- 						</c:forEach> --%>
					</tbody>
				</table>
<!-- 				<ul class="pagination"> -->
<%-- 					<c:if test="${page.prev}"> --%>
<%-- 						<li class="page-item"><a class="page-link" href="<c:url value='Board/list?page=${page.startPage -1 }@search=${page.cri.search}&type=${page.cri.type}'></c:url>">이전</a></li> --%>
<%-- 					</c:if> --%>
<%-- 					<c:forEach begin="${page.startPage}" end="${page.endPage}" var="i"> --%>
<%-- 						<li class="page-item<c:if test="${page.cri.page == i }">active</c:if>"> --%>
<%-- 							<a class="page-link" href="<c:url value='/Board/list?page=${i}&search=${page.cri.search}&type= ${page.cri.type}'></c:url>">다음</a> --%>
<!-- 						</li> -->
<%-- 					</c:forEach> --%>
<%-- 					<c:if test="${page.next}"> --%>
<!-- 						<li class="page-item"> -->
<%-- 							<a class="page-link" href="<c:url value='/Board/list?page=${page.endPage+1}&search=${page.cri.search}&type=${page.cri.type}'></c:url>">다음</a> --%>
<!-- 						</li> -->
<%-- 					</c:if> --%>
<!-- 				</ul> -->
<%-- 				<form class="list_search" action="<c:url value='/Board/list'></c:url>"> --%>
<!-- 					<select class="list_type_name" name="type"> -->
<!-- 						<option value="0"></option> -->
<%-- 						<c:forEach items="${typeList}" var="type"> --%>
<%-- 							<option value="${type.bt_num}" <c:if test="${page.cri.type == type.bt_num}">selected</c:if>>${type.bt_name}</option> --%>
<%-- 						</c:forEach> --%>
<!-- 					</select> -->
<%-- 					<input type="text" class="list_search_text" placeholder="Search" name="search" value="${page.cri.search}"> --%>
<!-- 					<div class="search_button_box"> -->
<!-- 						<button class="btn_search" type="submit">검색</button> -->
<!-- 					</div> -->
<!-- 				</form> -->
<%-- 				<c:if test="${user != null }"> --%>
<%-- 					<a href="<c:url value="/Board/insert"></c:url>"> --%>
<!-- 						<button class="btn_write">글쓰기</button> -->
<!-- 					</a> -->
<%-- 				</c:if> --%>
			</div>
		</div>
		
	</div>
</div>
</body>
<script>

</script>
</html>