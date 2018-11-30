<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="icon" href="../../favicon.ico">
    <!--부트스트랩-->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<!--     <link href="../../dist/css/bootstrap.min.css" rel="stylesheet"> -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<!--     <script src="../../assets/js/ie-emulation-modes-warning.js"></script> -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bulma/0.2.1/css/bulma.min.css">
    <link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR:300" rel="stylesheet">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
    <!--폰트 -->
    <link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR:300" rel="stylesheet">
    <!-- jQuery -->
    <script src="https://code.jquery.com/jquery-3.3.1.js"
            integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60="
            crossorigin="anonymous"></script>
<title>Insert title here</title>
<style>
      html {
            font-family: 'Noto Sans KR', sans-serif;
        }
        .topbar {
        position: absolute;
        top: 0px;
        left: 0px;
        background: rgb(17, 47, 65);
        margin: 0; padding: 0;
        list-style: none;
        position: fixed;
        width: 100%;
        z-index: 3;
        }
        .topbar>li {
          display: inline-block;
        }
        .topbar>li>a {
          display: block;
          text-decoration: none;
          padding: 8px 65px;
          color: white;
          font-size: 26px;
        }
        .topbar>li>a:hover {
          color: rgb(79, 185, 159);
        }

        /*프로필*/  
        .profile {
          position:absolute;
          left:1411px;
          background: white;
          padding: 20px;
          border-radius: 10px 10px 10px 10px;
          box-shadow: 
            0px 2px 10px rgba(0,0,0,0.1), 
            0px 10px 20px rgba(0,0,0,0.2), 
            0px 30px 60px 1px rgba(0,0,0,0.4);
          animation: fadein 1s ease-in-out;
          width: 174px;
          height: 265px;
          text-align: right;
          display: inline-block;
          /* float: right; */
          /* margin-top: -339px; */
          top: 68px;
          position: fixed;
        }
        .profile .head {
          display: block;
          text-align: center;
          line-height: 0.1px;
        }
        .profile .head .userpic {
          border-radius: 100%;
          width: 60%;
          border: 3px solid #ccffdd;
          transition: 0.5s ease-out;
        }
        .profile .head .userpic:hover {
          filter: brightness(60%);
        }
        .profile .head .username {
          color: gray;
        }
        .profile .head .options {
          float: right;
          color: gray;
        }
        .hr {
          border: none;
          height: 5px;
          background: #ccffdd;
        }
        .profile .account-info {
          display: flex;
          justify-content: space-between;
          text-align: center;
          line-height: 0.1px;
        }
        .heart1 {
          color: #B22222;
          font-size: 1.2em
        }
        .heart2 {
          color: blue;
          font-size: 1.2em
        }
        #logout {
          color: rgb(0, 0, 0);
          font-size: 1.2em
        }
        @keyframes fadein {
          from {
            margin-top: -50px;
            opacity: 0;
          }
          to {
            opacity: 1;
          }
        }
        .head  h3{
          margin-top: 3px;
          margin-bottom: -15px;
        }
        .account-info  h4 {
          margin-top: -3px;
          margin-bottom: 8px;
          font-size: 10px;
          font-weight: bold;
        }
        .btn {
          display: inline-block;
          padding: 6px 37px;
          margin-bottom: 0;
          font-size: 12px;
          font-weight: 400;
          line-height: 1.428571;
          text-align: center;
          white-space: nowrap;
          vertical-align: middle;
          -ms-touch-action: manipulation;
          touch-action: manipulation;
          cursor: pointer;
          -webkit-user-select: none;
          -moz-user-select: none;
          -ms-user-select: none;
          user-select: none;
          background-image: none;
          border: 1px solid transparent;
          border-radius: 4px;
      }
      .btn-info{
        background-color: rgb(79, 185, 159);
      }

      .btn-info:hover {
        background-color: rgb(6, 133, 135);
      }

      /*sidebar*/
      .sidebar {
          position:absolute;
          left:1411px;
          background: white;
          padding: 20px;
          border-radius: 10px 10px 10px 10px;
          box-shadow: 
            0px 2px 10px rgba(0,0,0,0.1), 
            0px 10px 20px rgba(0,0,0,0.2), 
            0px 30px 60px 1px rgba(0,0,0,0.4);
          animation: fadein 1s ease-out;
          width: 174px;
          height: 188px;
          text-align: right;
          display: inline-block;
          /* float: right; */
          /* margin-top: -55px; */
          top: 365px;
          position: fixed;
        }
        .sidebar .account-info2 {
          display: flex;
          justify-content: space-between;
          text-align: center;
          line-height: 0.1px;
        }
        .sidebar .account-info2 .eachpic {
          filter: grayscale(100);
        }
        .sidebar .account-info2 .eachpic:hover {
          filter: grayscale(0);
        }      
        #menutext {
          text-align: center;
          font-size: 4px;
          margin-top: 10px;
          font-weight: bold;
        }
        .account-info2 a{
          display: block;
          height:40px;
        }
        .account-info2 a img{
          height: auto;
          max-height: 100%;
          width: auto;
        }

        /*마이페이지*/
        .column {
          position: relative;
          top: 100px;
          /* border: 1px solid black; */
        }
        .stat-val {
          font-size: 3em;
          padding-top: 20px;
          font-weight: bold;
        }

        .stat-key {
          font-size: 1.4em;
          font-weight: 200;
        }

        .section.myprofile-heading .column.is-2-tablet.has-text-centered + .has-text-centered {
          border-left: 1px dotted rgba(0, 0, 0, 0.2);
        }

        .container.myprofile {
          margin-top: 1%;
        }

        .control.is-pulled-left span.select {
          margin-right: 5px;
          border-radius: 2px;
        }

        .modal-card .content h1 {
          padding: 40px 10px 10px;
          border-bottom: 1px solid #dadada;
        }
        .myprofile-options {
          position: relative;
          /* border: 1px solid black; */
          top: 100px;
        }
        .container.myprofile .myprofile-options .tabs ul li.link a {
          /* margin-bottom: 20px; */
          padding: 20px;
          background-color: #F1F1F1;
        }

        #listcontent {
          font-size: 15px;
        }

        /* 이력서 리스트 */
        .all-container {
            z-index: -1;
            position: absolute;
            width: 800px;
            top: 440px;
            left: 350px;
        }
        .head-container {
            position: relative;
            /* border: 1px solid black; */
        }
        .title {
            position: relative;
            /* border: 1px solid black; */
            color: rgb(79, 185, 159);
            font-weight: bold;
        }
        .title > h1 {
            position: relative;
            left: 10px;
            font-weight: bold;
        }
        #content-container {
            position: relative;
            /* border: 1px solid black; */
            display: flex;
        }
        #img-container {
            position: relative;
            /* border: 1px solid black; */
            left: 30px;
        }
        #img-container > img {
            position: relative;
            top: 20px;
        }
        .list-container {
            position: relative;
            top: 50px;
        }
        .title-container{
            position: relative;
            top: 20px;
            /* border: 1px solid black; */
            display: flex;
        }
        .title-container > div {
            position: relative;
            top: 5px;
            left: 20px;
        }
        .title-container > #resume-btn {
            position: relative;
            left: 480px;
            width: 150px;
            height: 30px;
            background-color: rgb(79, 185, 159);
            color: white;
            border: 0px;
        }
        .title-container > #resume-btn:hover {
            background-color: rgb(6, 133, 135);
        }
        
        #resume-list {
            position: relative;
            top: 30px; 
            width: 800px;
            /* border: 1px solid black; */
            text-align: center;
            border-collapse: collapse;
        }
        #resume-list > tbody {
            font-size: 13px;
        }
        
        #list-title {
            position: relative;
            top: 0px;
            font-weight: bold;
            font-size: 20px;
            color: rgb(79, 185, 159);
        }
        #list-count {
            position: relative;
            font-size: 13px;
            top: 5px;
            left: 30px;
        }
        
        .resume-pagination {
            position: relative;
            top: 100px;
            /* border: 1px solid black; */
        }
        .resume-pagination > span {
            position: relative;
            /* border: 1px solid black; */
            left: 250px;
        }
        .resume-pagination > span > span {
            font-size: 10px;
            /* border: 1px solid gray; */
            display: inline-block;
            width: 20px;
            height: 20px;
            margin: auto;
            text-align: center;
        }
        #resume-btn-container {
            position: relative;
            top: 90px;
            /* border: 1px solid black; */
        }
        #resume-btn-container > input {
            position: relative;
            left: 680px;
            width: 50px;
            height: 30px;
            color: gray;
            border: 1px solid gray;
            background-color: white;
            /* border: 1px solid black; */
        }
        #resume-btn-container > input:hover {
            color: rgb(6, 133, 135);
            border: 1px solid rgb(6, 133, 135);
        }
        .attach-pagination {
            position: relative;
            top: 200px;
            /* border: 1px solid black; */
        }
        .attach-pagination > span {
            position: relative;
            /* border: 1px solid black; */
            left: 250px;
        }
        .attach-pagination > span > span {
            font-size: 10px;
            /* border: 1px solid black; */
            display: inline-block;
            width: 20px;
            height: 20px;
            margin: auto;
            text-align: center;
        }

        .attach-container {
            position: relative;
            top: 150px;
        }

        #attach-list {
            position: relative;
            top: 30px; 
            width: 800px;
            /* border: 1px solid black; */
            text-align: center;
            border-collapse: collapse;
        }
        
        #attach-list > tbody {
            font-size: 13px;
        }

        
        #attach-title {
            position: relative;
            top: 0px;
            font-weight: bold;
            font-size: 20px;
            color: rgb(79, 185, 159);
        }
        #attach-count {
            position: relative;
            font-size: 13px;
            top: 5px;
            left: 30px;
        }
        .title-container > #attach-btn {
            position: relative;
            left: 465px;
            width: 150px;
            height: 30px;
            background-color: rgb(79, 185, 159);
            color: white;
            border: 0px;
        }
        .title-container > #attach-btn:hover {
            background-color: rgb(6, 133, 135);
        }
        #attach-delete-btn {
            position: relative;
            top: 190px;
            /* border: 1px solid black; */
        }
        #attach-delete-btn > input {
            width: 50px;
            height: 30px;
            color: gray;
            border: 1px solid gray;
            background-color: white;
        }
        #attach-delete-btn > input:hover {
            color: rgb(6, 133, 135);
            border: 1px solid rgb(6, 133, 135);
        }
        
        .download-btn {
            width: 75px;
            height: 30px;
            color: gray;
            border: 1px solid gray;
            background-color: white;
        }
        .download-btn:hover {
            color: rgb(6, 133, 135);
            border: 1px solid rgb(6, 133, 135);
        }
        .cover {
            position: absolute;
            top: 0px;
            left: 0px;
            width: 99.85%;
            height: 200%;
            /* border: 1px solid black; */
            /* background-color: black; */
            opacity: 0.5;
            z-index: 1;
            visibility: hidden;
        }
        .attach-write-container {
            position: absolute;
            padding: 30px;
            top: 1100px;
            left: 500px;
            width: 500px;
            height: 320px;
            border: 1px solid black;
            background-color: white;
            z-index: 2;
            visibility: hidden;
        }
        .attach-write-head {
            position: relative;
            display: flex;
            border-bottom: 1px solid rgb(173, 173, 173); 
            
        }
        .attach-write-head > h2 {
            position: relative;
            font-size: 20px;
            font-weight: bold;
            top: -5px;
            left: 10px;
            color: rgb(79, 185, 159);
            vertical-align: middle;

        }
        .attach-write-head > span {
            position: relative;
            left: 79px;
            top: -16px;         
        }
        .attach-write-head > span > img {
            position: relative;
            width: 20px;
            height: 20px;
        }
        .attach-write-head > div {
            position: relative;
            /* top: 31px; */
            left: 35px;
            font-size: 11px;
            color: gray;
        }
        .attach-write-head > div > span {
            color: rgb(6, 133, 135);
            font-size: 11px;
            font-weight: bold;
        }
        #caution-content {
            position: relative;
            top: 10px;
        }
        #caution-content > pre {
            font-family: 'Noto Sans KR', sans-serif;
            font-size: 10px;
            color: gray;
            display: inline-block;
            overflow: visible;
            background-color: white; 
            border: 0px;
            padding: 20px;
        }
        #attach-content {
            position: relative;
            top: 20px;
            width: 100%;
            /* border: 1px solid gray; */
            border-collapse: collapse;
        }
        #attach-content > tbody > tr > td:first-child {
            text-align: center;
            /* background-color: #B22222; */
        }
        #attach-content > tbody > tr > td:nth-child(2) {
            /* background-color: blueviolet; */
            width: 300px;
        }
        #attach-content > tbody > tr > td {
            /* border: 1px solid gray; */
            vertical-align: middle;
        }
        #attach-content > tr > td > select {
            width: 200px;
            background-color: black;
        }
        #attach-btn-container {
            position: relative;
            left: 73px;
            top: 0px;
        }
        #attach-btn-container > button {
            width: 150px;
            height: 30px;
            background-color: rgb(79, 185, 159);
            color: white;
            border: 0px;
        }
        #attach-btn-container > button:hover {
            background-color: rgb(6, 133, 135);
        }
        .attach-input {
            position: relative;
            visibility: hidden;
            left: 50px;
            /* border: 1px solid black; */
            
        }
        .url-input {
            position: absolute;
            visibility: hidden;
            /* border: 1px solid black; */
            border-radius: 2px;
            width: 85%;
            height: 25px;
            top: 85px;
            left: 40px;
            color: rgb(17, 47, 65);
        }
        table[id=resume-list] td, table[id=resume-list] th, table[id=resume-list] td, table[id=resume-list] tr {
            text-align: center;
            vertical-align: middle;
        }
        table[id=attach-list] td, table[id=attach-list] th, table[id=attach-list] td, table[id=attach-list] tr {
            text-align: center;
            vertical-align: middle;
        }
        table[id=attach-list] th, table[id=resume-list] th {
            
            border-bottom: 1px solid rgba(128, 128, 128, 0.541);
        }
        th, tr {
            height: 40px;
        }
        
        /* 탑 */
        .topbar {
          position: absolute;
          top: 0px;
          left: 0px;
          background: rgb(17, 47, 65);
          margin: 0; padding: 0;
          list-style: none;
          position: fixed;
          width: 100%;
          z-index: 3;
        }
        .topbar>li {
          display: inline-block;
        }
        .topbar>li>a {
          display: block;
          text-decoration: none;
          padding: 10px 20px;
          color: white;
        }
        .topbar>li>a:hover {
          color: rgb(180, 180, 180);
        }
        
      </style>
