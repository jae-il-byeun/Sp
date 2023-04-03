<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page session="false" %>
<!DOCTYPE html>
<html>

<style>
*{margin:0px; padding:0px;}
li{list-style: none;}
a{text-decoration: none; color:#000;}
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
#pt_title{margin:30px 0px 5px 10px;}

.product_contentContainer{
	width:100%; height: 100%;
	box-sizing: border-box; margin-top: 10px;
}
.product_content{
	width:100%; height:100%;
}
/* 좌석예약 */
  .container{ 
    width: 100%; height: 100%;
     margin-bottom: 40px;
    position: relative;
  }
  .contentBox{
    display: flex;
  }
  /* 필터상자 */
  .filterBox{ box-shadow:3px 3px 5px gray; 
        width: 14.7%; height: 750px; min-width: 230px;
        background-color: teal;
        border-radius: 3px;
        color: #fff;
    }
    /* 필터날짜 */
    .today{ font-size: 20px; text-align: left;
        width: 100%; height: 50px; line-height: 50px;
        padding-top: 15px; margin-top: 15px; margin-left: 8px;
    }
    /* 필터 출발지 도착지 */
    .promotion{ 
        width: 230px; height: 200px;
    }
    .promotion-place{  
        display: flex; height: 150px;  padding: 0px 15px 0px 30px;
      }
    .roote{ text-align: center; background-color: #fff; color: #004932; border-radius: 5px;
        width: 35%; height: 27px; margin-top: 30px; font-size: 20px;
    }
    .roote-clear{  padding-top: 10px;
        width: 28%; height: 50px; margin-top: 21px; text-align: center;
    }
    .place{display: block; margin-top:15px; color: #fff; letter-spacing: -2px;width: 80px; text-align: left;}
    
    /* 필터 시간 */
    .delay{ padding-top: 10px;
        width: 100%; height: 20px; display: block; text-align: right;
        font-size: 14px; margin-bottom: 7px;
    }
    /* 필터 거리 */
    .distance{  text-align: right;
        width: 100%; height: 20px; display: block;
        font-size: 14px;
    }
    /* 필터 요금 */
    .payInfo{
        width: 100%; height: 100%; 
    }
    .nomalPay{text-align: right; margin-top: 30px;}
    .payInfo-text{ text-align: left; position: relative; top: 15px; 
        
    }
    .pay-clear{width: 100%; height: 10px; display: block;}
    dt{text-align: left;}
    
    dd{text-align: right; position: relative;top: -25px;}
    /* 필터상자 끝*/
   .seat_container{
      border: 2px solid #e6e6e6;
      width: 100%; height: 750px;  max-width: 1635px;
      margin: 0px 150px;
      border-radius: 3px;
      position: relative; box-shadow: 3px 3px 5px gray; 
    }
    
    /* 좌석상세 */
    .seatReservationBox{
      width: 100%; height: 100%;
      padding-left: 100px;
      display: flex;
    }
    .seatBackground{
      width: 30%; height: 780px; margin-top: 10px;
      background: url(/project/resources/img/seatBackgroundUpdate.png)50% 0 no-repeat;
      
    }
    .seatList{
      width: 250px;
      margin: 0 auto;
      padding:205px 20px 0 20px;
      font-size: 0;
      box-sizing: border-box;
    }
    .seatBox{
      display: inline-block;
      position: relative;
      width: 40px; height: 45px; margin-bottom: 4px;
    }
    [name=seatIn]{ 
      display: block;
      position: absolute;
      left: 0;
      top: 0;
      opacity: 0;
    }
    input[type=":checkbox"]{
      margin: 0;
      padding: 0;
      vertical-align: middle;
      width: 13px;
      height: 13px;
      line-height: 13px;
    }
    .seatBox label{
      display: block;
      position: relative;
      width: 100%;
      height: 100%;
      background: url(/project/resources/img/busSeat.png) 0 0 no-repeat;
      text-align: center;
      font-size: 12px;
      line-height: 35px;
      cursor: pointer;
      z-index: 10;
    }
    .seat45 .seatList span.last_seat:nth-child(4n+3) {
    margin-left: 2px;
    }
    .seat45 .seatList span:nth-child(4n+3) {
    margin-left: 44px;
    }
    
    .seatBox input:checked + label {
      background-position: 0 -48px;
      font-weight: bold;
      color: #000;
    }
    .seatBox input:checked + label:after {
    display: block;
    content: "";
    position: absolute;
    right: -5px;
    top: -5px;
    width: 20px;
    height: 21px;
    background: url(/project/resources/img/busChecked.png) 0 0 no-repeat;
    }
    .seatHeader{
      border: 1.5px solid #e6e6e6;
      box-shadow: 0px 1px 1px  gray;
      width: 100%; height: 80px;
      position: relative; margin-top:15px; margin-bottom:5px;
    }
    .seatHeader::after{display: block; content: ""; clear: both;}
    /* 새로고침 */
    .refreshBox{ 
        float: none;
        width: 88px; height: 100%;
        position: absolute; top: 0; right: 15px;
        z-index: 10;
        padding: 10px; box-sizing: border-box;
    } 
	.refresh{
        width: 65px;height: 100%;
        background-color: #f3f4f6;
        border: 0; cursor: pointer;
        position: relative; display: inline-block; vertical-align: middle; line-height: 1.2;
        
    }
    .refresh-icon{cursor: pointer;}
    /* 잔여좌석텍스트 */
    .remaining{
        float: left; position: relative; display: block;
        height: 100%; width: 100%;
        font-size: 0; 
        text-align: center;  
    }
    .remaining_text{font-size: 22px; font-weight: bold; text-align: center; line-height: 90px;}
    /* 선택좌석 */
    .selectSeat_detailBox{
      width: 40%; height: 100%;
      margin-top:10px; margin-left: 70px;
      z-indox:10;
    
    }
    .selectSeatBox{ 
      width: 100%; height: 90px;
      box-sizing: border-box; padding: 10px 10px 5px 15px; margin-bottom: 8px;
      border-left: 1.5px solid #e6e6e6;
      border-bottom: 1.5px solid #e6e6e6;
      border-right: 1.5px solid #e6e6e6;
      box-shadow: 0px 1px 1px  gray;
      
    }
    .selectSeatBox span{ color:#5f99c9;}
    #selectSeatBox_title{margin-bottom: 15px; font-size: 16px; font-weight: bold;}
    /* 탑승인원 및 요금 */
    .board_payBox{
      width: 100%; height: 160px;
      box-sizing: border-box; padding: 10px 30px 5px 15px; margin-bottom: 8px;
      border-left: 1.5px solid #e6e6e6;
      border-bottom: 1.5px solid #e6e6e6;
      border-right: 1.5px solid #e6e6e6;
      box-shadow: 0px 1px 1px  gray;
    }
    .board_payBox ul{font-weight: bold; font-size: 16px;}
    .board_payBox li{color:#5f99c9; margin-top: 7px; font-weight: normal; font-size: 15px;}
    .board_payBox li span{ float: right; color: #000;}
    .board_payBox li button{ cursor: pointer;
      width: 18px; height: 18px; font-size: 13px; 
      border: 1.5px solid #e6e6e6; border-radius: 5px;
    }
    /* 할인 */
    .seat_discountBox{
      width: 100%; height: 90px;
      box-sizing: border-box; padding: 10px 30px 5px 15px; margin-bottom: 8px;
      border-left: 1.5px solid #e6e6e6;
      border-bottom: 1.5px solid #e6e6e6;
      border-right: 1.5px solid #e6e6e6;
      box-shadow: 0px 1px 1px  gray;
    }
    .seat_discountBox strong{font-size: 16px; font-weight: bold;}
    .seat_discountBox span{display: block; margin-top: 10px; margin-left: 40px; font-size: 15px;}
    .seat_discountBox input{ margin-left: 5px;}
    #dicount_example{font-size: 12px; text-align: left;margin-top: 2px; margin-left: 60px;}
    /* 총 결제 */
    .total_payBox{ position: relative;
      width: 100%; height: 221px;
      box-sizing: border-box; padding: 20px 30px 5px 25px; margin-bottom: 2px;
      border-left: 1.5px solid #e6e6e6;
      border-right: 1.5px solid #e6e6e6;
      box-shadow: 0px 1px 1px  gray;
    }
    .total_payBox strong{font-size: 20px; font-weight: bold;}
    .total_payBox span{
      display: block; text-align: right;
      font-size: 30px; margin-top: 50px;
    }
    #complete{
      float: right; width: 40%; height: 25%; text-align: center; line-height: 53px;
      background: #e6e6e6; border-radius: 5px; margin-top: 25px;
      color: #fff;
    }
</style>
<head>
<meta charset="UTF-8">
<title>배차조회</title>
</head>
<body>
<div class="product_outterContainer">
	<div class="product_innerContainer">
		<div class="product_titleBox">
			<h1 id="pt_title">좌석선택</h1>
		</div>
	
		<div class="product_contentContainer">
			<div class="product_content">
				  <!-- 좌석 예약 -->
				  <div class="container">
				    <div class="contentBox">
				      <!-- 필터박스 -->
				      <div class="filterBox">
				        <p class="today" id="recive_day">2023.02.16.목</p>
				        <hr>
				        <div class="promotion">
				            <div class="promotion-place">
				                <p class="roote">
				                    <span class="point" >출발지</span>
				                    <span class="place" id="sPlace">서울</span>
				                </p>
				                <p class="roote-clear">  ←--→ </p>
				                <p class="roote">
				                    <span class="point">도착지</span>
				                    <span class="place" id="ePlace">부산</span>
				                </p>
				            </div>
				            <hr>
				
				            <span class="delay">1시간 40분 소요</span>
				            <span class="distance">1.34km</span>
				        </div>
				        
				        <div class="payInfo">
				            <div class="nomalPay">
				                <p class="payInfo-text">요금정보</p>
				                <span class="nomalPay-text">(일반요금)</span>
				            </div>
				            <hr>
				            <div class="pay"></div>
				            <span class="pay-clear"></span>
				            <dt>우등</dt>
				            <dd>10,000원</dd>
				            <dt>고속</dt>
				            <dd>10,000원</dd>
				            <dt>심야우등</dt>
				            <dd>10,000원</dd>
				            <dt>심야우등할증</dt>
				            <dd>10,000원</dd>
				            <dt>심야고속</dt>
				            <dd>10,000원</dd>
				            <dt>심야고속할증</dt>
				            <dd>10,000원</dd> 
				        </div>
				
				      </div>
				      <!-- 필터박스 끝-->
				      <!-- 좌석예약 -->
				      <div class="seat_container">
				        <!-- 좌석예약박스 헤더-->
				       
				        <!-- 좌석상세 -->
				        <div class="seatReservationBox">
				          <div class="seatBackground seat45">
				            <div class="seatList">
				              <span class="seatBox">
				                <input type="checkbox" name="seatIn" value="1">
				                <label for="">
				                  1
				                </label>
				              </span>
				              <span class="seatBox">
				                <input type="checkbox" name="seatIn" value="2">
				                <label for="">
				                  2
				                </label>
				              </span>
				              <span class="seatBox">
				                <input type="checkbox" name="seatIn" value="3">
				                <label for="">
				                  3
				                </label>
				              </span>
				              <span class="seatBox">
				                <input type="checkbox" name="seatIn" value="4">
				                <label for="">
				                  4
				                </label>
				              </span>
				              <span class="seatBox">
				                <input type="checkbox" name="seatIn" value="5">
				                <label for="">
				                  5
				                </label>
				              </span>
				              <span class="seatBox">
				                <input type="checkbox" name="seatIn" value="6">
				                <label for="">
				                  6
				                </label>
				              </span>
				              <span class="seatBox">
				                <input type="checkbox" name="seatIn" value="7">
				                <label for="">
				                  7
				                </label>
				              </span>
				              <span class="seatBox">
				                <input type="checkbox" name="seatIn" value="8">
				                <label for="">
				                  8
				                </label>
				              </span>
				              <span class="seatBox">
				                <input type="checkbox" name="seatIn" value="9">
				                <label for="">
				                  9
				                </label>
				              </span>
				              <span class="seatBox">
				                <input type="checkbox" name="seatIn" value="10">
				                <label for="">
				                  10
				                </label>
				              </span>
				              <span class="seatBox">
				                <input type="checkbox" name="seatIn" value="11">
				                <label for="">
				                  11
				                </label>
				              </span>
				              <span class="seatBox">
				                <input type="checkbox" name="seatIn" value="12">
				                <label for="">
				                  12
				                </label>
				              </span>
				              <span class="seatBox">
				                <input type="checkbox" name="seatIn" value="13">
				                <label for="">
				                  13
				                </label>
				              </span>
				              <span class="seatBox">
				                <input type="checkbox" name="seatIn" value="14">
				                <label for="">
				                  14
				                </label>
				              </span>
				              <span class="seatBox">
				                <input type="checkbox" name="seatIn" value="15">
				                <label for="">
				                  15
				                </label>
				              </span>
				              <span class="seatBox">
				                <input type="checkbox" name="seatIn" value="16">
				                <label for="">
				                  16
				                </label>
				              </span>
				              <span class="seatBox">
				                <input type="checkbox" name="seatIn" value="17">
				                <label for="">
				                  17
				                </label>
				              </span>
				              <span class="seatBox">
				                <input type="checkbox" name="seatIn" value="18">
				                <label for="">
				                  18
				                </label>
				              </span>
				              <span class="seatBox">
				                <input type="checkbox" name="seatIn" value="19">
				                <label for="">
				                  19
				                </label>
				              </span>
				              <span class="seatBox">
				                <input type="checkbox" name="seatIn" value="20">
				                <label for="">
				                  20
				                </label>
				              </span>
				              <span class="seatBox">
				                <input type="checkbox" name="seatIn" value="21">
				                <label for="">
				                  21
				                </label>
				              </span>
				              <span class="seatBox">
				                <input type="checkbox" name="seatIn" value="22">
				                <label for="">
				                  22
				                </label>
				              </span>
				              <span class="seatBox">
				                <input type="checkbox" name="seatIn" value="23">
				                <label for="">
				                  23
				                </label>
				              </span>
				              <span class="seatBox">
				                <input type="checkbox" name="seatIn" value="24">
				                <label for="">
				                  24
				                </label>
				              </span>
				              <span class="seatBox">
				                <input type="checkbox" name="seatIn" value="25">
				                <label for="">
				                  25
				                </label>
				              </span>
				              <span class="seatBox">
				                <input type="checkbox" name="seatIn" value="26">
				                <label for="">
				                  26
				                </label>
				              </span>
				              <span class="seatBox">
				                <input type="checkbox" name="seatIn" value="27">
				                <label for="">
				                  27
				                </label>
				              </span>
				              <span class="seatBox">
				                <input type="checkbox" name="seatIn" value="28">
				                <label for="">
				                  28
				                </label>
				              </span>
				              <span class="seatBox">
				                <input type="checkbox" name="seatIn" value="29">
				                <label for="">
				                  29
				                </label>
				              </span>
				              <span class="seatBox">
				                <input type="checkbox" name="seatIn" value="30">
				                <label for="">
				                  30
				                </label>
				              </span>
				              <span class="seatBox">
				                <input type="checkbox" name="seatIn" value="31">
				                <label for="">
				                  31
				                </label>
				              </span>
				              <span class="seatBox">
				                <input type="checkbox" name="seatIn" value="32">
				                <label for="">
				                  32
				                </label>
				              </span>
				              <span class="seatBox">
				                <input type="checkbox" name="seatIn" value="33">
				                <label for="">
				                  33
				                </label>
				              </span>
				              <span class="seatBox">
				                <input type="checkbox" name="seatIn" value="34">
				                <label for="">
				                  34
				                </label>
				              </span>
				              <span class="seatBox">
				                <input type="checkbox" name="seatIn" value="35">
				                <label for="">
				                  35
				                </label>
				              </span>
				              <span class="seatBox">
				                <input type="checkbox" name="seatIn" value="36">
				                <label for="">
				                  36
				                </label>
				              </span>
				              <span class="seatBox">
				                <input type="checkbox" name="seatIn" value="37">
				                <label for="">
				                  37
				                </label>
				              </span>
				              <span class="seatBox last_seat">
				                <input type="checkbox" name="seatIn" value="38">
				                <label for="">
				                  38
				                </label>
				              </span>
				              <span class="seatBox last_seat">
				                <input type="checkbox" name="seatIn" value="39">
				                <label for="">
				                  39
				                </label>
				              </span>
				              <span class="seatBox last_seat">
				                <input type="checkbox" name="seatIn" value="40">
				                <label for="">
				                  40
				                </label>
				              </span>
				              <span class="seatBox last_seat">
				                <input type="checkbox" name="seatIn" value="41">
				                <label for="">
				                  41
				                </label>
				              </span>
				          
				              
				            </div>
				          </div>
				          <div class="selectSeat_detailBox">
				           <div class="seatHeader">
					          <div class="refreshBox">
					            <a href="#">
					                <button type="button" class="refresh">
					                    <img class="refresh-icon" src="/project/resources/img/refresh.png">
					                </button>
					            </a>
					          </div>
					          <div class="remaining">
					            <span class="remaining_text">잔여 10석/전체 40석</span>
					          </div>
					        </div>
				            <!-- 선택좌석 -->
				            <div class="selectSeatBox">
				              <h4 id="selectSeatBox_title">선택좌석</h4>
				              <span id="seat_num"></span>
				            </div>
				            <!-- 탑승인원 및 요금 -->
				            <div class="board_payBox">
				              <ul>탑승인원 및 요금
				                <li>일반 0명
				                  <button class="plus">+</button>
				                  <button class="minus">-</button>
				                  <span>0원</span>
				                </li>
				                <li>초등생 0명
				                  <button class="plus">+</button>
				                  <button class="minus">-</button>
				                  <span>0원</span>
				                </li>
				                <li>중고생 0명
				                  <button class="plus">+</button>
				                  <button class="minus">-</button>
				                  <span>0원</span>
				                </li>
				                <li>보훈 0명
				                  <button class="plus">+</button>
				                  <button class="minus">-</button>
				                  <span>0원</span>
				                </li>
				              </ul>
				            </div>
				            <!-- 할인 -->
				            <div class="seat_discountBox">
				              <strong>할인선택</strong>
				              <span>
				                할인미적용<input type="radio">
				              </span>
				              <span id="dicount_example">- 가장 높은 할인율이 자동 적용됩니다. (중복불가)</span>
				            </div>
				            <!-- 총 결제 -->
				            <div class="total_payBox">
				              <strong>총 결제금액</strong>
				              <span>0원</span>
				              <a href="#" id="complete">선택완료</a>
				            </div>
				          </div>
				        </div>
				      </div>
				    </div>
				  </div>
				  <!-- 좌석예약 끝 -->
			</div>
		</div>
	</div>
</div>
</body>
<script>

//데이터 받기
var pash = new URL(window.location.href).searchParams;
                        //내위치를 현재보고있는 사이트로 옮기고.파라미터를가져오는 명령어
//pash.get("Sd");
$('#sPlace').text(pash.get("Sd"));
$('#ePlace').text(pash.get("Ed"));
$('#recive_day').text(pash.get("Dp"));
        
$('.seatBox').click(function(){
  var SetInCheck = $(this).find($('[name="seatIn"]:checkbox'));
  if(SetInCheck.attr("checked") == "checked"){
    SetInCheck.removeAttr("checked");
    
  }
  else {
    SetInCheck.attr("checked","checked");
  };
  var seatCount =[];
//   for(var i=0;i<$(('[name="seatIn"]:checked')).length;i++)
// {
//   $($(('[name="seatIn"]:checked'))[i]).val() + "번"
// }  

  $('#seat_num').text(
    //$(('[name="seatIn"]:checked')).val()+"번"
    //$(('[name="seatIn"]:checked')).serialize().replaceAll("seatIn=","").split('&').join('번 ') + '번'
    $(('[name="seatIn"]:checked')).serialize().replaceAll("seatIn=","").replaceAll('&','번 ') + '번'
    );
});


</script>
</html>
