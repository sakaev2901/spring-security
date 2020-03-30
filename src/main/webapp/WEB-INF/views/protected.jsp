<%@ page isELIgnored="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
				 pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
	<head>
		<base href="${pageContext.request.scheme}://${pageContext.request.serverName}:${pageContext.request.serverPort}${pageContext.request.contextPath}/" />
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Protected page</title>
	</head>
	<body>


		<c:if test="${pageContext.request.userPrincipal.name != null}">
			<h2>Welcome : ${pageContext.request.userPrincipal.name}</h2>
			<c:url var="logoutUrl" value="/logout" />
            <form action="${logoutUrl}" id="logout" method="post">
                <input type="hidden" name="${_csrf.parameterName}"
                       value="${_csrf.token}" />
                <input type="submit" name="submit" value="Log Out">
            </form>
        </c:if>
		<div><a href="protected">СЕКРЕТНО</a> страница для админа.</div>
		<div><a href="confidential">СОВЕРШЕННО СЕКРЕТНО</a> страница для суперадмина.</div>
	</body>
</html>
