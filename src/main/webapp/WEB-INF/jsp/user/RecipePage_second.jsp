<%--
  Created by IntelliJ IDEA.
  User: dpuri
  Date: 2020-12-03
  Time: 4:15 p.m.
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
    </style>

    <%--  <link rel="stylesheet" href="./styles/index.css">--%>
</head>
<body>
<div class="container">
    <div class="header clearfix">
        <div class="w-20">
            <div class="shop-logo small">
                <img src="./assets/store.jpg" alt="Store logo">
            </div>
        </div>
        <div class="w-80">
            <input type="text" name="search" id="search" placeholder="Search">
        </div>
    </div>

    <hr>

    <fieldset>
        <legend>Recipe</legend>

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
                    Tomato Paste packet
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
                    Grated Chedder Cheese ( in cups )
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
                    Garlic Roasted Seasoning Pack ( 100 gms )
                </label>
            </div>
            <div class="w-20">
                <input type="number" name="numberE" id="numberE">
            </div>
        </div>

        <div class="clearfix mt-20">
            <div class="w-20">
                <label>
                    <input type="checkbox" name="ingredient" id="ingredientF">
                    Finely chopped scallions ( no of bunches )
                </label>
            </div>
            <div class="w-20">
                <input type="number" name="numberF" id="numberF">
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
                Preheat the oven to 425 degrees F. Oil a 2-quart baking dish.
            </div>
        </div>
        <div class="clearfix mt-20">
            <div class="w-20">
                <label>
                    <input type="checkbox" name="step2" id="step2"> Step 2:
                </label>
            </div>
            <div class="w-80">
                Bring a large pot of salted water to a boil. Add the noodles and cook
                to al dente according to the package directions. Drain and put in the prepared baking dish.
                Toss with the sour cream, Parmesan and 1/4 teaspoon salt.
            </div>
        </div>
        <div class="clearfix mt-20">
            <div class="w-20">
                <label>
                    <input type="checkbox" name="step3" id="step3"> Step 3:
                </label>
            </div>
            <div class="w-80">
                Meanwhile, heat the olive oil in a large skillet over medium-high heat.
                Add the ground beef and cook, stirring, until no longer pink, about 4 minutes.
                Add the bell peppers and scallions and cook until crisp-tender, about 3 minutes.
                Make a space in the pan, add the tomato paste and toast for a minute.
                Sprinkle with the Italian seasoning and 1/4 teaspoon salt. Add the diced tomatoes,
                stir and bring to a simmer. Cook until slightly thickened, about 2 minutes.
            </div>
        </div>

        <div class="clearfix mt-20">
            <div class="w-20">
                <label>
                    <input type="checkbox" name="step4" id="step4"> Step 4:
                </label>
            </div>
            <div class="w-80">
                Pour the beef mixture over the noodles and sprinkle with the grated Cheddar.
                Bake on the middle rack until the cheese is melted and the edges are bubbling,
                15 to 20 minutes. Let stand for 10 minutes before serving.
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
