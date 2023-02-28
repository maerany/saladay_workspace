<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ISaladay | 회원가입</title>
<style>
.outer { width: 1200px; margin: auto; 
    display: flex;
    justify-content: center;}
.joinbox{
    width: 800px;
    border: 1px solid lightgray;
    text-align: center;
    padding: 30px;
    padding-bottom: 60px;
}

.formbox{
    display: flex;
    flex-direction: column;
    justify-content: center;
    margin-top: 60px;
}
.formbox th{
    width: 120px;
}
.formbox input{
    width: 90%;
    height: 40px;
}
.cert{
    width: 80px;
}

#btn-join{
    margin-top: 60px;
    width: 200px;
    height: 60px;
}
</style>
</head>
<body>
    
    <div class="outer">

        <div class="joinbox">
            <div>
                <h1>JOIN</h1>
            </div>

            <form action="">
                <div class="formbox">
                    <table>
                        <tr>
                            <th>아이디</th>
                            <td><input type="text"></td>
                        </tr>
                        <tr>
                            <th>비밀번호</th>
                            <td><input type="password"></td>
                        </tr>
                        <tr>
                            <th>비밀번호 재확인</th>
                            <td><input type="password"></td>
                        </tr>
                        <tr>
                            <td></td>
                            <td>
                                <label>비밀번호가 일치하지 않습니다.</label>
                            </td>
                        </tr>
                        <tr>
                            <th>이름</th>
                            <td><input type="text"></td>
                        </tr>
                        <tr>
                            <th>이메일</th>
                            <td><input type="text"></td>
                            <td class="cert"><button type="button" id="btn-cert">인증번호 받기</button></td>
                        </tr>
                        <tr>
                            <td></td>
                            <td><input type="text" placeholder="인증번호" readonly></td>
                        </tr>
                    </table>
                </div>
                <button id="btn-join">회원가입</button>
            </form>


        </div>

    </div>

</body>
</html>