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
.board_link{
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
.board_title_text{
	width:70%; height:30px;
	margin-left: 5px; 
}
.board_content{
	height:500px;
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
.board_insert_label{
	font-size: 20px;
}
.board_insert_content{
	width:80%;
}
.board_insert_complete{
	width:70%; height:100px;
}
#btn_complete{
	width:70%; height: 60px;
	font-size: 40px;
	border: 1px solid #fff; border-radius: 7px; 
	background-color: tan; color: #fff;
	box-sizing: border-box; margin-left: 15%;
}
.ck-content{
	height:500px;
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
					<a class="board_link">공지사항</a>
					<hr>
				</li>
				<li class="board_type">
					<a class="board_link">자유게시판</a>
					<hr>
				</li>
				<li class="board_type">
					<a class="board_link">QnA</a>
					<hr>
				</li>
			</ul>
			<div id="board_insertBox">
				<form action="<c:url value='/board/insert'></c:url>"method="POST" enctype="multipart/form-data">
					<input type="hidden" name="bo_ori_num" value="${bo_ori_num }">
					<div class="board_insert_semi">
						<label for="type" class="board_insert_label">분류 :</label>
						<select class="" name="bo_bt_num" id="type"  <c:if test="${board != null }">readonly</c:if>>
							<option value="0">게시판을 선택하세요</option>
					
							<c:forEach items="${btList}" var="bt">
								<option value="${bt.bt_num}">${bt.bt_name}</option>
							</c:forEach>

						</select>
					</div>
					<div class="board_insert_semi">
						<label for="title" class="board_insert_label">제목:</label>
						<input type="text" class="board_title_text" id="title" name="bo_name">
					</div>
					<div id="common">
						<div>
							<label for="content" class="board_insert_label">내용:</label>
						</div>
						<div id="editor" class="board_content" name="bo_content"></div>
						<div>
							<label class="board_insert_label">첨부파일:</label>
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
$('#type').change(function(){
	let val = $(this).val();
	$('#common').hide();
	$('#image').hide();
	if(val == 0)
		return ;
	
let bo_bt_num = $('[name=bo_bt_num]').val();
let btjson ={bo_bt_num : bo_bt_num};

$.ajax({
	async : true,
	type : 'POST',
	data : JSON.stringify(btjson),
	url : '<c:url value="/board/auCheck"></c:url>',
	dataType : "json",
	contentType :"application/json; charset=UTF-8",
	success : function(result){
		if(result.au == 1){
			console.log('jsp :' + p);
			alert(p);	
		}else if(result.au == 2){
			console.log('jsp :' + p);
			alert(p);	
		}
		
		
	}
});
	if(val > 0){
		$('#common').show();
		
	}
});
$('form').submit(function(){
	let bo_bt_num = $('[name=bo_bt_num]').val();
	if(bo_bt_num == 0){
		alert('게시판을 선택하세요.');
		$('[name=bo_bt_num]').focus();
		return false;
	}
	let bo_title =$('[name=bo_title]').val();
	if(bo_title.trim().length == 0){
		alert('제목을 입력하세요');
		$('[name=bo_title]').focus();
		return false;
	}
	let bo_content = $('[name=bo_content]').val();
	if(bo_content.trim().length == 0 && common.indexOf($('#type').val())>=0){
		alert('내용을 입력하세요');
		return false;
	}
	if(common.indexOf($('#type').val()) < 0){
		let images = image.querySelectorAll('[type=file]');
		for(i= 0; i<images.length; i++){
			if(images[i].files && images[i].files[0])
				return true;
		}
		alert('이미지를 1개이상 선택하세요');
		return false;
	}
});
let common = [];
<c:forEach items="${btList}" var="bt">
	<c:if test="${bt.bt_type == '자유게시판'}">common.push('${bt.bt_num}')</c:if>
</c:forEach>
$('.file-box, .preview').click(function(){
	$(this).siblings('input').click();
});
function readURL(input){
	
	if(!input.files || !input.files[0]){
		input.nextElementSibling.src ='';
		input.previousElementSibling.style.display = 'block';
		return;
	}
	let reader = new FileReader();
	reader.onload = function(e){
		input.previousElementSibling.style.display = 'none';
		input.nextElementSibling.src = e.target.result;
	}
	reader.readAsDataURL(input.files[0]);
}
$('select').val('${board.bo_bt_num}').trigger('change');
</script>

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
