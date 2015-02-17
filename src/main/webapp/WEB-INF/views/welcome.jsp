<%@ page contentType="text/html;charset=utf-8" %>
<%@ page pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Отличный ремонт</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Place favicon.ico and apple-touch-icon.png in the root directory -->

    <link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/main.css"/>"/>
</head>
<body>
<div id="header"></div>
<div id="main">
    <div id="mainmenu">
        <a href="welcome" id="btn1"></a><!--
                --><a href="examples" id="btn2"></a><!--
                --><a href="questions" id="btn3"></a>
    </div>
    <div id="main_text">
        <p>
            Бригада осуществляет ремонт под ключ любой степени сложности на высоком уровне
            за разумную стоимость. Работают квалифицированные специалисты, имеющие за
            своими плечами большой опыт работы в данной области. Использование современных
            специальных знаний и технологий, а также высококачественных инструментов и оборудования
            позволяет качественно осуществить любой вид ремонта
        </p>

        <p>
        <ul>
            <li>&nbsp&nbsp&nbspОтделку помещений;</li>
            <li>&nbsp&nbsp&nbspРемонт и перепланировку;</li>
            <li>&nbsp&nbsp&nbspЕвроремонт, косметический и капитальный ремонт;</li>
            <li>&nbsp&nbsp&nbspРемонт квартиры в новостройке;</li>
            <li>&nbsp&nbsp&nbspНедорогой ремонт квартиры;</li>
            <li>&nbsp&nbsp&nbspЭлитный ремонт квартиры.</li>
        </ul>
        </p>
        <p>
            Заказывая ремонт квартиры под ключ у нас, Вы можете быть уверены, что после ремонта
            Вас встретит совершенно другая квартира - полностью преображенная, готовая для того,
            чтобы Вы получали одно удовольствие от проживания в ней. Согласившись, на дешевый ремонт,
            Вы никогда не получите качественый ремонт, скупой платит дважды, мы полностью согласны с
            этой поговоркой.
        </p>
    </div>
    <div id="example_photos"></div>
    <!--<div id="btn4"></div>-->
    <a href="order" id="btn4"></a>

    <div id="contacts">
        <p style="color: darkorange; font-weight: bold; font-size: 0.7cm">Контакты:</p>
        <%--<table cellpadding="3" style="color: aliceblue">
            <tr>
                <td>
                    <image src="resources/img/smile.png"/>
                </td>
                <td>Артем</td>
            </tr>
            <tr>
                <td rowspan="2">
                    <image src="resources/img/phone.png"/>
                </td>
                <td>8-926-965-23-33</td>
            </tr>
            <tr>
                <td>8-916-645-92-30</td>
            </tr>
        </table>--%>
        <table style="color: white; font-size: 0.7cm;">
            <tr>
                <td>Телефон:</td>
                <td style="vertical-align: middle">
                    <img src="/resources/img/circle.png" style="margin-right: 20px">8-926-965-23-33
                </td>
                <td>
                    <img src="/resources/img/circle.png" style="margin-right: 20px">8-916-645-92-30
                </td>
            </tr>
            <tr>
                <td>E-mail:</td>
                <td colspan="2">ivankoartem@rambler.ru</td>
            </tr>
        </table>
    </div>
    <br>

    <div id="popupWindow">
        <div class="messageBoxTitle">Добавление ответа</div>
        <form style="display: inline;" accept-charset="utf-8" action="update_question" method="POST">
            <label>От кого:</label>
            <input type="text" maxlength="30"></br>

        <textarea id="answerBox" name="answer" class="messageBox" maxlength="255" rows="5"
                  cols="50" path="answer" content="Hello"></textarea></br></br>
            <input class="sendBtn" type="submit" value="Отправить">
        </form>
        <button class="sendBtn" onclick="closePopupWindow()">Отмена</button>
    </div>
</div>
<div id="footer"></div>
<script src="<c:url value="/resources/js/answers.js"/>"></script>
</body>
</html>