</head>
<body>
    <ul class="topbar">
        <li><a href="#">JOB STORY</a></li>
        <!-- <li id="marketing" style="float: right;"><a href="#"><marquee>광고문의 : 010-8669-8797</marquee></a></li> -->
    </ul>
      <div>    
      <!-- <div ng-app='app' ng-controller='profile' class='sidebanner'></div> -->
      <!-- <div ng-app='app' ng-controller='profile' class='topbanner'></div> -->
      <!-- banner -->
      <div ng-app='app' ng-controller='profile' class='profile'>
          <section class='head'>                  
            <img src="../별도UI/image/KakaoTalk_20181121_104849105.jpg" class='userpic' alt="">
            <h3>Park Taehwan</h3>
          </section>
          <hr class='hr'>
          <section class='account-info'>
            <div class='posts'>
              <h4>120</h4>
              <span class='heart1'><span class="glyphicon glyphicon-thumbs-up" aria-hidden="true"></span>
            </span>              
            </div>
            <div class='followers'>
              <h4>1357</h4>
              <span class='heart2'><span class="glyphicon glyphicon-thumbs-down" aria-hidden="true"></span>
            </div>
            <a id="logout"  href="javascript:logout()" style="width: 30px;">
                <h4>LOGOUT</h4>
                <span class="glyphicon glyphicon-log-in" aria-hidden="true">
            </a>          
          </section>
          <div class='following' style="margin-top: 10px;">
            <button type="button" class="btn btn-info">마이 페이지</button>
          </div>        
      </div>

      <!--사이드바-->      
      <div ng-app='app' ng-controller='sidebar' class='sidebar'>
          <section class='account-info2'>
              <div>
                <a href="#">
                  <span class='eachpic'><img src="./side/cal.png" width="80%" style="border-radius: 10%;"></span>            
                </a>                
                <p id="menutext">내 공채달력</p>
              </div>
              <div>                
                <a href="#">
                  <span class='eachpic'><img src="./side/calcul.jpg" width="80%" style="border-radius: 10%;"></span>            
                </a>
                <p id="menutext">연봉 계산기</p> 
                <p id="menutext">퇴직금 계산기</p> 
              </div>               
            </section>
            <br>       
            <section class='account-info2'>
              <div>                
                <a href="#">
                  <span class='eachpic'><img src="./side/리뷰.jpg" width="80%" style="border-radius: 10%;"></span>            
                </a>
                <p id="menutext">합격 후기</p>             
              </div>
              <div>                
                <a href="#">
                  <span class='eachpic'><img src="./side/자소서.png" width="80%" style="border-radius: 10%;"></span>            
                </a>
                <p id="menutext">자소서 첨삭</p> 
              </div>                               
          </section>        
      </div>
    </div>



    <!-- 마이페이지 탭 -->
    <div class='columns'>
        <div class='container myprofile'>
          <div class='modal' id='edit-preferences-modal'>
            <div class='modal-background'></div>
            <div class='modal-card'>
              <header class='modal-card-head'>
                <p class='modal-card-title' >Edit Preferences</p>
                <button class='delete' ></button>
              </header>
              <section class='modal-card-body'>
                <label class='label'>Name</label>
                <p class='control'>
                  <input class='input' placeholder='Text input' type='text'>
                </p>
                <label class='label'>Username</label>
                <p class='control has-icon has-icon-right'>
                  <input class='input' placeholder='Text input' type='text' value='pmillerk'>
                </p>
                <label class='label'>Email</label>
                <p class='control has-icon has-icon-right'>
                  <input class='input' placeholder='Email input' type='text' value='hello@'>
                  <i class='fa fa-warning'></i>
                  <span class='help is-danger'>This email is invalid</span>
                </p>
                <div class='control'>
                  <div class='control-label is-pulled-left'>
                    <label class='label'>Date of Birth</label>
                  </div>
                  <span>
                    <span class='select'>
                      <select>
                        <option>Month</option>
                        <option>With options</option>
                      </select>
                    </span>
                    <span class='select'>
                      <select>
                        <option>Day</option>
                        <option>With options</option>
                      </select>
                    </span>
                    <span class='select'>
                      <select>
                        <option>Year</option>
                        <option>With options</option>
                      </select>
                    </span>
                  </span>
                </div>
                <label class='label'>Description</label>
                <p class='control'>
                  <textarea class='textarea' placeholder='Describe Yourself!'></textarea>
                </p>
                <div class='content'>
                  <h1>Optional Information</h1>
                </div>
                <label class='label'>Phone Number</label>
                <p class='control has-icon has-icon-right'>
                  <input class='input' placeholder='Text input' type='text' value='+1 *** *** 0535'>
                </p>
                <label class='label'>Work</label>
                <p class='control has-icon has-icon-right'>
                  <input class='input' placeholder='Text input' type='text' value='Greater Washington Publishing'>
                </p>
                <label class='label'>School</label>
                <p class='control has-icon has-icon-right'>
                  <input class='input' placeholder='Text input' type='text' value='George Mason University'>
                </p>
              </section>
              <footer class='modal-card-foot'>
                <a class='button is-primary modal-save'>Save changes</a>
                <a class='button modal-cancel'>Cancel</a>
              </footer>
            </div>
          </div>
          <div class='section myprofile-heading'>
            <div class='columns is-mobile is-multiline'>
              <div class='column is-2'>
                <span class='header-icon user-myprofile-image'>
                  <img alt='' src='../별도UI/image/KakaoTalk_20181121_104849105.jpg' >
                </span>
              </div>
              <div class='column is-4-tablet is-10-mobile name'>
                <p>
                  <span class='title is-bold'>나원석</span>
                  <br>
                  <a class='button is-primary is-outlined' href='#' id='edit-preferences' style="margin: 10% 0">
                    Edit Preferences
                  </a>
                  <br>
                </p>
                <p class='tagline'>
                  <!-- The users myprofile bio would go here, of course. It could be two lines or more or whatever. We should probably limit the amount of characters to ~500 at most though. -->
                </p>
              </div>
              <div class='column is-2-tablet is-4-mobile has-text-centered'>
                <p class='stat-val'>30</p>
                <p class='stat-key'>좋아요</p>
              </div>
              <div class='column is-2-tablet is-4-mobile has-text-centered'>
                <p class='stat-val'>10</p>
                <p class='stat-key'>싫어요</p>
              </div>
              <div class='column is-2-tablet is-4-mobile has-text-centered'>
                <p class='stat-val'>3</p>
                <p class='stat-key'>지원 현황</p>
              </div>
            </div>
          </div>
          <div class='myprofile-options is-fullwidth'>
            <div class='tabs is-fullwidth is-medium'>
              <ul>
                <li class='link'>
                  <a>
                    <span class='icon'>
                      <i class='fa fa-list'></i>
                    </span>
                    <span>내 정보 변경</span>
                  </a>
                </li>
                <li class='link'>
                  <a>
                    <span class='icon'>
                      <i class='fa fa-thumbs-up'></i>
                    </span>
                    <span>이력서 관리</span>
                  </a>
                </li>
                <li class='link is-active'>
                  <a>
                    <span class='icon'>
                      <i class='fa fa-thumbs-up'></i>
                    </span>
                    <span>입사지원 리스트</span>
                  </a>
                </li>
                <li class='link'>
                  <a>
                    <span class='icon'>
                      <i class='fa fa-thumbs-up'></i>
                    </span>
                    <span>스크랩한 공고</span>
                  </a>
                </li>
                <li class='link'>
                  <a>
                    <span class='icon'>
                      <i class='fa fa-search'></i>
                    </span>
                    <span>나만의 공채달력</span>
                  </a>
                </li>
                <!-- <li class='link'>
                  <a>
                    <span class='icon'>
                      <i class='fa fa-balance-scale'></i>
                    </span>
                    <span>Compare</span>
                  </a>
                </li> -->
              </ul>
            </div>
          </div>
        </div>
      </div>
        <!-- 메인 -->
    <div class="attach-write-container">
        <div class="attach-write-head">
            <h2>첨부파일 등록</h2>
            <div><span>* </span> 는 필수 입력, 파일크기 개별파일 <span>30MB 중 100MB까지</span></div>
            <span><img src="../별도UI/image/noun_X_2045322-01.png"></span>
        </div>
        <form id="attach-form">
            <table id="attach-content">
                <tr>
                    <td>
                        파일구분 <span style="color: red; font-size: 11px; font-weight: bold;"> *</span>
                    </td>
                    <td>
                        <select>
                            <option>이력서</option>
                            <option>자기소개서</option>
                            <option>경력기술서</option>
                            <option>자격증</option>
                            <option>증명서</option>
                            <option>추천서</option>
                            <option>포트폴리오</option>
                            <option>기획서</option>
                            <option>동영상</option>
                            <option>음성</option>
                            <option>기타</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td>
                        파일찾기 <span style="color: red; font-size: 11px; font-weight: bold;"> *</span>
                    </td>
                    <td>
                        <input type="radio" checked="checked" name="file" id="file" value="file">
                        <label for="file">파일</label>    
                        <input type="radio" name="file" id="url" value="url">
                        <label for="url">URL</label>   
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <input type="file" name="" id="" class="attach-input">
                        <input type="url" name="" id="" value="http://" class="url-input">
                    </td>
                </tr>
            </table>
            <div id="caution-content">
                <pre>
