<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page session="false"%>
<!DOCTYPE html>
<html>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.css" />
<script src="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.js"></script>
<script
	src="https://cdn.ckeditor.com/ckeditor5/37.0.1/classic/ckeditor.js"></script>
<meta name="viewport"
	content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1" />
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<style>
* {
	margin: 0px;
	padding: 0px;
}

li {
	list-style: none;
}

body {
	font-family: 'GyeonggiTitleM';
}

@font-face {
	font-family: 'GyeonggiTitleM';
	src:
		url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_one@1.0/GyeonggiTitleM.woff')
		format('woff');
	font-weight: normal;
	font-style: normal;
}

.product_outterContainer {
	width: 100%;
	height: 100%;
	box-sizing: border-box;
	padding: 2px 130px 2px 170px;
}

.product_innerContainer {
	width: 100%;
	height: 100%;
	box-sizing: border-box;
	margin-top: 130px;
}

/* 상품소개 제목 */
.product_titleBox {
	width: 100%;
	height: 30%;
	border-bottom: 1px solid #ddd;
	border-top: none;
	border-radius: 5px;
	box-shadow: 1px 1px 5px gray;
	font-size: 20px;
	box-sizing: border-box;
	padding: 10px 10px 5px 15px;
}

/* 상품소개 메인속성 */
.product_contentContainer {
	width: 100%;
	height: 100%;
	box-sizing: border-box;
	padding: 0px 100px;
	background-color: rgba(226, 225, 225, 0.452);
	margin-top: 10px;
}

.product_content {
	width: 100%;
	height: 100%;
}
/* 상품명 */
.product_ex_title{
	vertical-align: middle;
}
#product_name{
	width:90%;
	height:50px;
	font-size:25px;
	padding-left: 5px;
	border: 1px solid gray;
	border-radius: 8px;
}
#image_upload{

}
.product_room_img{
	width: 200px;
	box-shadow: 1px 1px 1px #ddd;
}
.btn-upload{
	font-size: 30px;
	border: none;
}
.upload-box{
	width:30%; height: 70px; 
	border: 1px solid gray; border-radius: 5px;
	box-shadow: 2px 3px 9px hsl(0, 0%, 47%); padding: 10px;
	text-align:center;
}
.product_upload_group{
	width:200px;
}
.product_upload_location{
	height: 40px;
	font-size: 25px;
	text-align: center;
	border-radius: 7px;
}


/* 객실 */
#btn_product_room_add{
	width:80%;	height:50px; 
	margin-left: 110px; margin-top: 10px;
	border:1px solid #fff;  border-radius: 7px;
	font-size: 35px; text-align: center;
	background-color: tan; color: #fff;
}
.product_room_cancel{
	width:100px; height: 50px;
	float: right;
	margin-left: 50px;
	font-size: 30px;
	background-color: darkred; color:#fff;
	border: 1px solid #fff; border-radius: 7px;
}
.product_type{
	width:100px;
	font-size:40px;
	border: 1px solid gray; border-radius: 7px;
}
.product_Complete {
	width: 100%;
	height: 70px;
	font-size: 40px;
	background-color: teal;
	box-shadow: 2px 2px 5px teal;
	border: 1px solid teal;
	border-radius: 5px;
	color: #fff;
}



/* 주소 */
#product_address_title{margin-top: 10px;line-height: 35px;}
#sample6_postcode{
	width:45%;
	display:block;
}
#bi_postNumSearch{
	width: 12%; height:35px;
	font-size:19px;
	border: 1px solid #fff; border-radius: 7px;
	background-color: skyblue; color: #fff;
	margin-top: 3px;
	
}
#product_postNumSearch{ height: 43px;
	width:35%;
	display:block; 
	padding: 0px; margin-left:20px;
	text-align: center;
	border:1px solid #fff; border-radius: 7px;
	background-color: teal; color:#fff;
	cursor: pointer; box-shadow : 1px 1px 4px teal;
}
#sample6_detailAddress{width:50%;}
#sample6_extraAddress{width: 40%; margin-left: 7px;}
/*추가*/
.product_table {
	width: 100%;
	max-width: 1200px;
	border: 0;
}

