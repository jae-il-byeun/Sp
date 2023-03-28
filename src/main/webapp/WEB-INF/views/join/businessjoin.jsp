<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>

<html>

<head>
<meta charset="UTF-8">
<title>사업자가입</title>

</head>
<style>
th{text-align: left; padding-left: 5px; }
td{width:50%;}
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
	display: inline-block; margin-left: 3px; margin-right: 3px;
}
.rrn_text{
	width:46.6%; margin-right: 0px;
}

.year{width:20%;}

#email_box span{margin:0px;}
#email_box select{width:20%; margin-left:-4px; }
#email_id{width:50%;}
#email_domain{margin-right:3px; width:20%;}
#ba_title{line-height: 35px;}

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
						<input type="text">
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
						<input type="text">
						<button type="button">인증번호</button>
						<input type="text" placeholder="인증번호란">
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
						<button>작성완료</button>
					</td>
				</tr>	
			</table>
		</form>
	</div>
	
</div>

</body>
</html>