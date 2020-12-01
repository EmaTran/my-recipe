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
  <title>Recipes
    <link rel="stylesheet" href="./styles/index.css">
  </title>
  <style>
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