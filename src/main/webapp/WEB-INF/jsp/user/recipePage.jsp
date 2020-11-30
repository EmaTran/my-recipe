<%--
  Created by IntelliJ IDEA.
  User: TakiNT
  Date: 11/22/2020
  Time: 12:22 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Recipes</title>

  <link rel="stylesheet" href="./styles/index.css">
</head>
<body>
  <div class="container">
    <div class="header clearfix">
      <div class="w-20">
        <div class="shop-logo small">
          <img src="./assets/store.png" alt="Store logo">
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
              Ingredient A
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
              Long Name Ingredient B
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
              Ingredient C
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
              Ingredient D
          </label>
        </div>
        <div class="w-20">
          <input type="number" name="numberD" id="numberD">
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
          Lorem ipsum dolor sit amet consectetur adipisicing elit. Ipsa ut tempora repudiandae odio libero
        </div>
      </div>
      <div class="clearfix mt-20">
        <div class="w-20">
          <label>
            <input type="checkbox" name="step2" id="step2"> Step 2:
          </label>
        </div>
        <div class="w-80">
          Lorem ipsum dolor sit amet consectetur adipisicing elit. Ipsa ut tempora repudiandae odio libero
        </div>
      </div>
      <div class="clearfix mt-20">
        <div class="w-20">
          <label>
            <input type="checkbox" name="step3" id="step3"> Step 3:
          </label>
        </div>
        <div class="w-80">
          Lorem ipsum dolor sit amet consectetur adipisicing elit. Ipsa ut tempora repudiandae odio libero
        </div>
      </div>

    </fieldset>

    <div class="clearfix">

    </div>
  </div>
</body>
</html>