<%@ page import="org.springframework.web.util.HtmlUtils" %>
<%--
  Created by IntelliJ IDEA.
  User: ND
  Date: 15.10.2014
  Time: 21:01
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
    <title>Заявка</title>
</head>
<body onkeydown="keydown(event)">
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
                    <td id="answer">${question.answer}</td>
                    <td>${question.answerDate}</td>
                    <td>
                        <button onclick="setAttributes(${question.id}); showPopupWindow()">Ответить</button>
                        </br>
                        <%--<button onclick="setAttributes(${question.id}, 'answerBox', '${HtmlUtils.htmlEscape(question.answer)}'); showPopupWindow()">--%>

                        <button onclick="setAttributes(${question.id}, 'answerBox', '${fn:escapeXml(question.answer)}'); showPopupWindow()">
                            Изменить
                        </button>
                        </br>
                        <button onclick="setAttributes(${question.id}); showConfirmWindow()">Удалить</button>
                        </br>
                    </td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </c:if>
    <c:choose>
        <c:when test="${empty questionList}">
            <h1 style="color: red;">Нет ни одного вопроса в БД</h1>
        </c:when>
    </c:choose>
</div>
<div id="popupWindow">
    <div class="messageBoxTitle">Добавление ответа</div>
    <form style="display: inline;" accept-charset="utf-8" action="update_question" method="POST">
        <input id="questionId" name="questionId" type="hidden"/>
        <textarea id="answerBox" name="answer" class="messageBox" maxlength="255" rows="5"
                  cols="50" path="answer" content="Hello"></textarea></br></br>
        <input class="sendBtn" type="submit" value="Сохранить">
    </form>
    <button class="sendBtn" onclick="closePopupWindow()">Отмена</button>
</div>

<div id="confirmWindow">
    <div class="messageBoxTitle">Вы действительно хотите удалить запись</div>
    <form style="display: inline;" accept-charset="utf-8" action="delete_question" method="POST">
        <input id="questionIdDelete" name="questionId" type="hidden"/>
        <input class="sendBtn" type="submit" value="Да">
    </form>
    <button class="sendBtn" onclick="closeConfirmWindow()">Нет</button>
</div>

<div id="overlay"/>
<script src="<c:url value="/resources/js/answers.js"/>"></script>
</body>
</html>
</input>