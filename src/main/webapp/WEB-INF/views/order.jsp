<%--
  Created by IntelliJ IDEA.
  User: ND
  Date: 22.11.2014
  Time: 0:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page pageEncoding="CP1251" %>
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
</head>
<div id="main">
    <h1 style="text-align: center">Заполните данные заявки:</h1>
    <form:form acceptCharset="UTF-8" id="messageForm" action="/add_order" commandName="order" method="POST">
        <table border="0">
            <tr>
                <td class="request">Имя:</td>
                <td><form:input class="editBox" type="text" maxlength="30" path="clinet_name"/><br/></td>
            </tr>
            <tr>
                <td class="request">E-mail:</td>
                <td><form:input class="editBox" type="text" maxlength="20" path="e_mail"/><br/></td>
            </tr>
            <tr>
                <td class="request">Адрес:</td>
                <td><form:input class="editBox" type="text" maxlength="20" path="address"/><br/></td>
            </tr>
            <tr>
                <td class="request">Телефон:</td>
                <td><form:input class="editBox" type="text" maxlength="20" path="phone_number"/><br/></td>
            </tr>
            <tr>
                <td class="request">Площадь, м<sup>2</sup>:</td>
                <td><form:input class="editBox" type="text" maxlength="20" path="flat_square"/><br/></td>
            </tr>
            <tr>
                <td class="request">Количество комнат:</td>
                <td><form:input class="editBox" type="text" maxlength="20" path="rooms_number"/><br/></td>
            </tr>
            <tr>
                <td class="request" style="vertical-align: top">Сообщение:</td>
                <td>
                    <form:textarea class="messageBox" style="margin-left: 10px" rows="6" cols="40"
                              maxlength="255" path="message"></form:textarea><br/>
                </td>
            </tr>
            <tr>
                <td colspan="2" class="request">
                    <input class="sendBtn" style="margin-right: 0" type="submit" value="Отправить">
                </td>
            </tr>
        </table>
    </form:form>
</div>
</body>
</html>
