<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: TakiNT
  Date: 11/22/2020
  Time: 12:21 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">

<head>
    <title>Home</title>

    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home</title>

    <link rel="stylesheet" href="./styles/index.css">
    <style>
        h1 {
            text-align: center;
        }

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
<h1>Search Recipe</h1>

<body>

<div class="container">
    <div class="header clearfix">
        <div class="w-20">
            <h1 style="color:blue">Real Canadian </h1>
            <h1 style="color:red">Superstore </h1>
        </div>
        <div>
            <h3>Welcome <c:out value="${login.userName}" /> !</h3>
        </div>


        <form action="recipeList" method="POST">

        <div class="form-group clearfix">
<%--            <div class="w-80 text-center">--%>
<%--                Receipe--%>
<%--            </div>--%>
            <div class="w-20">
                <div class="form-group">
                    <input type="text" name="findRecipe" id="findRecipe" placeholder="Find a Recipe">
                </div>
            </div>
        </div>
        <br>

        <div class="form-group clearfix">
            <div class="w-20">
                <select name="mealTime" id="mealTime">
                    <option value="breakfast">Breakfast</option>
                    <option value="lunch">Lunch</option>
                    <option value="dinner">Dinner</option>
                    <option value="dessert">Dessert</option>
                </select>
            </div>

            <div class="w-20">
                <select name="meat" id="meat">
                    <option value="beef">Beef</option>
                    <option value="lamb">Lamb</option>
                    <option value="chicken">Chicken</option>
                    <option value="pork">Pork</option>
                </select>
            </div>

            <div class="w-20">
                <select name="fish" id="fish">
                    <option value="wildCod">WildCod</option>
                    <option value="simon">Simon</option>
                    <option value="tuna">Tuna</option>
                    <option value="marcekel">Marcekel</option>
                </select>
            </div>

            <div class="w-20">
                <select name="veggies" id="veggies">
                    <option value="bokchoy">Bokchoy</option>
                    <option value="brocoli">Brocoli</option>
                    <option value="mushroom">Mushroom</option>
                    <option value="carrot">Carrot</option>
                </select>
            </div>

            <div class="w-20">
                <select name="others" id="others">
                    <option value="other">Other</option>

                </select>
            </div>
        </div>
        <br>
        <br>
        <div class="form-group">
            <button class="btn-blue m-center" name="option" type="submit" value="chooseOption" >
                Choose option to continue
            </button>
        </div>

<%--        <div class="w-80">--%>
<%--            Lorem ipsum dolor sit amet consectetur, adipisicing elit. Magnam nemo vel molestiae repellat? Ipsa quaerat optio vel totam quos aliquid tenetur possimus dolorum temporibus quas quibusdam nihil, at modi eaque.--%>
<%--        </div>--%>

    </form>
</div>
</div>
</body>
</html>
