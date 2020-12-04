<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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

        <h1>Select any Recipe</h1>
        <br>
        <img src="store.jpg" alt="Roast Beef with Roasted Potatoes and Carrots" style="width:200px;height:300px;">
        <a href="recipePage">Roast Beef with Roasted Potatoes and Carrots</a>
        <br>
        <br>
        <a href="RecipePage_second">Beef and Cheddar Casserole</a>
        <br>
        <br>
        <a href="RecipePage_third">Beef Burger</a>
        <br>
        <br>
        <a href="RecipePage_four">Beef Stew</a>
        <br>
        <br>
        <a href="RecipePage_five">Beef Stroganoff</a>

    </div>

</div>


</body>

</html>
