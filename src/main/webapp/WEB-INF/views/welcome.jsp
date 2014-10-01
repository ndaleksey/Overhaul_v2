<%@ page contentType="text/html;charset=windows-1251" %>
<%@ page pageEncoding="CP1251" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <meta charset="windows-1251">
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
    <a href="#" id="btn4"></a>

    <div id="contacts">
        <p style="color: darkorange; font-weight: bold; font-size: 0.6cm">Контакты:</p>
        <table cellpadding="3" style="color: aliceblue">
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
            <tr>
                <td><a href="ivankoartem@rambler.ru">
                    <image src="resources/img/mail.png"/>
                </a></td>
                <td><a href="ivankoartem@rambler.ru">ivankoartem@rambler.ru</a></td>
            </tr>
        </table>
    </div>
</div>
<div id="footer"></div>
</body>
</html>
