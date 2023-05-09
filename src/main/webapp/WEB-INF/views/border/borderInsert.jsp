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
.mypage_titleBox{
	width:100%; height:30%;  
	border-bottom:1px solid #ddd; border-top: none; border-radius: 5px;
	box-shadow: 1px 1px 5px gray; font-size: 20px;
	box-sizing:border-box; padding: 10px 10px 5px 15px; 
}
.main_contentContainer{
	width:100%; height:70%;
	display:flex;
}
.mypage_listBox{
	width:30%; height:200px;
	border: 1px solid #ddd; border-radius: 7px; box-shadow: 1px 1px 1px #ddd;
}
/* 쿠폰 외부 Box */
#mypage_contentBox{
	width:70%; height: 200px;
	border: 1px solid #ddd; border-radius: 7px; box-shadow: 1px 1px 1px #ddd;
}
#coupon_Listbox{
	min-height:200px;
}
#coupon_HeadText{
	
}
#coupon_ListHead{

}
/* 쿠폰 리스트 헤드 */
.coupon_ListName{
}
.coupon_ListW{
}
.coupon_ListPersent{
}
/* 쿠폰 리스트 */
.coupon_List{
}
#coupon_name{
}
#coupon_w{
}
#coupon_persent{
}
</style>
<head>
</head>
<body>
<div class="main_container">
	<div class= "main_innerContainer">
		<div class="mypage_titleBox">
			<h2>마이페이지</h2>
		</div>
		<div class="main_contentContainer">	
			<ul class="mypage_listBox">
				<li class="mypage_list">
					<a>장바구니</a>
				</li>
				<li class="mypage_list">
					<a>쿠폰보유</a>
				</li>
				<li class="mypage_list">
					<a>개인정보수정</a>
				</li>
			</ul>
			<div id="board_insertBox">
				<form action="">
					<table id="board_insert">
						<tr>
							<th>
								<h2>글쓰기</h2>
							</th>
						</tr>
						<tr>
							<td>
								<span>제목 :</span>
							</td>
							<td>
								<input type="text" class="board_title_text">
							</td>
						</tr>
						<tr>
							<td>
								<span>내용 :</span>
							</td>
							<td>
								<div id="editor" class="bo_content"></div>
							</td>
						</tr>
						<tr>
							<td>
								<span>첨부파일 : </span>
							</td>
							<td >
								<label> + </label>
								<input type ="file" class="board_file" name="files">
								<input type ="file" class="board_file" name="files">
								<input type ="file" class="board_file" name="files">
								<input type ="file" class="board_file" name="files">	
								<input type ="file" class="board_file" name="files">		
							</td>
							
						</tr>
					</table>
				</form>
			</div>
			
		</div>
	</div>
	
</div>
</body>
<script>
// 	내용 에디터
var editor;
	
ClassicEditor
	.create( document.querySelector( '#editor' ), {
    	language: 'ko'
    })
    .then( newEditor => {
        editor = newEditor;
      })
    .catch( error => {
        console.error( error );
    });
</script>
</html>
