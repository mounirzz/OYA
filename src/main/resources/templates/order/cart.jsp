<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <%@ include file="/common/global.jsp" %>
    <title>Panier d'achat</title>
    <%@ include file="/common/meta.jsp" %>
    <%@ include file="/common/include-base-styles.jsp" %>
    <link type="text/css" rel="stylesheet" href="${ctx}/css/product.css"/>
</head>

<body>
<%@include file="/common/header-nav.jsp" %>
<div class="container">
    <div class="row">
        <table class="table table-responsive table-striped">
            <c:choose>
                <c:when test="${empty sessionScope.cart}">
                    <tbody class="text-center">
                    <tr>
                        <td>Le panier est vide, continuer à acheter des marchandises bar ...</td>
                    </tr>
                    </tbody>
                </c:when>
                <c:otherwise>
                    <thead>
                    <tr>
                        <td>Nom</td>
                         <td> modèle </td>
                         <td> code </td>
                         <td> prix </td>
                         <td> quantité </td>
                         <td> opération </td>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${sessionScope.cart}" var="cartItem">
                        <c:set var="ci" value="${cartItem.value}"></c:set>
                        <tr pid="${ci.product.id}">
                            <td>${ci.product.title}</td>
                            <td>${ci.product.model}</td>
                            <td>${ci.product.code}</td>
                            <td>${ci.product.point}</td>
                            <td><a class="btn btn-default btn-xs delTotal">-</a> <label productid="${ci.product.id}">${ci.total}</label> <a class="btn btn-default btn-xs addTotal">+</a></td>
                            <td><a class="btn btn-info delBtn btn-xs" productid="${ci.product.id}">Supprimé</a></td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </c:otherwise>
            </c:choose>
        </table>
        <div id="delSuccess" class="alert alert-success" style="display: none;">supprimer le succès ...</div>
        <div id="delAllSuccess" class="alert alert-success" style="display: none;">Le panier est vide avec succès ....</div>
    </div>
    <div class="row">
        <div class="col-md-6 col-xs-9">
            <a class="btn btn-info" href="${ctx}/product/">Continuer à acheter</a>
            <a class="btn btn-info" id="cleanCart">Vider le panier</a>
        </div>
        <div class="col-md-6 col-xs-3 text-right">
            <a class="btn btn-primary" href="${ctx}/order/purchase/">Commander</a>
        </div>
    </div>
</div>

</div>
<!-- /container -->
<%@include file="/common/footer.jsp" %>
<%@ include file="/common/include-base-js.jsp" %>
<script src="${ctx }/js/cart.js" type="text/javascript"></script>
</body>
</html>