<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>

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
	}
.join_container{
	width:100%; height:100%; 
	box-sizing: border-box; padding:30px 500px;
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
	display: inline-block; margin-left: 3px;
}
.rrn_text{
	width:46%; margin-right: 0px;
}

.year{width:20%;}
.gender{width:3%; }
.g_text{display:inline-block; vertical-align: middle;
	position: relative; bottom:17px;margin-left: 0px;
}
#email_box span{margin:0px;}
#email_box select{width:20%; margin-left:-4px; }
#email_id{
	width:50%;
}
#email_domain{width:20%;}
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
						<input type="text" id="me_id">
					</td>
				</tr>
				<tr>
					<th>비밀번호</th>
				</tr>
				<tr>
					<td>
						<input type="password" id="me_pw">
					</td>
				</tr>
				<tr>
					<th>비밀번호확인</th>
				</tr>
				<tr>
					<td>
						<input type="password" id="me_pwcheck">
					</td>
				</tr>
				<tr>
					<th>이름</th>
				</tr>
				<tr>
					<td>
						<input type="text" id="me_name">
					</td>
				</tr>
				<tr>
					<th>주민등록번호</th>
				</tr>
				<tr id="rrn_area">
					<td  class="rrn_box">
						<input type="text" class="rrn_text" id="me_rrnFront">
							<span>- </span>
						<input type="password" class="rrn_text" id="me_rrnBack">
					</td>
				</tr>
					<tr>
					<th>생년월일</th>
				</tr>
				<tr>
					<td class="year_box">
						<input type="text" placeholder="년(4자)" classs="year" id="me_year">
						<select >
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
						<select >
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
					<td>
						
					</td>
					<td>
						
					</td>
				</tr>
				<tr>
					<th>성별</th>
				</tr>
				<tr>
					<td>
						<label>
							<input type="radio" name="g_check"class="gender" value="1">
							<span class="g_text">남자</span>
						</label>
						<label>
							<input type="radio" name="g_check"  class="gender" value="2">
							<span class="g_text">여자</span>
						</label>
					</td>
				</tr>
				<tr>
					<th>전화번호</th>
				</tr>
				<tr>
					<td>
						<select></select>
					</td>
				</tr>		
				<tr>	
					<td>
						<input type="text" id="phone_text">
						<button type="button">인증번호 발송</button>
						<input type="text" placeholder="인증번호란">
					</td>
				</tr>
				<tr>
					<th>회원이메일</th>
				</tr>
						
				<tr>	
					<td id="email_box">
						<input type="text" id="email_id">
						<span>@</span>
						<input type="text" id="email_domain">
						<select>
							<option>naver.com</option>
						</select>
					</td>
				<tr>
					<td>
						<button>작성완료</button>
					</td>
				</tr>	
				
				
				
			</table>
		
		</form>
	</div>
	
</div>

</body>
<script>
	$('form').validate({
		rules:{
			me_id : {
					required :true,
					regex : /^[a-zA-Z][a-zA-Z0-9-_]{5,20}$/
			},
			me_pw : {
					required : true,
					regex : /^[a-zA-Z0-9!@]{8,16}$/
				
			}
		}
	});
	$('.gender').click(function(){
		var genderCheck = $(this).find($('.gender:radio'));
		if(genderCheck.attr("checked") == "checked"){
			
			genderCheck.removeAttr("checked");
			
		}else{
			genderCheck.attr("checked","checked");
		}
	});
</script>
</html>
