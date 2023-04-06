<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>

<html>
<script src="<c:url value='/resources/js/jquery.validate.min.js'></c:url>"></script>
<script src="<c:url value='/resources/js/additional-methods.min.js'></c:url>"></script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<head>
<meta charset="UTF-8">
<title>사업자가입</title>

</head>
<style>
th{text-align: left; padding-left: 5px; }
td{width:80%;}
tr{width:180%;}
body{ font-family: 'GyeonggiTitleM';}
@font-face {
    font-family: 'GyeonggiTitleM';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_one@1.0/GyeonggiTitleM.woff') format('woff');
    font-weight: normal;
    font-style: normal;
}
input{
	width:99%; height:42px; font-size: 15px;
	margin:3px 0px 10px; box-sizing: border-box; padding-left:10px;
	border-radius : 5px; border: 1px solid gray; box-shadow : 1px 1px 4px gray; 
	}
.join_container{
	width:100%; height:100%; 
	box-sizing: border-box; padding:30px 570px 30px 530px;
	margin-bottom:80px;
}
.join_box{
	width:100%; height:100%; 
	box-sizing: border-box; padding:10px 150px 10px 250px; margin-top: 130px;
}
.join_form{display:flex; margin-top:15px;}
.join_table{
	width:100%; height:100%;
}
.join_table tr td select{
	width:30%; height: 46px; font-size: 15px;
}
[name=bi_id]{
	width:81.6%;
}
[name=bi_idCheck]{
	width:17%; height:45px; 
	font-size:14px; 
	border:1px solid #fff; border-radius: 7px;
	background-color: teal; color:#fff; 
	box-sizing: border-box; padding:0px 2px;
	cursor: pointer; box-shadow : 1px 1px 4px teal;
}

#email_box span{margin:0px;}
#email_box select{width:20%; margin-left:-4px; }
#email_id{width:50%;}
#email_domain{margin-right:3px; width:22.3%;}
#ba_title{margin-top: 10px;line-height: 35px;}
#bu_sendEmail{
	width:40%;  height: 43px;
	float:right;
	border:1px solid #fff; border-radius: 7px;
	background-color: teal; color:#fff; 
	box-sizing: border-box; padding:0px 2px;
	cursor: pointer; box-shadow : 1px 1px 4px teal;
}
#sample6_postcode{
	width:45%;
	display:block;
}
#bi_postNumSearch{ height: 43px;
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

[name = bi_complete]{
	width:100%; height: 43px;
	font-size: 17px;
	border:1px solid #fff; border-radius: 7px;
	background-color: navy; color:#fff; box-shadow : 1px 1px 4px teal; 
	box-sizing: border-box; padding:0px 2px; margin-top: 20px;
	cursor: pointer; 
}
</style>
<body>

<div class="join_container">
	<div class="join_box">
		<h1>사업자가입</h1>
		<form action="<c:url value='/join/business'></c:url>" method="post" class="join_form">
			<table class="join_table">
				<tr>
					<th>아이디</th>
				</tr>
						
				<tr>	
					<td>
						<input type="text" name="bi_id">
						<button type="button" class="idCheck" name="bi_idCheck">중복확인</button>
					</td>
				</tr>
				<tr>
					<th>비밀번호</th>
				</tr>
				<tr>
					<td>
						<input type="password" name="bi_pw" id="bi_pw">
					</td>
				</tr>
				<tr>
					<th>비밀번호확인</th>
				</tr>
				<tr>
					<td>
						<input type="text" name="bi_pwCheck">
					</td>
				</tr>
				
				
				<tr>
					<th>사업자명</th>
				</tr>
				<tr>
					<td>
						<input type="text" name="bi_name">
					</td>
				</tr>
				<tr>
					<th>상호명</th>
				</tr>
						
				<tr>	
					<td>

						<input type="text" name="bi_company">
					</td>
				</tr>
				<tr>
					<th>사업자등록번호</th>
				</tr>
						
				<tr>	
					<td>

						<input type="text" name="bi_brn">
					</td>
				</tr>
				<tr>
					<th>사업자전화번호</th>
				</tr>
				<tr>	
					<td>
						<input type="text" id="phone_text" name="bi_phone">
					</td>
				</tr>
				<tr>
					<th>사업자이메일</th>
				</tr>
						
				<tr>	
					<td id="email_box">
						<input type="text" id="email_id" name="bi_email">
						<span>@</span>
						<input type="text" id="email_domain">
						<select>
							<option>naver.com</option>
						</select>
						<button type="button" id="bu_sendEmail">인증번호 발송</button>
					</td>
				</tr>
				<tr style="margin-bottom:10px;">
					<th id="ba_title">사업자주소</th>
				</tr>
				<tr >
					<th style="display:block;">우편번호</th>
					<td style="display:flex; ">
						<input type="text" id="sample6_postcode" name="bi_postNum">
						<input type="button" id="bi_postNumSearch" onclick="sample6_execDaumPostcode()" value="우편번호 찾기">
					</td>
				</tr>
				<tr>
					<th>주소</th>
				</tr>
				<tr>
					<td>
						<input type="text" id="sample6_address" name="bi_mainAddress">
					</td>
				</tr>
				<tr>
					<th>상세주소</th>
				</tr>
				<tr>
					<td  style="display:flex; ">
						<input type="text" id="sample6_detailAddress" name="bi_detailAddress">
						<input type="text" id="sample6_extraAddress" name="bi_extraAddress" placeholder="참고항목">
					</td>
				</tr>
				
				<tr>
					<td>
						<button name="bi_complete">작성완료</button>
					</td>
				</tr>	
			</table>
		</form>
	</div>
	
