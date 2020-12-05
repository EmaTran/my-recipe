<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<t:layoutpage>
    <jsp:attribute name="title">${recipe.recipeName}</jsp:attribute>
    <jsp:body>
        <div class="container mt-5">
            <h1><img src="${pageContext.request.contextPath}/images/store.jpg"/></h1>
            <div class="card">
                <div class="card-header bg-white font-weight-bold">
                    <div class="d-flex justify-content-between">
                        <h3>${recipe.recipeName}</h3>
                    </div>
                </div>
                <div class="card-body">
                    <fieldset>
                        <legend>${recipe.recipeName}</legend>
                        <div class="heading"> Ingredients</div>
                        <form>
                            <c:forEach var="detail" items="${recipe.recipeDetails}">
                                <div class="clearfix mt-20">
                                    <div class="w-20">
                                        <label>
                                            <input type="checkbox" name="ingredient"
                                                   id="ingredientA">${detail.ingredientName} (${detail.unit})
                                        </label>
                                    </div>
                                    <div class="w-20">
                                        <input type="number" name="number${detail.ingredientName}"
                                               id="number${detail.ingredientName}">
                                    </div>
                                </div>
                            </c:forEach>

                            <h4 class="heading"> Instructions</h4>
                            <hr/>
                            <c:forEach var="step" items="${recipe.recipeSteps}">
                                <div class="clearfix mt-20">
                                    <div class="w-20">
                                        <label>
                                            <input type="checkbox" name="step1" id="step1"> ${step.stepName}
                                        </label>
                                    </div>
                                    <div class="w-80">
                                        <span>${step.stepInstruction}</span>
                                        <b>for ${step.stepTime} mins</b>
                                    </div>
                                </div>
                            </c:forEach>
                        </form>
                    </fieldset>
                </div>
                <div class="card-footer">
                    <a href="${pageContext.request.contextPath}/user/myCart" class="btn btn-blue">
                        Purchase Items
                    </a>
                </div>
            </div>
        </div>
    </jsp:body>
</t:layoutpage>