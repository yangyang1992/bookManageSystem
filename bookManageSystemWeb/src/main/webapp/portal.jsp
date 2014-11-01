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
        function oneClick() {
            $.post($.URL.anonymous.test,null,clickCallBack,"json");
        }

        function clickCallBack(data) {
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
<p>测试未登录用户能否访问资源：<input id="testBtn" onclick="oneClick()" type="button" value="测试">
</body>
</html>