.product_table tr, td {
	border-top: 1px solid #444444;
	border-bottom: 1px solid #444444;
	border-collapse: collapse;
	padding: 10px;
}

.ck-editor__editable[role="textbox"] {
	/* editing area */
	min-height: 300px;
	height: 300px;
	max-height: 300px;
}
</style>
<head>
<meta charset="UTF-8">
<title>상품등록</title>
</head>
<body>
	<input type="text" style="display: none;">
	<button style="display: none;" onclick="return false;"></button>
	<div class="product_outterContainer">
		<div class="product_innerContainer">
			<div class="product_titleBox">
				<h1>상품등록</h1>
			</div>
			<div class="product_contentContainer">
				<div class="product_content">
					<br>
					<table class="product_table">
						<colgroup>
							<col width="15%">
							<col width="*">
						</colgroup>
						<tr>
							<td class="product_upload_group"><h2 class="product_ex_title">분류</h2></td>
							<td>
								<select id="product_type" class="product_type">
									<option value="0">호텔</option>
									<option value="1">모텔</option>
									<option value="2">펜션</option>
								</select>
							</td>
						</tr>
						<tr>
							<td class="product_upload_group"><h2 class="product_ex_title">상품명</h2></td>
							<td><input type="text" id="product_name"></td>
						</tr>
						<tr>
							<td class="product_upload_group"><h2>편의시설</h2></td>
							<td><input type="checkbox" class="survice_type"
								name="product_service" id="product_service01"
								value="01"><label for="product_service01">24시간데스크</label>
								<input type="checkbox" class="survice_type"
								name="product_service" id="product_service02"
								value="02"><label for="product_service02">객실금연</label>
								<input type="checkbox" class="survice_type"
								name="product_service" id="product_service03"
								value="03"><label for="product_service03">흡연구역</label>
								<input type="checkbox" class="survice_type"
								name="product_service" id="product_service04"
								value="04"><label for="product_service04">와이파이</label>
								<input type="checkbox" class="survice_type"
								name="product_service" id="product_service05"
								value="05"><label for="product_service05">트윈베드</label>
								<input type="checkbox" class="survice_type"
								name="product_service" id="product_service06"
								value="06"><label for="product_service06">주차가능</label>
								<input type="checkbox" class="survice_type"
								name="product_service" id="product_service07"
								value="07"><label for="product_service07">매점/편의점</label>
								<input type="checkbox" class="survice_type"
								name="product_service" id="product_service08"
								value="08"><label for="product_service08">어메니티</label>
								<input type="checkbox" class="survice_type"
								name="product_service" id="product_service09"
								value="09"><label for="product_service09">상비약</label>
								<input type="checkbox" class="survice_type"
								name="product_service" id="product_service10"
								value="10"><label for="product_service10">수화물보관</label>
								<input type="checkbox" class="survice_type"
								name="product_service" id="product_service11"
								value="11"><label for="product_service11">바다전망</label><br>
								<input type="checkbox" class="survice_type"
								name="product_service" id="product_service12"
								value="12"><label for="product_service12">조식운영</label>
								<input type="checkbox" class="survice_type"
								name="product_service" id="product_service13"
								value="13"><label for="product_service13">패밀리</label>
								<input type="checkbox" class="survice_type"
								name="product_service" id="product_service14"
								value="14"><label for="product_service14">뷔페</label>
								<input type="checkbox" class="survice_type"
								name="product_service" id="product_service15"
								value="15"><label for="product_service15">공항셔틀</label>
								<input type="checkbox" class="survice_type"
								name="product_service" id="product_service16"
								value="16"><label for="product_service16">노트북대여</label>
								<input type="checkbox" class="survice_type"
								name="product_service" id="product_service17"
								value="17"><label for="product_service17">비지니스</label>
								<input type="checkbox" class="survice_type"
								name="product_service" id="product_service18"
								value="18"><label for="product_service18">커피숍</label>
								<input type="checkbox" class="survice_type"
								name="product_service" id="product_service19"
								value="19"><label for="product_service19">유료세탁</label>
								<input type="checkbox" class="survice_type"
								name="product_service" id="product_service20"
								value="20"><label for="product_service20">연회장</label>
								<input type="checkbox" class="survice_type"
								name="product_service" id="product_service21"
								value="21"><label for="product_service21">사우나</label>
								<input type="checkbox" class="survice_type"
								name="product_service" id="product_service22"
								value="22"><label for="product_service22">바</label>
								<input type="checkbox" class="survice_type"
								name="product_service" id="product_service23"
								value="23"><label for="product_service23">야외수영장</label>
								<input type="checkbox" class="survice_type"
								name="product_service" id="product_service24"
								value="24"><label for="product_service24">레스토랑</label><br>
								<input type="checkbox" class="survice_type"
								name="product_service" id="product_service25"
								value="25"><label for="product_service25">워터슬라이드</label>
								<input type="checkbox" class="survice_type"
								name="product_service" id="product_service26"
								value="26"><label for="product_service26">스파/월풀/욕조</label>
								<input type="checkbox" class="survice_type"
								name="product_service" id="product_service27"
								value="27"><label for="product_service27">야외테라스</label>
								<input type="checkbox" class="survice_type"
								name="product_service" id="product_service28"
								value="28"><label for="product_service28">개별바베큐</label>
								<input type="checkbox" class="survice_type"
								name="product_service" id="product_service29"
								value="29"><label for="product_service29">풀빌라</label>
								<input type="checkbox" class="survice_type"
								name="product_service" id="product_service30"
								value="30"><label for="product_service30">키즈</label>
								<input type="checkbox" class="survice_type"
								name="product_service" id="product_service31"
								value="31"><label for="product_service31">바베큐</label>
								<input type="checkbox" class="survice_type"
								name="product_service" id="product_service32"
								value="32"><label for="product_service32">식사가능</label>
								<input type="checkbox" class="survice_type"
								name="product_service" id="product_service33"
								value="33"><label for="product_service33">무료영화(OTT)</label>
								<input type="checkbox" class="survice_type"
								name="product_service" id="product_service34"
								value="34"><label for="product_service34">주방</label>
								<input type="checkbox" class="survice_type"
								name="product_service" id="product_service35"
								value="35"><label for="product_service35">공기청정기</label><br>
								<input type="checkbox" class="survice_type"
								name="product_service" id="product_service36"
								value="36"><label for="product_service36">복층구조</label>
								<input type="checkbox" class="survice_type"
								name="product_service" id="product_service37"
								value="37"><label for="product_service37">루프탑</label>
								<input type="checkbox" class="survice_type"
								name="product_service" id="product_service38"
								value="38"><label for="product_service38">독채객실</label>
								<input type="checkbox" class="survice_type"
								name="product_service" id="product_service39"
								value="39"><label for="product_service39">커플룸</label>
								<input type="checkbox" class="survice_type"
								name="product_service" id="product_service40"
								value="40"><label for="product_service40">프로젝터</label>
								<input type="checkbox" class="survice_type"
								name="product_service" id="product_service41"
								value="41"><label for="product_service41">공용주방</label>
								<input type="checkbox" class="survice_type"
								name="product_service" id="product_service42"
								value="42"><label for="product_service42">공용거실</label>
								<input type="checkbox" class="survice_type"
								name="product_service" id="product_service43"
								value="43"><label for="product_service43">촬영장소</label>
								<input type="checkbox" class="survice_type"
								name="product_service" id="product_service44"
								value="44"><label for="product_service44">다이닝룸</label>
								<input type="checkbox" class="survice_type"
								name="product_service" id="product_service45"
								value="45"><label for="product_service45">거울룸</label>
								<input type="checkbox" class="survice_type"
								name="product_service" id="product_service46"
								value="46"><label for="product_service46">부티크브랜드</label>
								<input type="checkbox" class="survice_type"
								name="product_service" id="product_service47"
								value="47"><label for="product_service47">VOD</label><br>
								<input type="checkbox" class="survice_type"
								name="product_service" id="product_service48"
								value="48"><label for="product_service48">피트니스</label>
								<input type="checkbox" class="survice_type"
								name="product_service" id="product_service49"
								value="49"><label for="product_service49">수영장</label>
								<input type="checkbox" class="survice_type"
								name="product_service" id="product_service50"
								value="50"><label for="product_service50">노래방</label>
								<input type="checkbox" class="survice_type"
								name="product_service" id="product_service51"
								value="51"><label for="product_service51">스낵바</label>
								<input type="checkbox" class="survice_type"
								name="product_service" id="product_service52"
								value="52"><label for="product_service52">대여</label>
								<input type="checkbox" class="survice_type"
								name="product_service" id="product_service53"
								value="53"><label for="product_service53">객실내PC</label>
								<input type="checkbox" class="survice_type"
								name="product_service" id="product_service54"
								value="54"><label for="product_service54">해수욕장인근</label>
								<input type="checkbox" class="survice_type"
								name="product_service" id="product_service55"
								value="55"><label for="product_service55">미니바</label>
								<input type="checkbox" class="survice_type"
								name="product_service" id="product_service56"
								value="56"><label for="product_service56">커플PC</label>
								<input type="checkbox" class="survice_type"
								name="product_service" id="product_service57"
								value="57"><label for="product_service57">무인텔</label>
								<input type="checkbox" class="survice_type"
								name="product_service" id="product_service58"
								value="58"><label for="product_service58">당구대</label>
								<input type="checkbox" class="survice_type"
								name="product_service" id="product_service59"
								value="59"><label for="product_service59">파티가능</label>
								<input type="checkbox" class="survice_type"
								name="product_service" id="product_service60"
								value="60"><label for="product_service60">파티룸</label><br>
								<input type="checkbox" class="survice_type"
								name="product_service" id="product_service61"
								value="61"><label for="product_service61">스타일러</label>
								<input type="checkbox" class="survice_type"
								name="product_service" id="product_service62"
								value="62"><label for="product_service62">PC라운지</label>
								<input type="checkbox" class="survice_type"
								name="product_service" id="product_service63"
								value="63"><label for="product_service63">3DTV</label>
								<input type="checkbox" class="survice_type"
								name="product_service" id="product_service64"
								value="64"><label for="product_service64">세미나실</label>
								<input type="checkbox" class="survice_type"
								name="product_service" id="product_service65"
								value="65"><label for="product_service65">클럽라운지</label>
								<input type="checkbox" class="survice_type"
								name="product_service" id="product_service66"
								value="66"><label for="product_service66">마사지베드</label>
								<input type="checkbox" class="survice_type"
								name="product_service" id="product_service67"
								value="67"><label for="product_service67">고사양PC</label>
								<input type="checkbox" class="survice_type"
								name="product_service" id="product_service68"
								value="68"><label for="product_service68">글램핑</label>
								<input type="checkbox" class="survice_type"
								name="product_service" id="product_service69"
								value="69"><label for="product_service69">무료세탁</label>
								<input type="checkbox" class="survice_type"
								name="product_service" id="product_service70"
								value="70"><label for="product_service70">노천탕</label>
								<input type="checkbox" class="survice_type"
								name="product_service" id="product_service71"
								value="71"><label for="product_service71">욕실TV</label>
								<input type="checkbox" class="survice_type"
								name="product_service" id="product_service72"
								value="72"><label for="product_service72">공주룸</label><br>
								<input type="checkbox" class="survice_type"
								name="product_service" id="product_service73"
								value="73"><label for="product_service73">안마의자</label>
								<input type="checkbox" class="survice_type"
								name="product_service" id="product_service74"
								value="74"><label for="product_service74">한옥</label>
								<input type="checkbox" class="survice_type"
								name="product_service" id="product_service75"
								value="75"><label for="product_service75">독체객실</label>
								<input type="checkbox" class="survice_type"
								name="product_service" id="product_service76"
								value="76"><label for="product_service76">이벤트가능</label>
								<input type="checkbox" class="survice_type"
								name="product_service" id="product_service77"
								value="77"><label for="product_service77">족구장</label>
								<input type="checkbox" class="survice_type"
								name="product_service" id="product_service78"
								value="78"><label for="product_service78">픽업가능</label>
								<input type="checkbox" class="survice_type"
								name="product_service" id="product_service79"
								value="79"><label for="product_service79">기본양념</label>
								<input type="checkbox" class="survice_type"
								name="product_service" id="product_service80"
								value="80"><label for="product_service80">계곡인접</label>
								<input type="checkbox" class="survice_type"
								name="product_service" id="product_service81"
								value="81"><label for="product_service81">체험</label>
								<input type="checkbox" class="survice_type"
								name="product_service" id="product_service82"
								value="82"><label for="product_service82">벽난로</label>
								<input type="checkbox" class="survice_type"
								name="product_service" id="product_service83"
								value="83"><label for="product_service83">애견동반</label>
								<input type="checkbox" class="survice_type"
								name="product_service" id="product_service84"
								value="84"><label for="product_service84">도미토리</label><br>
								<input type="checkbox" class="survice_type"
								name="product_service" id="product_service85"
								value="85"><label for="product_service85">프리미엄펜션</label>
								<input type="checkbox" class="survice_type"
								name="product_service" id="product_service86"
								value="86"><label for="product_service86">독채펜션</label>
								<input type="checkbox" class="survice_type"
								name="product_service" id="product_service87"
								value="87"><label for="product_service87">투어</label>
								<input type="checkbox" class="survice_type"
								name="product_service" id="product_service88"
								value="88"><label for="product_service88">게임</label>
								<input type="checkbox" class="survice_type"
								name="product_service" id="product_service89"
								value="89"><label for="product_service89">히노끼탕</label>
								<input type="checkbox" class="survice_type"
								name="product_service" id="product_service90"
								value="90"><label for="product_service90">카페형룸</label>
									
								
							

							</td>
						</tr>
						<tr>
							<td class="product_upload_group"><h2>이미지</h2></td>
							<td>
								<section id="image_upload">
									<div class="upload-box">
										<input type="text" style="display: none;">
										<button style="display: none;" onclick="return false;"></button>
										<button class="btn-upload">파일선택 : +</button>
										<input id="product_images" class="btn-file d-none" type="file" multiple accept="img/*">
										<!-- <span id="testFileNm" style="font-size:20px; display:table-cell; vertical-align:middle;">
			                    여기로 파일을 끌어 놓
			                </span> -->
									</div>
								</section>
							</td>
						</tr>
						<tr>
							<td class="product_upload_group"><h2>상세설명</h2></td>
							<td><div id="editor"></div></td>
						</tr>
						<tr>
							<td class="product_upload_group"><h2>지역태그</h2></td>
							<td>
								<select class="product_upload_location" name="lo_num" id="type_lo">
									<!-- <option value="0">지역 선택</option> -->
									<c:forEach items="${location_list}" var="lo">
										<option value="${lo.lo_num}">${lo.lo_name}</option>
									</c:forEach>
								</select>
								
									<select class="product_upload_location" name="dl_num" id="type_dl">
										<!-- <option value="0">세부 지역</option> -->
									<%-- <c:forEach items="${detailLocationList}" var="dl">
										<option value="${dl.dl_num}">${dl.dl_name}</option>
									</c:forEach> --%>
									</select>
							</td>
						</tr>
						<tr style="margin-bottom:10px;">
							<td class="product_upload_group"><h2>상품주소</h2></td>
							<td>
								<span  style="display:block;">우편번호</span>
								<input type="text" id="sample6_postcode" name="product_postNum">
								<input  type="button" id="bi_postNumSearch" onclick="sample6_execDaumPostcode()" value="우편번호 찾기">
								<span style="display:block;">주소</span>
								<input type="text" id="sample6_address" name="product_mainAddress">
								<span style="display:block;">상세주소</span>
								<input type="text" id="sample6_detailAddress" name="product_detailAddress">
								<input style="display:span;" type="text" id="sample6_extraAddress" name="product_extraAddress" placeholder="참고항목">

							</td>
						</tr>
						<tr>
							<td class="product_upload_group"><h2>객실</h2></td>
							<td>
								<div id="div_product_room_list"></div>
								<button id="btn_product_room_add" type="button">객실 추가</button>
							</td>
						</tr>
					</table>
					<br>
					<button class="product_Complete" id="btn_product_complete">상
						품 등 록</button>
				</div>
			</div>
		</div>
	</div>

