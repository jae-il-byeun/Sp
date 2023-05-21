<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page session="false" %>
<html>

<script src="/project/resources/js/pagination.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/paginationjs/2.1.4/pagination.css"/>

<meta name="viewport" content="width=device-width, initial-scale=1">
<!--   <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"> -->
<!--   <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.4/dist/jquery.slim.min.js"></script> -->
<!--   <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script> -->
<!--   <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script> -->
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
	width: 100%; height:100%; box-sizing:border-box;	padding:2px 130px 2px 170px;
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
.board_link{
	vertical-align: middle;
	margin-left:0px;
}
/* 게시판 Box */
#board_contentBox{
	width:95%; height:770px;
	margin-left:50px;
	border: 1px solid #ddd; border-radius: 7px; 
	box-shadow: 1px 1px 1px #ddd;
	position:relative;
}
#board_Listbox{
	min-height:200px;
}
#board_Listbox th{
	box-sizing: border-box; padding-left: 20px; padding-top: 10px;
	font-size: 20px;
}
#border_HeadText{
	margin-left: 10px;
}
.board_list_header{
	width:100%; height:30px;
	border-top: 1px solid #ddd; border-bottom: 1px solid #ddd;
	font-size:24px;
	
}
.board_list_header_text{
	width: 225px;
	text-align: center;
}
.blht1{
	width: 120px;
}
.blht2{
	width: 160px;
}
.blht3{
	width: 525px;
}
.board_list_header{
}

/* 게시판 리스트 헤드 */
.border_ListName{
}
.border_ListW{
}
.border_ListPersent{
}
/* 게시판 리스트 */
.board_List{
	height:60px;
	text-align: center;
	border-bottom: 1px solid #ddd;
}
.list_search{
	width:100%; height:50px;
 	display: flex;
 	box-sizing: border-box; padding-left:24%;
 	
 }
 .search_button_box{
 	width:5%; height:5%;
 }
 
 .btn_write{
 	width:100%; height:100%;
 	border:1px solid #ddd; border-radius: 7px;
 	background-color: skyblue; color: #fff; font-size:25px;
 	
 	margin-right:10px;
 }
 .list_type_name{
 	width:12%;
 	font-size:20px;
 	padding-left:2px;
 }
 .list_search_text{
 	width:40%;
 }
 .btn_search{
 	width:90px; height:50px;
 	border:1px solid #ddd; border-radius: 7px;
 	background-color: green; color: #fff;
 	font-size:30px;
 }
 .paginationBox{
 	box-sizing: border-box; padding:0px 200px; margin-top:5px;
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

			<div id="board_contentBox">
				<table id="board_Listbox">
					<thead>

						<tr style="height: 10px;"></tr>
						<tr class="board_list_header">
						
							<td class="board_list_header_text blht1">번호</td>
							<td class="board_list_header_text blht2">분류</td>
							<td class="board_list_header_text blht3">제목</td>
							<td class="board_list_header_text">작성자</td>
							<td class="board_list_header_text blht2">추천/비추천</td>
							<td class="board_list_header_text">작성일</td>
							<td class="board_list_header_text blht1">조회수</td>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${board_list}" var="board" >
							<tr class="board_List">
								<td id="bo_num">${board.bo_num}</td>
								<td id="bo_bt_num">
									<c:if test="${board.bo_bt_num == 0}">공지사항</c:if>
									<c:if test="${board.bo_bt_num == 1}">자유게시판</c:if>
								
								</td>
								<td id="bo_name">
									<a href="<c:url value='/board/detail/${board.bo_num}'></c:url>"> ${board.bo_name}</a>
								</td>
								<td>
									<c:if test="${board.bo_me_id != null}">${board.bo_me_id}</c:if>
									<c:if test="${board.bo_bi_id != null}">${board.bo_bi_id}</c:if>
								</td>
								<td>
									<c:if test="${board.bo_bt_num == 0}">-</c:if>
									<c:if test="${board.bo_bt_num == 1}">${board.bo_up}/${board.bo_down}</c:if>
								</td>
								<td>${board.bo_record_date}</td>
								<td>${board.bo_views}</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
				<div class="paginationBox" id="pagination">			
					<ul class="pagination justify-content-center">
						<c:if test = "${pm.prev}">
							<li class="page-item"><a class="page-link" href="<c:url value='/board/list?page=${pm.startPage-1}&search=${pm.cri.search}&type=${pm.cri.type}'></c:url>">이전</a></li>
<!-- 							 -->
						</c:if>
						<c:forEach begin="${pm.startPage}" end= "${pm.endPage}" var="i">
							<li class="page-item <c:if test="${pm.cri.page == i}">active</c:if>">
								<a class="page-link" href="<c:url value='/board/list?page=${i}&search=${pm.cri.search}&type=${pm.cri.type}'></c:url>">${i}</a>
<!-- 								 -->
							</li>
						</c:forEach>
						
						<c:if test = "${pm.next}">
							<li class="page-item">
								<a class="page-link" href="<c:url value='/board/list?page=${pm.endPage+1}&search=${pm.cri.search}&type=${pm.cri.type}'></c:url>">다음</a>
<!-- 								} -->
							</li>
						</c:if>
					</ul>
				</div>
				<div style="display: flex;">
					<c:if test="${aunch != 0}">
						<a href="<c:url value="/board/insert"></c:url>">
							<button class="btn_write">글쓰기</button>
						</a>
					</c:if>
					<form class="list_search" action="<c:url value='/board/list'></c:url>">
						<select class="list_type_name" name="type">
							<c:forEach items="${btList}" var="board" >
								<c:if test="${board.bt_num == 0 }">
									<option value="${board.bt_num}">공지사항</option>
								</c:if>
								<c:if test="${board.bt_num == 1 }">
									<option value="${board.bt_num}">자유게시판</option>
								</c:if>
								
							</c:forEach>
						</select>
						<input type="text" class="list_search_text" placeholder="Search" name="search" value="${page.cri.search}">
						<div class="search_button_box">
							<button class="btn_search" type="submit">검색</button>
						</div>
					</form>
					
				</div>
			</div>
		</div>
		
	</div>
</div>
</body>

</html>
