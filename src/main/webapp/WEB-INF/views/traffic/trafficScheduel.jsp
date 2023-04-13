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
 .whereBox{
        width: 100%; height: 100px;
        background: url("/project/resources/img/night_sky.jpg")0 0 no-repeat;
        border-radius: 2px;
        margin-bottom: 3px;
    }
    .whereBox_title{
        color: #fff; line-height: 130px; margin-left: 20px;
    }
    /* BODY */
    .contentBox{display: flex;}

    /* 필터상자 */
    .filterBox{ box-shadow:3px 3px 5px gray; 
        width: 230px; height: 656px;
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
        display: flex; height: 150px;  padding: 0px 15px 0px 30px;}
    .roote{ text-align: center; background-color: #fff; color: #004932; border-radius: 5px;
        width: 60px; height: 27px; margin-top: 30px; font-size: 20px;
       
    }
    
    .roote-clear{  padding-top: 10px;
        width: 50px; height: 50px; margin-top: 21px; text-align: center;
    } 
    
    .place{display: block; margin-top:15px; color: #fff; letter-spacing: -2px;width: 80px; text-align: left;}
    
    /* 필터 시간 */
    .delay{ 
        width: 100%; height: 20px; display: block; text-align: right;
        font-size: 14px; 
    }
    /* 필터 거리 */
    .distance{  text-align: right;
        width: 100%; height: 20px; display: block;
        font-size: 14px;
    }
    /* 필터 요금 */
    .payInfo{
        width: 100%; height: 100%; 
        box-sizing:border-box; padding: 0px 5px;
    }
    .nomalPay{text-align: right;}
    .payInfo-text{ text-align: left; position: relative; top: 55px; 
    }
    .nomalPay-text{
    	position: relative; top:15px;
    }
    .pay-clear{width: 100%; height: 10px; display: block;}
    dt{text-align: left;}
    
    dd{text-align: right; position: relative;top: -25px;}

    /* 버스시간표 */
    .schedulBox{ border: 2px solid #e6e6e6;
        width: 100%; height: 656px; min-height: 640px; max-width: 1635px;
        margin-left: 50px; margin-bottom: 10px;
        border-radius: 3px; box-shadow: 3px 3px 5px gray;
        position: relative;  
        z-index: 0;
    }
    /* 버스날짜박스 */
    .calenderBox{ border-bottom: 2px solid #e6e6e6;
         height: 80px;
        position: relative; 
    }
    .calenderBox::after{display: block; content: ""; clear: both;}

    /* 새로고침 */
    .refreshBox{ 
        float: none;
        width: 88px; height: 100%;
        position: absolute; top: 0; left: 0;
        z-index: 100;
        padding: 10px; box-sizing: border-box;
    }
    .refresh{
        width: 65px;height: 100%;
        background-color: #f3f4f6;
        border: 0; cursor: pointer;
        position: relative; display: inline-block; vertical-align: middle; line-height: 1.2;
        
    }
    .refresh-icon{cursor: pointer;}
    
    /* 버스날짜텍스트 */
    .date{
        float: left; position: relative; display: block;
        height: 100%; width: 100%;
        font-size: 0; 
        text-align: center;  
    }
    .date-text{ 
        font-size: 22px; font-weight: bold; text-align: center; line-height: 65px;
    }
    /* 버스달력이미지 */
    .date-calender{
        position: absolute; top: 15px; right: 15px; width: 50px; height: 50px; z-index: 10;
        cursor: pointer; 
    }
    
    .calender{ 
         display: inline-block; position: absolute; top: 0;right: 0;
         background: #f3f4f6; 
         width: 65px; height: 65px; margin: 8px; line-height: 40px;}

    /* 버스 body */
    .detailSchedulBox{height: 573px; position: relative; display: block;}
    /* night daytime */
    .timetableBox{ border-right:1px solid #e6e6e6; 
        position: absolute; float: none;
        top: 0; left: 0 ; z-index: 100;
        width: 65px; height: 100%;
        list-style: none; display: block;
    }
    .timetableBox::before{
        display: inline-block; content: ''; position: absolute; top: 5px; left: 8px;
    }
    .night{ 
        position: relative; margin-top: 8px; padding-right: 8px; 
        box-sizing: border-box; margin-top: 15px;
       
    }
    
    .daytime{position: relative; margin-top: 8px; padding-right: 8px; box-sizing: border-box; margin-top: 15px;}
    .night::before{ 
        position: absolute; display: inline-block; content: '';
        top: 5px;left: 8px;
        background: url("/project/resources/img/night.png") 0 0 no-repeat;
        background-size: auto 100%;
        width: 14px; height: 14px;
    }
    .daytime::before{
        background-image: url("/project/resources/img/daytime.png") 0 0 no-repeat;
        background-size:100%;
        width: 16px; height: 16px;
    }
    .date-time{
        display: block;
        padding: 2px 8px 2px 0;
        font-size: 14px; text-align: right;
        color: #68b3ce;
        box-sizing: border-box;
        
    }
    /* 버스세부스케쥴 */
    .busTime{ 
        width: 100%; height: 575px;
        box-sizing: border-box;
        padding-left: 65px; margin-top: -573px;
    }
    .busTime::before{
        display: inline-block;
        content: '';
        position: absolute;
        top: 0;
        left: 64px;
        
        width: 1px;
        height: 100%;
    }
    /* 버스타임 헤더 */
    .busTime-head{
        display: table; width: 100%; min-height: 33px; padding: 0 15px 0 20px;
        border-bottom: 1px solid #e6e6e6;   box-sizing: border-box; font-size: 15px;
        line-height: 1.5; 
    }
    .clear2{width: 100px; text-align: left; vertical-align: middle; display: table-cell;}
    .busStart{width: 200px; text-align: left; vertical-align: middle; display: table-cell;}
    .busFind{width: 220px; display: table-cell; text-align: left; vertical-align: middle;}
    .busGrade{width: 200px; display: table-cell; text-align: left; vertical-align: middle;}
    .busTemp{width: 220px; display: table-cell; text-align: left; vertical-align: middle;}
    .busRemain{width: 150px; display: table-cell; text-align: left; vertical-align: middle;}
    .busClear{width: auto; display: table-cell; text-align: left; vertical-align: middle;}
    /* 버스시간 디테일 */
    .busTime-detail{
        height: 510px;
        margin-left: 20px;
        overflow-y: auto;
        overflow-x: hidden;
    }
    .busTd{
        position: relative; border-bottom: 1px solid #e6e6e6;
    }
    .busTd a{ height: 54px; display: table; width: 100%; position: relative; text-decoration: none;
        margin-left: 92px;
    }
    /* 디테일 출발 */
    .start-time{
        width: 213px; font-size: 18px;  display: table-cell; text-align: left; 
    }
    /* 고속사 */
    .bus_com{width: 215px; display: table-cell; padding-top: 15px; vertical-align: top; line-height: 1;
    text-align: left; }
    .dongbu{
        display: inline-block; text-align: left; vertical-align: middle;
        width: 80px; height: 40px; font-size: 0px; 
        background: url("/project/resources/img/bus_dongbu.png") 0 0 no-repeat;   
    }
    .dongyang{
        display: inline-block; text-align: left; vertical-align: middle;
        width: 80px; height: 40px; font-size: 0px; 
        background: url("/project/resources/img/dongyangbus.png") 0 0 no-repeat;   
    }
    .gumho{
        display: inline-block; text-align: left; vertical-align: middle;
        width: 80px; height: 40px; font-size: 0px; 
        background: url("/project/resources/img/gumhobus.png") 0 0 no-repeat;   
    }
    .jungang{
        display: inline-block; text-align: left; vertical-align: middle;
        width: 80px; height: 40px; font-size: 0px; 
        background: url("/project/resources/img/gumhobus.png") 0 0 no-repeat; 
    }
    .hanil{
        display: inline-block; text-align: left; vertical-align: middle;
        width: 80px; height: 40px; font-size: 0px; 
        background: url("/project/resources/img/hanilbus.png") 0 0 no-repeat; 
    }
    /* 등급 */
    .woodung{
        width: 145px; font-size: 14px; line-height: 50px;
    }

    .moonMak{display: inline-block; font-size: 8px;  }
    /* 할인 */
    .temp{display: table-cell; width: 165px;}
    /* 잔여석 */
    .remain{padding-right: 30px; text-align: left; box-sizing: border-box; width: 150px;}
    /* 선택 */
    .status{width: auto; font-size: 13px;}
    .status-icon{padding-right: 11px; background: url("/project/resources/img/timetable_arrow.png") right center no-repeat; color: #68b3ce;}
</style>
<head>
<meta charset="UTF-8">
<title>배차조회</title>
</head>
<body>
<div class="product_outterContainer">
	<div class="product_innerContainer">
		<div class="product_titleBox">
			<h1 id="pt_title">배차조회</h1>
		</div>
	
		<div class="product_contentContainer">
			<div class="product_content">
				 <div class="contentBox">
                <div class="filterBox">
                    <p class="today" id="recive_day">2023.02.16.목</p>
                    <hr>
                    <div class="promotion">
                        <div class="promotion-place">
                            <p class="roote">
                                <span class="point">출발지</span>
                                <span class="place" id="sPlace">지역</span>
                                <input type="hidden" id="sPlace_id">
                            </p>
                            <p class="roote-clear">  ←--→ </p>
                            <p class="roote">
                                <span class="point">도착지</span>
                                <span class="place" id="ePlace">지역</span>
                                <input type="hidden" id="ePlace_id">
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
                <div class="schedulBox">
                    <div class="calenderBox">
                        <div class="refreshBox">
                            <a href="#">
                                <button type="button" class="refresh">
                                    <img class="refresh-icon" src="/project/resources/img/refresh.png">
                                </button>
                            </a>
                        </div>
                        <div class="date">
                            <span class="date-text" id="researchDay">2023.2.15.수</span>
                        
                            <img class="date-calender" src="/project/resources/img/calender.png" alt="">
                            <span class="calender"></span>
                        </div>
                    </div>
                    <div class="detailSchedulBox">
                        <ul class="timetableBox">
                            <li class="night">
                                <a href="#" class="date-time nt">1</a>
                            </li>
                            <li class="night">
                                <a href="#" class="date-time">3</a>
                            </li>
                            <li class="daytime">
                                <a href="#" class="date-time">5</a>
                            </li>
                            <li class="daytime">
                                <a href="#" class="date-time">7</a>
                            </li>
                            <li class="daytime">
                                <a href="#" class="date-time">9</a>
                            </li>
                            <li class="daytime">
                                <a href="#" class="date-time">11</a>
                            </li>
                            <li class="daytime">
                                <a href="#" class="date-time">13</a>
                            </li>
                            <li class="daytime">
                                <a href="#" class="date-time">15</a>
                            </li>
                            <li class="daytime">
                                <a href="#" class="date-time">17</a>
                            </li>
                            <li class="daytime">
                                <a href="#" class="date-time">19</a>
                            </li>
                            <li class="night">
                                <a href="#" class="date-time">21</a>
                            </li>
                            <li class="night">
                                <a href="#" class="date-time">23</a>
                            </li>
                        </ul>
                    </div>
                    <div class="busTime">
                        <p class="busTime-head">
                            <span class="clear2"></span>
                            <span class="busStart">출발</span>
                            <span class="busFind">고속사</span>
                            <span class="busGrade">등급</span>
                            <span class="busTemp">할인</span>
                            <span class="busRemain">잔여석</span>
                            <span class="busClear"></span>
                        </p>
                        <!-- 
                            등
                         -->
                        <div class="busTime-detail">
                            <p class="busTd">
                                <a href="#" name="spendData">
                                    <span class="start-time">06:00</span>
                                    <span class="bus_com">
                                        <span class="dongbu">동부고속</span>
                                    </span>
                                    <span class="grade woodung">우등</span>
                                    <span class="temp"></span>
                                    <span class="remain" >25석</span>
                                    <input type="hidden" id="re_seat" value="25">
                                    <span class="status">
                                        <span class="status-icon">선택</span>
                                    </span>
                                </a>
                                
                            </p>
                            <p class="busTd">
                                <a href="#" name="spendData">
                                    <span class="start-time">06:40</span>
                                    <span class="bus_com">
                                        <span class="dongyang">동양고속</span>
                                    </span>
                                    <span class="grade woodung">우등</span>
                                    <span class="temp"></span>
                                    <span class="remain" >25석</span>
                                    <input type="hidden" id="re_seat" value="25">
                                    <span class="status">
                                        <span class="status-icon">선택</span>
                                    </span>
                                </a>
                            </p>
                            <p class="busTd">
                                <a href="#" name="spendData">
                                    <span class="start-time">07:20</span>
                                    <span class="bus_com">
                                        <span class="gumho">금호고속</span>
                                    </span>
                                    <span class="grade woodung">고속</span>
                                    <span class="temp"></span>
                                    <span class="remain" >25석</span>
                                    <input type="hidden" id="re_seat" value="25">
                                    <span class="status">
                                        <span class="status-icon">선택</span>
                                    </span>
                                </a>
                            </p>
                            <p class="busTd">
                                <a href="#" name="spendData">
                                    <span class="start-time">08:00</span>
                                    <span class="bus_com">
                                        <span class="dongbu">동부고속</span>
                                    </span>
                                    <span class="grade woodung">우등
 
                                    </span>
                                    <span class="temp"></span>
                                    <span class="remain" >25석</span>
                                    <input type="hidden" id="re_seat" value="25">
                                    <span class="status">
                                        <span class="status-icon">선택</span>
                                    </span>
                                </a>
                            </p>
                            <p class="busTd">
                                <a href="#" name="spendData">
                                    <span class="start-time">08:40</span>
                                    <span class="bus_com">
                                        <span class="dongyang">동양고속</span>
                                    </span>
                                    <span class="grade woodung">고속</span>
                                    <span class="temp"></span>
                                    <span class="remain" >25석</span>
                                    <input type="hidden" id="re_seat" value="25">
                                    <span class="status">
                                        <span class="status-icon">선택</span>
                                    </span>
                                </a>
                            </p>
                            <p class="busTd">
                                <a href="#" name="spendData">
                                    <span class="start-time">09:20</span>
                                    <span class="bus_com">
                                        <span class="dongyang">동양고속</span>
                                    </span>
                                    <span class="grade woodung">우등</span>
                                    <span class="temp"></span>
                                    <span class="remain" >25석</span>
                                    <input type="hidden" id="re_seat" value="25">
                                    <span class="status">
                                        <span class="status-icon">선택</span>
                                    </span>
                                </a>
                            </p>
                            <p class="busTd">
                                <a href="#" name="spendData">
                                    <span class="start-time">10:00</span>
                                    <span class="bus_com">
                                        <span class="gumho">금호고속</span>
                                    </span>
                                    <span class="grade woodung">우등</span>
                                    <span class="temp"></span>
                                    <span class="remain" >25석</span>
                                    <input type="hidden" id="re_seat" value="25">
                                    <span class="status">
                                        <span class="status-icon">선택</span>
                                    </span>
                                </a>
                            </p>
                            <p class="busTd">
                                <a href="#" name="spendData">
                                    <span class="start-time">10:40</span>
                                    <span class="bus_com">
                                        <span class="jungang">중앙고속</span>
                                    </span>
                                    <span class="grade woodung">고속</span>
                                    <span class="temp"></span>
                                    <span class="remain" >25석</span>
                                    <input type="hidden" id="re_seat" value="25">
                                    <span class="status">
                                        <span class="status-icon">선택</span>
                                    </span>
                                </a>
                            </p>
                            <p class="busTd">
                                <a href="#" name="spendData">
                                    <span class="start-time">11:20</span>
                                    <span class="bus_com">
                                        <span class="dongbu">동부고속</span>
                                    </span>
                                    <span class="grade woodung">우등
                                    </span>
                                    <span class="temp"></span>
                                    <span class="remain" >25석</span>
                                    <input type="hidden" id="re_seat" value="25">
                                    <span class="status">
                                        <span class="status-icon">선택</span>
                                    </span>
                                </a>
                            </p>
                            <p class="busTd">
                                <a href="#" name="spendData">
                                    <span class="start-time">12:00</span>
                                    <span class="bus_com">
                                        <span class="jungang">중앙고속</span>
                                    </span>
                                    <span class="grade woodung">우등

                                    </span>
                                    <span class="temp"></span>
                                    <span class="remain" >25석</span>
                                    <input type="hidden" id="re_seat" value="25">
                                    <span class="status">
                                        <span class="status-icon">선택</span>
                                    </span>
                                </a>
                            </p>
                            <p class="busTd">
                                <a href="#" name="spendData">
                                    <span class="start-time">12:40</span>
                                    <span class="bus_com">
                                        <span class="dongbu">동부고속</span>
                                    </span>
                                    <span class="grade woodung">우등</span>
                                    <span class="temp"></span>
                                    <span class="remain" >25석</span>
                                    <input type="hidden" id="re_seat" value="25">
                                    <span class="status">
                                        <span class="status-icon">선택</span>
                                    </span>
                                </a>
                            </p>
                            <p class="busTd">
                                <a href="#" name="spendData">
                                    <span class="start-time">13:20</span>
                                    <span class="bus_com">
                                        <span class="dongbu">동부고속</span>
                                    </span>
                                    <span class="grade woodung">우등

                                    </span>
                                    <span class="temp"></span>
                                    <span class="remain" >25석</span>
                                    <input type="hidden" id="re_seat" value="25">
                                    <span class="status">
                                        <span class="status-icon">선택</span>
                                    </span>
                                </a>
                            </p>
                            <p class="busTd">
                                <a href="#" name="spendData">
                                    <span class="start-time">13:50</span>
                                    <span class="bus_com">
                                        <span class="dongbu">동부고속</span>
                                    </span>
                                    <span class="grade woodung">우등</span>
                                    <span class="temp"></span>
                                    <span class="remain" >25석</span>
                                    <input type="hidden" id="re_seat" value="25">
                                    <span class="status">
                                        <span class="status-icon">선택</span>
                                    </span>
                                </a>
                            </p>
                            <p class="busTd">
                                <a href="#" name="spendData">
                                    <span class="start-time">14:20</span>
                                    <span class="bus_com">
                                        <span class="dongbu">동부고속</span>
                                    </span>
                                    <span class="grade woodung">우등</span>
                                    <span class="temp"></span>
                                    <span class="remain" >25석</span>
                                    <input type="hidden" id="re_seat" value="25">
                                    <span class="status">
                                        <span class="status-icon">선택</span>
                                    </span>
                                </a>
                            </p>
                            <p class="busTd">
                                <a href="#" name="spendData">
                                    <span class="start-time">14:50</span>
                                    <span class="bus_com">
                                        <span class="hanil">한일고속</span>
                                    </span>
                                    <span class="grade woodung">우등</span>
                                    <span class="temp"></span>
                                    <span class="remain" >25석</span>
                                    <input type="hidden" id="re_seat" value="25">
                                    <span class="status">
                                        <span class="status-icon">선택</span>
                                    </span>
                                </a>
                            </p>
                        </div>
                        
                    </div>
                    
                    </div>
                    
                </div>
			
			</div>
		</div>
	</div>
</div>
</body>
<script>
window.onload= function(){
	$("#sPlace").text('${bs_st}');
	$("#sPlace_id").val('${bs_sv}');
	$("#ePlace").text('${bs_at}');
	$("#ePlace_id").val('${bs_av}');
	$("#recive_day").text('${bs_sdv}');
	$("#researchDay").text('${bs_sdv}');
	let s_id = $('#sPlace_id').val();
	let a_id = $('#ePlace_id').val();
	let seat = $('.remain').val();
	timeGrade(s_id,a_id);
// 	remain(seat);
};


function timeGrade(s_id,a_id){
	var xhr = new XMLHttpRequest();
	var url = "https://api.odsay.com/v1/api/expressServiceTime?lang=0&startStationID="+s_id+"&endStationID="+a_id+"&apiKey=r7KIUfijmoLkM%2FHfY8GrAHqMy%2FYNJwN2PJeHMK8n%2B%2Fk";
	xhr.open("GET", url, true);
	xhr.onreadystatechange = function() {
		if (xhr.readyState == 4 && xhr.status == 200) {
			 let resultJSON = JSON.parse(xhr.responseText).result.station.schedule;
			// 출발시간은 전체시간을 가져와서 \n split으로 나누고, / split으로 나누고,
			//  소요시간 요금은 따로  출력하는 방법,
 			 let timeGrade = JSON.stringify(resultJSON).schedule;
 			 let time = timeGrade.split('\n');
			for(let j=0; j<time.length; j++){
				//글자수가 5자가 넘어가면 우등으로 등급표시 안넘어가면 일반으로 등급표시
				//시간을 가져온 station에 첫번째에서 가져왔으면 1번 고속사 두번째에서 가져오면 2번 고속사
				if(time.length>5 || timeGrade.length[0]){
	 				$('[name=spendData]').append('<span class="start-time">'+시간+'</span> <span class="bus_com"> <span class="dongbu">동부</span> </span> <span class="grade woodung">우등</span> <span class="temp"><span class="remain" >'+잔역석+'</span><input type="hidden" id="re_seat" value="25"></span> <span class="status"><span class="status-icon">선택</span></span>');					
				}else{
	 				$('[name=spendData]').append('<span class="start-time">'+시간+'</span> <span class="bus_com"> <span class="hanil">한일</span> </span> <span class="grade woodung">일반</span> <span class="temp"></span> <span class="remain" value="25">'+잔역석+'/span> <span class="status"><span class="status-icon">선택</span></span>');
				}


					
			}

		}
	}
	xhr.send();
};
	


  

//좌석은 25석을 기준으로 하고, 결제를 하면 db에서 없어지게 만든다. db생성 잔여석 고속사
function remain(seat){
	
	$.ajax({
		async:true,
		type:'POST',
		data : seat,
		url : '<c:url value="/traffic/re_seat"></c:url>',
		dataType : "json",
		contentType : "application/json; charset=UTF-8",
		success : function(u_seat){
					
		}
	})
	
};

//배차를 선택하면 자리선택페이지로 데이터를 넘겨줌
$('[name=spendData]').click(function(){
	window.location.href="/project/traffic/seat?st="+$('#sPlace').text()+"&sv="+$('#sPlace_id').val()+"&at="+$('#ePlace').text()+"&av="+$('#ePlace_id').val()+"&rd="+$('#recive_day').val()+"&seat="+$(#re_seat).val()+"&delay="+$('#delay').val();
})
</script>
</html>
