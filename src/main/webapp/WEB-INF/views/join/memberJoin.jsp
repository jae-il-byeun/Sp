<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>

<html>
<script src="<c:url value='/resources/js/jquery.validate.min.js'></c:url>"></script>
<script src="<c:url value='/resources/js/additional-methods.min.js'></c:url>"></script>
<head>

<meta charset="UTF-8">
<title>회원가입</title>

</head>
<style>
th{text-align: left; padding-left: 5px; }
td{width:80%;}
tr{width:100%;}
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
select{
	border-radius : 5px; border: 1px solid gray; box-shadow : 1px 1px 4px gray;
}
.join_container{
	width:100%; height:100%; 
	box-sizing: border-box; padding:30px 470px 30px 530px;
	margin-bottom:80px;
}
.join_box{
	width:100%; height:100%;  
	box-sizing: border-box; padding:10px 200px; margin-top: 130px; 
}
.join_form{display:flex; margin-top:15px;}
.join_table{
	width:100%; height:100%;
}
.join_table tr td select{
	width:30%; height: 46px; font-size: 15px;
}
[name=me_id]{
	width:84.6%;
}
[name=me_idCheck]{
	height:43px; 
	font-size:14px; 
	border:1px solid green; border-radius: 7px;
	background-color: green; color:#fff; 
	box-sizing: border-box; padding:0px 2px;
	cursor: pointer; box-shadow : 1px 1px 4px green;
}
.year_box{
	width:35%;
}
#rrn_area{
	width:20%;
}
.rrn_box{
	width:20%;
}
.rrn_box span{
	display: inline-block; margin-left: 3px; margin-right: 3px;
}
.rrn_text{
	width:46.6%; margin-right: 0px;
}