</body>
<script>
// 교육원
$('#type_lo').change(function(){
	$("#type_dl").empty();
	
	let lo_num = $('[name=lo_num]').val();
	let send = { lo_num : lo_num };
	
	$.ajax({
		async : true,
		type : 'POST',
		data: lo_num,
		url : "<c:url value='/product/detailLocation'></c:url>",
		dataType : "json",
		contentType : "application/json; charset=UTF-8",
		success : function(detailLocation_list){
			if(detailLocation_list != null && detailLocation_list.length > 0){
				for(var i=0; i<detailLocation_list.length; i++){
					var option = $("<option value='"+detailLocation_list[i].dl_num+"''>"+detailLocation_list[i].dl_name+"</option>");  
					$("#type_dl").append(option);
				}
			}
		} 
	});
});

$('#type_lo').change();
</script>
<script>
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
<script>
	$("#btn_product_room_add").click(function(e) {
		var tag = '\
		<table class="product_room_table" name="product_room">\
			<tr class="product_room_tr">\
				<td>\
					<input type="file" class="product_room_img pf" multiple accept="img/*">\
				</td>\
				<td class="product_room_intro">\
					<span>객실이름</span> <input type="text" name="product_room_title">\
				</td>\
				<td class="product_room_intro">\
					<span>객실가격</span> <input type="text" name="product_room_price" maxlength="9">\
				</td>\
			</tr>\
			<tr class="product_room_tr">\
				<td class="product_room_intro">\
					<span style="display: block;">객실이용안내</span> <textarea rows="5" cols="33" name="product_room_detail" style="padding: 5px 5px 5px 10px; width: 500px;"></textarea>\
				</td>\
				<td class="product_room_intro">\
					<button type="button" class="product_room_cancel">취소</button>\
				</td>\
			</tr>\
		</table>\
		';
		$("#div_product_room_list").append(tag);
	});
	
	$("#btn_product_complete").click(function(e) {
		let params = {
			product_type: $("#product_type").val()
			, product_name: $("#product_name").val()
			, product_service: $("input[name='product_service']:checked").map(function() { return $(this).val(); }).get().join('|')
			, product_content: editor.getData()
			, product_lo_num: $("#type_lo").val()
			, product_dl_num: $("#type_dl").val()
			, product_postNum: $("#sample6_postcode").val()
			, product_mainAddress: $("#sample6_address").val()
			, product_detailAddress: $("#sample6_detailAddress").val()
			, product_extraAddress: $("#sample6_extraAddress").val()
		}
		
		let formData = new FormData();

		//let dataTranster = new DataTransfer();
		fileList.forEach(file => {
            //dataTranster.items.add(file)
			formData.append('files', file);
            console.log(file);
		});
		e.preventDefault();
	
		//dataTranster.forEach(file => {
		//	formData.append('files', file);
		//});
		//formData.append('files',dataTranster.files);
		
		//formData.append('files',product_images)
		formData.append('params', new Blob([JSON.stringify(params)], {type: "application/json"}));
		
		$.ajax({
			type : 'POST',
			async:false,
			data : formData,
			url :'<c:url value="/product/productUploadData"></c:url>',
			dataType : "json",
			contentType : false,
			processData: false,
			cache: false,
			enctype: 'multipart/form-data',
			success : function(result){
				if(result.result){
					//alert('완료');
					var rooms_count = $(".product_room_table").length - 1;
					
					$(".product_room_table").each(function(i, ele){
						let formRoomData = new FormData();
						
						$.each($(ele).find("input")[0].files, function(idx, elm) {
							formRoomData.append('files', elm);							
						});
						
						let room_item = {
							r_title: $(ele).find("input:eq('1')").val()
							, r_intro: $(ele).find("textarea:eq('0')").val()
							, r_price: $(ele).find("input:eq('2')").val()
							, r_product_num: result.product_num
						}

						formRoomData.append('room', new Blob([JSON.stringify(room_item)], {type: "application/json"}));

						$.ajax({
							async:false,
							type : 'POST',
							data : formRoomData,
							url :'<c:url value="/product/productRoomUploadData"></c:url>',
							dataType : "json",
							contentType : false,
							processData: false,
							cache: false,
							enctype: 'multipart/form-data',
							success : function(result){
								if(result.result){
									if(rooms_count == i)
										alert("저장완료!");
										location.replace('<c:url value="/product/hotel"></c:url>');
								}else{
									if(result.msg) {
										alert(result.msg);
									}
									else {
										alert('실패');
									}
								}
							}
						});
					});
				}else{
					if(result.msg) {
						alert(result.msg);
					}
					else {
						alert('실패');
					}
				}
			}
		});
		
	});
