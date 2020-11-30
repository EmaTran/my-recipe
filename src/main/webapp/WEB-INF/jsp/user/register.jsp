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
  <title>Register</title>

  <link rel="stylesheet" href="./styles/index.css">
</head>
<body>
  <div class="container">
    <div class="shop-logo">
      <img src="./assets/store.png" alt="Store logo">
    </div>

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
  </div>
</body>
</html>