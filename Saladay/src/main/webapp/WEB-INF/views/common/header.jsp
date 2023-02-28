<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
.outer { width: 1200px; margin: auto; }

.logo{ 
    display: flex; 
    justify-content: center;
    margin-top: 50px;
}

.user { display: flex; justify-content: flex-end; }
.userInfo{
    padding-right: 100px;
    display: flex;
    justify-content: flex-end;
}
.userInfo span { font-weight: bold; }
.userInfo a{ text-decoration: none; color: gray; }
.userInfo a:hover{ color: black; }

.header-menu {
	display: flex;
	justify-content: space-around;
	height: 50px;
	line-height: 50px;
    font-weight: bold;
    margin-top: 50px;
    padding-bottom: 20px;
    border-bottom: 1px solid lightgray;
}
.header-menu>a {
	text-decoration: none;
	width: 200px;
	text-align: center;
	color: black;
	font-size: 23px;
}
.header-menu>a:hover {
	cursor: pointer;
	color: #EBADAD;
	font-weight: bold;
}

</style>
</head>
<body>
    <div class="logo">
        <img src="/saladay/resources/img/logo.png" width="200">
    </div>
    <div class="user">
		<c:choose>
			<c:when test="${ empty loginUser }"> <!-- 로그인이 되어있지 않을 때 --> 
				<div class="userInfo">
					<a href="loginForm.me">로그인 </a>
                    <a>&nbsp; | &nbsp;</a>
                    <a href="joinForm.me"> 회원가입</a>
				</div>
			</c:when>
			<c:otherwise> <!-- 로그인 되어있을 때 -->
				<div class="userInfo">
                    <a href=""><span>${ loginUser.userName }</span>님 안녕하세요</a> <!-- 누르면 마이페이지로 이동 -->
                    <a>&nbsp; | &nbsp;</a>
                    <a href="">로그아웃</a> <!-- 누르면 로그아웃 -->
				</div>
                <div class="userInfo">
                    <!-- 관리자(매장)가 로그인 했을 경우 -->
					<c:if test="${ loginUser.userId eq 'admin' }">
						<a href="">관리자 모드로 전환</a>
					</c:if>
                </div>
			</c:otherwise>
		</c:choose>
	</div>
	<div class="header-menu">
		<a href="">메뉴소개</a>
		<a href="">이용방법</a>
		<a href="">새 소식</a>
		<a href="">온라인 주문</a>
		<a href="">후기</a>
	</div>
	
	<script>
		$(function(){
			// 로고 클릭 시 메인페이지로 이동
			$('.logo').click(function(){
				location.href="/saladay";
			})
		})
	</script>
</body>
</html>