<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page session="false" %>
<html>

<style>
*{margin:0px; padding:0px;}
li{list-style: none;}
body{font-family: 'GyeonggiTitleM';}
@font-face {
    font-family: 'GyeonggiTitleM';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_one@1.0/GyeonggiTitleM.woff') format('woff');
    font-weight: normal;
    font-style: normal;
}
.product_outterContainer{
	width:100%; height:100%;
	box-sizing: border-box; padding:2px 130px 2px 170px;
}
.product_innerContainer{	
	width: 100%; height:100%;
	 box-sizing:border-box; margin-top: 130px; 
}
.product_titleBox{
	width:100%; height:30%;  
	border-bottom:1px solid #ddd; border-top: none; border-radius: 5px;
	box-shadow: 1px 1px 5px gray; font-size: 20px;
	box-sizing:border-box; padding: 10px 10px 5px 15px; 
}
#product_type{margin:5px 0px 30px 10px;}
.product_placeBox{
width:100%; height:35%;  
	box-sizing:border-box; padding: 0px 10px 5px 15px;  display:flex; text-align: center;
}

.product_search_mainPlace{
	width:8%; height:10%; 
	border: 1px solid #ddd; border-radius: 7px;
	box-sizing: border-box; margin-right:10px; 
}
.product_search_subPlace{
	width:15%; height: 5%; 
	border: 1px solid #ddd; border-radius: 7px; 
	box-sizing: border-box; margin-right:10px; 
}
.product_search_calender{margin-left: 10px;}
.dayCheck{
	width:40%; height: 34px;
	border: 1px solid #ddd; border-radius: 5px;
	font-size: 15px;
}

.product_contentBox{
	width:100%; height:100%; 

	box-sizing: border-box; padding: 0px 150px; margin-top: 10px; margin-bottom:30px; 
}
.product_mapBox{
	width:50%; height:80%;
	box-sizing: border-box; padding-top:1.6%; margin-right: 5px;

}

.product_listBox{
	width:100%; height:100%;
	box-sizing: border-box; border-top: none;
	
}
.product_list{
	height:650px;
	overflow:overlay; overflow-x:hidden;
}
.product_list_content{
	width:100%; 

}
.product_split{
 	margin-bottom:5px; margin-right: 22px; 
 	font-size:20px; text-align: right;
}
.product{
	width:99%; height:100%; 
	border:1px solid #ddd; border-radius:10px; box-shadow: 5px 5px 5px #ddd;
	display: flex; margin-bottom:10px;
}
.product_imege{
	width:35%; height:25%; border-radius:10px;
	box-sizing: border-box; padding: 4px; 
}
.like_button{
	width:8%;  
	border: none; background: none;
	vertical-align: middle; cursor: pointer;
	margin-bottom: 7px;
}
.like_icon{
	width:70%; 
	vertical-align: middle;
	margin-left: 690%;
	cursor: pointer;
}

.product_semi{
	width:62%; height:100%; display:block;
	box-sizing: border-box; padding: 10px 0px;
}
.product_title{
	font-size: 45px;
}
.product_detailInfo{
	display:block;
	margin-left: 30px;
	font-size: 25px;
}
.product_starPoint{
	margin-right: 0px;
}
.product_priceInsert{
	width:40%; 
	margin: 30px 0px 0px 100px; 
	float: right; text-align:right; color: #000;
	font-size: 30px; text-decoration: none; 
}


.map_imege{
	width:100%;  border-radius: 10px;
}
</style>
<head>

