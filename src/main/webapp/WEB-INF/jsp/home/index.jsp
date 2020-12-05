<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<t:layoutpage>
    <jsp:attribute name="title">Login: My Recipe</jsp:attribute>

    <jsp:body>
        <div class="container mt-5">
            <h2><img src="${pageContext.request.contextPath}/images/store.jpg"/></h2>
            <div class="card">
                <div class="card-header bg-white font-weight-bold">
                    <div class="d-flex justify-content-between">
                        <h3>Sign In</h3>
                    </div>
                </div>
                <div class="card-body">
                    <form method="POST" action="${pageContext.request.contextPath}/home/login" onsubmit="return validate()">
                        <div class="form-group">
                            <label for="userName"> User Name: </label>
                            <input type="text" required name="userName" id="userName" class="form-control"
                                   placeholder="Username">
                        </div>

                        <div class="form-group">
                            <label for="password"> Password: </label>
                            <input type="password" required name="password" id="password" class="form-control"
                                   placeholder="Password">
                        </div>

                        <div class="form-group">
                            <button type="submit" value="signIn" class="form-control btn btn-blue w-20">
                                Sign In
                            </button>
                        </div>
                    </form>
                </div>
                <div class="card-footer">
                    <div class="d-flex justify-content-start">
                        <a href="${pageContext.request.contextPath}/user/register" class="btn btn-blue w-20">
                            Sign up New User
                        </a>
                    </div>
                </div>
            </div>
        </div>
        <script>
            function validate() {
                const name = document.form.userName.value;
                const password = document.form.password.value;
                if (name == null || name === "") {
                    alert("Username cannot be blank");
                    return false;
                } else if (password == null || password === "") {
                    alert("Password cannot be blank");
                    return false;
                }
            }
        </script>
    </jsp:body>
</t:layoutpage>