<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>List customer</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.6/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js"></script>
</head>
<body>

<div class="container">
    <h1>List Customer</h1>

    <a href="/customer/add"><input type="button" value="Add customer" class="btn btn-info"></a>
    <br>
    <table class="table">
        <thead class="thead-dark">
        <tr>
            <th>First name</th>
            <th>Last name</th>
            <th>Email</th>
            <th colspan="2">Action</th>
            <th></th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="tempCustomer" items="${customers}">
            <tr>
                <td>${tempCustomer.fName}</td>
                <td>${tempCustomer.lName}</td>
                <td>${tempCustomer.email}</td>
                <td><a href="update/${tempCustomer.id}">Update</a></td>
                <td><a href="delete/${tempCustomer.id}" onclick="return confirm('Are you sure you want to delete this item?');">Delete</a></td>
            </tr>


        </c:forEach>
        </tbody>
    </table>
</div>
</body>
</html>
