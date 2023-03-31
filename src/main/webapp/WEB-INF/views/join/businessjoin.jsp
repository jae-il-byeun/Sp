<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>

<html>
<link rel="stylesheet" href="<c:url value='/resources/css/jquery-ui.min.css'></c:url>">
<script src="<c:url value='/resources/js/jquery.validate.min.js'></c:url>"></script>
<script src="<c:url value='/resources/js/additional-methods.min.js'></c:url>"></script>
<script src="<c:url value='/resources/js/jquery-ui.min.js'></c:url>"></script>
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
	box-sizing: border-box; padding:10px 200px; margin-top: 130px;
}
.join_form{display:flex; margin-top:15px;}
.join_table{
	width:100%; height:100%;
}
.join_table tr td select{
	width:30%; height: 46px; font-size: 15px;
}
[name=bu_id]{
	width:84.6%;
}
[name=bu_idCheck]{
	height:43px; 
	font-size:14px; 
	border:1px solid teal; border-radius: 7px;
	background-color: teal; color:#fff; 
	box-sizing: border-box; padding:0px 2px;
	cursor: pointer; box-shadow : 1px 1px 4px teal;
}

#email_box span{margin:0px;}
#email_box select{width:20%; margin-left:-4px; }
#email_id{width:50%;}
#email_domain{margin-right:3px; width:22.3%;}
#ba_title{line-height: 35px;}
[name = bu_sendPhoneCheck]{
	width:74.5%;
}
#bu_sendPhone{
	height: 43px;
	border:1px solid teal; border-radius: 7px;
	background-color: teal; color:#fff; 
	box-sizing: border-box; padding:0px 2px;
	cursor: pointer; box-shadow : 1px 1px 4px teal;
}
[name = bu_complete]{
	height: 43px;
	float:right;
	font-size: 17px;
	border:1px solid teal; border-radius: 7px;
	background-color: teal; color:#fff; 
	box-sizing: border-box; padding:0px 2px;
	cursor: pointer; box-shadow : 1px 1px 4px teal;
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
						<input type="text" name="bu_id">
						<button type="button" class="idCheck" name="bu_idCheck">중복확인</button>
					</td>
				</tr>
				<tr>
					<th>비밀번호</th>
				</tr>
				<tr>
					<td>
						<input type="password">
					</td>
				</tr>
				<tr>
					<th>비밀번호확인</th>
				</tr>
				<tr>
					<td>
						<input type="text">
					</td>
				</tr>
				
				
				<tr>
					<th>사업자명</th>
				</tr>
				<tr>
					<td>
						<input type="text">
					</td>
				</tr>
				<tr>
					<th>상호명</th>
				</tr>
						
				<tr>	
					<td>

						<input type="text">
					</td>
				</tr>
				<tr>
					<th>사업자등록번호</th>
				</tr>
						
				<tr>	
					<td>

						<input type="text">
					</td>
				</tr>
				<tr>
					<th>사업자전화번호</th>
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
						<input type="text" id="phone_text">
						<input type="text" name="bu_sendPhoneCheck" placeholder="인증번호란">
						<button type="button" id="bu_sendPhone">인증번호 발송</button>
					</td>
				</tr>
				<tr>
					<th>사업자이메일</th>
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
				</tr>
				<tr style="margin-bottom:10px;">
					<th id="ba_title">사업자주소</th>
				</tr>
				<tr >
					<th style="display:block;">우편번호</th>
					<td style="display:block;">
						
						<input type="text">
					</td>
				</tr>
				<tr>
					<th>집주소</th>
				</tr>
				<tr>
					<td>
						<input type="text">
					</td>
				</tr>
				<tr>
					<th>상세주소</th>
				</tr>
				<tr>
					<td>
						<input type="text">
					</td>
				</tr>
				
				<tr>
					<td>
						<button name="bu_complete">작성완료</button>
					</td>
				</tr>	
			</table>
		</form>
	</div>
	
</div>

</body>
</html>