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
  <title>Register
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
</head>
<body>
  <div class="container">
    <div class="shop-logo">
      <img src="./assets/store.png" alt="Store logo">
    </div>

    <form method="POST" action="search">

    <div class="box">
      Register Form
      <hr>

      <div class="form-group-inline clearfix">
        <div class="w-50">
          <input type="text" name="fName" id="fName" placeholder="First name">
        </div>
        <div class="w-50">
          <input type="text" name="lName" id="lName" placeholder="Last name">
        </div>
      </div>

      <div class="form-group-inline clearfix">
        <label for="email"> Email </label>
        <div class="w-80">
          <input type="email" name="email" id="email">
        </div>
      </div>

      <div class="form-group-inline clearfix">
        <label for="number"> Telephone </label>
        <div class="w-80">
          <input type="number" name="number" id="number">
        </div>
      </div>

      <div class="form-group">
        <label for="userName"> Username </label>
        <input type="text" name="userName" id="userName" placeholder="johndoe">
      </div>

      <div class="form-group">
        <label for="password"> Password </label>
        <input type="password" name="password" id="password" placeholder="******">
      </div>

      <div class="form-group">
        <button class="btn-blue">
          Sign up
        </button>

      </div>
      <hr>
    </div>
    </form>
  </div>
</body>
</html>