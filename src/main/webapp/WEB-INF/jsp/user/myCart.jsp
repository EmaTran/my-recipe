<%--
  Created by IntelliJ IDEA.
  User: TakiNT
  Date: 11/22/2020
  Time: 12:21 AM
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

    <fieldset>
      <legend>My Shop</legend>
      <div class="heading">Cart</div>
      <div class="clearfix">
        <div class="w-50">
          <div class="box">
            <div class="w-50">Pickup</div>
            <div class="w-50 text-center">3 items</div>
            <hr>

            <div class="form-group-inline">
              <div class="clearfix">
                <div class="w-20"></div>
                <div class="w-20">
                  <button class="btn-blue">Pick</button>
                </div>
                <label class="w-20">Milk</label>
                <div class="w-20">
                  <input type="number" name="milkCount" id="milkCount" class="mt-0" value="1">
                </div>
                <label class="w-20">$5.19</label>
              </div>
            </div>

            <div class="form-group-inline">
              <div class="clearfix">
                <div class="w-20"></div>
                <div class="w-20">
                  <button class="btn-blue">Pick</button>
                </div>
                <label class="w-20">Eggs</label>
                <div class="w-20">
                  <input type="number" name="milkCount" id="milkCount" class="mt-0" value="2">
                </div>
                <label class="w-20">$3.99</label>
              </div>
            </div>

            <hr class="special mt-20">

            <div class="clearfix">
              <div class="w-80 text-right">
                Total
              </div>
              <div class="w-20">
                $9.18
              </div>
            </div>

          </div>
        </div>
        <div class="w-50">
          <div class="box">
            Order Summary
            <hr>

            <ul>
              <li>Item 1</li>
              <li>Item 2</li>
            </ul>

            <hr>

            <button class="btn-blue">
              Check out
            </button>
          </div>
        </div>
      </div>
    </fieldset>
  </div>
</body>
</html>