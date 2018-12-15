<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>      
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<c:import url="/common/mainLogout.jsp" />
<link href="<c:url value="/css/mypage_user.css"/>" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link href="<c:url value="/css/footer.css"/>" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bulma/0.2.1/css/bulma.min.css">
<script src="https://code.jquery.com/jquery-3.3.1.js"
            integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60="
            crossorigin="anonymous"></script>
<c:import url="/common/mypageUserMenu.jsp" />
<style>
.tabs a {
	-ms-flex-align: center;
	align-items: center;
	color: #ffffff;
}

.tabs a:hover {
	color: #ffffff;
	border-bottom-color: #ffffff;
	text-decoration: none;
}

.tabs li.is-active a {
	color: rgb(242, 177, 52);
	font-weight: bold;
	border-bottom: 1px solid #ffffff;
}

.tabs a {
	border-bottom: 1px solid #ffffff;
}

/*카드 부분*/
.card {
	box-shadow: 10px 0px 10px rgba(0, 0, 0, 0.2),
				0px 10px 20px rgba(0,0,0,0.2);
}
.card, .card-content {
	border:3px solid white;
}
.card:hover {
	animation-name: slideUp;
	-webkit-animation-name: slideUp;	

	animation-duration: 1s;	
	-webkit-animation-duration: 1s;

	animation-timing-function: ease;	
	-webkit-animation-timing-function: ease;

	visibility: visible !important;
}

@keyframes slideUp {
	0% {
		transform: translateY(4%);
	}
	50%{
		transform: translateY(-8%);
	}
	65%{
		transform: translateY(4%);
	}
	80%{
		transform: translateY(-4%);
	}
	95%{
		transform: translateY(2%);
	}			
	100% {
		transform: translateY(0%);
	}	
}

@-webkit-keyframes slideUp {
	0% {
		-webkit-transform: translateY(4%);
	}
	50%{
		-webkit-transform: translateY(-8%);
	}
	65%{
		-webkit-transform: translateY(4%);
	}
	80%{
		-webkit-transform: translateY(-4%);
	}
	95%{
		-webkit-transform: translateY(2%);
	}			
	100% {
		-webkit-transform: translateY(0%);
	}	
}

.allcard {
    max-width: 1140px;
    margin-left: auto;
    margin-right: auto;
    overflow: scroll;
    height: 470px;
    margin-top: 120px;
    /* background-color: #dddddd; */
    border-width: 4px;
    border-style: inset;
    border-color: white;
}

.cardWrap {
	width: 25%;
	float: left;
	padding: 5px 15px;
	margin-top: 15px;
}

.cardWrap .card {
	width: 96%;
}

#cardImg {
    width: 235px;
    max-width: 235px;
    height: 237px;
    margin-left: -2px;
    margin-top: -1px;}

.card-image {
	width: 240px;
	height: 240px;
}

.card-content {
	height: 150px;
}

#listtitle {
    text-align: center;
    background-color: black;
    color: white;
    border-radius: 80px;
    font-size: 13px;
    line-height: 24px;
    margin-left: 1%;
    margin-top: -5%;
    clear: both;
    display: inline-block;
    padding-left: 12px;
    padding-right: 12px;
}

#listcontent {
	margin-left: 1%;
	font-size: 12px;
}

.card-btn {
	text-align: center;
}

.card-btn>button {
	width: 112px;
	padding: 6px 0;
	border: 1px solid white;
}

.container.myprofile .myprofile-options .tabs ul li.link a {
	margin-bottom: 20px;
	padding: 20px;
	background-color: rgb(79, 185, 159);
}
.title {
	position: relative;
	/* border: 1px solid black; */
	color: rgb(79, 185, 159);
	font-weight: bold;
}


.tabs #applyList {
	-ms-flex-align: center;
	align-items: center;
	color: #ffffff;
}
.tabs li #applyList {
	color: rgb(242, 177, 52);
	font-weight: bold;
	border-bottom: 1px solid #ffffff;
}
.tabs #applyList:hover {
	color: rgb(242, 177, 52);
	border-bottom-color: #ffffff;
	text-decoration: none;
}

.seungjae{
    position: absolute;
    bottom: -125px;
    width: 10%;
    background: #fff;
    text-align: right;
    font-family: 'Noto Sans SC', sans-serif;
    font-weight: bold;
    left: 695px;
}

</style>
</head>
<body>
	
