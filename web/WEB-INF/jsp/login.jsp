<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Bootstrap 学生信息管理系统</title>
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
    <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container-fluid">
    <span id="message">${msg}</span>
    <div class="row-fluid">
        <div class="span12">
            <form action="/login" class="form-horizontal" method="post">
                <div class="control-group">
                    <label class="control-label" for="inputname">用户名</label>
                    <div class="controls">
                        <input id="inputname" type="text" name="username" />
                    </div>
                </div>
                <div class="control-group">
                    <label class="control-label" for="inputPassword">密码</label>
                    <div class="controls">
                        <input id="inputPassword" type="password" name="password"/>
                    </div>
                </div>
                <div class="control-group">
                    <div class="controls">
                         <button type="submit" class="btn">登陆</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>
</body>
</html>
