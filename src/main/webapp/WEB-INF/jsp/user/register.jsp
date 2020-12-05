<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<t:layoutpage>
    <jsp:attribute name="title">Register: My Recipe</jsp:attribute>
    <jsp:body>
        <div class="container mt-5">
            <h2><img src="${pageContext.request.contextPath}/images/store.jpg"/></h2>
            <div class="card">
                <div class="card-header bg-white font-weight-bold">
                    <div class="d-flex justify-content-between">
                        <h3>Register Form</h3>
                    </div>
                </div>
                <div class="card-body">
                    <form method="POST" action="${pageContext.request.contextPath}/user/register">
                        <div class="form-group-inline clearfix">
                            <div class="w-50">
                                <input type="text" required name="fName" id="fName" placeholder="First name">
                            </div>
                            <div class="w-50">
                                <input type="text" required name="lName" id="lName" placeholder="Last name">
                            </div>
                        </div>

                        <div class="form-group-inline clearfix">
                            <label for="email"> Email </label>
                            <div class="w-80">
                                <input type="email" required name="email" id="email" placeholder="Email">
                            </div>
                        </div>

                        <div class="form-group-inline clearfix">
                            <label for="number"> Telephone </label>
                            <div class="w-80">
                                <input type="number" name="number" id="number" placeholder="Phone Number">
                            </div>
                        </div>

                        <div class="form-group">
                            <label for="userName"> Username </label>
                            <input type="text" name="userName" id="userName" placeholder="username">
                        </div>

                        <div class="form-group">
                            <label for="password"> Password </label>
                            <input type="password" name="password" id="password" placeholder="Password">
                        </div>

                        <div class="form-group">
                            <button type="submit" class="btn btn-blue">
                                Sign up
                            </button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </jsp:body>
</t:layoutpage>