<%-- 
    Document   : index
    Created on : Sep 25, 2017, 12:51:58 PM
    Author     : NoahFerrier
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
    </head>
    <body>
        <h1>Login</h1>
        <form action="Index" method="post">
            Username: <input type="text" name="usrname"><br>
            Password: <input type="text" name="psswd"><br>
            <input type="submit" value="Login"><br>
        </form>
        <div>
            <c:if test="${error1 == true}">
                invalid username or password
            </c:if>
            <c:if test="${error2 == true}">
                both values are required
            </c:if>
        </div>
    </body>
</html>
