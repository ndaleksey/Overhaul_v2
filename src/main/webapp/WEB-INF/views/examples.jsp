<%--
  Created by IntelliJ IDEA.
  User: Shishkov
  Date: 10.09.2014
  Time: 16:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=utf-8" %>
<%@ page pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js"> <!--<![endif]-->
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Примеры работ</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Attach necessary styles -->
    <link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/main.css"/>"/>
    <link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/orbit.css"/>"/>


    <!-- Attach necessary scripts -->
    <script src="<c:url value="/resources/js/jquery-1.4.1.min.js"/>"></script>
    <script src="<c:url value="/resources/js/jquery.orbit.js"/>"></script>
    <%--<script src="<c:url value="/resources/js/jquery.orbit.min.js"/>"></script>--%>

    <!-- Run the plugin -->
    <script type="text/javascript">
        $(window).load(function () {
            $('#featured').orbit({
                'bullets': true,
                'timer': true,
                'animation': 'fade'
            });
        });
    </script>
</head>
<body>
<div id="header"></div>
<div id="main">
    <div id="mainmenu">
        <a href="welcome" id="btn1"></a><!--
                --><a href="examples" id="btn2"></a><!--
                --><a href="questions" id="btn3"></a>
    </div>
    <div id="container">
        <div id="featured">
            <img src="resources/img/photo/image.jpg" width="576" height="768" alt="Slide">
            <img src="resources/img/photo/image (1).jpg" width="1024" height="768" alt="Slide 1">
            <img src="resources/img/photo/image (2).jpg" width="576" height="768" alt="Slide 2">
            <img src="resources/img/photo/image (3).jpg" width="1024" height="768" alt="Slide 3">
            <img src="resources/img/photo/image (4).jpg" width="576" height="768" alt="Slide 4">
            <img src="resources/img/photo/image (5).jpg" width="576" height="768" alt="Slide 5">
            <img src="resources/img/photo/image (6).jpg" width="1024" height="768" alt="Slide 6">
            <img src="resources/img/photo/image (7).jpg" width="576" height="768" alt="Slide 7">
            <img src="resources/img/photo/image (8).jpg" width="1024" height="768" alt="Slide 8">
            <img src="resources/img/photo/image (9).jpg" width="1024" height="768" alt="Slide 9">
            <img src="resources/img/photo/image (10).jpg" width="576" height="768" alt="Slide 10">
            <img src="resources/img/photo/image (11).jpg" width="576" height="768" alt="Slide 11">
            <img src="resources/img/photo/image (12).jpg" width="576" height="768" alt="Slide 12">
            <img src="resources/img/photo/image (13).jpg" width="576" height="768" alt="Slide 13">
            <img src="resources/img/photo/image (14).jpg" width="1024" height="768" alt="Slide 14">
            <img src="resources/img/photo/image (15).jpg" width="576" height="768" alt="Slide 15">
            <img src="resources/img/photo/image (16).jpg" width="1024" height="768" alt="Slide 16">
            <img src="resources/img/photo/image (17).jpg" width="1024" height="768" alt="Slide 17">
            <img src="resources/img/photo/image (18).jpg" width="576" height="768" alt="Slide 18">
        </div>
    </div>
</div>
<div id="footer"></div>
</body>
</html>
