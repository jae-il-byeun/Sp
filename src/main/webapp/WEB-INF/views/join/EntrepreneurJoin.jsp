<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>

<head>
<meta charset="UTF-8">
<title>사업자가입</title>

</head>
<style>
th{text-align: left; padding-left: 5px; }
td{width:80%;}
tr{width:100%;}
input{
	width:80%; height:42px; font-size: 15px;
	margin:3px 0px 10px; box-sizing: border-box; padding-left:10px;
	}
.join_container{
	width:100%; height:100%; 
	box-sizing: border-box; padding:30px 450px;
	margin-bottom:80px;
}
.join_box{
	width:100%; height:100%; 
	box-sizing: border-box; padding:10px 50px;
}
.join_form{display:flex; margin-top:15px;}
.join_table{
	width:100%; height:100%;
}
.join_table tr td select{
	width:30%; height: 46px;
}
.year_box{
	width:30%;
}
#rrn_area{
	width:20%;
}
.rrn_box{
	width:20%;
}
.rrn_text{
	width:36%; margin-right: 0px;
}

#year{width:20%;}
.gender{width:3%; }
.g_text{display:inline-block; vertical-align: middle;}
</style>
<body>
<%@ include file = "/WEB-INF/views/layout/header.jsp" %>
<div class="join_container">
	<div class="join_box">
		<h1>사업자가입</h1>
		<form action="" class="join_form">
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
					<th>이름</th>
				</tr>
				<tr>
					<td>
						<input type="text">
					</td>
				</tr>
				<tr>
					<th>주민등록번호</th>
				</tr>
				<tr id="rrn_area">
					<td  class="rrn_box">
						<input type="text" class="rrn_text">
							<span>- </span>
						<input type="password" class="rrn_text" >
					</td>
				</tr>
				
				
				
				
			</table>
			<table class="join_table">
				<tr>
					<th>생년월일</th>
				</tr>
				<tr>
					<td class="year_box">
						<input type="text" placeholder="년(4자)" id="year">
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
							<option>12</option>
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
							<input type="radio" class="gender" >
							<span class="g_text">남자</span>
						</label>
						<label>
							<input type="radio"  class="gender">
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
						<input type="text">
						<button type="button">인증번호</button>
						<input type="text" placeholder="인증번호란">
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

<%@ include file = "/WEB-INF/views/layout/footer.jsp" %>
</body>
</html>