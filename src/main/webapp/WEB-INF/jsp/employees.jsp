<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>员工列表</title>

</head>
<body>

<div>
    <style>
        table {
            border-collapse: collapse;
            font-size: 14px;
        }

        table td, th {
            border: 1px solid #000000;
            border-collapse: collapse;
            padding: 5px 8px;
        }

        table td {
            text-align: center;
            color: #000;
            padding: 3px;
            font-size: 15px;
        }

        table th {
            background-color: #000000;
            color: #FFF;
            font-size: 15px;
        }

        table .odd {
            background-color: #EEEEEE;
        }

        table .even {
            background-color: white;
        }
    </style>
    <%--<table width="600px" border="1" align="center" style="border-collapse: collapse; border-color: black;">--%>
    <table width = "700">
        <tr>
            <th>编号</th>
            <th>姓名</th>
            <th>年龄</th>
            <th>性别</th>
        </tr>

        <c:forEach items="${message}" var="user" varStatus="loop">
            <tr class="${loop.index % 2 == 0 ? 'even' : 'odd'}">
                <td>${user.id}</td>
                <td>${user.name}</td>
                <td>${user.age}</td>
                <td>${user.gender}</td>
            </tr>
        </c:forEach>
    </table>


</div>

</body>
</html>
