<%-- 
    Document   : newtrainer
    Created on : May 9, 2020, 10:12:28 PM
    Author     : 30694
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
    <style>
        body {
            background-image:url(<c:url value='/static/images/img2.jpg' />);
        }
    </style>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>New Trainer</title>
        <link href="<c:url value='/static/css/app.css' />" rel="stylesheet"></link>
    </head>
    <body style="background-image:url(<c:url value='/static/images/img2.jpg' />);">
        <h1>Register a new Trainer</h1>
        <form:form method="POST" action="new" modelAttribute="trainer" >
            <div>
                <form:input type="hidden" path="id" id="id"/>
                <label for="First name of trainer">First name of trainer:</label>
                <form:input  path="firstName" type="text" placeholder="e.g. THEOFANIS" name="First name of trainer" onkeyup="this.value = this.value.toUpperCase();" maxlength="30" required="true"/>
            </div>
            <div>
                <label for="Last name of trainer">Last name of trainer:</label>
                <form:input path="lastName" type="text" placeholder="e.g. KOLLIAS" name="Last name of trainer" onkeyup="this.value = this.value.toUpperCase();" maxlength="30" required="true"/>
            </div>
            <div>
                <label for="Subject of trainer">Subject of trainer:</label>
                <form:input path="subject" type="text" placeholder="e.g. JAVA" name="Subject of trainer" onkeyup="this.value = this.value.toUpperCase();" maxlength="30" required="true"/>
            </div>
            <input type="submit" value="Submit">
            <div id="msg">${message}</div>
            <div id="list"><a href="<c:url value='/${listurl}'/>" style="color:white">Back to the list of Trainers</a></div>
        </form:form>
    </body>
</html>


