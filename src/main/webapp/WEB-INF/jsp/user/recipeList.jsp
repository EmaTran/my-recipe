<%--
  Created by IntelliJ IDEA.
  User: avril
  Date: 11/25/2020
  Time: 9:06 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Recipe List</title>
    <style>
        * {
            box-sizing: border-box;
        }

        h1 {
            text-align: center;
        }

        .container {
            padding: 15px 24px;
            margin: 0 auto;
            width: 30%;
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

        a {
            text-decoration: none;
        }

    </style>
</head>

<h1>Recipes</h1>

<body>

<div class="container">
    <div class="clearfix">
        <div class="w-50">
            <div class="form-group">
                <input type="text" name="findReceipe" id="findReceipe" placeholder="Find a Receipe">
            </div>
        </div>
    </div>

    <br>
    <br>

    <div class = clearfix>

        <a href="recipePage">Roast Beef with Roasted Potatoes and Carrots</a>
        <br>
        <br>
        <a href="">Beef and Cheddar Casserole</a>
        <br>
        <br>
        <a href="">Beef Burger</a>
        <br>
        <br>
        <a href="">Beef Stew</a>
        <br>
        <br>
        <a href="">Beef Stroganoff</a>

    </div>

</div>


</body>

</html>