위조된 문서를 등록하여 취업활동에 이용시 법적 책임을 지게 될 수 있습니다.
(주)JobStory은 구직자가 등록한 문서에 대해 보증하거나 별도의 책임을 지지 않으며
첨부된 문서를신뢰하여 발생한 법적 분쟁에 책임을 지지 않습니다. (개인회원약관 제15조 관련)
                </pre>
            </div>
            <div id="attach-btn-container">
                <button id="attach-submit-btn">완료</button>
                <button id="attach-cancel-btn">취소</button>
            </div>
        </form>
    </div>
    <div class="cover">
    </div>
    <div class="all-container">
        <div class="head-container">
            <div>
                <div class="title">
                    <h1>이력서 현황</h1>
                </div>
                <div id="content-container">
                    <ul>
                        <li>이력서는 최대 5개까지 작성하여 등록 가능합니다.</li>
                        <li>지원하고자 하는 회사마다 이력서 내용을 다르게 하여 지원 가능합니다.</li>
                        <li>(입사지원을 한 후 이력서의 내용을 수정해도 이전에 지원한 이력서의 내용은 변경되지 않습니다.)</li>
                        <li>인재정보는 1개의 이력서만 공개 가능합니다.</li>
                    </ul>
                    <div id="img-container">
                        <!-- <img src="../별도UI/image/"/> -->
                    </div>
                </div>
            </div>
        </div>
        <div class="list-container">
            <div class="title-container">
                <div id="list-title">이력서 리스트</div>
                <span id="list-count">총 ${rCnt} 건</span>
                <input id="resume-btn" type="button" value="이력서 등록"/>
            </div>
            <form>
                <table id="resume-list">
                    <thead>
                        <th>선택</th>
                        <th>이력서 제목</th>
                        <th>최근수정일</th>
                        <th>다운로드</th>
                    </thead>
                    <tbody id="resume-list-result">
	                    <c:forEach var="r" items="${rList}">
	                        <tr>
	                            <td>
	                                <input type="radio" name="resume" id="resume-title${r.resumeNo}" value="${r.resumeNo}">
	                            </td>
	                            <td><label for="resume-title${r.resumeNo}">${r.title}</label></td>
	                            <td>${r.regDate}</td>
	                            <td><input type="button" class="download-btn" id="download-btn${r.resumeNo}" value="다운로드" /></td>
	                        </tr>
	                    </c:forEach>    
                    </tbody>
                </table>
            </form>
        </div>
        <div id="resume-btn-container">
            <input type="button" id="delete-btn" value="삭제" />
            <input type="button" value="수정" />
        </div>
        <div class="resume-pagination">
            <span>
                <span>&lt;</span>
                <span>1</span>
                <span>2</span>
                <span>3</span>
                <span>4</span>
                <span>5</span>
                <span>6</span>
                <span>7</span>
                <span>8</span>
                <span>9</span>
                <span>10</span>
                <span>&gt;</span>
            </span>
        </div>
        <div class="attach-container">
            <div class="title-container">
                <div id="attach-title">첨부파일 리스트</div>
                <span id="attach-count">총 0건</span>
                <input id="attach-btn" type="button" value="첨부파일 등록"/>
            </div>
            <form>
                <table id="attach-list">
                    <thead>
                        <th><input type="checkbox" id="checkAll"/></th>
                        <th>항목</th>
                        <th>파일명</th>
                        <th>등록/수정일</th>
                        <th>용량</th>
                        <th> </th>
                    </thead>
                    <tbody>
                        <tr>
                            <td><input type="checkbox" name="checkBox" id=""></td>
                            <td>이력서</td>
                            <td>Design Marketing-2018</td>
                            <td>2018.11.18 (일)</td>
                            <td>-</td>
                            <td><input class="download-btn" id="download-btn" type="button" value="다운로드" /></td>
                        </tr>
                    </tbody>
                </table>
            </form>
        </div>
        <div id="attach-delete-btn">
            <input type="button" value="삭제" />
        </div>
        <div class="attach-pagination">
            <span>
                <span>&lt;</span>
                <span>1</span>
                <span>2</span>
                <span>3</span>
                <span>4</span>
                <span>5</span>
                <span>6</span>
                <span>7</span>
                <span>8</span>
                <span>9</span>
                <span>10</span>
                <span>&gt;</span>
            </span>
        </div>
    </div>
    
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

    <script>
        /* 첨부파일 창 on, off */
        function attachWrite(flag) {
            $(".attach-write-container").css("visibility",flag);
            $(".cover").css("visibility", flag);
        }
        
        /* 첨부파일 창 닫기 */
        $(".attach-write-head > span > img").click(function(){
            alert("close");
            attachWrite("hidden");
            $(".attach-input").css("visibility", "hidden");
            $(".url-input").css("visibility", "hidden");
        });
        
        /* 첨부파일 등록 버튼 */
        $("#attach-btn").click(function () {
            alert("첨부파일 등록");
            $("html, body").animate({scrollTop:1300}, 400);
            attachWrite("visible");
            // var scrollPosition = $("body").offset().top;
        });

        /* 첨부파일 제출 버튼 */
        $("#attach-submit-btn").click(function (e) {
            e.preventDefault();
            alert("제출");
            attachWrite("hidden");
            $(".attach-input").css("visibility", "hidden");
            $(".url-input").css("visibility", "hidden");
        });

        /* 첨부파일 취소 버튼 */
        $("#attach-cancel-btn").click(function (e) {
            e.preventDefault();
            alert("취소");
            attachWrite("hidden");
            $(".attach-input").css("visibility", "hidden");
            $(".url-input").css("visibility", "hidden");
        });

        /* 체크박스 전체 선택&해제 */
        $("#checkAll").click(function () {
            var checked = $(this).prop("checked");
            alert(checked);
            if(checked) {
                $("input[name=checkBox]").each(function () {
                    $(this).prop("checked", true);
                })
            } else {
                $("input[name=checkBox]").each(function () {
                    $(this).prop("checked", false);
                })
            }
        });

        /* 이력서 등록 폼 이동 */
        $("#resume-btn").click(function () {
            alert("이력서 등록");
            location.href="http://localhost:8000/jobstory/user/resumeWriteForm.do"
        });

        /* 첨부파일 등록 - 파일 찾기 */
        $("input[name=file]").click(function () {
            var val = $("input[name=file]:checked").val();
            if(val=="file"){
                alert(val);
                $(".attach-input").css("visibility", "visible");
                $(".url-input").css("visibility", "hidden");
            } else if (val=="url") {
                alert(val);
                $(".attach-input").css("visibility", "hidden");
                $(".url-input").css("visibility", "visible");
            }
        });
        
        /* 이력서 삭제 */
        $("#delete-btn").click(function () {
        	var deleteNo = $("input[name=resume]:checked").val();
        	alert(deleteNo);
        	$.ajax({
        		type: "POST",
        		url: "/jobstory/user/resumeDelete.do",
        		data: {"resumeNo": deleteNo}
        	}).done(function (data) {
        		alert("전송 성공");
        		var list = data.rList;
        		var cnt = data.cnt.resumeCnt;
        		console.log(list);
        		console.log(cnt);
        		var html = "";
        		for( var i = 0 ; i < list.length ; i++ ){
        			html += "<tr>"
        				 + "<td>"
        				 + "<input type='radio' name='resume' id='resume-title" + list[i].resumeNo +  "' value='" + list[i].resumeNo + "'>"
        				 + "</td>"
       					 + "<td><label for='resume-title" + list[i].resumeNo + "'>" + list[i].title + "</label></td>"
       					 + "<td>" + list[i].regDate + "</td>"
       					 + "<td><input type='button' class='download-btn' id='download-btn" + list[i].resumeNo + "' value='다운로드' /></td>"
	       				 + "</tr>";
        		};
        		$("#resume-list-result").html(html);
				$("#list-count").text("총 " + cnt + " 건");
        	}).fail(function () {
        		alert("전송 실패");
        	});
        });
    </script>
  </body>
</html>