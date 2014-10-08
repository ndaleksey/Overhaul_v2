<%--
  Created by IntelliJ IDEA.
  User: ND
  Date: 08.10.2014
  Time: 20:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<%@page session="true" %>
<html>
<head>
    <title>Админка</title>
</head>
<body>
    <c:if test="${pageContext.request.userPrincipal.name != null}">
        <h2>Welcome: ${pageContext.request.userPrincipal.name}
            | <a href="<c:url value="/j_spring_security_logout"/>"></a></h2>
    </c:if>
</body>
</html>
