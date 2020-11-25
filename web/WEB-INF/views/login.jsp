<%--
  Created by IntelliJ IDEA.
  User: TakiNT
  Date: 11/21/2020
  Time: 2:41 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Superstore</title>
    <link href="webjars/bootstrap/3.3.6/css/bootstrap.min.css"
          rel="stylesheet">


    <style>
        h1 {
            text-align: center;
        }
        form {
            text-align: left;
            margin: auto;
            width: 30%;
            border-color: dimgray;
            color: dimgray;
            font-family: Arial, sans-serif;

        }
        input{
            width: 100%;
        }
        p {
            border-bottom-style: solid;
            border-color: lightblue;
        }

        button {
            background-color: darkblue;
            border-color: darkblue;
            color: white;
            border-radius: 5%;
            padding: 2% 5%;

        }
    </style>
</head>
<body>
<%--<img src="${pageContext.request.contextPath}/resources/images/superstore_logo.jpg" alt="Store logo">--%>
<%--<img src="<c:url value="/resources/images/superstore_logo.jpg" />" alt="Store logo" />--%>

<p><font color="red">${errorMessage}</font></p>

<h1>Login Page</h1>

<div>
    <form method="POST" action="search">
        <fieldset class="form-group">
            <label><b>Sign In</b></label>
            <br>
            <p></p>
            <br>
            <label>Name :</label>
            <br>
            <input name="name" type="text" class="form-control" />
            </br>
            <br>
            <label>Password :</label>
            <br>
            <input name="password" type="password" class="form-control"/>
            <br>
            <br>
            <button name="subject" type="submit" value="signIn">Sign In</button>
            <br>
            <br>
            <br>
            <label>New User</label>
            <p></p>
            <button name="subject" type="submit" value="signUp">Sign Up</button>
        </fieldset>

    </form>
</div>

<script src="webjars/jquery/1.9.1/jquery.min.js"></script>
<script src="webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>

</body>
</html>
