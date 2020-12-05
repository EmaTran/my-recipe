<%--
  Created by IntelliJ IDEA.
  User: dpuri
  Date: 2020-12-03
  Time: 6:43 p.m.
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Recipes
        <link rel="stylesheet" href="./styles/index.css">
    </title>
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
        legend{
            font-size: 20px;
            font-family: "Arial Black", sans-serif;
        }
    </style>

    <%--  <link rel="stylesheet" href="./styles/index.css">--%>
</head>
<body>
<div class="container">
    <div class="header clearfix">
            <h1 style="font-family: Arial Black"><span style="color:blue">REAL CANADIAN</span>
                <br>
                <span style="color:red">SUPERSTORE</span></h1>
        <div class="w-80">
            <input type="text" name="search" id="search" placeholder="Search">
        </div>
    </div>

    <hr>

    <fieldset>
        <legend style="color: royalblue">Beef Stew</legend>

        <div class="heading"> Ingredients </div>
        <div class="clearfix mt-20">
            <div class="w-20">
                <label>
                    <input type="checkbox" name="ingredient" id="ingredientA">
                    Beef (in lbs)
                </label>
            </div>
            <div class="w-20">
                <input type="number" name="numberA" id="numberA">
            </div>
        </div>

        <div class="clearfix mt-20">
            <div class="w-20">
                <label>
                    <input type="checkbox" name="ingredient" id="ingredientB">
                    freshly chopped parsley, for garnish
                </label>
            </div>
            <div class="w-20">
                <input type="number" name="numberB" id="numberB">
            </div>
        </div>

        <div class="clearfix mt-20">
            <div class="w-20">
                <label>
                    <input type="checkbox" name="ingredient" id="ingredientC">
                    Freshly ground black pepper
                    3 cloves garlic, minced
                </label>
            </div>
            <div class="w-20">
                <input type="number" name="numberC" id="numberC">
            </div>
        </div>

        <div class="clearfix mt-20">
            <div class="w-20">
                <label>
                    <input type="checkbox" name="ingredient" id="ingredientD">
                    Oil ( bottled 1L EACH )
                </label>
            </div>
            <div class="w-20">
                <input type="number" name="numberD" id="numberD">
            </div>
        </div>

        <div class="clearfix mt-20">
            <div class="w-20">
                <label>
                    <input type="checkbox" name="ingredient" id="ingredientE">
                    1 tbsp. Worcestershire sauce
                    1 tsp. dried or fresh thyme leaves
                </label>
            </div>
            <div class="w-20">
                <input type="number" name="numberD" id="numberE">
            </div>
        </div>

        <div class="heading"> Instructions </div>
        <div class="clearfix mt-20">
            <div class="w-20">
                <label>
                    <input type="checkbox" name="step1" id="step1"> Step 1:
                </label>
            </div>
            <div class="w-80">
                In a large dutch oven or heavy-bottomed pot over medium heat, heat oil.
                Add beef and cook until seared on all sides, 10 minutes, working in
                batches if necessary. Transfer beef to a plate.
            </div>
        </div>
        <div class="clearfix mt-20">
            <div class="w-20">
                <label>
                    <input type="checkbox" name="step2" id="step2"> Step 2:
                </label>
            </div>
            <div class="w-80">
                In the same pot, cook onion, carrots, and celery until soft, 5 minutes. Season
                with salt and pepper. Add garlic and tomato paste and cook until garlic is
                fragrant and tomato paste has darkened, 2 minutes
            </div>
        </div>
        <div class="clearfix mt-20">
            <div class="w-20">
                <label>
                    <input type="checkbox" name="step3" id="step3"> Step 3:
                </label>
            </div>
            <div class="w-80">
                Add beef back to dutch oven then add broth, wine, Worcestershire sauce, thyme, and bay leaves.
            </div>
        </div>

        <div class="clearfix mt-20">
            <div class="w-20">
                <label>
                    <input type="checkbox" name="step4" id="step4"> Step 4:
                </label>
            </div>
            <div class="w-80">
                Bring to a boil then reduce heat to a simmer. Season with salt and pepper.
                Cover and let simmer until beef is tender, 30 minutes.
            </div>
        </div>

        <div class="clearfix mt-20">
            <div class="w-20">
                <label>
                    <input type="checkbox" name="step5" id="step5"> Step 5:
                </label>
            </div>
            <div class="w-80">
                Add potatoes and simmer, covered, until potatoes are tender, 15 minutes.
            </div>
        </div>

        <div class="clearfix mt-20">
            <div class="w-20">
                <label>
                    <input type="checkbox" name="step6" id="step6"> Step 6:
                </label>
            </div>
            <div class="w-80">
                Remove bay leaves. Stir in peas and cook until warmed through, 2 minutes.
                Garnish with parsley befor serving.
            </div>
        </div>
        <form method="POST" action="myCart">
            <div class="form-group">
                <button class="btn-blue" >
                    Purchase Items
                </button>
            </div>
        </form>

    </fieldset>

    <div class="clearfix">

    </div>
</div>
</body>
</html>
