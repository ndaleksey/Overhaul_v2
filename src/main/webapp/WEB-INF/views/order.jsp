<%--
  Created by IntelliJ IDEA.
  User: ND
  Date: 22.11.2014
  Time: 0:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<!--[if lt IE 7]> <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]> <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]> <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js"> <!--<![endif]-->
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Заявка</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Attach necessary styles -->
    <link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/main.css"/>"/>
    <script type="text/javascript" src="<c:url value="/resources/js/all.js"/>"></script>
</head>
<script>
    $(function () {
        $("#roomsNumber").numberMask({beforePoint: 3});
        $("#flatSquare").numberMask({type: 'float', afterPoint: 2, defaultValue: '0.0', decimalMark: '.'});
    });

    function validateOrder() {
        document.getElementById('roomsNumber').value == '0' ? alert("Количество комнат не может быть равно 0!") :
                document.getElementById("messageForm").submit();
    }
    /*$(function() {
//        $("messageForm").submit().acceptData($("roomsNumber").eq(0))
       $("messageForm").onsubmit = function() {
           console.log($("roomsNumber").value == 0 ? false : true);
           return $("roomsNumber").value == 0 ? false : true;
       }
    });*/
</script>
<div id="main">
    <div id="header"></div>
    <div id="mainmenu">
        <a href="welcome" id="btn1"></a><!--
                --><a href="examples" id="btn2"></a><!--
                --><a href="questions" id="btn3"></a>
    </div>

    <form:form acceptCharset="UTF-8" id="messageForm" action="add_order" commandName="order" method="POST">
        <h1 style="text-align: center">Заполните данные заявки:</h1>
        <table border="0">
            <tr>
                <td class="request">Имя:</td>
                <td><form:input class="editBox" type="text" maxlength="30" path="clientName"/></td>
            </tr>
            <tr>
                <td class="request">E-mail:</td>
                <td><form:input class="editBox" type="text" maxlength="20" path="eMail"/></td>
            </tr>
            <tr>
                <td class="request">Адрес:</td>
                <td><form:input class="editBox" type="text" maxlength="20" path="address"/></td>
            </tr>
            <tr>
                <td class="request">Телефон:</td>
                <td><form:input class="editBox" type="text" maxlength="20" path="phoneNumber"/></td>
            </tr>
            <tr>
                <td class="request">Площадь, м<sup>2</sup>:</td>
                <td><form:input id="flatSquare" class="editBox" type="text" maxlength="20" path="flatSquare"/></td>
            </tr>
            <tr>
                <td int="roomsNumber" class="request">Количество комнат:</td>
                <td><form:input class="editBox" type="text" maxlength="20" path="roomsNumber"/></td>
            </tr>
            <tr>
                <td class="request" style="vertical-align: top">Сообщение:</td>
                <td>
                    <form:textarea class="messageBox" style="margin-left: 10px" rows="6" cols="40"
                                   maxlength="255" path="message"></form:textarea>
                </td>
            </tr>
            <tr>
                <td colspan="2" class="request">
                    <input class="sendBtn" style="margin-right: 0" type="button" value="Отправить"
                           onclick="validateOrder()">
                </td>
            </tr>
        </table>
    </form:form>
    <div id="overlay">
        <div class="messageBoxTitle">Ваша заявка принята</div>
    </div>
</div>
<script src="<c:url value="/resources/js/answers.js"/>"></script>
</body>
</html>
