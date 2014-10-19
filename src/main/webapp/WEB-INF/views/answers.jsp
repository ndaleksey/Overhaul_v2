<%--
  Created by IntelliJ IDEA.
  User: ND
  Date: 15.10.2014
  Time: 21:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=windows-1251" %>
<%@ page pageEncoding="CP1251" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
</head>
<body>
<div id="main">
    <c:if test="${!empty questionList}">
        <table class="answersTable">
            <thead>
            <tr>
                <th>Вопрос</th>
                <th>Автор</th>
                <th>Дата вопроса</th>
                <th>Ответ</th>
                <th>Дата ответа</th>
            </tr>
            </thead>
            <tbody>
            <%--<c:if test="${method_name != ''}"><h3>${method_name}</h3></c:if>--%>
            <c:forEach items="${questionList}" var="question">
                <tr>
                    <td>${question.message}</td>
                    <td>${question.authorName}</td>
                    <td>${question.postDate}</td>
                    <td>${question.answer}</td>
                    <td>${question.answerDate}</td>
                    <td>
                        <form action="/add_answer" method="post">
                            <input type="button" value="Ответить"/>
                        </form>
                        <form action="/modify_answer" method="post">
                            <input type="button" value="Изменить"/>
                        </form>
                        <form action="/delete_answer" method="post">
                            <input type="button" value="Удалить/>
                        </form>
                        <%--<form method="get" action="/add_answer">
                            <input id="param1" type="submit" value="add" >
                            <input id="param2" type="submit" value="modify">
                            <input id="param3" type="submit" value="remove">
                        </form>--%>
                    </td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </c:if>
</div>

</body>
</html>
