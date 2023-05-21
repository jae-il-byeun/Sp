<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page session="false" %>
<html>

  <!-- Link Swiper's CSS -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.css" />
<script src="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.js"></script>
<!-- jQuery와 jQuery Modal JavaScript 파일 추가 -->
<!-- ckeditor -->
<script	src="https://cdn.ckeditor.com/ckeditor5/37.0.1/classic/ckeditor.js"></script>
<script src="https://cdn.ckeditor.com/ckeditor5/34.0.0/classic/translations/ko.js"></script>
<meta name="viewport"
	content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1" />
    
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

.main_contentContainer{
	width:100%; height:70%;
	box-sizing: border-box; padding: 0px 10px;
	 border-radius: 5px;
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
/* ================================================================================================================ */
.board-content{
	width:100%; height: 50px;
}
.type{
	height: 30px;
	font-size: 17px;
	padding-top:5px;
}
.title{
	height:75px;
	font-size:50px;
	margin-bottom:10px; padding-left:5px;
	border: 1px solid #ddd; border-radius: 5px;
	box-shadow:1px 1px 1px #ddd;
	vertical-align:middle;
}
.writer{
	font-size:20px;
}
.writer, .record, .view{
	display: inline;
	margin-left:10px;
}
.file{
	padding-left: 10px;
	margin-top:10px;
}
.content{
	font-size: 20px;
	min-height: 500px; height:100%;
	padding: 0px 0px 0px 10px;
	border: 1px solid #ddd; border-radius: 5px;
	box-shadow:1px 1px 1px #ddd;
}
.image{
	height:100%;
	
}
.imgList{
	display:flex;
}
.deleteUpdate{
	float:right;
	margin-left: 10px;
	
}
.btn-update{
	width:70px;
	background-color: skyblue; color:#fff;
	border: 1px solid #fff;
}
.btn-delete{
	width:70px;
	background-color: tomato; color:#fff;
	border: 1px solid #fff;
}
</style>
<head>
</head>
<body>
<div class="main_container">
	<div class= "main_innerContainer">
		<div class="board_titleBox">
			<h2>게시판- </h2>
		</div>
		<div class="main_contentContainer">	
			<div class="board-content type">
				<label >게시판:</label>
				<span >${board.bt_name}</span>
			</div>
			
			<div class="board-content title" >
				<label >제목:</label>
				<span>${board.bo_name}</span>
			</div>
			<div class="board-content writer" >
				<label>작성자:</label>
				<span>${board.bo_me_id}</span>
			</div>
			<div class="board-content record" >
				<span>${board.bo_record_date}</span>
			</div>
			<div class="board-content view" >
				<label >조회수:</label>
				<span>${board.bo_views}</span>
			</div>
			<c:if test="${board.bo_bt_num < 1}">
				
				<div class="board-content file">
					<label>첨부파일:</label>
					<c:if test="${bff == null} ">첨부파일 없음</c:if>
					<c:forEach items ="${bff}" var="file">
						<c:if test="${file.bf_type == '첨부파일'}">
							<a href="<c:url value='/download${file.file_name}'></c:url>" download="${file.file_originName}">${file.file_originName}</a>
						</c:if>
					</c:forEach>	
				</div>
				
			</c:if>
			<div class="board-content content">
						<label for="content">내용:</label>
						<div style="min-height: 400px">${board.bo_content}</div>
			</div>
			<c:if test="${board.bo_bt_num <= 1}">
					<div id="image">
						<div class="board-content image">
							<label>이미지</label>
								<div class="imgList">
								  	<c:forEach items="${bff}" var="file">
								  		<c:if test="${file.bf_type == '이미지'}">
									  		<div>
												<img src="<c:url value="/download${file.file_name}"></c:url>" height="200" width="auto">
											</div>	
										</c:if>
									</c:forEach>
								</div>
		
						</div>
					</div>
				
			</c:if>
			<c:if test="${board.bo_bt_num == 1}">
				<div class="pagination justify-content-center" style="margin:20px 0">
					<c:if test="${likes !=  null && likes.li_state == 1 }">
						<button class="btn btn-success btn-up">추천</button>
					</c:if>
					<c:if test="${likes ==  null || likes.li_state != 1 }">
						<button class="btn btn-outline-success btn-up">추천</button>
					</c:if>
					<c:if test="${likes !=  null && likes.li_state == -1 }">
						<button class="btn btn-danger btn-down ml-2">비추천</button>
					</c:if>
					<c:if test="${likes ==  null || likes.li_state != -1 }">
						<button class="btn btn-outline-danger btn-down ml-2">비추천</button>
					</c:if>
				</div>
			</c:if>
			<c:if test="${user != null && user.me_id == board.bo_me_id}">
				<div class="deleteUpdate">
					<a href="<c:url value='/board/update/${board.bo_num}'></c:url>">
						<button class="btn btn-update">수정</button>
					</a>
					<a href="<c:url value='/board/delete/${board.bo_num}'></c:url>">
						<button class="btn btn-delete">삭제</button>
					</a>
					
				</div>
			</c:if>
			<c:if test="${seller != null && seller.bi_id == board.bo_bi_id}">
				<div class="delteUpdate">
					<a href="<c:url value='/board/update/${board.bo_num}'></c:url>">
						<button class="btn  btn-update">수정</button>
					</a>
					<a href="<c:url value='/board/delete/${board.bo_num}'></c:url>">
						<button class="btn btn-delete">삭제</button>
					</a>
					
				</div>
			</c:if>

<!-- 			<div class="comment-list mt-2 border rounded-sm border-success"> -->
<!-- 				<div class="comment-row p-3"> -->
<!-- 					<div class="co_me_id">jaeililil</div> -->
<!-- 					<div class="co_content"></div> -->
<!-- 					<div class="co_register_date"></div> -->
<!-- 					<button class="btn btn-outline-success btn-reply">답글</button> -->
<!-- 					<button class="btn btn-outline-success btn-update">수정</button> -->
<!-- 					<button class="btn btn-outline-success btn-delete">삭제</button> -->
<!-- 					<div class="input-group mb-3 mt-3 reply-box"> -->
<!-- 						<textarea placeholder="답글을 입력하세요." name="co_content"></textarea> -->
<!-- 						<div class="input-group-append"> -->
<!-- 							<button class="btn btn-success btn-reply-insert" type="submit">답글등록</button> -->
<!-- 						</div> -->
<!-- 					</div> -->
<!-- 					<hr> -->
<!-- 				</div> -->
<!-- 			</div> -->
<!-- 			<ul class="comment-pagination mt-2 pagination justify-content-center"> -->
<!-- 			    <li class="page-item" data-page=""><a class="page-link" href="#">이전</a></li> -->
<!-- 			    <li class="page-item" data-page=""><a class="page-link" href="#">1</a></li> -->
<!-- 			    <li class="page-item" data-page=""><a class="page-link" href="#">다음</a></li> -->
<!-- 			</ul> -->
<!-- 			<div class="comment-box mt-2"> -->
<!-- 				<div class="input-group mb-3"> -->
<!-- 					<textarea placeholder="댓글을 입력하세요." name="co_content"></textarea> -->
<!-- 					<div class="input-group-append"> -->
<!-- 						<button class="btn btn-success btn-comment-insert" type="submit">댓글등록</button> -->
<!-- 					</div> -->
<!-- 				</div> -->
<!-- 			</div> -->
		</div>
		
	</div>
</div>
</body>



</html>
