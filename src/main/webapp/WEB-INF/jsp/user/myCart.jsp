<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<t:layoutpage>
    <jsp:attribute name="title">Recipe List</jsp:attribute>

    <jsp:body>
        <div class="container mt-5">
            <h1><img src="${pageContext.request.contextPath}/images/store.jpg"/></h1>
            <div class="card">
                <div class="card-header bg-white font-weight-bold">
                    <div class="d-flex justify-content-between">
                        <h3 style="color: powderblue">Thank You</h3>
                    </div>
                </div>
                <div class="card-body">
                    <div class="thank-you-msg">
                        Your order has been placed and you will be notified by email.
                    </div>
                </div>
            </div>
            <div class="card-footer">
                <img width="100%" src="${pageContext.request.contextPath}/images/store.png"/>
            </div>
            <button class="btn-blue m-center" name="logout" type="submit" value="LogOut">
                <a href="${pageContext.request.contextPath}/user/logout" class="btn btn-blue">
                    Log Out</a>
            </button>
        </div>
    </jsp:body>
</t:layoutpage>