</head>
<body>
<div class="product_outterContainer">
	<div class="product_innerContainer">
		<div class="product_titleBox">
			<h1>모텔</h1>
			<input type="hidden" id="product_type" value="0">
			<div class="product_placeBox">
				<select class="product_upload_location" name="lo_num" id="type_lo">
					<!-- <option value="">선택</option> -->
					<c:forEach items="${location_list}" var="lo">
						<option value="${lo.lo_num}">${lo.lo_name}</option>
					</c:forEach>
				</select>
				<select class="product_upload_location" name="dl_num" id="type_dl">
					<!-- <option value="">선택</option> -->
				</select>
			</div>
		</div>
		
		<div class="product_contentBox">

			<div class="product_listBox">
				<div class="product_split">
					<span>정렬기준</span>
					<select id="sort_type">
						<option value="1">조회순</option>
						<option value="2">예약순</option>
						<option value="3">낮은가격순</option>
						<option value="4">높은가격순</option>					
					</select>
				</div>
				
				<div class="product_list">
					<ul class="product_list_content" id="product_list">
					</ul>					
				</div>
			</div>
			
		</div>
	</div>
</div>
</body>

<script>
// 	// 교육원
// 	$('#type_lo').change(function(){
// 		$("#type_dl").empty();
// 		//$("#type_dl").append($("<option value=''>선택</option>"));
		
// 		let lo_num = $('#type_lo').val();
		
// 		if(lo_num != "") {
// 			$.ajax({
// 				type : 'POST',
// 				data: lo_num,
// 				url : "<c:url value='/product/detailLocation'></c:url>",
// 				dataType : "json",
// 				contentType : "application/json; charset=UTF-8",
// 				success : function(detailLocation_list){
// 					if(detailLocation_list != null && detailLocation_list.length > 0){
// 						for(var i=0; i<detailLocation_list.length; i++){
// 							var option = $("<option value='"+detailLocation_list[i].dl_num+"''>"+detailLocation_list[i].dl_name+"</option>");  
// 							$("#type_dl").append(option);
// 						}
						
// 						$("#type_dl").change();
// 					}
// 				} 
// 			});
// 		}
// 	});
	
// 	$("#type_lo").change();
	
// 	$("#type_dl").change(function() {
// 		if($("#type_dl").val() != "") {
			
// 			let data = {
// 					product_type : $("#product_type").val(),
// 					product_lo_num : $('#type_lo').val(),
// 					product_dl_num : $('#type_dl').val(),
// 					sort : $("#sort_type").val()
// 			}

// 			$("#product_list").empty();
			
// 			$.ajax({
// 				type : 'POST',
// 				data: JSON.stringify(data),
// 				url : "<c:url value='/product/productList'></c:url>",
// 				dataType : "json",
// 				contentType : "application/json; charset=UTF-8",
// 				success : function(productList){
// 					if(productList != null && productList.length > 0){
// 						productList.forEach(item => {
// 							let tag = '';
// 							tag = tag + '<li class="product">';
// 							if(item.product_image != null && item.product_image.length > 0) {
// 								tag = tag + '<img alt="" src="<c:url value="/download'+item.product_image+'"></c:url>" class="product_imege" style="width:670px; height:400px;">';
// 							}
// 							else {
// 								tag = tag + '<img alt="" src="/project/resources/img/image_empty.png" class="product_imege" style="width:670px; height:400px;">';
// 							}
// 							tag = tag + '<div class="product_semi">';
// 							tag = tag + '<a class="product_title" name="product_name" href="#" onclick="alert('+item.product_num+');">'+item.product_name+'</a>';
// 							tag = tag + '<button class="like_button" >';
// 							tag = tag + '<img alt="" src="/project/resources/img/nomal_like.png" class="like_icon" name="pf_file_num">';
// 							tag = tag + '</button>';
// 							tag = tag + '<div class="product_detailInfo">별점<img alt="" src="" class="product_starPoint">0 / 평점 0</span></div>';
// 							tag = tag + '<a class="product_priceInsert" name="r_price" href="#">'+item.price+'</a>';
// 							tag = tag + '</div>';
// 							tag = tag + '</li>';
							
// 							$("#product_list").append(tag);
// 						});
// 					}
// 					else {
// 						$("#product_list").append("<p>검색결과가 없습니다.</p>")
// 					}
// 				} 
// 			});
// 		}
// 	});
	
// 	$("#sort_type").change(function() {
// 		$("#type_dl").change();
// 	});
</script>
</html>
