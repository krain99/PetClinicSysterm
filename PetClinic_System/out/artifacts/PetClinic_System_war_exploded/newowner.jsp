<%--
  Created by IntelliJ IDEA.
  User: cc
  Date: 2020/6/11
  Time: 9:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>增加新客户</title>
    <link rel="stylesheet" href="allStyle.css">
</head>
<body>
    <div class="login-top">
        <a class="quit" href="servlet.QuitServlet">退出</a>
        <h1>宠物诊所应用</h1>
        <ul class="ul-sty">
            <li><a href="vetsearch.jsp">兽医</a></li>
            <li><a href="petsearch.jsp">宠物</a></li>
        </ul>
    </div>
    <div class="login-center">
        <table class="res-table">
            <form action="servlet.PetOwnerServlet?purpose=insert" method="post">
                <tr class="res-tr">
                    <td>所有人名称</td>
                    <td><input type="text" name="name"></td>
                </tr>
                <tr class="res-tr">
                    <td>地址</td>
                    <td><input type="text" name="address"></td>
                </tr>
                <tr class="res-tr">
                    <td>城市</td>
                    <td><input type="text" name="city"></td>
                </tr>
                <tr class="res-tr">
                    <td>电话号码</td>
                    <td><input type="text" name="telephone"></td>
                </tr>
                <tr class="tr03">
                    <td>
                        <input type="submit" value="增加"/>
            </form>
            </td>
            <td>
                <form action="petsearch.jsp" method="post">
                    <input type="submit" value="返回"/>
                </form>
            </td>
            </tr>
            <c:forEach items="${listFb}" var="info">
                <tr class="res-mess">
                    <td colspan="2">${info.mess}</td>
                </tr>
            </c:forEach>
        </table>
    </div>
    <div class="login-bottom">©郑州轻工业大学版权所有</div>
</body>
</html>
