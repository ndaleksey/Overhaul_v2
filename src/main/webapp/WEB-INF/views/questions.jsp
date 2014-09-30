<%--
  Created by IntelliJ IDEA.
  User: Shishkov
  Date: 11.09.2014
  Time: 17:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=windows-1251" %>
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
<body>
<div id="header"></div>
<div id="main">
    <div id="mainmenu">
        <a href="welcome" id="btn1"></a><!--
                --><a href="examples" id="btn2"></a><!--
                --><a href="question" id="btn3"></a>
    </div>
    <div>
        <h3>Сообщения</h3>
        <c:if test="${!empty questionList}">
            <table style="color: red; border: 1px;">
                <tr>
                    <th>#</th>
                    <th>Текст сообщения</th>
                    <th>Автор</th>
                    <th>Дата</th>
                </tr>
                <c:forEach items="${questionList}" var="question">
                    <tr>
                        <td>${question.id}</td>
                        <td>${question.message}</td>
                        <td>${question.authorName}</td>
                        <td>${question.postDate}</td>
                    </tr>
                </c:forEach>
            </table>
        </c:if>
        <c:choose>
            <c:when test="${empty questionList}">
                <h1 style="color: red;">Нет ни одной записи в таблице</h1>
            </c:when>
        </c:choose>
        <br>
        <%--<form:form method="get" action="add_question">
            <div>
                Ваше имя:<form:input path="${question.authorName}"/><br>
                <form:textarea path="${question.message}"/>
            </div>
            <div>
                <input type="submit">
            </div>
        </form:form>--%>
    </div>
    <div id="footer"></div>
</div>
</body>
</html>
