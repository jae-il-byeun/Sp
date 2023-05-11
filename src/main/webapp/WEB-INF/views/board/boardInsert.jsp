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
<script
	src="https://cdn.ckeditor.com/ckeditor5/37.0.1/classic/ckeditor.js"></script>
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
/* ================================================================================================================ */
/* 게시판 Box */
#board_insertBox{
	width:80%; height:700px;
	margin-left:60px;
	border: 1px solid #ddd; border-radius: 7px; box-shadow: 1px 1px 1px #ddd;
}
#board_insert{
	width:100%; height: 680px;
	box-sizing: border-box; padding: 5px;
	
}
#board_HeadText{
	height: 20px;
	
}
#board_HeadText th{
	font-size: 40px;
}
.board_list_header{
	width:100%; height:30px;
	border:1px solid #ddd;
	font-size:24px;
	margin-left: 30px;
}
.board_part{
	width:15%; height:70px;
	font-size: 30px;
}
.board_insert_content{
	width:80%;
}
.board_insert_complete{
	width:70%; height:100px;
}
#btn_complete{
	width:100%; height: 60px;
	font-size: 40px;
	border: 1px solid #fff; border-radius: 7px; 
	background-color: tan; color: #fff;
	box-sizing: border-box; margin-left: 10%;
}
</style>
<head>
</head>
<body>
<div class="main_container">
	<div class= "main_innerContainer">
	
		<div class="board_titleBox">
			<h2>게시글 작성</h2>
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
			<div id="board_insertBox">
				<form action="">
					<div class="board_insert_semi">
						<label for="type">분류 :</label>
						<select class="" name="bo_bt_num" id="type">
							<option value="0">게시판을 선택하세요</option>
							<c:forEach items="${btList}" var="bt">
								<option value="${bt.bt_num}">${bt.bt_name}</option>
							</c:forEach>
						</select>
					</div>
					<div class="board_insert_semi">
						<label for="title">제목:</label>
						<input type="text" class="board_title_text" id="title" name="bo_title">
					
					</div>
					<div id="common">
						<div>
							<label for="content">내용:</label>
						</div>
						<div id="editor" class="board_content" name="bo_content"></div>
						<div>
							<label>첨부파일:</label>
							<input type="file" class="form-control"  name="files">
							<input type="file" class="form-control"  name="files">
							<input type="file" class="form-control"  name="files">
						</div>
					</div>	
					<div id="image" style="display: none;">
						<label>이미지:</label>
						<div>
							<div>
								<div class="file-box">+</div>
								<input type="file" class="board_img"  name="files" accept="image/*" onchange="readURL(this);">
								<image class="preview" height="200" width="auto">
							</div>
							<div>
								<div class="file-box">+</div>
								<input type="file" class="board_img"  name="files" accept="image/*" onchange="readURL(this);">
								<image class="preview" height="200" width="auto">
							</div>
							<div>
								<div class="file-box">+</div>
								<input type="file" class="board_img"  name="files" accept="image/*" onchange="readURL(this);">
								<image class="preview" height="200" width="auto">
							</div>
						</div>	
					</div>
					<button type="submit" id="btn_complete">작성완료</button>
				</form>
			</div>
			
		</div>
	</div>
	
</div>
</body>


<script>
//	내용 에디터
	var editor;
	
	ClassicEditor
    .create( document.querySelector( '#editor' ), {
    	language: 'ko'
    } )
    .then( newEditor => {
        editor = newEditor;
      } )
    .catch( error => {
        console.error( error );
    } );
</script>

</html>
