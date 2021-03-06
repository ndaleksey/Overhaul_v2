<%--
  Created by IntelliJ IDEA.
  User: Shishkov
  Date: 11.09.2014
  Time: 17:01
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
<html class="no-js"> <!--<![endif]-->
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Заявка</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Attach necessary styles -->
    <link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/main.css"/>"/>
    <link rel="script" type="">

</head>
<body>
<script>
    function onload() {
        alert("Hello");
        javascript:document.all.abottom.scrollIntoView(true);
    }
</script>
<div id="header"></div>
<div id="main">
    <div id="mainmenu">
        <a href="welcome" id="btn1"></a><!--
                --><a href="examples" id="btn2"></a><!--
                --><a href="questions" id="btn3"></a>
    </div>
    <div>
        <c:if test="${!empty questionList}">
            <table>
                <tbody>
                <c:forEach items="${questionList}" var="question">
                    <tr>
                        <td class="tdAvatar">
                            <div class="userAvatar"></div>
                            <div class="authorName"><p>${question.authorName}</p></div>
                            <div class="postDate">${question.postDate}</div>
                        </td>
                        <td class="tdQuestion" colspan="2">
                            <div class="question">${question.message}</div>
                        </td>
                    </tr>
                    <tr>
                        <c:choose>
                            <c:when test="${not empty question.answer}">
                                <td class="tdAnswer" align="right" colspan="2">
                                    <div class="answer">${question.answer}</div>
                                </td>
                                <td class="tdAvatar">
                                    <div class="adminAvatar"></div>
                                    <div class="authorName">Админ</div>
                                    <div class="postDate">${question.answerDate}</div>
                                </td>
                            </c:when>
                            <c:otherwise>
                                <td colspan="3"></td>
                            </c:otherwise>
                        </c:choose>
                    </tr>
                    <tr class="emptyRow">
                        <td colspan="3"></td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </c:if>
        <c:choose>
            <c:when test="${empty questionList}">
                <h1 style="color: red;">Нет ни одной записи в таблице</h1>
            </c:when>
        </c:choose>
        <br>
        <form:form acceptCharset="UTF-8" id="messageForm" action="/add_question" commandName="question" method="POST">
            Ваше имя:<form:input id="nickBox" maxlength="20" path="authorName"/><br>
            Сообщение:<br/><form:textarea class="messageBox" rows="6" cols="50" maxlength="255" path="message"/><br/>
            <input class="sendBtn" type="submit" value="Добавить вопрос"
                   onclick="javascript:document.all.abottom.scrollIntoView(true)">
        </form:form>
    </div>
    <div id="footer"></div>
</div>
</body>
</html>
