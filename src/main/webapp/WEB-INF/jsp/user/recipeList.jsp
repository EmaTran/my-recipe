<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<t:layoutpage>
    <jsp:attribute name="title">Recipe List</jsp:attribute>

    <jsp:body>
        <div class="header-panel text-center">
            <h2>Recipes</h2>
        </div>
        <div class="container mt-5">
            <h1><img src="${pageContext.request.contextPath}/images/store.jpg"/></h1>
            <div class="card">
                <div class="card-header bg-white font-weight-bold">
                    <div class="d-flex justify-content-between">
                        <h3>Select any Recipe</h3>
                    </div>
                </div>
                <div class="card-body">
                    <table class="table" width="100%">
                        <tr>
                            <th>&nbsp;</th>
                            <th>Recipe Name</th>
                            <th>Servicing size</th>
                            <th>Total steps</th>
                        </tr>
                        <c:forEach var="recipe" items="${recipes}">
                            <tr>
                                <td width="20%">
                                    <img width="100%" src="${pageContext.request.contextPath}/images/recipe.jpg"></td>
                                <td>
                                    <a href="${pageContext.request.contextPath}/user/recipePage/?id=${recipe.id}">${recipe.recipeName}</a>
                                </td>
                                <td>${recipe.servicingSize}</td>
                                <td>${recipe.totalStep}</td>
                            </tr>
                        </c:forEach>
                    </table>
                </div>
            </div>
        </div>
    </jsp:body>
</t:layoutpage>