<!-- 각 메뉴 휘하 내용 -->	
<div class="allcard">
    <div class="cardWrap">
        <div class='card'>
          <div class='card-image'>
              <img id="cardImg" alt='' src='../img/kakao/카카오.png'>
          </div>  
          <div class='card-content'>
              <div class='content'>
                  <p id="listtitle">비트캠프</p>
                  <p id="listcontent">지원현황 : 1000명</p>
                  <p id="listcontent">접수일자 : 2018-12-26 ~ 2019-01-17</p>
                  <p id="listcontent">발표일자 : 2019-02-01</p>
              </div>
          </div>
          <div class="card-btn">
              <button type="button" class="btn btn-primary">공고보기</button>
              <button type="button" class="btn btn-danger">삭제하기</button>
          </div>
      </div>
    </div>
    <div class="cardWrap">
        <div class='card'>
          <div class='card-image'>
              <img id="cardImg" alt='' src='../img/kakao/bit.jpg'>
          </div>  
          <div class='card-content'>
              <div class='content'>
                  <p id="listtitle">비트캠프</p>
                  <p id="listcontent">지원현황 : 1000명</p>
                  <p id="listcontent">접수일자 : 2018-12-26 ~ 2019-01-17</p>
                  <p id="listcontent">발표일자 : 2019-02-01</p>
              </div>
          </div>
          <div class="card-btn">
              <button type="button" class="btn btn-primary">공고보기</button>
              <button type="button" class="btn btn-danger">삭제하기</button>
          </div>
      </div>
    </div>
    <div class="cardWrap">
        <div class='card'>
          <div class='card-image'>
              <img id="cardImg" alt='' src='../img/kakao/bit.jpg'>
          </div>  
          <div class='card-content'>
              <div class='content'>
                  <p id="listtitle">비트캠프</p>
                  <p id="listcontent">지원현황 : 1000명</p>
                  <p id="listcontent">접수일자 : 2018-12-26 ~ 2019-01-17</p>
                  <p id="listcontent">발표일자 : 2019-02-01</p>
              </div>
          </div>
          <div class="card-btn">
              <button type="button" class="btn btn-primary">공고보기</button>
              <button type="button" class="btn btn-danger">삭제하기</button>
          </div>
      </div>
    </div>
    <div class="cardWrap">
        <div class='card'>
          <div class='card-image'>
              <img id="cardImg" alt='' src='../img/kakao/bit.jpg'>
          </div>  
          <div class='card-content'>
              <div class='content'>
                  <p id="listtitle">비트캠프</p>
                  <p id="listcontent">지원현황 : 1000명</p>
                  <p id="listcontent">접수일자 : 2018-12-26 ~ 2019-01-17</p>
                  <p id="listcontent">발표일자 : 2019-02-01</p>
              </div>
          </div>
          <div class="card-btn">
              <button type="button" class="btn btn-primary">공고보기</button>
              <button type="button" class="btn btn-danger">삭제하기</button>
          </div>
      </div>
    </div>
    <div class="cardWrap">
        <div class='card'>
          <div class='card-image'>
              <img id="cardImg" alt='' src='../img/kakao/bit.jpg'>
          </div>  
          <div class='card-content'>
              <div class='content'>
                  <p id="listtitle">비트캠프</p>
                  <p id="listcontent">지원현황 : 1000명</p>
                  <p id="listcontent">접수일자 : 2018-12-26 ~ 2019-01-17</p>
                  <p id="listcontent">발표일자 : 2019-02-01</p>
              </div>
          </div>
          <div class="card-btn">
              <button type="button" class="btn btn-primary">공고보기</button>
              <button type="button" class="btn btn-danger">삭제하기</button>
          </div>
      </div>
    </div>
    <div class="cardWrap">
        <div class='card'>
          <div class='card-image'>
              <img id="cardImg" alt='' src='../img/kakao/bit.jpg'>
          </div>  
          <div class='card-content'>
              <div class='content'>
                  <p id="listtitle">비트캠프</p>
                  <p id="listcontent">지원현황 : 1000명</p>
                  <p id="listcontent">접수일자 : 2018-12-26 ~ 2019-01-17</p>
                  <p id="listcontent">발표일자 : 2019-02-01</p>
              </div>
          </div>
          <div class="card-btn">
              <button type="button" class="btn btn-primary">공고보기</button>
              <button type="button" class="btn btn-danger">삭제하기</button>
          </div>
      </div>
    </div>
    <div class="cardWrap">
        <div class='card'>
          <div class='card-image'>
              <img id="cardImg" alt='' src='../img/kakao/bit.jpg'>
          </div>  
          <div class='card-content'>
              <div class='content'>
                  <p id="listtitle">비트캠프</p>
                  <p id="listcontent">지원현황 : 1000명</p>
                  <p id="listcontent">접수일자 : 2018-12-26 ~ 2019-01-17</p>
                  <p id="listcontent">발표일자 : 2019-02-01</p>
              </div>
          </div>
          <div class="card-btn">
              <button type="button" class="btn btn-primary">공고보기</button>
              <button type="button" class="btn btn-danger">삭제하기</button>
          </div>
      </div>
    </div>
    <div class="cardWrap">
        <div class='card'>
          <div class='card-image'>
              <img id="cardImg" alt='' src='../img/kakao/bit.jpg'>
          </div>  
          <div class='card-content'>
              <div class='content'>
                  <p id="listtitle">비트캠프</p>
                  <p id="listcontent">지원현황 : 1000명</p>
                  <p id="listcontent">접수일자 : 2018-12-26 ~ 2019-01-17</p>
                  <p id="listcontent">발표일자 : 2019-02-01</p>
              </div>
          </div>
          <div class="card-btn">
              <button type="button" class="btn btn-primary">공고보기</button>
              <button type="button" class="btn btn-danger">삭제하기</button>
          </div>
      </div>
    </div>
    
  </div>	
  
  <footer class="seungjae">
   <p>&copy; Job Story 2018</p>
</footer>
	<script>
        $(() => {
            $('#edit-preferences').click(function(){
            $('#edit-preferences-modal').addClass('is-active');
        });
            $('.modal-card-head button.delete, .modal-save, .modal-cancel').click(function(){
                $('#edit-preferences-modal').removeClass('is-active');
            });
        });

        $(".link").click(function () {
                $(this).addClass('is-active');
                $(this).siblings().removeClass('is-active');
        })
      </script>
</body>
</html>