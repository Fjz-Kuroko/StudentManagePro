<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<html>
<head>
    <title>Login</title>
    <style type="text/css">
        .login-box {
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%,-50%);
            width: 400px;
            padding:40px;
            background: white;
            box-sizing: border-box;
            box-shadow: 0 15px  25px rgba(0,0,0,.5);

        }

        .login-box h2{
            margin: 0 0 30px;
            padding: 0;
            text-align: center;
            color: #FF78BB;
        }
        .login-box .login-field{
            position: relative;
        }
        .login-box .login-field  input{
            width: 100%;
            padding: 10px 0;
            font-size: 16px;
            color: #707070;
            margin-bottom: 30px;
            border: none;
            border-bottom: 1px solid #FF78BB;
            outline: none;
            background: transparent;
        }
        .login-box button{
            background: transparent;
            border: none;
            outline: none;
            color: #fff;
            background: #FF78BB;
            padding: 10px 20px;
            cursor: pointer;
            border-radius: 5px;
        }

        .bgimg {
            /* 前三行让整合div固定在屏幕的最上方和最左方 */
            position: fixed;
            top: 0;
            left: 0;
            /* 让整个div跟屏幕大小一样，min-width是为了在让屏幕宽度变小后图片停止缩放 */
            width: 100%;
            height: 100%;
            min-width: 1000px;
            /* 让div在整个HTML页面中各个层级的下方 */
            z-index: -10;
            /* 针对IE6 */
            zoom: 1;
            /* 图片平铺，不重复 */
            background-repeat: no-repeat;
            background: url("<%= basePath%>img/bg_login.jpg");
            /* 接下来三行让图片随屏幕大小同步缩放，但是有部分可能会被裁切，不过不至于会露白 */
            background-size: cover;
            -webkit-background-size: cover;
            -o-background-size: cover;
            /* 图片的位置，居中，靠左对齐 */
            background-position: center 0;
        }
    </style>
</head>
<body>
<body class="bgimg">
<div >
    <div class="login-box">
        <form action="loginController/homePage" method="post" name="f">
            <h2>学生管理系统-登录</h2>
            <div class="login-field">
                <img src="<%= basePath%>img/user.png"  />
                <input type="text" placeholder="请输入用户名" name="username" id="username" />
            </div>
            <div class="login-field">
                <img src="<%= basePath%>img/password.png" />
                <input type="password" placeholder="请输入密码" name="password" id="password"  />
            </div>
            <div class="login-sub">
                <button type="submit">登录</button>
            </div>
        </form>
    </div>
</div>
</body>
</body>
</html>
