<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<style>
.foot_container{
	width:100%; height:200px; border: 1px solid #ddd; background-color: #ddd;
}
</style>
<!-- jQuery와 jQuery Modal JavaScript 파일 추가 -->
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.js"></script>
<!-- jQuery UI CSS 파일 추가 -->
<link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<!-- jQuery Modal CSS 파일 추가 -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.css">
<head>
<meta charset="UTF-8">

</head>
<style>
	/* 모달 스타일 */
.modal {
  display: none; /* 초기에는 모달이 보이지 않도록 설정합니다. */
  position: fixed; /* 스크롤과 상관없이 화면에 고정되도록 설정합니다. */
  z-index: 1; /* 모달이 다른 요소 위에 표시되도록 설정합니다. */
  left: 0;
  top: 0;
  width: 100%;
  height: 100%;
  overflow: auto; /* 스크롤이 필요한 경우 자동으로 스크롤바가 생성되도록 설정합니다. */
  background-color: rgba(0,0,0,0.4); /* 모달 외부를 어둡게 처리합니다. */
}

/* 모달 콘텐츠 스타일 */
.modal-content {
  background-color: #fefefe;
  margin: 15% auto; /* 적절한 위치에 모달을 표시하도록 설정합니다. */
  padding: 20px;
  border: 1px solid #888;
  width: 80%;
}

/* 모달 닫기 버튼 스타일 */
.close {
  color: #aaaaaa;
  float: right;
  font-size: 28px;
  font-weight: bold;
}

.close:hover,
.close:focus {
  color: #000;
  text-decoration: none;
  cursor: pointer;
}
	
</style>
<body>
<div class="foot_container">
	<!-- 모달을 나타낼 버튼 -->
<button id="open-modal-btn">모달 열기</button>

<!-- 모달 -->
<div id="modal" class="modal">
  <!-- 모달 콘텐츠 -->
  <div class="modal-content">
    <span class="close">&times;</span>
    <p>모달 콘텐츠입니다.</p>
  </div>
</div>
</div>
</body>
<script>
// dialog 열기
// 모달을 나타내는 버튼을 찾아서 클릭 이벤트를 추가합니다.
document.getElementById("open-modal-btn").onclick = function() {
  document.getElementById("modal").style.display = "block"; // 모달을 보이도록 설정합니다.
}

// 모달의 닫기 버튼을 찾아서 클릭 이벤트를 추가합니다.
document.getElementsByClassName("close")[0].onclick = function() {
  document.getElementById("modal").style.display = "none"; // 모달을 숨기도록 설정합니다.
}

// 모달 외부를 클릭하면 모달을 숨기도록 설정합니다.
window.onclick = function(event) {
  if (event.target == document.getElementById("modal")) {
    document.getElementById("modal").style.display = "none";
  }
}
</script>
</html>


