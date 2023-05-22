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
				<div class="deleteUpdate">
					<a href="<c:url value='/board/update/${board.bo_num}'></c:url>">
						<button class="btn  btn-update">수정</button>
					</a>
					<a href="<c:url value='/board/delete/${board.bo_num}'></c:url>">
						<button class="btn btn-delete">삭제</button>
					</a>
					
				</div>
			</c:if>


<!-- 			<ul class="comment-pagination mt-2 pagination justify-content-center"> -->
<!-- 			    <li class="page-item" data-page=""><a class="page-link" href="#">이전</a></li> -->
<!-- 			    <li class="page-item" data-page=""><a class="page-link" href="#">1</a></li> -->
<!-- 			    <li class="page-item" data-page=""><a class="page-link" href="#">다음</a></li> -->
<!-- 			</ul> -->
			<div class="comment-box mt-2">
				<div class="input-group mb-3">
					<textarea placeholder="댓글을 입력하세요." name="co_content"></textarea>
					<div class="input-group-append">
						<button class="btn btn-success btn-comment-insert" type="submit">댓글등록</button>
					</div>
				</div>
			</div>
		</div>
		
	</div>
</div>
</body>

<script>
$(function(){
	$('.btn-up, .btn-down').click(function(){
		
		let li_state = 1;
		if($(this).hasClass('btn-down'))
			li_state = -1;
		//ajax를 이용하여 추천/비추천 작업
		$.ajax({
			//비동기화 : 사용
			//동기화는 ajax 작업이 다 끝난 후 아래 코드가 실행
			//비동기화는 ajax가 작업이 끝나든 말든 아래 코드가 실행
	        async:true,
	        type:'GET',
	        //data:JSON.stringify(obj),
	        url:"<c:url value='/board/like/"+li_state+"/${board.bo_num}'></c:url>",
	        //서버에서 받는 데이터 타입
	        dataType:"json",
	        //서버에 보내는 데이터 타입
	        //contentType:"application/json; charset=UTF-8",
	        success : function(data){
	        	//추천 버튼 초기 상태로
	        	$('.btn-up').removeClass('btn-success').addClass('btn-outline-success');
	        	//비추천 버튼 초기 상태로
	        	$('.btn-down').removeClass('btn-danger').addClass('btn-outline-danger');
	            if(data.res == 1){
	            	alert('추천을 했습니다.');
	            	$('.btn-up').addClass('btn-success').removeClass('btn-outline-success');
	            }else if(data.res == -1){
	            	alert('비추천을 했습니다.');
	            	$('.btn-down').addClass('btn-danger').removeClass('btn-outline-danger');
	            }else{
	            	if(li_state == 1){
	            		alert('추천을 취소했습니다.')
	            	}else{
	            		alert('비추천을 취소했습니다.')
	            	}
	            }
	        }
	    });
		
	});
})
var swiper = new Swiper(".mySwiper", {
  navigation: {
    nextEl: ".swiper-button-next",
    prevEl: ".swiper-button-prev"
  },
  pagination: {
      el: ".swiper-pagination",
  },
  loop: true,
});
</script>
<script>
<!-- //댓글 등록 버튼 클릭 -->
<!-- $('.btn-comment-insert').click(function(){ -->
<!-- 	//로그인 여부 체크 -->
<%-- 	if('${user.me_id}' == ''){ --%>
<!-- 		alert('로그인하세요.'); -->
<!-- 		return; -->
<!-- 	} -->
<!-- 	//ajax를 이용하여 댓글 등록 -->
<!-- 	//댓글 정보를 가진 객체를 생성 -->
<!-- 	let co_content = $('[name=co_content]').val(); -->
<!-- 	if(co_content.trim().length == 0){ -->
<!-- 		alert('댓글 내용을 입력하세요.'); -->
<!-- 		return; -->
<!-- 	} -->
<!-- 	let comment = { -->
<!-- 		co_content : co_content, -->
<!-- 		co_bo_num : bo_num -->
<!-- 	} -->
<!-- 	insertComment(comment); -->
<!-- }); -->
<!-- //댓글 페이지네이션을 클릭하면 -->
<!-- $(document).on('click','.comment-pagination a', function(e){ -->
<!-- 	e.preventDefault(); -->
<!-- 	page = $(this).parent().data('page'); -->
<!-- 	selectCommentList(page, bo_num); -->
<!-- }); -->
<!-- //댓글 삭제버튼 클릭 이벤트 -->
<!-- $(document).on('click', '.comment-list .btn-delete',function(){ -->
<!-- 	//댓글 번호 확인 -->
<!-- 	let co_num = $(this).data('num'); -->
<!-- 	let comment = { -->
<!-- 		co_num : co_num -->
<!-- 	} -->
<!-- 	//deleteComment 호출 -->
<!-- 	deleteComment(comment, page);//이때 page는 전역변수 page -->
<!-- }) -->
<!-- //수정 버튼 클릭 이벤트 -->
<!-- $(document).on('click','.btn-update',function(){ -->
<!-- 	initCommentBox(); -->
<!-- 	let co_content = $(this).siblings('.co_content').text(); -->
<!-- 	let str = ''; -->
<!-- 	let co_num = $(this).data('num'); -->
<!-- 	str +=  -->
<!-- 	'<div class="input-group mb-3 box-co_content">'+ -->
<!-- 		'<textarea class="form-control" placeholder="댓글을 입력하세요." name="co_content_update">'+co_content+'</textarea>'+ -->
<!-- 		'<div class="input-group-append">'+ -->
<!-- 			'<button class="btn btn-success btn-comment-update" type="submit" data-num="'+co_num+'" >댓글수정</button>'+ -->
<!-- 		'</div>'+ -->
<!-- 	'</div>'; -->
<!-- 	 $(this).siblings('.co_content').after(str); -->
<!-- 	 $(this).siblings('.co_content').hide(); -->
<!-- 	 $(this).hide().siblings('button').hide(); -->
<!-- }); -->
<!-- //댓글 수정버튼 클릭 이벤트 -->
<!-- $(document).on('click','.btn-comment-update',function(){ -->
<!-- 	let co_num = $(this).data('num'); -->
<!-- 	let co_content = $('[name=co_content_update]').val(); -->
<!-- 	//comment 객체 생성 -->
<!-- 	let comment = { -->
<!-- 		co_num : co_num, -->
<!-- 		co_content : co_content -->
<!-- 	} -->
<!-- 	//updateComment메소드를 추가 및 호출 -->
<!-- 	updateComment(comment,page); -->
<!-- }); -->
<%-- const bo_num = '${board.bo_num}'; --%>
<!-- let page = 1;//댓글 페이지 -->
<!-- selectCommentList(1, bo_num); -->
<!-- function updateComment(comment, page){ -->
<!-- 	ajax('POST',  -->
<!-- 		comment,  -->
<%-- 		'<c:url value="/comment/update"></c:url>', --%>
<!-- 		function(data){ -->
<!-- 			if(data.result){ -->
<!-- 				alert('댓글을 수정했습니다.'); -->
<!-- 				//댓글 조회 -->
<!-- 				selectCommentList(page, bo_num); -->
<!-- 			}else{ -->
<!-- 				alert('댓글 수정에 실패했습니다.'); -->
<!-- 			} -->
<!-- 		}); -->
<!-- } -->
<!-- function deleteComment(comment, page){ -->
<!-- 	ajax('POST',  -->
<!-- 		comment,  -->
<%-- 		'<c:url value="/comment/delete"></c:url>', --%>
<!-- 		function(data){ -->
<!-- 			if(data.result){ -->
<!-- 				alert('댓글을 삭제했습니다.'); -->
<!-- 				//댓글 조회 -->
<!-- 				selectCommentList(page, bo_num); -->
<!-- 			}else{ -->
<!-- 				alert('댓글 삭제에 실패했습니다.'); -->
<!-- 			} -->
<!-- 		}); -->
<!-- } -->
<!-- function selectCommentList(page, bo_num){ -->
<!-- 	//현재 페이지 정보 -->
<!-- 	let cri = { -->
<!-- 		page : page -->
<!-- 	} -->
<!-- 	ajax('POST',  -->
<!-- 		cri,  -->
<%-- 		'<c:url value="/comment/list/'+bo_num+'"></c:url>', --%>
<!-- 		function(data){ -->
<!-- 			let str = ''; -->
<!-- 			let list = data.list; -->
<!-- 			for(i=0; i<list.length; i++){ -->
<!-- 				let pl = 0; -->
<!-- 				if(list[i].co_num != list[i].co_ori_num) -->
<!-- 					pl = 60; -->
<!-- 				str +=  -->
<%-- 				'<div class="comment-row p-3">' + --%>
<!-- 					'<div style="padding-left:'+pl+'px">'+ -->
<!-- 					'<div class="co_me_id">'+ list[i].co_me_id +'</div>' + -->
<!-- 					'<div class="co_content">'+ list[i].co_content +'</div>'; -->
<!-- 				if(list[i].co_update_date_str == '') -->
<!-- 					str += -->
<%-- 					'<div class="co_register_date">'+ list[i].co_register_date_str +'</div>'; --%>
<!-- 				else -->
<!-- 					str += -->
<!-- 					'<div class="co_register_date">'+ list[i].co_update_date_str +'</div>'; -->
<!-- 				if(list[i].co_num == list[i].co_ori_num) -->
<!-- 					str += -->
<!-- 					'<button class="btn btn-outline-success btn-reply" data-num="'+list[i].co_num+'">답글</button>'; -->
<%-- 				if('${user.me_id}' == list[i].co_me_id){ --%>
<!-- 					str +=  -->
<!-- 					'<button class="btn btn-outline-success btn-update ml-2" data-num="'+list[i].co_num+'">수정</button>'+ -->
<!-- 					'<button class="btn btn-outline-success btn-delete ml-2" data-num="'+list[i].co_num+'">삭제</button>'; -->
<!-- 				} -->
<!-- 				str += -->
<!-- 					'</div>'+ -->
<!-- 					'<hr>'+ -->
<!-- 				'</div>'; -->
<!-- 			} -->
<!-- 			$('.comment-list').html(str); -->
<!-- 			str = ''; -->
<!-- 			let pm = data.pm; -->
<!-- 			if(pm.prev) -->
<!-- 				str +=  -->
<!-- 				'<li class="page-item" data-page="'+(pm.startPage-1)+'"><a class="page-link" href="#">이전</a></li>'; -->
<!-- 			for(i = pm.startPage; i<=pm.endPage; i++){ -->
<!-- 				let active = i == pm.cri.page ? 'active' : ''; -->
<!-- 				str += -->
<!-- 			    '<li class="page-item '+active+'" data-page="'+i+'"><a class="page-link" href="#">'+i+'</a></li>'; -->
<!-- 			} -->
<!-- 			if(pm.next) -->
<!-- 				str += -->
<!-- 			    '<li class="page-item" data-page="'+(pm.endPage+1)+'"><a class="page-link" href="#">다음</a></li>'; -->
		    
<!-- 		    $('.comment-pagination').html(str); -->
<!-- 		}); -->
<!-- } -->

<!-- //댓글 객체가 주어지면 댓글을 등록하는 함수 -->
<!-- function insertComment(comment){ -->
<!-- 	ajax('POST',  -->
<!-- 		comment,  -->
<%-- 		'<c:url value="/comment/insert"></c:url>', --%>
<!-- 		function(data){ -->
<!-- 			if(data.result){ -->
<!-- 				alert('댓글을 등록했습니다.'); -->
<!-- 				//댓글 조회 -->
<!-- 				selectCommentList(1, bo_num); -->
<!-- 			}else{ -->
<!-- 				alert('댓글 등록에 실패했습니다.'); -->
<!-- 			} -->
<!-- 		}); -->
<!-- } -->
<!-- function ajax(method, obj, url, successFunc, errorFunc){ -->
<!-- 	$.ajax({ -->
<!-- 		async:false, -->
<!-- 		type: method, -->
<!-- 		data: JSON.stringify(obj), -->
<!-- 		url: url, -->
<!-- 		dataType:"json", -->
<!-- 		contentType:"application/json; charset=UTF-8", -->
<!-- 		success : successFunc -->
<!-- 	}); -->
<!-- } -->
</script>
</html>
