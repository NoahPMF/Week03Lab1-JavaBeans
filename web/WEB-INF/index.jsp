<%-- 
    Document   : index
    Created on : Sep 25, 2017, 12:51:58 PM
    Author     : NoahFerrier
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:import url="/WEB-INF/header.html"/>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
    </head>
    <center>
        <body>
           
            <form action="Index" method="post" >
                Username: <input type="text" name="usrname" value="${username}"><br>
                Password: <input type="text" name="psswd" value="${password}"><br>
                <input type="submit" value="Login"><br>

                <div>
                    <c:if test="${error1 == false}">
                        invalid username or password
                    </c:if>

                    <c:if test="${error2 == false}">
                        both values are required
                    </c:if>

                    <c:if test="${message == true}">
                        you have successfully logged out
                    </c:if>
                </div>
        </body>
        <c:import url="/WEB-INF/footer.html"/>
    </center>
</html>
