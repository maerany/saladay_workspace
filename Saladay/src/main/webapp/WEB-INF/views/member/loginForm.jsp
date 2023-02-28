<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Saladay | 로그인</title>
<style>
.outer{
    width: 1200px;
    margin: auto;
    display: flex;
    justify-content: center;
}

.login-box{
    width: 600px;
    border: 1px solid lightgray;
    text-align: center;
    padding: 30px;
    padding-bottom: 60px;
}
.login-box p{ color: gray;}
.formbox{
    margin: 50px 0px 30px 0px;
}
.input{
    display: flex;
    width: 500px;
    height: 70px;
    border: 1px solid lightgray;
    margin-left: 50px;
}
.input>.title{
    width: 150px;
    line-height: 70px;
}
.input input{
    border: 0px;
    width: 350px;
    height: 68px;
}
.chk{
    display: flex;
    margin-top: 10px;
    margin-left: 50px;
    font-size: 16px;
}
#btn-login{
    width: 500px;
    height: 80px;
    border-radius: 5px;
    border: 0px;
    background-color: green;
    color: white;
    font-size: 18px;
    margin-top: 50px;
}
#btn-login:hover{
    cursor: pointer;
    background-color: rgb(1, 94, 1);
}

.find{
    display: flex;
    justify-content: space-evenly;
}
.find>a{
    text-decoration: none;
    color: gray;
}
.find>a:hover{
    color: black;
}
</style>
</head>
<body>
    <div class="outer">

        <div class="login-box">
            <div>
                <h1>LOGIN</h1>
                <p>샐러데이 회원으로 로그인하시면<br>
                   제공하는 다양한 서비스를 이용할 수 있습니다.</p>
            </div>
            <form action="login.me">
                <div class="formbox">
                    <div class="input">
                        <div class="title">아이디</div>
                        <div><input type="text" name="userId" required placeholder="아이디를 입력해주세요."></div>
                    </div>
                    <div class="input">
                        <div class="title">비밀번호</div>
                        <div><input type="password" name="userPwd" required placeholder="비밀번호를 입력해주세요."></div>
                    </div>
                    <div class="chk">
                        <input type="checkbox" id="check-id">아이디 저장 <br>
                    </div>
                    <button id="btn-login">로그인</button>
                </div>
            </form>

            <div class="find">
                <a href="">아이디 찾기</a>
                <a>&nbsp;|&nbsp;</a>
                <a href="">비밀번호 찾기</a>
                <a>&nbsp;|&nbsp;</a>
                <a href="">회원가입</a>
            </div>

        </div>
        

    </div>
</body>
</html>