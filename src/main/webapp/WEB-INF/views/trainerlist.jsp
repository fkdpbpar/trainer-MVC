<%-- 
    Document   : trainerlist
    Created on : May 9, 2020, 10:15:25 PM
    Author     : 30694
--%>

<%@page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <style>
        h1 {
            color: white;
            font-size: 400%;
        }

        body {
            background-image:url(<c:url value='/static/images/img2.jpg' />);
            color: white;
            text-align: center;
        }


        div {
            font-size: 200%;
            height: 80px; 
        }   

        #submit {
            width: 5em;  
            height: 3em;
        }

        input {
            width: 20em;  
            height: 2em; 
        }

        input, input[placeholder] {
            text-align: center;
        }

        label {
            vertical-align: bottom;
        }

        table, th, td {
            border: 1px solid black;
            border-collapse: collapse;
            font-size: 140%;
            text-align: center;
            border:1px solid black;
            margin-left:auto;
            margin-right:auto;
        }
    </style>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Trainers' List</title>
    </head>
    <body>
        <h1>Trainers' List</h1>
        <table>
            <tr>
                <th>ID</th><th>FIRST NAME</th><th>LAST NAME</th><th>SUBJECT</th><th></th>
            </tr>
            <c:forEach items="${trainers}" var="trainer">
                <tr>
                    <td><a href="<c:url value='${editurl}/${trainer.id}'/>" style="color:red" >${trainer.id}</a></td>
                    <td>${trainer.firstName}</td>
                    <td>${trainer.lastName}</td>
                    <td>${trainer.subject}</td>
                    <td><a href="<c:url value='${deleteurl}/${trainer.id}'/>" style="color:red" >delete</a></td>
                </tr>
            </c:forEach>
        </table>
        <div id="msg">${msg}</div>
    </body>
</html>
