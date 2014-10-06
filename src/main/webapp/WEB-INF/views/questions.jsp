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
    <meta charset="windows-1251">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Заявка</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Attach necessary styles -->
    <link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/main.css"/>"/>

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
                        <td class="tdQuestion" colspan="2">
                            <div class="question">${question.message}</div>
                        </td>
                    </tr>
                    <tr>
                        <td class="tdAnswer" align="right" colspan="2">
                            <div class="answer">Своими руками или можете воспользоваться услугами нашей фирмы</div>
                        </td>
                    </tr>
                    <tr class="emptyRow">
                        <td colspan="2"></td>
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
        <form:form acceptCharset="windows-1251" id="messageForm" action="/add_question" commandName="question" method="POST">
            Ваше имя:<form:input id="nickBox" path="authorName"/><br>
            Сообщение:<br/><form:textarea id="messageBox" rows="6" cols="50" maxlength="255" path="message"/><br/>
            <input id="sendBtn" type="submit" value="Добавить вопрос" onclick="javascript:document.all.abottom.scrollIntoView(true)">
        </form:form>
    </div>
    <div id="footer"></div>
</div>
</body>
</html>