</script>
<script>
	var fileList = []; //파일 정보를 담아 둘 배열
  
	var sec9 = document.querySelector('#image_upload');
	var btnUpload = sec9.querySelector('.btn-upload');
	var inputFile = sec9.querySelector('.btn-file');
	var uploadBox = sec9.querySelector('.upload-box');
	
	fnFileUpload = function(files) {
		//리스트를 만들어서 추가하자.
		if(files != null && files != undefined && files.length > 0){
			fileList = [];
			$("[name=addFiles]").remove();
			
		    var tag = "";
		    for(i=0; i<files.length; i++){
		        var f = files[i];
		        fileList.push(f);
		        var fileName = f.name;
		        var fileSize = f.size / 1024 / 1024;
		        fileSize = fileSize < 1 ? fileSize.toFixed(3) : fileSize.toFixed(1);
		        
		        if(f.size > 1024 * 1024) {
		        	fileSize = (f.size / 1024 / 1024).toFixed(1) + " MB";
	        	}
		        else {
		        	fileSize = (f.size / 1024).toFixed(f.size > 1024 ? 1 : 3) + " KB";
		        }
		        
		        tag +=  "<div class='fileList' name='addFiles'>" +
		                    "<span class='fileName'>"+fileName+"</span>" +
		                    "&nbsp;&nbsp;<span class='fileSize'>"+fileSize+"</span>" +
		                    //"<span class='clear'>X</span>" +
		                "</div>";
		    }
		    $(sec9).append(tag);
		    //실제 파일 업로드는 어느시점에서 할까. 드랍다운시? 등록시? 음.
		}
	}
	
	btnUpload.addEventListener('click', function(e) {
		e.preventDefault();
		
		inputFile.click();
	});
	
	inputFile.addEventListener('change', function(e) {
		fnFileUpload(this.files);
	})
	
	/* 박스 안에 Drag 들어왔을 때 */
	uploadBox.addEventListener('dragenter', function(e) {
	    
	});
	
	/* 박스 안에 Drag를 하고 있을 때 */
	uploadBox.addEventListener('dragover', function(e) {
		e.preventDefault();
		
		this.style.backgroundColor = '#7FFFFF';
	});
	
	/* 박스 밖으로 Drag가 나갈 때 */
	uploadBox.addEventListener('dragleave', function(e) {	
		this.style.backgroundColor = '';
	});
	
	/* 박스 안에서 Drag를 Drop했을 때 */
	uploadBox.addEventListener('drop', function(e) {
		e.preventDefault();
		
		this.style.backgroundColor = '';
		
		fnFileUpload(e.dataTransfer.files);
		
 	});
