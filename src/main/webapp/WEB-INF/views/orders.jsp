<%--
  Created by IntelliJ IDEA.
  User: ND
  Date: 25.11.2014
  Time: 19:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=utf-8" %>
<%@ page pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<!--[if lt IE 7]> <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]> <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]> <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js"> <!--<![endif]-->
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Редактор воросов</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Attach necessary styles -->
    <link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/main.css"/>"/>
    <title>Заявки</title>
</head>
<body>
<div id="main">
    <c:if test="${!empty orderList}">
        <table class="answersTable">
            <thead>
            <tr>
                <th>Имя заказчика</th>
                <th>E-mail</th>
                <th>Адрес</th>
                <th>Телефон</th>
                <th>Площадь<sup>2</sup></th>
                <th>Количество комнат</th>
                <th>Сообщение</th>
            </tr>
            </thead>
            <tbody>
                <%--<c:if test="${method_name != ''}"><h3>${method_name}</h3></c:if>--%>
            <c:forEach items="${orderList}" var="order">
                <tr>
                    <td>${order.clientName}</td>
                    <td>${order.EMail}</td>
                    <td>${order.address}</td>
                    <td id="answer">${order.phoneNumber}</td>
                    <td>${order.flatSquare}</td>
                    <td>${order.roomsNumber}</td>
                    <td>${order.message}</td>
                    <%--<td>
                        <button onclick="setAttributes(${order.id}); showPopupWindow()">Ответить</button>
                        </br>
                        <button onclick="setAttributes(${order.id}, 'answerBox', '${fn:escapeXml(order.answer)}'); showPopupWindow()">
                            Изменить
                        </button>
                        </br>
                        <button onclick="setAttributes(${order.id}); showConfirmWindow()">Удалить</button>
                        </br>
                    </td>--%>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </c:if>
</div>
</body>
</html>
