<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<t:layoutpage>
    <jsp:attribute name="title">Search: My Recipe</jsp:attribute>

    <jsp:body>
        <div class="header-panel text-center">
            <h2>Search Recipe</h2>
        </div>
        <div class="container mt-5">
            <h1><img src="${pageContext.request.contextPath}/images/store.jpg"/></h1>
            <div class="card">
                <div class="card-header bg-white font-weight-bold">
                    <div class="d-flex justify-content-between">
                        <h3>Welcome <c:out value="${userName}"/> !</h3>
                    </div>
                </div>
                <div class="card-body">
                    <form action="${pageContext.request.contextPath}/user/recipeList" method="POST">
                        <div class="form-group clearfix">
                            <div class="form-group">
                                <input type="text" name="findRecipe" id="findRecipe" placeholder="Find a Recipe">
                            </div>
                        </div>
                        <br>
                        <div class="form-group clearfix">
                            <div class="w-20">
                                <select name="mealTime" id="mealTime">
                                    <option value="breakfast">Breakfast</option>
                                    <option value="lunch">Lunch</option>
                                    <option value="dinner">Dinner</option>
                                    <option value="dessert">Dessert</option>
                                </select>
                            </div>

                            <div class="w-20">
                                <select name="meat" id="meat">
                                    <option value="beef">Beef</option>
                                    <option value="lamb">Lamb</option>
                                    <option value="chicken">Chicken</option>
                                    <option value="pork">Pork</option>
                                </select>
                            </div>

                            <div class="w-20">
                                <select name="fish" id="fish">
                                    <option value="wildCod">WildCod</option>
                                    <option value="simon">Simon</option>
                                    <option value="tuna">Tuna</option>
                                    <option value="marcekel">Marcekel</option>
                                </select>
                            </div>

                            <div class="w-20">
                                <select name="veggies" id="veggies">
                                    <option value="bokchoy">Bokchoy</option>
                                    <option value="brocoli">Brocoli</option>
                                    <option value="mushroom">Mushroom</option>
                                    <option value="carrot">Carrot</option>
                                </select>
                            </div>

                            <div class="w-20">
                                <select name="others" id="others">
                                    <option value="other">Other</option>

                                </select>
                            </div>
                        </div>
                        <br>
                        <br>
                        <div class="form-group">
                            <button class="btn-blue m-center" name="option" type="submit" value="chooseOption">
                                Choose option to continue
                            </button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </jsp:body>
</t:layoutpage>