</script>
<script>
//주소 API
function sample6_execDaumPostcode() {
   new daum.Postcode({
	   oncomplete: function(data) {
	            // 각 주소의 노출 규칙에 따라 주소를 조합한다.
	            // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
	            var addr = ''; // 주소 변수
	            var extraAddr = ''; // 참고항목 변수
	
	            //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
	            if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
	                addr = data.roadAddress;
	            } else { // 사용자가 지번 주소를 선택했을 경우(J)
	                addr = data.jibunAddress;
	            }
	
	            // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
	            if(data.userSelectedType === 'R'){
	                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
	                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
	                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
	                    extraAddr += data.bname;
	                }
	                // 건물명이 있고, 공동주택일 경우 추가한다.
	                if(data.buildingName !== '' && data.apartment === 'Y'){
	                    extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
	                }
	                // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
	                if(extraAddr !== ''){
	                    extraAddr = ' (' + extraAddr + ')';
	                }
	                // 조합된 참고항목을 해당 필드에 넣는다.
	                document.getElementById("sample6_extraAddress").value = extraAddr;
	            
	            } else {
	                document.getElementById("sample6_extraAddress").value = '';
	            }
	
	            // 우편번호와 주소 정보를 해당 필드에 넣는다.
	            document.getElementById('sample6_postcode').value = data.zonecode;
	            document.getElementById("sample6_address").value = addr;
	            // 커서를 상세주소 필드로 이동한다.
	            document.getElementById("sample6_detailAddress").focus();
	        }
	    }).open();
};
</script>
</html>