.year{width:20%;}
.gender{width:20%; box-shadow : none;}
.g_text{display:inline-block; vertical-align: middle;
	position: relative; bottom:17px;margin-left: 0px;
}
#email_box span{margin:0px;}
#email_box select{width:20%; margin-left:-4px; }
.email_id{	width:50%;}
.email_domain{width:22.2%; margin-right:3px;}
[name = me_sendPhoneCheck]{
	width:74.5%;
}
#me_phone{
	height: 43px;
	border:1px solid green; border-radius: 7px;
	background-color: green; color:#fff; 
	box-sizing: border-box; padding:0px 2px;
	cursor: pointer; box-shadow : 1px 1px 4px green;
}
[name = me_complete]{
	height: 43px;
	float:right;
	font-size: 17px;
	border:1px solid green; border-radius: 7px;
	background-color: green; color:#fff; 
	box-sizing: border-box; padding:0px 2px;
	cursor: pointer; box-shadow : 1px 1px 4px green;
}
</style>
<body>
<div class="join_container">
	<div class="join_box">
		<h1>회원가입</h1>
		<form action="<c:url value='/join/member'></c:url>" method="post" class="join_form">
			<table class="join_table">
				<tr>
					<th>아이디</th>
				</tr>
						
				<tr>	
					<td>
						<input type="text" name="me_id">
						<button type="button" class="idCheck" name="me_idCheck">중복확인</button>
					</td>
				</tr>
				<tr>
					<th>비밀번호</th>
				</tr>
				<tr>
					<td>
						<input type="password" name="me_pw" id="me_pw">
					</td>
				</tr>
				<tr>
					<th>비밀번호확인</th>
				</tr>
				<tr>
					<td>
						<input type="password" name="me_pwcheck">
					</td>
				</tr>
				<tr>
					<th>이름</th>
				</tr>
				<tr>
					<td>
						<input type="text" name="me_name">
					</td>
				</tr>
				<tr>
					<th>주민등록번호</th>
				</tr>
				<tr id="rrn_area">
					<td  class="rrn_box">
						<input type="text" class="rrn_text" name="me_rrnFront"id="me_rrnFront">
							<span>- </span>
						<input type="password" class="rrn_text" name="me_rrnBack"id="me_rrnBack">
					</td>
				</tr>
					<tr>
					<th>생년월일</th>
				</tr>
				<tr>
					<td class="year_box">
						<input type="text" placeholder="년(4자)" class="year" name="me_year" >
						<select name="me_month">
							<option>월</option>
							<option>1</option>
							<option>2</option>
							<option>3</option>
							<option>4</option>
							<option>5</option>
							<option>6</option>
							<option>7</option>
							<option>8</option>
							<option>9</option>
							<option>10</option>
							<option>11</option>
							<option>12</option>
						</select>
						<select name="me_day">
							<option>일</option>
							<option>1</option>
							<option>2</option>
							<option>3</option>
							<option>4</option>
							<option>5</option>
							<option>6</option>
							<option>7</option>
							<option>8</option>
							<option>9</option>
							<option>10</option>
							<option>11</option>
							<option>13</option>
							<option>14</option>
							<option>15</option>
							<option>16</option>
							<option>17</option>
							<option>18</option>
							<option>19</option>
							<option>20</option>
							<option>21</option>
			
							
						</select>
						
					</td>

				</tr>
				<tr>
					<th>성별</th>
				</tr>
				<tr>
					<td>
						<label>
							<input type="radio" name="g_check"class="gender" value="0">
							<span class="g_text">남자</span>
						</label>
						<label>
							<input type="radio" name="g_check"  class="gender" value="1">
							<span class="g_text">여자</span>
						</label>
					</td>
				</tr>
				<tr>
					<th>전화번호</th>
				</tr>
				<tr>
					<td>
						<select>
							<option>대한민국 +82</option>
						</select>
					</td>
				</tr>		
				<tr>	
					<td>
						<input type="text" name="me_phone">
						<input type="text" name="me_sendPhoneCheck" placeholder="인증번호란">
						<button type="button" id="me_sendPhone">인증번호 발송</button>
					</td>
				</tr>
				<tr>
					<th>회원이메일</th>
				</tr>
						
				<tr>	
					<td id="email_box">
						<input type="text" class="email_id" name="me_emailId">
						<span>@</span>
						<input type="text" class="email_domain" name="me_domain">
						<select id="email_domainKind">
							<option>naver.com</option>
						</select>
					</td>
				<tr>
					<td>
						<button name="me_complete">작성완료</button>
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
			me_id : {
				required: true,
				regex : /^[a-zA-Z][a-zA-Z0-9-_]{5,20}$/
			},
			me_pw : {
				required :true,
				regex : /^[a-zA-Z0-9!-~]{8,20}$/
			},
			me_pwcheck : {
				equalTo: me_pw
			},
			me_email : {
				required :true,
				email : true
			},
			me_gender : {
				required : true,
				checked : true
			},
			me_rrnFront : {
					required: true,
					regex : /^[0-9]{6,6}$/
					
			},
			me_rrnBack : {
				required: true,
				regex : /^[0-9]{7,7}$/
				
			}
		},
		messages:{
			me_id : {
				required : '필수 항목입니다.',
				regex : '아이디는 영문자로 시작하며, 영문, 숫자, 특수기호 -,_ 를 이용하여 5~20자 까지 가능합니다.'
			},
			me_pw : {
				required : '필수 항목입니다.',
				regex : '비밀번호는 영문, 숫자, 특수기호를 이용하여 8~20자 까지 가능합니다.'
			},
			me_pwcheck : {
				equalTo: '비밀번호와 일치하지 않습니다.'
			},
			me_email : {
				required : '필수 항목입니다.',
				reqex : '잘못된 이메일주소입니다.'
			},
			me_gender : {
				required : '필수 항목입니다.',
				checked : '성별이 선택되지 않았습니다.'
			},
			me_rrnFront : {
				required : '필수 항목입니다.',				
				regex : '잘못된 앞번호입니다.'
			},
			me_rrnBack : {
				required : '필수 항목입니다.',
				regex : '잘못된 뒷번호입니다.'
				
			}

		},
		submitHandler : function(form){
			if(!idCheck){
				alert('아이디 중복체크를 하세요');
				return false;
			}
			return true;
		},
		errorPlacement : function(error, element){
			var _id = element.attr("id");
			if((_id == "me_rrnFront" || _id == "me_rrnBack") && _chk == false){
				_chk = true;
				element.parent().append(error);
			}
			else if(!((_id == "me_rrnFront" || _id == "me_rrnBack") && _chk == true)){
				element.parent().append(error);
			}
		}
	});
	
	$.validator.addMethod(
			"regex",
			function(value, element, regexp) {
				var re = new RegExp(regexp);
				return this.optional(element) || re.test(value);
			},
			"Please check your input."
);
	
$('.gender').click(function(){
		var genderCheck = $(this).find($('.gender:radio'));
		if(genderCheck.attr("checked") == "checked"){
			
			genderCheck.removeAttr("checked");
			
		}else{
			genderCheck.attr("checked","checked");
		}
});


let idc = false;
$('.idCheck').click(function(){
	let me_id = $('[name = me_id]').val();
	let obj = { me_id : me_id};
	$.ajax({
		async :true,
		type : 'POST',
		data : JSON.stringify(obj),
		url : '<c:url value="/check/id"></c:url>',
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
$('[name = me_id]').change(function(){
	idc = false;
});

</script>
</html>
