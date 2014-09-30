<%--
  Created by IntelliJ IDEA.
  User: Shishkov
  Date: 11.09.2014
  Time: 14:48
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
                --><a href="#order_request" id="btn3"></a>
    </div>
    <div>
        <form id="order_form" method="post" action="add_question" commandName="question">
            <table>
                <tr>
                    <td>Ваше имя:</td>
                    <td><input class="textbox" type="text" value="Алексей" maxlength="100"><br></td>
                </tr>
                <tr>
                    <td>E-mail:</td>
                    <td><input class="textbox" type="text" value="ugtemp@mail.ru" maxlength="100"><br></td>
                </tr>
                <tr>
                    <td>Адрес:</td>
                    <td><input class="textbox" type="text" value="Моксва, ул.А.Королева, 16" maxlength="200"><br></td>
                </tr>
                <tr>
                    <td>Телефон:</td>
                    <td><input class="textbox" type="text" value="555-66-89" maxlength="30"><br></td>
                </tr>
                <tr>
                    <td>Площадь, м<sup>2</sup>:</td>
                    <td><input class="textbox" type="text" value="60" maxlength="10" onkeyup = 'this.value=parseInt(this.value) | 0'><br></td>
                </tr>
                <tr>
                    <td>Количество комнат:</td>
                    <td><input class="textbox" type="text" value="1" maxlength="5" onkeyup = 'this.value=parseInt(this.value) | 0'><br></td>
                </tr>
                <tr>
                    <td>Сообщение:</td>
                    <td><textarea class="textbox" type="" rows="5" cols="50" maxlength="255">Прошу сдлеать ремонтв срок до 26.12.2014</textarea></td>
                </tr>
                <tr>
                    <td>
                        <input type="submit" value="Отослать"/>
                    </td>
                </tr>
            </table>
        </form>
    </div>
    <div id="footer"></div>
</div>
</body>
</html>

