<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <TITLE>Film</TITLE>
    <link href="<c:url value="/res/style.css"/>" rel="stylesheet" type="text/css"/>
</head>
<body>
<h2>Films</h2>
<div class="wr">

    <table class="table">
        <tr>
<%--            <th>id</th>--%>
            <th>title</th>
            <th>year</th>
            <th>genre</th>
            <th>watched</th>
            <th>action</th>
        </tr>
        <c:forEach var="film" items="${filmsList}">
            <tr>
<%--                <td>${film.id}</td>--%>
                <td>${film.title}</td>
                <td>${film.year}</td>
                <td>${film.genre}</td>
                <td>${film.watched}</td>
                <td>
                    <a href="/edit/${film.id}">edit</a>
                    <a href="/delete/${film.id}">delete</a>
                </td>
            </tr>
        </c:forEach>
    </table>

    <c:url value="/add" var="add"/>
    <a class="btn" href="${add}">Add new film</a>
</div>

</body>
</html>