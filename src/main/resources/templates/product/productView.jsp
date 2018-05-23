<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="/common/global.jsp"%>
<title>${product.title} Informations sur le produit</title>
<%@ include file="/common/meta.jsp"%>
<%@ include file="/common/include-base-styles.jsp"%>
<link type="text/css" rel="stylesheet" href="${ctx}/css/index.css"/>
</head>

<body>
    <%@include file="/common/header-nav.jsp" %>
	<div class="container">
        <div class="row">
            <div class="col-md-5 text-center">
                <img class="img-responsive img-rounded" src="${ctx}${product.masterPic.url}">
            </div>
            <div class="col-md-7">
                <div class="form-group">
                    <label>Nom du produit:</label>${product.title}
                </div>
                <div class="form-group">
                    <label>Code de produit：</label>${product.code}
                </div>
                <div class="form-group">
                    <label>Modèle de produit：</label>${product.model}
                </div>
                <div class="form-group">
                    <label>Prix des matières premières：</label>${product.point}
                </div>
                <div class="form-group">
                    <label>Introduction au produit：</label>${product.note}
                </div>
                <p>
                    <a class="btn btn-primary btn-lg  btn-block addCart" productid="${product.id}" role="button">Ajouter au panier</a>
                </p>
            </div>
        </div>
        </div>


    </div> <!-- /container -->

    <%@include file="/common/footer.jsp" %>
	<%@ include file="/common/include-base-js.jsp"%>
    <script src="${ctx }/js/product.js" type="text/javascript"></script>
</body>
</html>