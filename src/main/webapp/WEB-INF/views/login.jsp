<%--
  Created by IntelliJ IDEA.
  User: ND
  Date: 08.10.2014
  Time: 18:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<!--[if lt IE 7]> <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]> <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]> <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!-->
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Приветствю тебя о великий!</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Attach necessary styles -->
    <link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/main.css"/>"/>
</head>
<body>
<h2 style="color: red; font-family: 'Comic Sans MS'">Приветствие тебе, о Великий!</h2>

<div id="main" style="margin: 0 auto; display: inline-block; width: 300px">
    <form id="messageForm" method="post" action="<c:url value="/j_spring_security_check" />">
        <table id="loginTable">
            <tr>
                <td>Логин:</td>
                <td><input id="adminLogin" maxlength="20" type="text" name="j_username" value="ivan"/></td>
            </tr>
            <tr>
                <td>Пароль:</td>
                <td><input id="adminPswd" maxlength="20" type="password" name="j_password" value="ivan"/></td>
            </tr>
            <tr>
                <td align="right" colspan="2"><input class="sendBtn" type="submit" value="Войти"/></td>
            </tr>
        </table>
    </form>
</div>
</body>
</html>
