<%--
  Created by IntelliJ IDEA.
  User: TakiNT
  Date: 11/21/2020
  Time: 2:41 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>Superstore LogIn</title>
    <link href="webjars/bootstrap/3.3.6/css/bootstrap.min.css"
          rel="stylesheet">

    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>

    <link rel="stylesheet" href="./styles/index.css">
    <style>
        h1 {
            text-align: center;
        }
        /*form {*/
        /*    text-align: left;*/
        /*    margin: auto;*/
        /*    width: 30%;*/
        /*    border-color: dimgray;*/
        /*    color: dimgray;*/
        /*    font-family: Arial, sans-serif;*/

        /*}*/
        /*input{*/
        /*    width: 100%;*/
        /*}*/
        /*p {*/
        /*    border-bottom-style: solid;*/
        /*    border-color: lightblue;*/
        /*}*/

        /*button {*/
        /*    background-color: darkblue;*/
        /*    border-color: darkblue;*/
        /*    color: white;*/
        /*    border-radius: 5%;*/
        /*    padding: 2% 5%;*/
        /*}*/

    /*    */

        * {
            box-sizing: border-box;
        }

        .container {
            padding: 15px 24px;
        }

        .text-center {
            text-align: center;
        }

        .text-right {
            text-align: right;
        }

        .m-center {
            margin: 0 auto;
        }

        .shop-logo img {
            max-height: 150px;
            width: auto;
        }

        .shop-logo.small img {
            max-width: 300px;
            height: auto;
        }

        .box {
            border: 1px solid #bbb;
            margin: 0 auto;
            padding: 16px 28px;
            width: 70%;
        }

        hr {
            border-top: 1px solid #ddd;
        }

        hr.special {
            border-top: 5px solid burlywood;
        }

        .heading {
            font-weight: bold;
            margin-top: 32px;
        }

        .mt-0 {
            margin-top: 0 !important;
        }

        .mt-20 {
            margin-top: 20px !important;
        }

        .w-20 {
            display: inline-block;
            float: left;
            padding: 0 8px;
            width: 20%;
        }

        .w-20:after {
            content: '';
            display: block;
            min-height: 2px;
        }

        .w-50 {
            display: inline-block;
            float: left;
            padding: 0 8px;
            width: 50%;
        }

        .w-80 {
            display: inline-block;
            float: left;
            padding: 0 8px;
            width: 80%;
        }

        .form-group,
        .form-group-inline {
            margin-top: 20px;
        }

        .form-group label,
        .form-group input {
            display: block;
        }

        .form-group input {
            border: 1px solid #bbb;
            border-radius: 3px;
            margin-top: 6px;
            padding: 6px 12px;
            width: 100%;
        }

        .clearfix::before,
        .clearfix::after {
            clear: both;
            content: ' ';
            display: table;
        }

        .form-group-inline label {
            float: left;
            padding-top: 7px;
            width: 20%;
        }

        .form-group-inline input {
            border: 1px solid #bbb;
            border-radius: 3px;
            float: left;
            margin-top: 6px;
            padding: 6px 12px;
            width: 100%;
        }

        select {
            background-color: #003180;
            border-radius: 3px;
            color: #fff;
            padding: 8px 16px;
            width: 100%;
        }

        ul {
            list-style-type: none;
            padding: 0;
            margin-bottom: 40px;
        }

        .btn-blue {
            background-color: #003180;
            border-radius: 6px;
            color: #fff;
            display: block;
            padding: 4px 8px;
            text-transform: uppercase;
        }


    </style>
</head>
<body>
<div>
    <%--<img src="${pageContext.request.contextPath}/resources/images/superstore_logo.jpg" alt="Store logo">--%>
    <%--<img src="<c:url value="/resources/images/superstore_logo.jpg" />" alt="Store logo" />--%>
</div>

<p><font color="red">${errorMessage}</font></p>

<h1>Login Page</h1>

<div class="container">
    <form method="POST" action="login">

        <div class="shop-logo text-center">
            <img src="./assets/store.png" alt="Store logo">
        </div>

<%--        <fieldset class="form-group">--%>
<%--            <label><b>Sign In</b></label>--%>
<%--            <br>--%>
<%--            <p></p>--%>
<%--            <br>--%>
<%--            <label>Name:</label>--%>
<%--            <br>--%>
<%--            <input name="name" type="text" class="form-control" />--%>
<%--            </br>--%>
<%--            <br>--%>
<%--            <label>Password:</label>--%>
<%--            <br>--%>
<%--            <input name="password" type="password" class="form-control"/>--%>
<%--            <br>--%>
<%--            <br>--%>
<%--            <button name="subject" type="submit" value="signIn">Sign In</button>--%>
<%--            <br>--%>
<%--            <br>--%>
<%--            <br>--%>
<%--        </fieldset>--%>
<%--    </form>--%>
<%--    <form method="POST" action="register">--%>
<%--        <fieldset >--%>
<%--            <label>New User</label>--%>
<%--            <p></p>--%>
<%--            <button name="subject" type="submit" value="signUp">Sign Up</button>--%>
<%--        </fieldset>--%>
<%--    </form>--%>

    <div class="box">
        Sign In///
        <hr>

        <form method="POST" action="login">
            <div class="form-group">
                <label for="name"> User Name: </label>
                <input type="text" name="name" id="name" class="form-control" placeholder="Username">
            </div>

            <div class="form-group">
                <label for="password"> Password: </label>
                <input type="password" name="password" id="password" class="form-control" placeholder="******">
            </div>

            <div class="form-group">
                <button name="subject" type="submit" value="signIn" class="btn-blue">
                    Sign In
                </button>
            </div>

            <hr>
        </form>
            <form method="GET" action="register">
            <div class="form-group">
                New User
                <button class="btn-blue">
                    Sign up
                </button>
            </div>
        </form>
    </div>
</div>

<script src="webjars/jquery/1.9.1/jquery.min.js"></script>
<script src="webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>

</body>
</html>