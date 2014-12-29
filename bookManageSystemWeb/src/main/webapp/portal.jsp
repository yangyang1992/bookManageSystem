<%--
  Created by IntelliJ IDEA.
  User: yangyang
  Date: 14-11-1
  Time: 下午2:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>图书管理系统-首页</title>
    <script src="js/jquery-1.10.2.js" type="text/javascript"></script>
    <script src="js/config.js" type="text/javascript"></script>
    <script type="text/javascript">
        $(document).ready(function() {
            $("#imageCode").click(function(){
                $.post($.URL.anonymous.validateImage,null,imageCallBack,"json");
            });
        });

        function oneClick() {
            $.post($.URL.anonymous.test,null,clickCallBack,"json");
            $.post($.URL.anonymousUser.add,null,addCallBack,"json");
        }

        function regClick() {
            $("#registerContainer").load("test/register.html");
        }

        function clickCallBack(data) {
            if(data.code == 200) {
                alert(data.message)
            }
            else {
                alert("匿名用户不能访问后台资源");
            }
        }

        function imageCallBack(data) {
            console.log(data.data.toString());
            $("#imageCode").attr("src", $.URL.common.rootPath+data.data.toString());
        }

        function addCallBack(data) {
            if(data.code == 200) {
                alert(data.message)
            }
            else {
                alert("匿名用户不能访问后台资源");
            }
        }

    </script>
</head>
<body>
<h2>首页，不检查权限</h2>
<a href="index.jsp" style="color: red">登录</a><b/>
<a href="register.html" style="color: red">注册</a> <b/>
<p>测试未登录用户能否访问资源：<input id="testBtn" onclick="oneClick()" type="button" value="测试">
<div align="center">
    <img src="image/offline.png" width="70" height="30"
         alt="验证码" title="点击更换" id="imageCode" style="cursor: pointer;"/>
    <%--<input type="button" id="validateImg" value="验证码">--%>
    <a href="register.html">注册</a>
</div>
</body>
</html>