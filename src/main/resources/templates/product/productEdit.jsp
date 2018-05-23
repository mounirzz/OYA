<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <%@ include file="/common/global.jsp" %>
    <title>Modification du produit</title>
    <%@ include file="/common/meta.jsp" %>
    <%@ include file="/common/include-base-styles.jsp" %>
    <link type="text/css" rel="stylesheet" href="${ctx}/css/index.css"/>
    <%@ include file="/common/include-base-js.jsp" %>
    <script src="${ctx }/js/product.js" type="text/javascript"></script>
</head>

<body>
<%@include file="/common/header-nav.jsp" %>
<div class="container">
    <%@include file="/common/admin-admin-nav.jsp" %>
    <div class="row">
        <div class="col-md-6 col-md-offset-3">
            <form:form id="inputForm" role="form" action="${ctx}/product/edit"
                       method="post" class="form-horizontal" enctype="multipart/form-data">
                <div class="form-group">
                    <input type="hidden" name="id" value="${product.id}"/>
                    <input type="hidden" name="inputUser.id" value="${product.inputUser.id}"/>
                    <%--<input type="hidden" name="picUrl" value="${product.picUrl}"/>--%>
                    <label class="col-sm-2 control-label">Nom du produit</label>
                    <div class="col-sm-10">
                        <input minlength="6" required class="form-control" value="${product.title}" type="text" id="title" name="title"/>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">Prix des matières premières</label>

                    <div class="col-sm-10">
                        <input type="number" required class="form-control" type="text" value="${product.point}" id="point" name="point"/>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">Code de produit</label>

                    <div class="col-sm-10">
                        <input class="form-control" type="text" id="code" value="${product.code}" name="code"/>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">Modèle de produit</label>
                    <div class="col-sm-10">
                        <input class="form-control" type="text" id="model" value="${product.model}" name="model"/>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">Inventaire des marchandises</label>
                    <div class="col-sm-10">
                        <input class="form-control" required type="number" value="${product.stock}" id="stock" name="stock"/>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label" for="pic">Photo de couverture</label>
                    <div class="col-sm-10">
                        <img class="img-responsive img-rounded" width="300px" src="${ctx}${product.masterPic.url}">
                        <input type="file" id="pic" name="file">
                        <p class="help-block">L'image ne peut pas être dépassée 1MB.</p>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">Description du produit:</label>
                    <div class="col-sm-10">
                        <textarea class="form-control" name="note">${product.note}</textarea>
                    </div>
                </div>
                <div class="text-center">
                    <button type="submit" class="btn btn-primary">Enregistrer</button>
                </div>
            </form:form>
        </div>
    </div>
</div>
<!-- /container -->
<%@include file="/common/footer.jsp" %>
</body>
</html>