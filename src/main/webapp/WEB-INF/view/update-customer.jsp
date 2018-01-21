<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: ko4edikov
  Date: 16.12.2017
  Time: 00:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Update customer</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.6/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container">
    <h1>Update customer</h1>

    <form:form method="post" action="/customer/update" modelAttribute="customer">
        <table class="table">
            <tr>
                <td></td>
                <td><form:hidden path="id"/></td>
            </tr>
            <tr>
                <td>First name:</td>
                <td><form:input path="fName"/></td>
            </tr>
            <tr>
                <td>Last name:</td>
                <td><form:input path="lName"/></td>
            </tr>
            <tr>
                <td>Email:</td>
                <td><form:input path="email"/></td>
            </tr>
            <tr>
                <td><a href="/customer/list"><input type="button" value="Back" class="btn btn-info"></a></td>
                <td><input type="submit" value="Save" class="btn btn-info"/></td>
            </tr>

        </table>
    </form:form>
</div>
</body>
</html>