</div>

</body>
<script>
var _chk = false;
$('form').validate({
	rules:{
		bi_id : {
			required: true,
			regex : /^[a-zA-Z][a-zA-Z0-9-_]{5,20}$/
		},
		bi_pw : {
			required :true,
			regex : /^[a-zA-Z0-9!-~]{8,16}$/
		},
		bi_pwcheck : {
			equalTo: bi_pw
		},
		bi_email : {
			required :true,
			email : true
		},
		bi_phone : {
			required : true,
			regex : /^[0-9]{10,11}$/
		},
		bi_brn : {
			required: true,
			regex : /^[0-9]{7,7}$/
				
		},
		bi_postNum : {
			required :true
		},
		bi_mainAddress : {
			required : true
		},
		bi_detailAddress : {
			required : true
		}
	},
	messages:{
		bi_id : {
			required : '필수 항목입니다.',
			regex : '아이디는 영문자로 시작하며, 영문, 숫자, 특수기호 -,_ 를 이용하여 5~20자 까지 가능합니다.'
		},
		bi_pw : {
			required : '필수 항목입니다.',
			regex : '비밀번호는 영문, 숫자, 특수기호를 이용하여 8~16자 까지 가능합니다.'
		},
		bi_pwcheck : {
			equalTo: '비밀번호와 일치하지 않습니다.'
		},
		bi_email : {
			required : '필수 항목입니다.',
			reqex : '잘못된 이메일주소입니다.'
		},
		bi_phone : {
			required : '필수 항목입니다.',
			regex : '잘못된 번호입니다.'
		},
		bi_brn : {
			required : '필수 항목입니다.',				
			regex : '잘못된 형식입니다.'
		},
		bi_postNum : {
			required: '필수 항목입니다.'
		},
		bi_mainAddress : {
			required : '필수 항목입니다.'
		},
		bi_detailAddress : {
			required : '필수 항목입니다.'
		}

	},
	submitHandler : function(form){
			if(!BiIdCheck){
				alert('아이디 중복체크를 하세요');
				return false;
			}
			return true;
	},
	errorPlacement : function(error, element){
		var _ad = element.attr("id");
		if((_ad == "bi_postNum" || _ad == "bi_mainAddress" || _ad == "bi_detailAddress") && _chk == false){
			_chk = true;
			element.parent().append(error);
		}
		else if(!((_ad == "bi_postNum" || _ad == "bi_mainAddress" || _ad == "bi_detailAddress") && _chk == true)){
			element.parent().append(error);
		}
	};
});
	
$.validator.addMethod(
		"regex",
		function(value, element, regexp) {
		var re = new RegExp(regexp);
			return this.optional(element) || re.test(value);
		},
		"Please check your input."
);
	
let idc = false;
$('.idCheck').click(function(){
	let bi_id = $('[name = bi_id]').val();
	let obj = { bi_id : bi_id};
	$.ajax({
		async :true,
		type : 'POST',
		data : JSON.stringify(obj),
		url : '<c:url value="/check/BiId"></c:url>',
		dataType : "json",
		contentType : "application/json; charset=UTF-8",
		success : function(data){
			if(data.res){
				alert('사용 가능한 아이디입니다.');
				idc = true;
			}else{
				alert('이미 사용중인 아이디입니다.');
			}
		}
	});
});
$('[name = bi_id]').change(function(){
	idc = false;
});

</script>
<script>
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