<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>欢迎登录</title>
    <style>
        body {
            background-color: #f8f8f8;
        }

        form {
            padding:30px;
            background-color: white;
            display: flex;
            align-items: center;
            margin:0 500px;
            justify-content: center;
            flex-direction: column;
            border-radius: 30px;
        }

        h1 {
            text-align: center;
            margin-bottom: 20px;
        }

        label {
            display: block;
        }
        a{
            display: block;
            text-align: center;

            margin-bottom: 10px;
        }
        input{
            border-radius: 20px;
        }
    </style>
</head>
<body>
<h1>欢迎登录</h1>
<form action="/login" method="post">
    <label for="username">用户名:</label><br>
    <input type="text" id="username" name="username"><br>
    <label for="password">密码:</label><br>
    <input type="password" id="password" name="password"><br><br>
    <input type="submit" value="Submit">
    <a href="register.jsp">注册账号</a>

</form>
<br>
</body>
</html>
